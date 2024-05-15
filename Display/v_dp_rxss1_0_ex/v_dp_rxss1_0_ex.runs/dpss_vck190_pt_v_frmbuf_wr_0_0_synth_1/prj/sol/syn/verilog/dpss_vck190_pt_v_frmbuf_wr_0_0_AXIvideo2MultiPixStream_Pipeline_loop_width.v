// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module dpss_vck190_pt_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_width (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        s_axis_video_TVALID,
        img_din,
        img_num_data_valid,
        img_fifo_cap,
        img_full_n,
        img_write,
        sof_2,
        axi_last_2,
        axi_data_2,
        trunc_ln226_1,
        cond,
        colorFormat_val_cast,
        colorFormat_val,
        s_axis_video_TDATA,
        s_axis_video_TREADY,
        s_axis_video_TKEEP,
        s_axis_video_TSTRB,
        s_axis_video_TUSER,
        s_axis_video_TLAST,
        s_axis_video_TID,
        s_axis_video_TDEST,
        eol_out,
        eol_out_ap_vld,
        axi_data_3_out,
        axi_data_3_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   s_axis_video_TVALID;
output  [119:0] img_din;
input  [2:0] img_num_data_valid;
input  [2:0] img_fifo_cap;
input   img_full_n;
output   img_write;
input  [0:0] sof_2;
input  [0:0] axi_last_2;
input  [119:0] axi_data_2;
input  [10:0] trunc_ln226_1;
input  [0:0] cond;
input  [2:0] colorFormat_val_cast;
input  [2:0] colorFormat_val;
input  [119:0] s_axis_video_TDATA;
output   s_axis_video_TREADY;
input  [14:0] s_axis_video_TKEEP;
input  [14:0] s_axis_video_TSTRB;
input  [0:0] s_axis_video_TUSER;
input  [0:0] s_axis_video_TLAST;
input  [0:0] s_axis_video_TID;
input  [0:0] s_axis_video_TDEST;
output  [0:0] eol_out;
output   eol_out_ap_vld;
output  [119:0] axi_data_3_out;
output   axi_data_3_out_ap_vld;

