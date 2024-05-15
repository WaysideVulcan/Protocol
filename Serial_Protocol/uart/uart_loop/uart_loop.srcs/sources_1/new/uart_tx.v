module uart_tx#(
    parameter UART_BPS = 'd9600, // Baud Rate
    parameter CLK_FREQ = 'd50_000_000 // clock period
)(
    input wire sys_clk , 
    input wire sys_rst_n , 
    input wire [7:0] pi_data , 
    input wire pi_flag , 
    output reg tx 
 );
 //localparam define
 localparam BAUD_CNT_MAX = CLK_FREQ/UART_BPS ;
 //reg define
 reg [12:0] baud_cnt;
 reg bit_flag;
 reg [3:0] bit_cnt ;
 reg work_en ;

 // enable signal 
 always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        work_en <= 1'b0;
    else if(pi_flag == 1'b1)
        work_en <= 1'b1;
    else if((bit_flag == 1'b1) && (bit_cnt == 4'd9))
        work_en <= 1'b0;

 // baud_cnt
 always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        baud_cnt <= 13'b0;
    else if((baud_cnt == BAUD_CNT_MAX - 1) || (work_en == 1'b0))
        baud_cnt <= 13'b0;
    else if(work_en == 1'b1)
        baud_cnt <= baud_cnt + 1'b1;

 // bit flag
 always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        bit_flag <= 1'b0;
    else if(baud_cnt == 13'd1)
        bit_flag <= 1'b1;
    else
        bit_flag <= 1'b0;

 // bit cnt  8 + 2bit
 always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        bit_cnt <= 4'b0;
    else if((bit_flag == 1'b1) && (bit_cnt == 4'd9))
        bit_cnt <= 4'b0;
    else if((bit_flag == 1'b1) && (work_en == 1'b1))
        bit_cnt <= bit_cnt + 1'b1;

 // parallel to serial
 always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        tx <= 1'b1; 
    else if(bit_flag == 1'b1)
        case(bit_cnt)
            0 : tx <= 1'b0;
            1 : tx <= pi_data[0];
            2 : tx <= pi_data[1];
            3 : tx <= pi_data[2];
            4 : tx <= pi_data[3];
            5 : tx <= pi_data[4];
            6 : tx <= pi_data[5];
            7 : tx <= pi_data[6];
            8 : tx <= pi_data[7];
            9 : tx <= 1'b1;
            default : tx <= 1'b1;
        endcase
 endmodule