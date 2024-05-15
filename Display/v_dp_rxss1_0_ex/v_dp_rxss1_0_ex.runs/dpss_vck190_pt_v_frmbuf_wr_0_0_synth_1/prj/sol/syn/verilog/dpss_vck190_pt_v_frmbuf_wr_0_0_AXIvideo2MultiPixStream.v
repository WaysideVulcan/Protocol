// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module dpss_vck190_pt_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        s_axis_video_TDATA,
        s_axis_video_TVALID,
        s_axis_video_TREADY,
        s_axis_video_TKEEP,
        s_axis_video_TSTRB,
        s_axis_video_TUSER,
        s_axis_video_TLAST,
        s_axis_video_TID,
        s_axis_video_TDEST,
        img_din,
        img_num_data_valid,
        img_fifo_cap,
        img_full_n,
        img_write,
        Height_val,
        WidthIn_val,
        colorFormat_val
);

parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [119:0] s_axis_video_TDATA;
input   s_axis_video_TVALID;
output   s_axis_video_TREADY;
input  [14:0] s_axis_video_TKEEP;
input  [14:0] s_axis_video_TSTRB;
input  [0:0] s_axis_video_TUSER;
input  [0:0] s_axis_video_TLAST;
input  [0:0] s_axis_video_TID;
input  [0:0] s_axis_video_TDEST;
output  [119:0] img_din;
input  [2:0] img_num_data_valid;
input  [2:0] img_fifo_cap;
input   img_full_n;
output   img_write;
input  [12:0] Height_val;
input  [12:0] WidthIn_val;
input  [2:0] colorFormat_val;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg s_axis_video_TREADY;
reg img_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
reg   [10:0] trunc_ln226_1_reg_412;
wire    ap_CS_fsm_state2;
wire   [12:0] grp_reg_unsigned_short_s_fu_258_ap_return;
reg   [12:0] rows_reg_418;
wire    ap_CS_fsm_state4;
wire   [0:0] cmp10403_fu_269_p2;
reg   [0:0] cmp10403_reg_426;
wire   [0:0] cond_fu_274_p2;
reg   [0:0] cond_reg_431;
wire   [0:0] xor_ln306_fu_279_p2;
reg   [0:0] xor_ln306_reg_436;
wire   [0:0] and_ln306_fu_302_p2;
reg   [0:0] and_ln306_reg_444;
wire    ap_CS_fsm_state5;
wire   [0:0] select_ln306_fu_340_p3;
reg   [0:0] select_ln306_reg_458;
wire    ap_CS_fsm_state9;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_ap_start;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_ap_done;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_ap_idle;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_ap_ready;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_s_axis_video_TREADY;
wire   [119:0] grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_axi_data_out;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_axi_data_out_ap_vld;
wire   [0:0] grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_axi_last_out;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_axi_last_out_ap_vld;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_ap_start;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_ap_done;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_ap_idle;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_ap_ready;
wire   [119:0] grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_img_din;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_img_write;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_s_axis_video_TREADY;
wire   [0:0] grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_eol_out;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_eol_out_ap_vld;
wire   [119:0] grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_axi_data_3_out;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_axi_data_3_out_ap_vld;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_ap_start;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_ap_done;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_ap_idle;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_ap_ready;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_s_axis_video_TREADY;
wire   [119:0] grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_axi_data_4_out;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_axi_data_4_out_ap_vld;
wire   [0:0] grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_axi_last_4_out;
wire    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_axi_last_4_out_ap_vld;
wire   [12:0] grp_reg_unsigned_short_s_fu_230_ap_return;
reg    grp_reg_unsigned_short_s_fu_230_ap_ce;
reg    ap_block_state1_ignore_call18;
reg    grp_reg_unsigned_short_s_fu_258_ap_ce;
wire    ap_CS_fsm_state3;
reg   [0:0] sof_reg_128;
wire    ap_CS_fsm_state11;
reg   [0:0] axi_last_2_reg_140;
reg    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_ap_start_reg;
reg   [119:0] axi_data_2_fu_86;
reg    grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_ap_start_reg;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
reg    grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_ap_start_reg;
wire    ap_CS_fsm_state10;
reg   [0:0] axi_last_4_loc_fu_94;
reg   [12:0] i_fu_90;
wire   [12:0] i_2_fu_291_p2;
wire   [0:0] icmp_ln253_fu_297_p2;
reg   [10:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 11'd1;
#0 grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_ap_start_reg = 1'b0;
#0 grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_ap_start_reg = 1'b0;
#0 grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_ap_start_reg = 1'b0;
#0 i_fu_90 = 13'd0;
end

dpss_vck190_pt_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_ap_start),
    .ap_done(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_ap_done),
    .ap_idle(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_ap_idle),
    .ap_ready(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_ap_ready),
    .s_axis_video_TVALID(s_axis_video_TVALID),
    .s_axis_video_TDATA(s_axis_video_TDATA),
    .s_axis_video_TREADY(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_s_axis_video_TREADY),
    .s_axis_video_TKEEP(s_axis_video_TKEEP),
    .s_axis_video_TSTRB(s_axis_video_TSTRB),
    .s_axis_video_TUSER(s_axis_video_TUSER),
    .s_axis_video_TLAST(s_axis_video_TLAST),
    .s_axis_video_TID(s_axis_video_TID),
    .s_axis_video_TDEST(s_axis_video_TDEST),
    .axi_data_out(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_axi_data_out),
    .axi_data_out_ap_vld(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_axi_data_out_ap_vld),
    .axi_last_out(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_axi_last_out),
    .axi_last_out_ap_vld(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_axi_last_out_ap_vld)
);