reg ap_idle;
reg img_write;
reg s_axis_video_TREADY;
reg eol_out_ap_vld;
reg axi_data_3_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] icmp_ln257_fu_328_p2;
wire   [0:0] or_ln261_fu_334_p2;
reg    ap_predicate_op55_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] icmp_ln257_reg_755;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    img_blk_n;
wire    ap_block_pp0_stage0;
reg    s_axis_video_TDATA_blk_n;
reg   [0:0] eol_reg_237;
reg    ap_block_pp0_stage0_11001;
wire   [7:0] colorFormat_val_cast_cast_fu_276_p1;
reg   [7:0] colorFormat_val_cast_cast_reg_744;
reg   [0:0] ap_phi_mux_eol_phi_fu_240_p4;
wire    ap_loop_init;
reg   [0:0] ap_phi_mux_sof_phi_fu_251_p4;
reg   [10:0] j_fu_144;
wire   [10:0] j_2_fu_322_p2;
reg   [10:0] ap_sig_allocacmp_j_1;
reg   [119:0] axi_data_fu_148;
reg   [0:0] axi_last_fu_152;
reg    ap_block_pp0_stage0_01001;
wire   [9:0] tmp_8_fu_395_p4;
wire   [9:0] trunc_ln63_fu_405_p1;
wire   [9:0] tmp_s_fu_416_p4;
wire   [9:0] tmp_1_fu_460_p2;
wire   [9:0] tmp_16_fu_440_p4;
wire   [9:0] tmp_1_fu_460_p4;
wire   [9:0] tmp_17_fu_450_p4;
wire   [9:0] tmp_1_fu_460_p5;
wire   [0:0] icmp_ln290_fu_485_p2;
wire   [9:0] tmp_18_fu_475_p4;
wire   [9:0] tmp_2_fu_526_p2;
wire   [9:0] tmp_2_fu_526_p4;
wire   [9:0] tmp_2_fu_526_p5;
wire   [9:0] tmp_3_fu_551_p2;
wire   [9:0] tmp_3_fu_551_p4;
wire   [9:0] tmp_3_fu_551_p5;
wire   [9:0] tmp_4_fu_566_p2;
wire   [9:0] tmp_4_fu_566_p4;
wire   [9:0] tmp_4_fu_566_p5;
wire   [9:0] tmp_5_fu_601_p2;
wire   [9:0] tmp_5_fu_601_p4;
wire   [9:0] tmp_5_fu_601_p5;
wire   [9:0] tmp_6_fu_626_p2;
wire   [9:0] tmp_6_fu_626_p4;
wire   [9:0] tmp_6_fu_626_p5;
wire   [9:0] tmp_7_fu_641_p2;
wire   [9:0] tmp_7_fu_641_p4;
wire   [9:0] tmp_7_fu_641_p5;
wire   [9:0] tmp_7_fu_641_p7;
wire   [9:0] tmp_6_fu_626_p7;
wire   [9:0] tmp_5_fu_601_p7;
wire   [9:0] tmp_4_fu_566_p7;
wire   [9:0] tmp_3_fu_551_p7;
wire   [9:0] tmp_2_fu_526_p7;
wire   [9:0] select_ln290_4_fu_498_p3;
wire   [9:0] select_ln290_3_fu_490_p3;
wire   [9:0] tmp_1_fu_460_p7;
wire   [9:0] select_ln290_2_fu_433_p3;
wire   [9:0] select_ln290_1_fu_426_p3;
wire   [9:0] select_ln290_fu_409_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_430;
reg    ap_condition_433;
reg    ap_condition_438;
wire   [7:0] tmp_1_fu_460_p1;
wire   [7:0] tmp_1_fu_460_p3;
wire   [7:0] tmp_2_fu_526_p1;
wire   [7:0] tmp_2_fu_526_p3;
wire   [7:0] tmp_3_fu_551_p1;
wire   [7:0] tmp_3_fu_551_p3;
wire   [7:0] tmp_4_fu_566_p1;
wire   [7:0] tmp_4_fu_566_p3;
wire   [7:0] tmp_5_fu_601_p1;
wire   [7:0] tmp_5_fu_601_p3;
wire   [7:0] tmp_6_fu_626_p1;
wire   [7:0] tmp_6_fu_626_p3;
wire   [7:0] tmp_7_fu_641_p1;
wire   [7:0] tmp_7_fu_641_p3;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 j_fu_144 = 11'd0;
#0 axi_data_fu_148 = 120'd0;
#0 axi_last_fu_152 = 1'd0;
#0 ap_done_reg = 1'b0;
end

dpss_vck190_pt_v_frmbuf_wr_0_0_sparsemux_5_8_10_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 8'h0 ),
    .din0_WIDTH( 10 ),
    .CASE1( 8'h1 ),
    .din1_WIDTH( 10 ),
    .def_WIDTH( 10 ),
    .sel_WIDTH( 8 ),
    .dout_WIDTH( 10 ))
sparsemux_5_8_10_1_1_U17(
    .din0(tmp_1_fu_460_p2),
    .din1(tmp_1_fu_460_p4),
    .def(tmp_1_fu_460_p5),
    .sel(colorFormat_val_cast_cast_reg_744),
    .dout(tmp_1_fu_460_p7)
);

dpss_vck190_pt_v_frmbuf_wr_0_0_sparsemux_5_8_10_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 8'h0 ),
    .din0_WIDTH( 10 ),
    .CASE1( 8'h1 ),
    .din1_WIDTH( 10 ),
    .def_WIDTH( 10 ),
    .sel_WIDTH( 8 ),
    .dout_WIDTH( 10 ))
