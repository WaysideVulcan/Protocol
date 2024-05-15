# High Definition Multimedia Interface (HDMI)
HDMI傳輸時需要透過Encode將一般的影音資料轉成TMDS編碼(8 bit to 10 bit)，再將Parallel資料轉成Serial資料傳輸。

![Image text](https://github.com/WaysideVulcan/Protocol/blob/master/img/hdmi/hdmi_overview.png)

## Lab1 FPGA_HDMI
透過FPGA 生成一個Video Pattern透過HDMI介面傳輸

![Image text](https://github.com/WaysideVulcan/Protocol/blob/master/img/hdmi/Lab1_block.png)

其中會使用到Xilinx提供的原語 串並轉換器(OSERDESE2)和差分輸出緩衝器(OBUFDS)

![Image text](https://github.com/WaysideVulcan/Protocol/blob/master/img/hdmi/s2p.png)
![Image text](https://github.com/WaysideVulcan/Protocol/blob/master/img/hdmi/buffer.png)

### HDMI Verilog Code

* 像素參數
![Image text](https://github.com/WaysideVulcan/Protocol/blob/master/img/hdmi/input_parameter.png)

```verilog
parameter   H_TOTAL = 2200 - 1   ;
parameter   H_SYNC  = 44 - 1    ;
parameter   H_START = 190 - 1    ;
parameter   H_END = 2110 - 1     ;
parameter   V_TOTAL = 1125 - 1   ;
parameter   V_SYNC = 5 - 1     ;
parameter   V_START = 41 - 1    ;
parameter   V_END = 1121 - 1     ;
parameter   SQUARE_X = 500      ;
parameter   SQUARE_Y = 500      ;
parameter   SCREEN_X = 1920      ;
parameter   SCREEN_Y = 1080      ;
```

* H_sync & Y_sync

```verilog
always@(posedge vpg_pclk)begin
    if(rst)
        vpg_hs <= 1'b1;
    else if(cnt_h == H_TOTAL)
        vpg_hs <= 1'b1;
    else if(cnt_h == H_TOTAL)
        vpg_hs <= 1'b0;
end
always@(posedge vpg_pclk)begin
    if(rst)
        vpg_vs <= 1'b1;
    else if(cnt_v == V_TOTAL && cnt_h == H_TOTAL)
        vpg_vs <= 1'b1;
    else if(cnt_v == V_SYNC && cnt_h == H_TOTAL)
        vpg_vs <= 1'b0;
end
```
* Video Pattern

```verilog
always@(posedge vpg_pclk)begin
    if(rst)
        rgb <= 'd0;
    else if(cnt_h >= H_START+x && cnt_h <= H_START+SQUARE_X+x && cnt_v >= V_START+y && cnt_v <= V_START+SQUARE_Y+y)
        rgb <= 24'hFFB6C1;
    else if(cnt_h >= H_START && cnt_h < H_END && cnt_v >= V_START && cnt_v <= V_END && cnt_h[4:0] >= 'd20) 
        rgb <= 24'h00FF00;
    else if(cnt_h>=H_START && cnt_h<H_END && cnt_v>=V_START && cnt_v<=V_END && (cnt_h[4:0]>='d10 && cnt_h[2:0]<'d20))
        rgb <= 24'h0000FF;
    else if(cnt_h >= H_START && cnt_h < H_END && cnt_v >= V_START && cnt_v <= V_END && cnt_h[4:0] < 'd10) 
        rgb <= 24'hFF0000;
    else
        rgb <= 'd0;    
end
endmodule
```

## Lab2 HDMI_IMG
在Lab1的基礎上，將要打出的影像資料源改成FPGA的ROM

![Image text](https://github.com/WaysideVulcan/Protocol/blob/master/img/hdmi/Lab2_block.png)

透過matlab將要輸出的圖片轉為rom可用的coe檔案

![Image text](https://github.com/WaysideVulcan/Protocol/blob/master/img/hdmi/matlab.png)

### HDMI Verilog Code

* 讀取ROM

```verilog

parameter   STOP_ADDR = 256*256-1;

reg  [15:0] rd_addr;
wire [23:0] dout;

assign rd_data = dout;

always@(posedge clk)begin
    if(rst)
        rd_addr <= 'd0;
    else if(rd_req == 1'b1)
        rd_addr <= (rd_addr == STOP_ADDR) ? 'd0 : rd_addr + 1'b1;
end
rom_ip inst_rom(
    .clka(clk),
    .addra(rd_addr),
    .douta(dout));
endmodule
```

## Lab3 HDMI_LOOP

此Lab會使用3rd Party IP直接將Video data轉換成TMDS形式

![Image text](https://github.com/WaysideVulcan/Protocol/blob/master/img/hdmi/Lab3_block.png)

IP來源參考自[Digilent/Vivado_Library][1]

### Blcok Design

![Image text](https://github.com/WaysideVulcan/Protocol/blob/master/img/hdmi/IP_Block_Design.png)

[1]: https://github.com/Digilent/vivado-library
