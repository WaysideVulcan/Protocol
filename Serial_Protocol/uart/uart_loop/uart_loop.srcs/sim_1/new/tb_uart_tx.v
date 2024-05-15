module tb_uart_tx();
//reg define
reg sys_clk;
reg sys_rst_n;
reg [7:0] pi_data;
reg pi_flag;
 //wire define
 wire tx;
 // initial
 initial begin
    sys_clk = 1'b1;
    sys_rst_n <= 1'b0;
    #20;
    sys_rst_n <= 1'b1;
 end

 // output [7:0]data
 initial begin
    pi_data <= 8'b0;
    pi_flag <= 1'b0;
    #200
    pi_data <= 8'd0;
    pi_flag <= 1'b1;
    #20
    pi_flag <= 1'b0;
    #(5208*20*10);
    pi_data <= 8'd1;
    pi_flag <= 1'b1;
    #20
    pi_flag <= 1'b0;
     #(5208*20*10);
    pi_data <= 8'd2;
    pi_flag <= 1'b1;
    #20
    pi_flag <= 1'b0;
    #(5208*20*10);
    pi_data <= 8'd3;
    pi_flag <= 1'b1;
    #20
    pi_flag <= 1'b0;
    #(5208*20*10);
    pi_data <= 8'd4;
    pi_flag <= 1'b1;
    #20
    pi_flag <= 1'b0;
    #(5208*20*10);
    pi_data <= 8'd5;
    pi_flag <= 1'b1;
    #20
    pi_flag <= 1'b0;
    #(5208*20*10);
    pi_data <= 8'd6;
    pi_flag <= 1'b1;
    #20
    pi_flag <= 1'b0;
    #(5208*20*10);
    pi_data <= 8'd7;
    pi_flag <= 1'b1;
    #20
    pi_flag <= 1'b0;
    end
 always #10 sys_clk = ~sys_clk;

 //------------------------uart_rx_inst------------------------
 uart_tx #(
 .UART_BPS(9600),
 .CLK_FREQ(50_000_000)) 
 uart_tx_inst(
 .sys_clk (sys_clk ), //input sys_clk
 .sys_rst_n (sys_rst_n ), //input sys_rst_n
 .pi_data (pi_data ), //output [7:0] pi_data
 .pi_flag (pi_flag ), //output pi_flag

 .tx (tx ) //input tx
 );

 endmodule