dpss_vck190_pt_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_width grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_ap_start),
    .ap_done(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_ap_done),
    .ap_idle(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_ap_idle),
    .ap_ready(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_ap_ready),
    .s_axis_video_TVALID(s_axis_video_TVALID),
    .img_din(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_img_din),
    .img_num_data_valid(3'd0),
    .img_fifo_cap(3'd0),
    .img_full_n(img_full_n),
    .img_write(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_img_write),
    .sof_2(sof_reg_128),
    .axi_last_2(axi_last_2_reg_140),
    .axi_data_2(axi_data_2_fu_86),
    .trunc_ln226_1(trunc_ln226_1_reg_412),
    .cond(cond_reg_431),
    .colorFormat_val_cast(colorFormat_val),
    .colorFormat_val(colorFormat_val),
    .s_axis_video_TDATA(s_axis_video_TDATA),
    .s_axis_video_TREADY(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_s_axis_video_TREADY),
    .s_axis_video_TKEEP(s_axis_video_TKEEP),
    .s_axis_video_TSTRB(s_axis_video_TSTRB),
    .s_axis_video_TUSER(s_axis_video_TUSER),
    .s_axis_video_TLAST(s_axis_video_TLAST),
    .s_axis_video_TID(s_axis_video_TID),
    .s_axis_video_TDEST(s_axis_video_TDEST),
    .eol_out(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_eol_out),
    .eol_out_ap_vld(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_eol_out_ap_vld),
    .axi_data_3_out(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_axi_data_3_out),
    .axi_data_3_out_ap_vld(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_axi_data_3_out_ap_vld)
);

dpss_vck190_pt_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_ap_start),
    .ap_done(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_ap_done),
    .ap_idle(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_ap_idle),
    .ap_ready(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_ap_ready),
    .s_axis_video_TVALID(s_axis_video_TVALID),
    .axi_data_3_reload(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_axi_data_3_out),
    .select_ln306(select_ln306_reg_458),
    .eol_reload(grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_eol_out),
    .s_axis_video_TDATA(s_axis_video_TDATA),
    .s_axis_video_TREADY(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_s_axis_video_TREADY),
    .s_axis_video_TKEEP(s_axis_video_TKEEP),
    .s_axis_video_TSTRB(s_axis_video_TSTRB),
    .s_axis_video_TUSER(s_axis_video_TUSER),
    .s_axis_video_TLAST(s_axis_video_TLAST),
    .s_axis_video_TID(s_axis_video_TID),
    .s_axis_video_TDEST(s_axis_video_TDEST),
    .axi_data_4_out(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_axi_data_4_out),
    .axi_data_4_out_ap_vld(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_axi_data_4_out_ap_vld),
    .axi_last_4_out(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_axi_last_4_out),
    .axi_last_4_out_ap_vld(grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_axi_last_4_out_ap_vld)
);

dpss_vck190_pt_v_frmbuf_wr_0_0_reg_unsigned_short_s grp_reg_unsigned_short_s_fu_230(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .d(WidthIn_val),
    .ap_return(grp_reg_unsigned_short_s_fu_230_ap_return),
    .ap_ce(grp_reg_unsigned_short_s_fu_230_ap_ce)
);