sparsemux_5_8_10_1_1_U18(
    .din0(tmp_2_fu_526_p2),
    .din1(tmp_2_fu_526_p4),
    .def(tmp_2_fu_526_p5),
    .sel(colorFormat_val_cast_cast_reg_744),
    .dout(tmp_2_fu_526_p7)
);

dpss_vck190_pt_v_frmbuf_wr_0_0_sparsemux_5_8_10_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 8'h0 ),
    .din0_WIDTH( 10 ),
    .CASE1( 8'h1 ),
    .din1_WIDTH( 10 ),
    .def_WIDTH( 10 ),
    .sel_WIDTH( 8 ),
    .dout_WIDTH( 10 ))
sparsemux_5_8_10_1_1_U19(
    .din0(tmp_3_fu_551_p2),
    .din1(tmp_3_fu_551_p4),
    .def(tmp_3_fu_551_p5),
    .sel(colorFormat_val_cast_cast_reg_744),
    .dout(tmp_3_fu_551_p7)
);

dpss_vck190_pt_v_frmbuf_wr_0_0_sparsemux_5_8_10_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 8'h0 ),
    .din0_WIDTH( 10 ),
    .CASE1( 8'h1 ),
    .din1_WIDTH( 10 ),
    .def_WIDTH( 10 ),
    .sel_WIDTH( 8 ),
    .dout_WIDTH( 10 ))
sparsemux_5_8_10_1_1_U20(
    .din0(tmp_4_fu_566_p2),
    .din1(tmp_4_fu_566_p4),
    .def(tmp_4_fu_566_p5),
    .sel(colorFormat_val_cast_cast_reg_744),
    .dout(tmp_4_fu_566_p7)
);

dpss_vck190_pt_v_frmbuf_wr_0_0_sparsemux_5_8_10_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 8'h0 ),
    .din0_WIDTH( 10 ),
    .CASE1( 8'h1 ),
    .din1_WIDTH( 10 ),
    .def_WIDTH( 10 ),
    .sel_WIDTH( 8 ),
    .dout_WIDTH( 10 ))
sparsemux_5_8_10_1_1_U21(
    .din0(tmp_5_fu_601_p2),
    .din1(tmp_5_fu_601_p4),
    .def(tmp_5_fu_601_p5),
    .sel(colorFormat_val_cast_cast_reg_744),
    .dout(tmp_5_fu_601_p7)
);

dpss_vck190_pt_v_frmbuf_wr_0_0_sparsemux_5_8_10_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 8'h0 ),
    .din0_WIDTH( 10 ),
    .CASE1( 8'h1 ),
    .din1_WIDTH( 10 ),
    .def_WIDTH( 10 ),
    .sel_WIDTH( 8 ),
    .dout_WIDTH( 10 ))
sparsemux_5_8_10_1_1_U22(
    .din0(tmp_6_fu_626_p2),
    .din1(tmp_6_fu_626_p4),
    .def(tmp_6_fu_626_p5),
    .sel(colorFormat_val_cast_cast_reg_744),
    .dout(tmp_6_fu_626_p7)
);

dpss_vck190_pt_v_frmbuf_wr_0_0_sparsemux_5_8_10_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 8'h0 ),
    .din0_WIDTH( 10 ),
    .CASE1( 8'h1 ),
    .din1_WIDTH( 10 ),
    .def_WIDTH( 10 ),
    .sel_WIDTH( 8 ),
    .dout_WIDTH( 10 ))
sparsemux_5_8_10_1_1_U23(
    .din0(tmp_7_fu_641_p2),
    .din1(tmp_7_fu_641_p4),
    .def(tmp_7_fu_641_p5),
    .sel(colorFormat_val_cast_cast_reg_744),
    .dout(tmp_7_fu_641_p7)
);

