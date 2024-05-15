`timescale 1ns/1ns
module tb_flash_be_ctrl();

//wire define
wire cs_n ; 
wire sck ; 
wire mosi ; 

//reg define
 reg sys_clk ; 
 reg sys_rst_n ; 
 reg key ; 

 initial
 begin
    sys_clk = 1'b1;
    sys_rst_n <= 1'b0;
    key <= 1'b0;
    #100
    sys_rst_n <= 1'b1;
    #1000
    key <= 1'b1;
    #20
    key <= 1'b0;
end

 always #10 sys_clk <= ~sys_clk; 

 defparam memory.mem_access.initfile = "initmemory.txt";

 //------------- flash_be_ctrl_inst -------------
 flash_be_ctrl flash_be_ctrl_inst
 (
 .sys_clk (sys_clk ),
 .sys_rst_n (sys_rst_n ), 
 .key (key ), 
 .sck (sck ), 
 .cs_n (cs_n ), 
 .mosi (mosi ) 
 );

 //------------- memory -------------
 m25p16 memory
 (
 .c (sck ), 
 .data_in (mosi ), 
 .s (cs_n ), 
 .w (1'b1 ), 
 .hold (1'b1 ), 
 .data_out ( ) 
 );

 endmodule