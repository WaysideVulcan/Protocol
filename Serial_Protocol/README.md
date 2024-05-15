# 本次實驗皆使用VC707開發板來完成，詳細內容可參考PDF

![Image text](https://github.com/WaysideVulcan/Protocol/blob/master/img/vc707.png)

## UART overview

全稱Universal Asynchronous Receiver/Transmitter，屬於異步Serial通信接口的統稱。

![Image text](https://github.com/WaysideVulcan/Protocol/blob/master/img/protocol_port.png)

UART為單端全雙工，TX與RX共用信號線

![Image text](https://github.com/WaysideVulcan/Protocol/blob/master/img/uart/signal.png)

信號一次傳輸10個Bit，包含一個起始位及結束位

![Image text](https://github.com/WaysideVulcan/Protocol/blob/master/img/uart/bit.png)

### UART Verilog Code

* 系統時鐘與Baud Rate

```verilog
 module uart_tx#(
    parameter UART_BPS = 'd9600, // Baud Rate
    parameter CLK_FREQ = 'd50_000_000 // clock period
)(

localparam BAUD_CNT_MAX = CLK_FREQ/UART_BPS ;

```

* UART的串列資料傳輸(包含起始位與停止位)

```verilog
 always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        bit_cnt <= 4'b0;
    else if((bit_flag == 1'b1) && (bit_cnt == 4'd9))
        bit_cnt <= 4'b0;
    else if((bit_flag == 1'b1) && (work_en == 1'b1))
        bit_cnt <= bit_cnt + 1'b1;
```

## SPI overview

SPI ( Serial Periphel Interface) 為一種高速全雙工的同步通訊協議，但沒有應答機制確認數據是否接受。

SPI有主從之分，下圖例分別顯示單對單及單對多的情形

![Image text](https://github.com/WaysideVulcan/Protocol/blob/master/img/spi/SPI_overview.png)

SPI的四種抓取資料模式

![Image text](https://github.com/WaysideVulcan/Protocol/blob/master/img/spi/SPI_Mode.png) ![Image text](https://github.com/WaysideVulcan/Protocol/blob/master/img/spi/SPI_Mode_2.png)

對VC707上的SPI Flash做資料傳輸

![Image text](https://github.com/WaysideVulcan/Protocol/blob/master/img/spi/flash.png)

### SPI Verilog Code

* 利用系統時鐘生成SPI傳輸的同步時鐘

```verilog
//cnt_sck: serial clock counter
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt_sck <= 2'd0;
    else if((state == WR_EN) && (cnt_byte == 1'b1))
        cnt_sck <= cnt_sck + 1'b1;
    else if((state == BE) && (cnt_byte == 3'd5))
        cnt_sck <= cnt_sck + 1'b1;
```

* SPI的CS信號控制

```verilog
//cs_n: 
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cs_n <= 1'b1;
    else if(key == 1'b1)
        cs_n <= 1'b0;
    else if((cnt_byte == 3'd2)&&(cnt_clk == 5'd31)&&(state == WR_EN))
        cs_n <= 1'b1;
    else if((cnt_byte == 3'd3)&&(cnt_clk == 5'd31)&&(state == DELAY))
        cs_n <= 1'b0;
    else if((cnt_byte == 3'd6)&&(cnt_clk == 5'd31)&&(state == BE))
        cs_n <= 1'b1;
```

## IIC overview

Inter – Integrated Circuit，屬於同步雙向Serial通信接口的統稱。

而且總共只需要兩線即可傳輸(SCL負責同步.SDA負責傳輸數據)且支援多主機對多從機，

![Image text](https://github.com/WaysideVulcan/Protocol/blob/master/img/iic/IIC.png)

IIC的串列資料傳輸位

![Image text](https://github.com/WaysideVulcan/Protocol/blob/master/img/iic/IIC_bit.png) 

對開發版上的IIC EEPROM做資料傳輸

IIC透過辨識從機的address來決定是否傳輸

![Image text](https://github.com/WaysideVulcan/Protocol/blob/master/img/iic/iic_slave.png)

IIC的信號傳輸時序

![Image text](https://github.com/WaysideVulcan/Protocol/blob/master/img/iic/IIC_Timing.png)

### IIC Verilog Code

* 利用系統時鐘生成IIC傳輸的同步時鐘

```verilog
//i2c_sclk
always @(posedge clk or negedge rst_n)begin
    if(rst_n == 1'b0)
        sclk_cnt <= 'd1;
    else if(sclk_cnt == I2C_FREQ - 1'b1)
        sclk_cnt <= 'd0;
    else 
        sclk_cnt <= sclk_cnt + 1'b1;
end
always @(posedge clk or negedge rst_n)begin
    if(rst_n == 1'b0)
        i2c_sclk_r <= 1'b0;
    else if(sclk_cnt >= (I2C_FREQ>>2)*1 && sclk_cnt <= (I2C_FREQ>>2)*3)
        i2c_sclk_r <= 1'b1;
    else 
        i2c_sclk_r <= 1'b0;
end
assign  transfer_en = (sclk_cnt == TRANSFER - 1)? 1'b1: 1'b0;
assign  capture_en  = (sclk_cnt == CAPTURE - 1)? 1'b1: 1'b0;
```
