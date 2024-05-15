//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_38d0_wrapper.bd
//Design : bd_38d0_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_38d0_wrapper
   (aud_clk,
    aud_rst,
    aux_tx_data_en_out_n,
    aux_tx_data_in,
    aux_tx_data_out,
    dptxss_dp_irq,
    m_axis_lnk_tx_lane0_tdata,
    m_axis_lnk_tx_lane0_tready,
    m_axis_lnk_tx_lane0_tuser,
    m_axis_lnk_tx_lane0_tvalid,
    m_axis_lnk_tx_lane1_tdata,
    m_axis_lnk_tx_lane1_tready,
    m_axis_lnk_tx_lane1_tuser,
    m_axis_lnk_tx_lane1_tvalid,
    m_axis_lnk_tx_lane2_tdata,
    m_axis_lnk_tx_lane2_tready,
    m_axis_lnk_tx_lane2_tuser,
    m_axis_lnk_tx_lane2_tvalid,
    m_axis_lnk_tx_lane3_tdata,
    m_axis_lnk_tx_lane3_tready,
    m_axis_lnk_tx_lane3_tuser,
    m_axis_lnk_tx_lane3_tvalid,
    s_axi_aclk,
    s_axi_araddr,
    s_axi_aresetn,
    s_axi_arprot,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axis_aclk_stream1,
    s_axis_aresetn_stream1,
    s_axis_audio_ingress_aclk,
    s_axis_audio_ingress_aresetn,
    s_axis_audio_ingress_tdata,
    s_axis_audio_ingress_tid,
    s_axis_audio_ingress_tready,
    s_axis_audio_ingress_tvalid,
    s_axis_phy_tx_sb_status_tdata,
    s_axis_phy_tx_sb_status_tready,
    s_axis_phy_tx_sb_status_tvalid,
    s_axis_video_stream1_tdata,
    s_axis_video_stream1_tlast,
    s_axis_video_stream1_tready,
    s_axis_video_stream1_tuser,
    s_axis_video_stream1_tvalid,
    tx_enc_clk,
    tx_gt_ctrl_out,
    tx_hpd,
    tx_lnk_clk,
    tx_vid_clk_stream1,
    tx_vid_rst_stream1,
    vb_fid_stream1);
  input aud_clk;
  input aud_rst;
  output aux_tx_data_en_out_n;
  input aux_tx_data_in;
  output aux_tx_data_out;
  output dptxss_dp_irq;
  output [31:0]m_axis_lnk_tx_lane0_tdata;
  input m_axis_lnk_tx_lane0_tready;
  output [11:0]m_axis_lnk_tx_lane0_tuser;
  output m_axis_lnk_tx_lane0_tvalid;
  output [31:0]m_axis_lnk_tx_lane1_tdata;
  input m_axis_lnk_tx_lane1_tready;
  output [11:0]m_axis_lnk_tx_lane1_tuser;
  output m_axis_lnk_tx_lane1_tvalid;
  output [31:0]m_axis_lnk_tx_lane2_tdata;
  input m_axis_lnk_tx_lane2_tready;
  output [11:0]m_axis_lnk_tx_lane2_tuser;
  output m_axis_lnk_tx_lane2_tvalid;
  output [31:0]m_axis_lnk_tx_lane3_tdata;
  input m_axis_lnk_tx_lane3_tready;
  output [11:0]m_axis_lnk_tx_lane3_tuser;
  output m_axis_lnk_tx_lane3_tvalid;
  input s_axi_aclk;
  input [15:0]s_axi_araddr;
  input s_axi_aresetn;
  input [2:0]s_axi_arprot;
  output [0:0]s_axi_arready;
  input [0:0]s_axi_arvalid;
  input [15:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  output [0:0]s_axi_awready;
  input [0:0]s_axi_awvalid;
  input [0:0]s_axi_bready;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_bvalid;
  output [31:0]s_axi_rdata;
  input [0:0]s_axi_rready;
  output [1:0]s_axi_rresp;
  output [0:0]s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output [0:0]s_axi_wready;
  input [3:0]s_axi_wstrb;
  input [0:0]s_axi_wvalid;
  input s_axis_aclk_stream1;
  input s_axis_aresetn_stream1;
  input s_axis_audio_ingress_aclk;
  input s_axis_audio_ingress_aresetn;
  input [31:0]s_axis_audio_ingress_tdata;
  input [7:0]s_axis_audio_ingress_tid;
  output s_axis_audio_ingress_tready;
  input s_axis_audio_ingress_tvalid;
  input [7:0]s_axis_phy_tx_sb_status_tdata;
  output s_axis_phy_tx_sb_status_tready;
  input s_axis_phy_tx_sb_status_tvalid;
  input [119:0]s_axis_video_stream1_tdata;
  input s_axis_video_stream1_tlast;
  output s_axis_video_stream1_tready;
  input s_axis_video_stream1_tuser;
  input s_axis_video_stream1_tvalid;
  input tx_enc_clk;
  output [31:0]tx_gt_ctrl_out;
  input tx_hpd;
  input tx_lnk_clk;
  input tx_vid_clk_stream1;
  input tx_vid_rst_stream1;
  input vb_fid_stream1;

  wire aud_clk;
  wire aud_rst;
  wire aux_tx_data_en_out_n;
  wire aux_tx_data_in;
  wire aux_tx_data_out;
  wire dptxss_dp_irq;
  wire [31:0]m_axis_lnk_tx_lane0_tdata;
  wire m_axis_lnk_tx_lane0_tready;
  wire [11:0]m_axis_lnk_tx_lane0_tuser;
  wire m_axis_lnk_tx_lane0_tvalid;
  wire [31:0]m_axis_lnk_tx_lane1_tdata;
  wire m_axis_lnk_tx_lane1_tready;
  wire [11:0]m_axis_lnk_tx_lane1_tuser;
  wire m_axis_lnk_tx_lane1_tvalid;
  wire [31:0]m_axis_lnk_tx_lane2_tdata;
  wire m_axis_lnk_tx_lane2_tready;
  wire [11:0]m_axis_lnk_tx_lane2_tuser;
  wire m_axis_lnk_tx_lane2_tvalid;
  wire [31:0]m_axis_lnk_tx_lane3_tdata;
  wire m_axis_lnk_tx_lane3_tready;
  wire [11:0]m_axis_lnk_tx_lane3_tuser;
  wire m_axis_lnk_tx_lane3_tvalid;
  wire s_axi_aclk;
  wire [15:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [2:0]s_axi_arprot;
  wire [0:0]s_axi_arready;
  wire [0:0]s_axi_arvalid;
  wire [15:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire [0:0]s_axi_awready;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [0:0]s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire [0:0]s_axi_wvalid;
  wire s_axis_aclk_stream1;
  wire s_axis_aresetn_stream1;
  wire s_axis_audio_ingress_aclk;
  wire s_axis_audio_ingress_aresetn;
  wire [31:0]s_axis_audio_ingress_tdata;
  wire [7:0]s_axis_audio_ingress_tid;
  wire s_axis_audio_ingress_tready;
  wire s_axis_audio_ingress_tvalid;
  wire [7:0]s_axis_phy_tx_sb_status_tdata;
  wire s_axis_phy_tx_sb_status_tready;
  wire s_axis_phy_tx_sb_status_tvalid;
  wire [119:0]s_axis_video_stream1_tdata;
  wire s_axis_video_stream1_tlast;
  wire s_axis_video_stream1_tready;
  wire s_axis_video_stream1_tuser;
  wire s_axis_video_stream1_tvalid;
  wire tx_enc_clk;
  wire [31:0]tx_gt_ctrl_out;
  wire tx_hpd;
  wire tx_lnk_clk;
  wire tx_vid_clk_stream1;
  wire tx_vid_rst_stream1;
  wire vb_fid_stream1;

  bd_38d0 bd_38d0_i
       (.aud_clk(aud_clk),
        .aud_rst(aud_rst),
        .aux_tx_data_en_out_n(aux_tx_data_en_out_n),
        .aux_tx_data_in(aux_tx_data_in),
        .aux_tx_data_out(aux_tx_data_out),
        .dptxss_dp_irq(dptxss_dp_irq),
        .m_axis_lnk_tx_lane0_tdata(m_axis_lnk_tx_lane0_tdata),
        .m_axis_lnk_tx_lane0_tready(m_axis_lnk_tx_lane0_tready),
        .m_axis_lnk_tx_lane0_tuser(m_axis_lnk_tx_lane0_tuser),
        .m_axis_lnk_tx_lane0_tvalid(m_axis_lnk_tx_lane0_tvalid),
        .m_axis_lnk_tx_lane1_tdata(m_axis_lnk_tx_lane1_tdata),
        .m_axis_lnk_tx_lane1_tready(m_axis_lnk_tx_lane1_tready),
        .m_axis_lnk_tx_lane1_tuser(m_axis_lnk_tx_lane1_tuser),
        .m_axis_lnk_tx_lane1_tvalid(m_axis_lnk_tx_lane1_tvalid),
        .m_axis_lnk_tx_lane2_tdata(m_axis_lnk_tx_lane2_tdata),
        .m_axis_lnk_tx_lane2_tready(m_axis_lnk_tx_lane2_tready),
        .m_axis_lnk_tx_lane2_tuser(m_axis_lnk_tx_lane2_tuser),
        .m_axis_lnk_tx_lane2_tvalid(m_axis_lnk_tx_lane2_tvalid),
        .m_axis_lnk_tx_lane3_tdata(m_axis_lnk_tx_lane3_tdata),
        .m_axis_lnk_tx_lane3_tready(m_axis_lnk_tx_lane3_tready),
        .m_axis_lnk_tx_lane3_tuser(m_axis_lnk_tx_lane3_tuser),
        .m_axis_lnk_tx_lane3_tvalid(m_axis_lnk_tx_lane3_tvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_aclk_stream1(s_axis_aclk_stream1),
        .s_axis_aresetn_stream1(s_axis_aresetn_stream1),
        .s_axis_audio_ingress_aclk(s_axis_audio_ingress_aclk),
        .s_axis_audio_ingress_aresetn(s_axis_audio_ingress_aresetn),
        .s_axis_audio_ingress_tdata(s_axis_audio_ingress_tdata),
        .s_axis_audio_ingress_tid(s_axis_audio_ingress_tid),
        .s_axis_audio_ingress_tready(s_axis_audio_ingress_tready),
        .s_axis_audio_ingress_tvalid(s_axis_audio_ingress_tvalid),
        .s_axis_phy_tx_sb_status_tdata(s_axis_phy_tx_sb_status_tdata),
        .s_axis_phy_tx_sb_status_tready(s_axis_phy_tx_sb_status_tready),
        .s_axis_phy_tx_sb_status_tvalid(s_axis_phy_tx_sb_status_tvalid),
        .s_axis_video_stream1_tdata(s_axis_video_stream1_tdata),
        .s_axis_video_stream1_tlast(s_axis_video_stream1_tlast),
        .s_axis_video_stream1_tready(s_axis_video_stream1_tready),
        .s_axis_video_stream1_tuser(s_axis_video_stream1_tuser),
        .s_axis_video_stream1_tvalid(s_axis_video_stream1_tvalid),
        .tx_enc_clk(tx_enc_clk),
        .tx_gt_ctrl_out(tx_gt_ctrl_out),
        .tx_hpd(tx_hpd),
        .tx_lnk_clk(tx_lnk_clk),
        .tx_vid_clk_stream1(tx_vid_clk_stream1),
        .tx_vid_rst_stream1(tx_vid_rst_stream1),
        .vb_fid_stream1(vb_fid_stream1));
endmodule