dpss_vck190_pt_v_frmbuf_wr_0_0_reg_unsigned_short_s grp_reg_unsigned_short_s_fu_258(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .d(Height_val),
    .ap_return(grp_reg_unsigned_short_s_fu_258_ap_return),
    .ap_ce(grp_reg_unsigned_short_s_fu_258_ap_ce)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((icmp_ln253_fu_297_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_ap_start_reg <= 1'b1;
        end else if ((grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_ap_ready == 1'b1)) begin
            grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_ap_start_reg <= 1'b1;
        end else if ((grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_ap_ready == 1'b1)) begin
            grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_ap_start_reg <= 1'b1;
        end else if ((grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_ap_ready == 1'b1)) begin
            grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_axi_data_4_out_ap_vld == 1'b1))) begin
        axi_data_2_fu_86 <= grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_axi_data_4_out;
    end else if (((1'b1 == ap_CS_fsm_state3) & (grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_axi_data_out_ap_vld == 1'b1))) begin
        axi_data_2_fu_86 <= grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_axi_data_out;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        axi_last_2_reg_140 <= axi_last_4_loc_fu_94;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        axi_last_2_reg_140 <= grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_axi_last_out;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_90 <= 13'd0;
    end else if (((icmp_ln253_fu_297_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        i_fu_90 <= i_2_fu_291_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        sof_reg_128 <= and_ln306_reg_444;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sof_reg_128 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        and_ln306_reg_444 <= and_ln306_fu_302_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_axi_last_4_out_ap_vld == 1'b1))) begin
        axi_last_4_loc_fu_94 <= grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_axi_last_4_out;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cmp10403_reg_426 <= cmp10403_fu_269_p2;
        cond_reg_431 <= cond_fu_274_p2;
        rows_reg_418 <= grp_reg_unsigned_short_s_fu_258_ap_return;
        xor_ln306_reg_436 <= xor_ln306_fu_279_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        select_ln306_reg_458 <= select_ln306_fu_340_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        trunc_ln226_1_reg_412 <= {{grp_reg_unsigned_short_s_fu_230_ap_return[12:2]}};
    end
end

always @ (*) begin
    if ((grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end

assign ap_ST_fsm_state11_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

always @ (*) begin
    if ((grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_ap_done == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if (((icmp_ln253_fu_297_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln253_fu_297_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b0 == ap_block_state1_ignore_call18) & (1'b1 == ap_CS_fsm_state1)))) begin
        grp_reg_unsigned_short_s_fu_230_ap_ce = 1'b1;
    end else begin
        grp_reg_unsigned_short_s_fu_230_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3)))) begin
        grp_reg_unsigned_short_s_fu_258_ap_ce = 1'b1;
    end else begin
        grp_reg_unsigned_short_s_fu_258_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        img_write = grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_img_write;
    end else begin
        img_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        s_axis_video_TREADY = grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_s_axis_video_TREADY;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        s_axis_video_TREADY = grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_s_axis_video_TREADY;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        s_axis_video_TREADY = grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_s_axis_video_TREADY;
    end else begin
        s_axis_video_TREADY = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln253_fu_297_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign and_ln306_fu_302_p2 = (xor_ln306_reg_436 & sof_reg_128);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state1_ignore_call18 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

assign cmp10403_fu_269_p2 = ((trunc_ln226_1_reg_412 != 11'd0) ? 1'b1 : 1'b0);

assign cond_fu_274_p2 = ((colorFormat_val == 3'd0) ? 1'b1 : 1'b0);

assign grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_ap_start = grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_201_ap_start_reg;

assign grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_ap_start = grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_150_ap_start_reg;

assign grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_ap_start = grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_ap_start_reg;

assign i_2_fu_291_p2 = (i_fu_90 + 13'd1);

assign icmp_ln253_fu_297_p2 = ((i_fu_90 == rows_reg_418) ? 1'b1 : 1'b0);

assign img_din = grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_img_din;

assign select_ln306_fu_340_p3 = ((cmp10403_reg_426[0:0] == 1'b1) ? grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_170_eol_out : axi_last_2_reg_140);

assign xor_ln306_fu_279_p2 = (cmp10403_fu_269_p2 ^ 1'd1);

endmodule //dpss_vck190_pt_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream
