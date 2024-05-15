// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module dpss_vck190_pt_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1326_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        bytePlanes_plane1_dout,
        bytePlanes_plane1_num_data_valid,
        bytePlanes_plane1_fifo_cap,
        bytePlanes_plane1_empty_n,
        bytePlanes_plane1_read,
        m_axi_mm_video_AWVALID,
        m_axi_mm_video_AWREADY,
        m_axi_mm_video_AWADDR,
        m_axi_mm_video_AWID,
        m_axi_mm_video_AWLEN,
        m_axi_mm_video_AWSIZE,
        m_axi_mm_video_AWBURST,
        m_axi_mm_video_AWLOCK,
        m_axi_mm_video_AWCACHE,
        m_axi_mm_video_AWPROT,
        m_axi_mm_video_AWQOS,
        m_axi_mm_video_AWREGION,
        m_axi_mm_video_AWUSER,
        m_axi_mm_video_WVALID,
        m_axi_mm_video_WREADY,
        m_axi_mm_video_WDATA,
        m_axi_mm_video_WSTRB,
        m_axi_mm_video_WLAST,
        m_axi_mm_video_WID,
        m_axi_mm_video_WUSER,
        m_axi_mm_video_ARVALID,
        m_axi_mm_video_ARREADY,
        m_axi_mm_video_ARADDR,
        m_axi_mm_video_ARID,
        m_axi_mm_video_ARLEN,
        m_axi_mm_video_ARSIZE,
        m_axi_mm_video_ARBURST,
        m_axi_mm_video_ARLOCK,
        m_axi_mm_video_ARCACHE,
        m_axi_mm_video_ARPROT,
        m_axi_mm_video_ARQOS,
        m_axi_mm_video_ARREGION,
        m_axi_mm_video_ARUSER,
        m_axi_mm_video_RVALID,
        m_axi_mm_video_RREADY,
        m_axi_mm_video_RDATA,
        m_axi_mm_video_RLAST,
        m_axi_mm_video_RID,
        m_axi_mm_video_RFIFONUM,
        m_axi_mm_video_RUSER,
        m_axi_mm_video_RRESP,
        m_axi_mm_video_BVALID,
        m_axi_mm_video_BREADY,
        m_axi_mm_video_BRESP,
        m_axi_mm_video_BID,
        m_axi_mm_video_BUSER,
        div,
        sext_ln1326
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [255:0] bytePlanes_plane1_dout;
input  [9:0] bytePlanes_plane1_num_data_valid;
input  [9:0] bytePlanes_plane1_fifo_cap;
input   bytePlanes_plane1_empty_n;
output   bytePlanes_plane1_read;
output   m_axi_mm_video_AWVALID;
input   m_axi_mm_video_AWREADY;
output  [31:0] m_axi_mm_video_AWADDR;
output  [0:0] m_axi_mm_video_AWID;
output  [31:0] m_axi_mm_video_AWLEN;
output  [2:0] m_axi_mm_video_AWSIZE;
output  [1:0] m_axi_mm_video_AWBURST;
output  [1:0] m_axi_mm_video_AWLOCK;
output  [3:0] m_axi_mm_video_AWCACHE;
output  [2:0] m_axi_mm_video_AWPROT;
output  [3:0] m_axi_mm_video_AWQOS;
output  [3:0] m_axi_mm_video_AWREGION;
output  [0:0] m_axi_mm_video_AWUSER;
output   m_axi_mm_video_WVALID;
input   m_axi_mm_video_WREADY;
output  [255:0] m_axi_mm_video_WDATA;
output  [31:0] m_axi_mm_video_WSTRB;
output   m_axi_mm_video_WLAST;
output  [0:0] m_axi_mm_video_WID;
output  [0:0] m_axi_mm_video_WUSER;
output   m_axi_mm_video_ARVALID;
input   m_axi_mm_video_ARREADY;
output  [31:0] m_axi_mm_video_ARADDR;
output  [0:0] m_axi_mm_video_ARID;
output  [31:0] m_axi_mm_video_ARLEN;
output  [2:0] m_axi_mm_video_ARSIZE;
output  [1:0] m_axi_mm_video_ARBURST;
output  [1:0] m_axi_mm_video_ARLOCK;
output  [3:0] m_axi_mm_video_ARCACHE;
output  [2:0] m_axi_mm_video_ARPROT;
output  [3:0] m_axi_mm_video_ARQOS;
output  [3:0] m_axi_mm_video_ARREGION;
output  [0:0] m_axi_mm_video_ARUSER;
input   m_axi_mm_video_RVALID;
output   m_axi_mm_video_RREADY;
input  [255:0] m_axi_mm_video_RDATA;
input   m_axi_mm_video_RLAST;
input  [0:0] m_axi_mm_video_RID;
input  [8:0] m_axi_mm_video_RFIFONUM;
input  [0:0] m_axi_mm_video_RUSER;
input  [1:0] m_axi_mm_video_RRESP;
input   m_axi_mm_video_BVALID;
output   m_axi_mm_video_BREADY;
input  [1:0] m_axi_mm_video_BRESP;
input  [0:0] m_axi_mm_video_BID;
input  [0:0] m_axi_mm_video_BUSER;
input  [11:0] div;
input  [26:0] sext_ln1326;