dpss_vck190_pt_v_frmbuf_wr_0_0_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((1'b1 == ap_condition_433)) begin
            axi_data_fu_148 <= s_axis_video_TDATA;
        end else if ((ap_loop_init == 1'b1)) begin
            axi_data_fu_148 <= axi_data_2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((1'b1 == ap_condition_433)) begin
            axi_last_fu_152 <= s_axis_video_TLAST;
        end else if ((ap_loop_init == 1'b1)) begin
            axi_last_fu_152 <= axi_last_2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_438)) begin
            eol_reg_237 <= axi_last_fu_152;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            eol_reg_237 <= 1'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln257_fu_328_p2 == 1'd0) & (ap_start_int == 1'b1))) begin
            j_fu_144 <= j_2_fu_322_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_144 <= 11'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        colorFormat_val_cast_cast_reg_744[2 : 0] <= colorFormat_val_cast_cast_fu_276_p1[2 : 0];
        icmp_ln257_reg_755 <= icmp_ln257_fu_328_p2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln257_fu_328_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_430)) begin
            ap_phi_mux_eol_phi_fu_240_p4 = axi_last_fu_152;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_eol_phi_fu_240_p4 = 1'd0;
        end else begin
            ap_phi_mux_eol_phi_fu_240_p4 = eol_reg_237;
        end
    end else begin
        ap_phi_mux_eol_phi_fu_240_p4 = eol_reg_237;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_430)) begin
            ap_phi_mux_sof_phi_fu_251_p4 = 1'd0;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_sof_phi_fu_251_p4 = sof_2;
        end else begin
            ap_phi_mux_sof_phi_fu_251_p4 = 1'd0;
        end
    end else begin
        ap_phi_mux_sof_phi_fu_251_p4 = 1'd0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_144;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln257_fu_328_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        axi_data_3_out_ap_vld = 1'b1;
    end else begin
        axi_data_3_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln257_fu_328_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        eol_out_ap_vld = 1'b1;
    end else begin
        eol_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln257_reg_755 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        img_blk_n = img_full_n;
    end else begin
        img_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln257_reg_755 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        img_write = 1'b1;
    end else begin
        img_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op55_read_state1 == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_axis_video_TDATA_blk_n = s_axis_video_TVALID;
    end else begin
        s_axis_video_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op55_read_state1 == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_axis_video_TREADY = 1'b1;
    end else begin
        s_axis_video_TREADY = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1)) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1)) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1)) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_predicate_op55_read_state1 == 1'b1) & (s_axis_video_TVALID == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((icmp_ln257_reg_755 == 1'd0) & (img_full_n == 1'b0));
end

always @ (*) begin
    ap_condition_430 = ((icmp_ln257_reg_755 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_condition_433 = ((or_ln261_fu_334_p2 == 1'd0) & (icmp_ln257_fu_328_p2 == 1'd0) & (ap_start_int == 1'b1));
end

always @ (*) begin
    ap_condition_438 = ((icmp_ln257_reg_755 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

always @ (*) begin
    ap_predicate_op55_read_state1 = ((or_ln261_fu_334_p2 == 1'd0) & (icmp_ln257_fu_328_p2 == 1'd0));
end

assign axi_data_3_out = axi_data_fu_148;

assign colorFormat_val_cast_cast_fu_276_p1 = colorFormat_val_cast;

assign eol_out = eol_reg_237;

assign icmp_ln257_fu_328_p2 = ((ap_sig_allocacmp_j_1 == trunc_ln226_1) ? 1'b1 : 1'b0);

assign icmp_ln290_fu_485_p2 = ((colorFormat_val == 3'd1) ? 1'b1 : 1'b0);

assign img_din = {{{{{{{{{{{{tmp_7_fu_641_p7}, {tmp_6_fu_626_p7}}, {tmp_5_fu_601_p7}}, {tmp_4_fu_566_p7}}, {tmp_3_fu_551_p7}}, {tmp_2_fu_526_p7}}, {select_ln290_4_fu_498_p3}}, {select_ln290_3_fu_490_p3}}, {tmp_1_fu_460_p7}}, {select_ln290_2_fu_433_p3}}, {select_ln290_1_fu_426_p3}}, {select_ln290_fu_409_p3}};

assign j_2_fu_322_p2 = (ap_sig_allocacmp_j_1 + 11'd1);

assign or_ln261_fu_334_p2 = (ap_phi_mux_sof_phi_fu_251_p4 | ap_phi_mux_eol_phi_fu_240_p4);

assign select_ln290_1_fu_426_p3 = ((cond[0:0] == 1'b1) ? trunc_ln63_fu_405_p1 : tmp_s_fu_416_p4);

assign select_ln290_2_fu_433_p3 = ((cond[0:0] == 1'b1) ? tmp_s_fu_416_p4 : tmp_8_fu_395_p4);

assign select_ln290_3_fu_490_p3 = ((icmp_ln290_fu_485_p2[0:0] == 1'b1) ? tmp_18_fu_475_p4 : tmp_17_fu_450_p4);

assign select_ln290_4_fu_498_p3 = ((icmp_ln290_fu_485_p2[0:0] == 1'b1) ? tmp_16_fu_440_p4 : tmp_18_fu_475_p4);

assign select_ln290_fu_409_p3 = ((cond[0:0] == 1'b1) ? tmp_8_fu_395_p4 : trunc_ln63_fu_405_p1);

assign tmp_16_fu_440_p4 = {{axi_data_fu_148[59:50]}};

assign tmp_17_fu_450_p4 = {{axi_data_fu_148[39:30]}};

assign tmp_18_fu_475_p4 = {{axi_data_fu_148[49:40]}};

assign tmp_1_fu_460_p2 = {{axi_data_fu_148[59:50]}};

assign tmp_1_fu_460_p4 = {{axi_data_fu_148[39:30]}};

assign tmp_1_fu_460_p5 = {{axi_data_fu_148[29:20]}};

assign tmp_2_fu_526_p2 = {{axi_data_fu_148[89:80]}};

assign tmp_2_fu_526_p4 = {{axi_data_fu_148[69:60]}};

assign tmp_2_fu_526_p5 = {{axi_data_fu_148[49:40]}};

assign tmp_3_fu_551_p2 = {{axi_data_fu_148[69:60]}};

assign tmp_3_fu_551_p4 = {{axi_data_fu_148[79:70]}};

assign tmp_3_fu_551_p5 = {{axi_data_fu_148[59:50]}};

assign tmp_4_fu_566_p2 = {{axi_data_fu_148[79:70]}};

assign tmp_4_fu_566_p4 = {{axi_data_fu_148[89:80]}};

assign tmp_4_fu_566_p5 = {{axi_data_fu_148[69:60]}};

assign tmp_5_fu_601_p2 = {{axi_data_fu_148[119:110]}};

assign tmp_5_fu_601_p4 = {{axi_data_fu_148[99:90]}};

assign tmp_5_fu_601_p5 = {{axi_data_fu_148[69:60]}};

assign tmp_6_fu_626_p2 = {{axi_data_fu_148[99:90]}};

assign tmp_6_fu_626_p4 = {{axi_data_fu_148[109:100]}};

assign tmp_6_fu_626_p5 = {{axi_data_fu_148[79:70]}};

assign tmp_7_fu_641_p2 = {{axi_data_fu_148[109:100]}};

assign tmp_7_fu_641_p4 = {{axi_data_fu_148[119:110]}};

assign tmp_7_fu_641_p5 = {{axi_data_fu_148[89:80]}};

assign tmp_8_fu_395_p4 = {{axi_data_fu_148[29:20]}};

assign tmp_s_fu_416_p4 = {{axi_data_fu_148[19:10]}};

assign trunc_ln63_fu_405_p1 = axi_data_fu_148[9:0];

always @ (posedge ap_clk) begin
    colorFormat_val_cast_cast_reg_744[7:3] <= 5'b00000;
end

endmodule //dpss_vck190_pt_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_width
