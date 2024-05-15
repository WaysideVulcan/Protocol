`timescale 1ns/1ns
module tb_uart_rx();

//reg define
reg sys_clk;
reg sys_rst_n;
reg rx;
 //wire define
wire [7:0] po_data;
wire po_flag;

 // initial 
 initial begin
    sys_clk = 1'b1;
    sys_rst_n <= 1'b0;
    rx <= 1'b1;
    #20;
    sys_rst_n <= 1'b1;
 end

 //  serial 8 bit  input data
 initial begin
    #200
    rx_bit(8'd0); 
    rx_bit(8'd1);
    rx_bit(8'd2);
    rx_bit(8'd3);
    rx_bit(8'd4);
    rx_bit(8'd5);
    rx_bit(8'd6);
    rx_bit(8'd7);
 end

 always #10 sys_clk = ~sys_clk;

 task rx_bit(
    input [7:0] data
 );
 integer i; 
 for(i=0; i<10; i=i+1) begin
    case(i)
        0: rx <= 1'b0;
        1: rx <= data[0];
        2: rx <= data[1];
        3: rx <= data[2];
        4: rx <= data[3];
        5: rx <= data[4];
        6: rx <= data[5];
        7: rx <= data[6];
        8: rx <= data[7];
        9: rx <= 1'b1;
    endcase
        #(5208*20); 
    end
 endtask 

 //------------------------uart_rx_inst------------------------
 uart_rx
 #(
 .UART_BPS(9600),
 .CLK_FREQ(50_000_000))
 uart_rx_inst(
 .sys_clk (sys_clk ), //input sys_clk
 .sys_rst_n (sys_rst_n ), //input sys_rst_n
 .rx (rx ), //input rx

 .po_data (po_data ), //output [7:0] po_data
 .po_flag (po_flag ) //output po_flag
 );

 endmodule