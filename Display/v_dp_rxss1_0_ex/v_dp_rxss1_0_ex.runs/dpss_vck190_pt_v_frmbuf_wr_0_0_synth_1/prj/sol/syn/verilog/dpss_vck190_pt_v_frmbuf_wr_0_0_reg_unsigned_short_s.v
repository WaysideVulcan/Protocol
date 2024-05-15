// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module dpss_vck190_pt_v_frmbuf_wr_0_0_reg_unsigned_short_s (
        ap_clk,
        ap_rst,
        d,
        ap_return,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [12:0] d;
output  [12:0] ap_return;
input   ap_ce;

reg[12:0] ap_return;

reg   [12:0] d_read_reg_28;
wire    ap_block_pp0_stage0_11001;
reg    ap_ce_reg;
reg   [12:0] ap_return_int_reg;

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_int_reg <= d_read_reg_28;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        d_read_reg_28 <= d;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return = ap_return_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return = d_read_reg_28;
    end else begin
        ap_return = 'bx;
    end
end

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

endmodule //dpss_vck190_pt_v_frmbuf_wr_0_0_reg_unsigned_short_s
