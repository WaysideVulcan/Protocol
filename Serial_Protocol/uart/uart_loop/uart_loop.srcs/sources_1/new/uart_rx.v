module uart_rx#(
    parameter UART_BPS = 'd9600, // Baud Rate
    parameter CLK_FREQ = 'd50_000_000 // Clock period
    )(
    input wire sys_clk , //  50MHz
    input wire sys_rst_n , 
    input wire rx , // Receive Data
    output reg [7:0] po_data , // Parallel Data
    output reg po_flag 
    );

//localparam define
localparam BAUD_CNT_MAX = CLK_FREQ/UART_BPS ;
//reg define
reg rx_reg1 ;
reg rx_reg2 ;
reg rx_reg3 ;
reg start_flag ;
reg work_en ;
reg [12:0] baud_cnt ;
reg bit_flag ;
reg [3:0] bit_cnt ;
reg [7:0] rx_data ;
reg rx_flag ;

//  Synchronize Clock Period
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        rx_reg1 <= 1'b1;
    else
        rx_reg1 <= rx;

// Eliminate metastability
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        rx_reg2 <= 1'b1;
    else
        rx_reg2 <= rx_reg1;
        
// Eliminate metastability
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        rx_reg3 <= 1'b1;
    else
        rx_reg3 <= rx_reg2;
//  Edge Detect
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        start_flag <= 1'b0;
    else if((~rx_reg2) && (rx_reg3) && (work_en == 1'b0))
        start_flag <= 1'b1;
    else
        start_flag <= 1'b0;
//  Detect Recive 8 bit Rx_data
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        work_en <= 1'b0;
    else if(start_flag == 1'b1)
        work_en <= 1'b1;
    else if((bit_cnt == 4'd8) && (bit_flag == 1'b1))
        work_en <= 1'b0;
    else
        work_en <= work_en;        
// Baud count  1bit 5208 clock period
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        baud_cnt <= 13'b0;
    else if((baud_cnt == BAUD_CNT_MAX - 1) || (work_en == 1'b0))
        baud_cnt <= 13'b0;
    else if(work_en == 1'b1)
        baud_cnt <= baud_cnt + 1'b1;        
// Search middle time interval
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        bit_flag <= 1'b0;
    else if(baud_cnt == BAUD_CNT_MAX/2 - 1)
        bit_flag <= 1'b1;
    else
        bit_flag <= 1'b0; 
// Count receive 8 bit Rx_data
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        bit_cnt <= 4'b0;
    else if((bit_cnt == 4'd8) && (bit_flag == 1'b1))
        bit_cnt <= 4'b0;
    else if(bit_flag ==1'b1)
        bit_cnt <= bit_cnt + 1'b1;

 // Shift Rx_data 
 always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        rx_data <= 8'b0;
    else if((bit_cnt >= 4'd1)&&(bit_cnt <= 4'd8)&&(bit_flag == 1'b1))
        rx_data <= {rx_reg3, rx_data[7:1]};

 //  Shift Rx_data flag
 always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        rx_flag <= 1'b0;
    else if((bit_cnt == 4'd8) && (bit_flag == 1'b1))
        rx_flag <= 1'b1;
    else
        rx_flag <= 1'b0;

 // Output Data
 always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        po_data <= 8'b0;
    else if(rx_flag == 1'b1)
        po_data <= rx_data;

 // Output Data flag
 always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        po_flag <= 1'b0;
    else
        po_flag <= rx_flag;

 endmodule