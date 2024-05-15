//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_ac35_0_wrapper.bd
//Design : bd_ac35_0_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_ac35_0_wrapper
   (adaptive_sdp_out,
    adaptive_sdp_vld,
    aux_rx_io_n,
    aux_rx_io_p,
    dprxss_dp_irq,
    dprxss_iic_irq,
    edid_iic_scl_io,
    edid_iic_sda_io,
    ext_iic_scl_io,
    ext_iic_sda_io,
    ext_rst,
    m_axis_aclk_stream1,
    m_axis_phy_rx_sb_control_tdata,
    m_axis_phy_rx_sb_control_tready,
    m_axis_phy_rx_sb_control_tvalid,
    m_axis_video_stream1_tdata,
    m_axis_video_stream1_tlast,
    m_axis_video_stream1_tready,
    m_axis_video_stream1_tuser,
    m_axis_video_stream1_tvalid,
    rx_dec_clk,
    rx_gt_ctrl_out,
    rx_hpd,
    rx_lnk_clk,
    rx_misc0_str1,
    rx_misc1_str1,
    rx_vid_clk,
    rx_vid_rst,
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
    s_axis_lnk_rx_lane0_tdata,
    s_axis_lnk_rx_lane0_tready,
    s_axis_lnk_rx_lane0_tuser,
    s_axis_lnk_rx_lane0_tvalid,
    s_axis_lnk_rx_lane1_tdata,
    s_axis_lnk_rx_lane1_tready,
    s_axis_lnk_rx_lane1_tuser,
    s_axis_lnk_rx_lane1_tvalid,
    s_axis_lnk_rx_lane2_tdata,
    s_axis_lnk_rx_lane2_tready,
    s_axis_lnk_rx_lane2_tuser,
    s_axis_lnk_rx_lane2_tvalid,
    s_axis_lnk_rx_lane3_tdata,
    s_axis_lnk_rx_lane3_tready,
    s_axis_lnk_rx_lane3_tuser,
    s_axis_lnk_rx_lane3_tvalid,
    s_axis_phy_rx_sb_status_tdata,
    s_axis_phy_rx_sb_status_tready,
    s_axis_phy_rx_sb_status_tvalid);
  output [31:0]adaptive_sdp_out;
  output adaptive_sdp_vld;
  inout aux_rx_io_n;
  inout aux_rx_io_p;
  output dprxss_dp_irq;
  output dprxss_iic_irq;
  inout edid_iic_scl_io;
  inout edid_iic_sda_io;
  inout ext_iic_scl_io;
  inout ext_iic_sda_io;
  output [0:0]ext_rst;
  input m_axis_aclk_stream1;
  output [7:0]m_axis_phy_rx_sb_control_tdata;
  input m_axis_phy_rx_sb_control_tready;
  output m_axis_phy_rx_sb_control_tvalid;
  output [95:0]m_axis_video_stream1_tdata;
  output m_axis_video_stream1_tlast;
  input m_axis_video_stream1_tready;
  output [0:0]m_axis_video_stream1_tuser;
  output m_axis_video_stream1_tvalid;
  input rx_dec_clk;
  output [31:0]rx_gt_ctrl_out;
  output rx_hpd;
  input rx_lnk_clk;
  output [7:0]rx_misc0_str1;
  output [7:0]rx_misc1_str1;
  input rx_vid_clk;
  input rx_vid_rst;
  input s_axi_aclk;
  input [31:0]s_axi_araddr;
  input s_axi_aresetn;
  input [2:0]s_axi_arprot;
  output [0:0]s_axi_arready;
  input [0:0]s_axi_arvalid;
  input [31:0]s_axi_awaddr;
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
  input [31:0]s_axis_lnk_rx_lane0_tdata;
  output s_axis_lnk_rx_lane0_tready;
  input [11:0]s_axis_lnk_rx_lane0_tuser;
  input s_axis_lnk_rx_lane0_tvalid;
  input [31:0]s_axis_lnk_rx_lane1_tdata;
  output s_axis_lnk_rx_lane1_tready;
  input [11:0]s_axis_lnk_rx_lane1_tuser;
  input s_axis_lnk_rx_lane1_tvalid;
  input [31:0]s_axis_lnk_rx_lane2_tdata;
  output s_axis_lnk_rx_lane2_tready;
  input [11:0]s_axis_lnk_rx_lane2_tuser;
  input s_axis_lnk_rx_lane2_tvalid;
  input [31:0]s_axis_lnk_rx_lane3_tdata;
  output s_axis_lnk_rx_lane3_tready;
  input [11:0]s_axis_lnk_rx_lane3_tuser;
  input s_axis_lnk_rx_lane3_tvalid;
  input [15:0]s_axis_phy_rx_sb_status_tdata;
  output s_axis_phy_rx_sb_status_tready;
  input s_axis_phy_rx_sb_status_tvalid;

  wire [31:0]adaptive_sdp_out;
  wire adaptive_sdp_vld;
  wire aux_rx_io_n;
  wire aux_rx_io_p;
  wire dprxss_dp_irq;
  wire dprxss_iic_irq;
  wire edid_iic_scl_i;
  wire edid_iic_scl_io;
  wire edid_iic_scl_o;
  wire edid_iic_scl_t;
  wire edid_iic_sda_i;
  wire edid_iic_sda_io;
  wire edid_iic_sda_o;
  wire edid_iic_sda_t;
  wire ext_iic_scl_i;
  wire ext_iic_scl_io;
  wire ext_iic_scl_o;
  wire ext_iic_scl_t;
  wire ext_iic_sda_i;
  wire ext_iic_sda_io;
  wire ext_iic_sda_o;
  wire ext_iic_sda_t;
  wire [0:0]ext_rst;
  wire m_axis_aclk_stream1;
  wire [7:0]m_axis_phy_rx_sb_control_tdata;
  wire m_axis_phy_rx_sb_control_tready;
  wire m_axis_phy_rx_sb_control_tvalid;
  wire [95:0]m_axis_video_stream1_tdata;
  wire m_axis_video_stream1_tlast;
  wire m_axis_video_stream1_tready;
  wire [0:0]m_axis_video_stream1_tuser;
  wire m_axis_video_stream1_tvalid;
  wire rx_dec_clk;
  wire [31:0]rx_gt_ctrl_out;
  wire rx_hpd;
  wire rx_lnk_clk;
  wire [7:0]rx_misc0_str1;
  wire [7:0]rx_misc1_str1;
  wire rx_vid_clk;
  wire rx_vid_rst;
  wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [2:0]s_axi_arprot;
  wire [0:0]s_axi_arready;
  wire [0:0]s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
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
  wire [31:0]s_axis_lnk_rx_lane0_tdata;
  wire s_axis_lnk_rx_lane0_tready;
  wire [11:0]s_axis_lnk_rx_lane0_tuser;
  wire s_axis_lnk_rx_lane0_tvalid;
  wire [31:0]s_axis_lnk_rx_lane1_tdata;
  wire s_axis_lnk_rx_lane1_tready;
  wire [11:0]s_axis_lnk_rx_lane1_tuser;
  wire s_axis_lnk_rx_lane1_tvalid;
  wire [31:0]s_axis_lnk_rx_lane2_tdata;
  wire s_axis_lnk_rx_lane2_tready;
  wire [11:0]s_axis_lnk_rx_lane2_tuser;
  wire s_axis_lnk_rx_lane2_tvalid;
  wire [31:0]s_axis_lnk_rx_lane3_tdata;
  wire s_axis_lnk_rx_lane3_tready;
  wire [11:0]s_axis_lnk_rx_lane3_tuser;
  wire s_axis_lnk_rx_lane3_tvalid;
  wire [15:0]s_axis_phy_rx_sb_status_tdata;
  wire s_axis_phy_rx_sb_status_tready;
  wire s_axis_phy_rx_sb_status_tvalid;

  bd_ac35_0 bd_ac35_0_i
       (.adaptive_sdp_out(adaptive_sdp_out),
        .adaptive_sdp_vld(adaptive_sdp_vld),
        .aux_rx_io_n(aux_rx_io_n),
        .aux_rx_io_p(aux_rx_io_p),
        .dprxss_dp_irq(dprxss_dp_irq),
        .dprxss_iic_irq(dprxss_iic_irq),
        .edid_iic_scl_i(edid_iic_scl_i),
        .edid_iic_scl_o(edid_iic_scl_o),
        .edid_iic_scl_t(edid_iic_scl_t),
        .edid_iic_sda_i(edid_iic_sda_i),
        .edid_iic_sda_o(edid_iic_sda_o),
        .edid_iic_sda_t(edid_iic_sda_t),
        .ext_iic_scl_i(ext_iic_scl_i),
        .ext_iic_scl_o(ext_iic_scl_o),
        .ext_iic_scl_t(ext_iic_scl_t),
        .ext_iic_sda_i(ext_iic_sda_i),
        .ext_iic_sda_o(ext_iic_sda_o),
        .ext_iic_sda_t(ext_iic_sda_t),
        .ext_rst(ext_rst),
        .m_axis_aclk_stream1(m_axis_aclk_stream1),
        .m_axis_phy_rx_sb_control_tdata(m_axis_phy_rx_sb_control_tdata),
        .m_axis_phy_rx_sb_control_tready(m_axis_phy_rx_sb_control_tready),
        .m_axis_phy_rx_sb_control_tvalid(m_axis_phy_rx_sb_control_tvalid),
        .m_axis_video_stream1_tdata(m_axis_video_stream1_tdata),
        .m_axis_video_stream1_tlast(m_axis_video_stream1_tlast),
        .m_axis_video_stream1_tready(m_axis_video_stream1_tready),
        .m_axis_video_stream1_tuser(m_axis_video_stream1_tuser),
        .m_axis_video_stream1_tvalid(m_axis_video_stream1_tvalid),
        .rx_dec_clk(rx_dec_clk),
        .rx_gt_ctrl_out(rx_gt_ctrl_out),
        .rx_hpd(rx_hpd),
        .rx_lnk_clk(rx_lnk_clk),
        .rx_misc0_str1(rx_misc0_str1),
        .rx_misc1_str1(rx_misc1_str1),
        .rx_vid_clk(rx_vid_clk),
        .rx_vid_rst(rx_vid_rst),
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
        .s_axis_lnk_rx_lane0_tdata(s_axis_lnk_rx_lane0_tdata),
        .s_axis_lnk_rx_lane0_tready(s_axis_lnk_rx_lane0_tready),
        .s_axis_lnk_rx_lane0_tuser(s_axis_lnk_rx_lane0_tuser),
        .s_axis_lnk_rx_lane0_tvalid(s_axis_lnk_rx_lane0_tvalid),
        .s_axis_lnk_rx_lane1_tdata(s_axis_lnk_rx_lane1_tdata),
        .s_axis_lnk_rx_lane1_tready(s_axis_lnk_rx_lane1_tready),
        .s_axis_lnk_rx_lane1_tuser(s_axis_lnk_rx_lane1_tuser),
        .s_axis_lnk_rx_lane1_tvalid(s_axis_lnk_rx_lane1_tvalid),
        .s_axis_lnk_rx_lane2_tdata(s_axis_lnk_rx_lane2_tdata),
        .s_axis_lnk_rx_lane2_tready(s_axis_lnk_rx_lane2_tready),
        .s_axis_lnk_rx_lane2_tuser(s_axis_lnk_rx_lane2_tuser),
        .s_axis_lnk_rx_lane2_tvalid(s_axis_lnk_rx_lane2_tvalid),
        .s_axis_lnk_rx_lane3_tdata(s_axis_lnk_rx_lane3_tdata),
        .s_axis_lnk_rx_lane3_tready(s_axis_lnk_rx_lane3_tready),
        .s_axis_lnk_rx_lane3_tuser(s_axis_lnk_rx_lane3_tuser),
        .s_axis_lnk_rx_lane3_tvalid(s_axis_lnk_rx_lane3_tvalid),
        .s_axis_phy_rx_sb_status_tdata(s_axis_phy_rx_sb_status_tdata),
        .s_axis_phy_rx_sb_status_tready(s_axis_phy_rx_sb_status_tready),
        .s_axis_phy_rx_sb_status_tvalid(s_axis_phy_rx_sb_status_tvalid));
  IOBUF edid_iic_scl_iobuf
       (.I(edid_iic_scl_o),
        .IO(edid_iic_scl_io),
        .O(edid_iic_scl_i),
        .T(edid_iic_scl_t));
  IOBUF edid_iic_sda_iobuf
       (.I(edid_iic_sda_o),
        .IO(edid_iic_sda_io),
        .O(edid_iic_sda_i),
        .T(edid_iic_sda_t));
  IOBUF ext_iic_scl_iobuf
       (.I(ext_iic_scl_o),
        .IO(ext_iic_scl_io),
        .O(ext_iic_scl_i),
        .T(ext_iic_scl_t));
  IOBUF ext_iic_sda_iobuf
       (.I(ext_iic_sda_o),
        .IO(ext_iic_sda_io),
        .O(ext_iic_sda_i),
        .T(ext_iic_sda_t));
endmodule