reg ap_idle;
reg bytePlanes_plane1_read;
reg m_axi_mm_video_WVALID;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1326_fu_131_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    mm_video_blk_n_W;
wire    ap_block_pp0_stage0;
reg    bytePlanes_plane1_blk_n;
reg    ap_block_pp0_stage0_11001;
reg    ap_block_pp0_stage0_01001;
reg   [11:0] x_fu_68;
wire   [11:0] add_ln1326_fu_125_p2;
wire    ap_loop_init;
reg   [11:0] ap_sig_allocacmp_x_7;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 x_fu_68 = 12'd0;
#0 ap_done_reg = 1'b0;
end

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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready == 1'b1))) begin
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln1326_fu_131_p2 == 1'd0))) begin
            x_fu_68 <= add_ln1326_fu_125_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            x_fu_68 <= 12'd0;
        end
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln1326_fu_131_p2 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_x_7 = 12'd0;
    end else begin
        ap_sig_allocacmp_x_7 = x_fu_68;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bytePlanes_plane1_blk_n = bytePlanes_plane1_empty_n;
    end else begin
        bytePlanes_plane1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bytePlanes_plane1_read = 1'b1;
    end else begin
        bytePlanes_plane1_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_axi_mm_video_WVALID = 1'b1;
    end else begin
        m_axi_mm_video_WVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mm_video_blk_n_W = m_axi_mm_video_WREADY;
    end else begin
        mm_video_blk_n_W = 1'b1;
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

assign add_ln1326_fu_125_p2 = (ap_sig_allocacmp_x_7 + 12'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & ((m_axi_mm_video_WREADY == 1'b0) | (1'b1 == ap_block_state2_pp0_stage0_iter1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & ((m_axi_mm_video_WREADY == 1'b0) | (1'b1 == ap_block_state2_pp0_stage0_iter1)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (bytePlanes_plane1_empty_n == 1'b0);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln1326_fu_131_p2 = ((ap_sig_allocacmp_x_7 == div) ? 1'b1 : 1'b0);

assign m_axi_mm_video_ARADDR = 32'd0;

assign m_axi_mm_video_ARBURST = 2'd0;

assign m_axi_mm_video_ARCACHE = 4'd0;

assign m_axi_mm_video_ARID = 1'd0;

assign m_axi_mm_video_ARLEN = 32'd0;

assign m_axi_mm_video_ARLOCK = 2'd0;

assign m_axi_mm_video_ARPROT = 3'd0;

assign m_axi_mm_video_ARQOS = 4'd0;

assign m_axi_mm_video_ARREGION = 4'd0;

assign m_axi_mm_video_ARSIZE = 3'd0;

assign m_axi_mm_video_ARUSER = 1'd0;

assign m_axi_mm_video_ARVALID = 1'b0;

assign m_axi_mm_video_AWADDR = 32'd0;

assign m_axi_mm_video_AWBURST = 2'd0;

assign m_axi_mm_video_AWCACHE = 4'd0;

assign m_axi_mm_video_AWID = 1'd0;

assign m_axi_mm_video_AWLEN = 32'd0;

assign m_axi_mm_video_AWLOCK = 2'd0;

assign m_axi_mm_video_AWPROT = 3'd0;

assign m_axi_mm_video_AWQOS = 4'd0;

assign m_axi_mm_video_AWREGION = 4'd0;

assign m_axi_mm_video_AWSIZE = 3'd0;

assign m_axi_mm_video_AWUSER = 1'd0;

assign m_axi_mm_video_AWVALID = 1'b0;

assign m_axi_mm_video_BREADY = 1'b0;

assign m_axi_mm_video_RREADY = 1'b0;

assign m_axi_mm_video_WDATA = bytePlanes_plane1_dout;

assign m_axi_mm_video_WID = 1'd0;

assign m_axi_mm_video_WLAST = 1'b0;

assign m_axi_mm_video_WSTRB = 32'd4294967295;

assign m_axi_mm_video_WUSER = 1'd0;

endmodule //dpss_vck190_pt_v_frmbuf_wr_0_0_Bytes2AXIMMvideo_Pipeline_VITIS_LOOP_1326_2
