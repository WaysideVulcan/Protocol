module flash_be_ctrl
(
input wire sys_clk , 
input wire sys_rst_n , 
input wire key , 

output reg cs_n , 
output reg sck , 
output reg mosi 
);

parameter IDLE = 4'b0001 , WR_EN = 4'b0010 , DELAY = 4'b0100 , BE = 4'b1000 ; 
parameter WR_EN_INST = 8'b0000_0110, BE_INST = 8'b1100_0111; 
//reg define
reg [2:0] cnt_byte; // byte counter
reg [3:0] state ; // state
reg [4:0] cnt_clk ; // sys_clk counter
reg [1:0] cnt_sck ; // serial clock counter
reg [2:0] cnt_bit ; // bit counter

// cnt_clk:
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt_clk <= 5'd0;
    else if(state != IDLE)
        cnt_clk <= cnt_clk + 1'b1;
//cnt_byte: 1byte 32 clock period
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt_byte <= 3'd0;
    else if((cnt_clk == 5'd31) && (cnt_byte == 3'd6))
        cnt_byte <= 3'd0;
    else if(cnt_clk == 31)
        cnt_byte <= cnt_byte + 1'b1;
        
//cnt_sck: serial clock counter
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt_sck <= 2'd0;
    else if((state == WR_EN) && (cnt_byte == 1'b1))
        cnt_sck <= cnt_sck + 1'b1;
    else if((state == BE) && (cnt_byte == 3'd5))
        cnt_sck <= cnt_sck + 1'b1;
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
//sck: output serial clock
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        sck <= 1'b0;
    else if(cnt_sck == 2'd0)
        sck <= 1'b0;
    else if(cnt_sck == 2'd2)
        sck <= 1'b1;
//cnt_bit:output mosi
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt_bit <= 3'd0;
    else if(cnt_sck == 2'd2)
        cnt_bit <= cnt_bit + 1'b1;
//state machine
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        state <= IDLE;
    else
    case(state)
        IDLE: if(key == 1'b1) 
                state <= WR_EN;
        WR_EN: if((cnt_byte == 3'd2) && (cnt_clk == 5'd31))
                state <= DELAY;
        DELAY: if((cnt_byte == 3'd3) && (cnt_clk == 5'd31))
                state <= BE;
        BE: if((cnt_byte == 3'd6) && (cnt_clk == 5'd31))
                state <= IDLE;
        default: state <= IDLE;
    endcase

 //mosi: output
 always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        mosi <= 1'b0;
    else if((state == WR_EN) && (cnt_byte == 3'd2))
        mosi <= 1'b0;
    else if((state == BE) && (cnt_byte == 3'd6))
        mosi <= 1'b0;
    else if((state == WR_EN)&&(cnt_byte == 3'd1)&&(cnt_sck == 5'd0))
        mosi <= WR_EN_INST[7 - cnt_bit]; 
    else if((state == BE) && (cnt_byte == 3'd5) && (cnt_sck == 5'd0))
        mosi <= BE_INST[7 - cnt_bit]; 

 endmodule