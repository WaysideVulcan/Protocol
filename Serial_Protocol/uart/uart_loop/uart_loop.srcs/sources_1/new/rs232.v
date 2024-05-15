module rs232(
input wire sys_clk , 
input wire sys_rst_n , 
input wire rx , 
output wire tx 
);

 //parameter define
 parameter UART_BPS = 14'd9600; 
 parameter CLK_FREQ = 26'd50_000_000; 

 //wire define
 wire [7:0] po_data;
 wire po_flag;
 //------------------------uart_rx_inst------------------------
uart_rx
 #(
 .UART_BPS (UART_BPS), 
 .CLK_FREQ (CLK_FREQ) 
 )
 uart_rx_inst
 (
 .sys_clk (sys_clk ), //input sys_clk
 .sys_rst_n (sys_rst_n ), //input sys_rst_n
 .rx (rx ), //input rx

 .po_data (po_data ), //output [7:0] po_data
 .po_flag (po_flag ) //output po_flag
 );
//------------------------uart_tx_inst------------------------
 uart_tx
 #(
 .UART_BPS (UART_BPS), 
 .CLK_FREQ (CLK_FREQ) 
 )
 uart_tx_inst
 (
 .sys_clk (sys_clk ), //input sys_clk
 .sys_rst_n (sys_rst_n ), //input sys_rst_n
 .pi_data (po_data ), //input [7:0] pi_data
 .pi_flag (po_flag ), //input pi_flag

 .tx (tx ) //output tx
 );
 endmodule