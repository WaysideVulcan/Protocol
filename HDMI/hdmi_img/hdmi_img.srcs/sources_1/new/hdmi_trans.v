`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/26 09:08:56
// Design Name: 
// Module Name: hdmi_trans
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module hdmi_trans(
    input       clk1x,
    input       clk5x,
    input       rst,
    input [7:0] image_r,
    input [7:0] image_g,
    input [7:0] image_b,
    input       vsync,
    input       hsync,
    input       de,
    output      hdmi_tx_clk_n,
    output      hdmi_tx_clk_p,
    output      hdmi_tx_chn_r_n,
    output      hdmi_tx_chn_r_p,
    output      hdmi_tx_chn_g_n,
    output      hdmi_tx_chn_g_p,
    output      hdmi_tx_chn_b_n,
    output      hdmi_tx_chn_b_p
    );
    
wire    [9:0]   encode_chn_r;
wire    [9:0]   encode_chn_g;
wire    [9:0]   encode_chn_b;

    encode inst_encode_chn_r(
       .clkin(clk1x),
       .rstin(rst),
       .din(image_r),
       .c0(1'b0),
       .c1(1'b0),
       .de(de),
       .dout(encode_chn_r)     
    );
    
    encode inst_encode_chn_g(
       .clkin(clk1x),
       .rstin(rst),
       .din(image_g),
       .c0(1'b0),
       .c1(1'b0),
       .de(de),
       .dout(encode_chn_g)     
    );
    
    encode inst_encode_chn_b(
       .clkin(clk1x),
       .rstin(rst),
       .din(image_b),
       .c0(1'b0),
       .c1(1'b0),
       .de(de),
       .dout(encode_chn_b)     
    );
    
    parallel_to_serial inst_parallel_to_serial_clk(
       .clk1x(clk1x),
       .clk5x(clk5x),
       .rst(rst),
       .din(10'b11111_00000),
       .dout_p(hdmi_tx_clk_p),
       .dout_n(hdmi_tx_clk_n)
    );
    
    parallel_to_serial inst_parallel_to_serial_chn_r(
       .clk1x(clk1x),
       .clk5x(clk5x),
       .rst(rst),
       .din(encode_chn_r),
       .dout_p(hdmi_tx_chn_r_p),
       .dout_n(hdmi_tx_chn_r_n)
    );
    
    parallel_to_serial inst_parallel_to_serial_chn_g(
       .clk1x(clk1x),
       .clk5x(clk5x),
       .rst(rst),
       .din(encode_chn_g),
       .dout_p(hdmi_tx_chn_g_p),
       .dout_n(hdmi_tx_chn_g_n)
    );
    
    parallel_to_serial inst_parallel_to_serial_chn_b(
       .clk1x(clk1x),
       .clk5x(clk5x),
       .rst(rst),
       .din(encode_chn_b),
       .dout_p(hdmi_tx_chn_b_p),
       .dout_n(hdmi_tx_chn_b_n)
    );
    
endmodule
