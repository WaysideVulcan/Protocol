//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_38d0.bd
//Design : bd_38d0
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_38d0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_38d0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=13,numReposBlks=13,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "dpss_vck190_pt_v_dp_txss1_0_0.hwdef" *) 
module bd_38d0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.DPTXSS_DP_IRQ INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.DPTXSS_DP_IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output dptxss_dp_irq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_lnk_tx_lane0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_txoutclk, FREQ_HZ 506250000.0, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12" *) output [31:0]m_axis_lnk_tx_lane0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane0 TREADY" *) input m_axis_lnk_tx_lane0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane0 TUSER" *) output [11:0]m_axis_lnk_tx_lane0_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane0 TVALID" *) output m_axis_lnk_tx_lane0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane1 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_lnk_tx_lane1, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_txoutclk, FREQ_HZ 506250000.0, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12" *) output [31:0]m_axis_lnk_tx_lane1_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane1 TREADY" *) input m_axis_lnk_tx_lane1_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane1 TUSER" *) output [11:0]m_axis_lnk_tx_lane1_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane1 TVALID" *) output m_axis_lnk_tx_lane1_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane2 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_lnk_tx_lane2, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_txoutclk, FREQ_HZ 506250000.0, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12" *) output [31:0]m_axis_lnk_tx_lane2_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane2 TREADY" *) input m_axis_lnk_tx_lane2_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane2 TUSER" *) output [11:0]m_axis_lnk_tx_lane2_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane2 TVALID" *) output m_axis_lnk_tx_lane2_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane3 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_lnk_tx_lane3, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_txoutclk, FREQ_HZ 506250000.0, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12" *) output [31:0]m_axis_lnk_tx_lane3_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane3 TREADY" *) input m_axis_lnk_tx_lane3_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane3 TUSER" *) output [11:0]m_axis_lnk_tx_lane3_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane3 TVALID" *) output m_axis_lnk_tx_lane3_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_ACLK, ASSOCIATED_BUSIF s_axi:s_axis_phy_tx_sb_status, ASSOCIATED_CLKEN s_sc_aclken, ASSOCIATED_RESET s_axi_aresetn, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, DATA_WIDTH 32, FREQ_HZ 99999001, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [15:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output [0:0]s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input [0:0]s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [15:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output [0:0]s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input [0:0]s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input [0:0]s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output [0:0]s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input [0:0]s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output [0:0]s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output [0:0]s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input [0:0]s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXIS_ACLK_STREAM1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXIS_ACLK_STREAM1, ASSOCIATED_BUSIF s_axis_video_stream1, ASSOCIATED_RESET s_axis_aresetn_stream1, CLK_DOMAIN bd_65e0_pspmc_0_0_pl1_ref_clk, FREQ_HZ 299997009, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axis_aclk_stream1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXIS_ARESETN_STREAM1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXIS_ARESETN_STREAM1, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axis_aresetn_stream1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXIS_AUDIO_INGRESS_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXIS_AUDIO_INGRESS_ACLK, ASSOCIATED_BUSIF s_axis_audio_ingress, ASSOCIATED_RESET s_axis_audio_ingress_aresetn, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axis_audio_ingress_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXIS_AUDIO_INGRESS_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXIS_AUDIO_INGRESS_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axis_audio_ingress_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_audio_ingress TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_audio_ingress, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, FREQ_HZ 99999001, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 0" *) input [31:0]s_axis_audio_ingress_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_audio_ingress TID" *) input [7:0]s_axis_audio_ingress_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_audio_ingress TREADY" *) output s_axis_audio_ingress_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_audio_ingress TVALID" *) input s_axis_audio_ingress_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_phy_tx_sb_status TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_phy_tx_sb_status, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, FREQ_HZ 99999001, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [7:0]s_axis_phy_tx_sb_status_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_phy_tx_sb_status TREADY" *) output s_axis_phy_tx_sb_status_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_phy_tx_sb_status TVALID" *) input s_axis_phy_tx_sb_status_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video_stream1 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_video_stream1, CLK_DOMAIN bd_65e0_pspmc_0_0_pl1_ref_clk, FREQ_HZ 299997009, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 15, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) input [119:0]s_axis_video_stream1_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video_stream1 TLAST" *) input s_axis_video_stream1_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video_stream1 TREADY" *) output s_axis_video_stream1_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video_stream1 TUSER" *) input s_axis_video_stream1_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video_stream1 TVALID" *) input s_axis_video_stream1_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TX_ENC_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TX_ENC_CLK, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch1_txoutclk, FREQ_HZ 506.25, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input tx_enc_clk;
  output [31:0]tx_gt_ctrl_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.TX_HPD DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.TX_HPD, LAYERED_METADATA undef" *) input tx_hpd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TX_LNK_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TX_LNK_CLK, ASSOCIATED_BUSIF m_axis_lnk_tx_lane0:m_axis_lnk_tx_lane1:m_axis_lnk_tx_lane2:m_axis_lnk_tx_lane3, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_txoutclk, FREQ_HZ 506250000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input tx_lnk_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TX_VID_CLK_STREAM1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TX_VID_CLK_STREAM1, ASSOCIATED_CLKEN clken, ASSOCIATED_RESET tx_vid_rst_stream1, CLK_DOMAIN dpss_vck190_pt_clk_wizard_2_0_clk_out1, FREQ_HZ 299996999, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input tx_vid_clk_stream1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.TX_VID_RST_STREAM1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.TX_VID_RST_STREAM1, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input tx_vid_rst_stream1;
  input vb_fid_stream1;

  wire aud_clk_1;
  wire aud_rst_1;
  wire aux_tx_data_in_1;
  wire dp_aux_tx_data_en_out_n;
  wire dp_aux_tx_data_out;
  wire dp_axi_int;
  wire [31:0]dp_lnk_tx_axi4s_TDATA;
  wire dp_lnk_tx_axi4s_TREADY;
  wire [11:0]dp_lnk_tx_axi4s_TUSER;
  wire dp_lnk_tx_axi4s_TVALID;
  wire [31:0]dp_lnk_tx_axi4s_lane1_TDATA;
  wire dp_lnk_tx_axi4s_lane1_TREADY;
  wire [11:0]dp_lnk_tx_axi4s_lane1_TUSER;
  wire dp_lnk_tx_axi4s_lane1_TVALID;
  wire [31:0]dp_lnk_tx_axi4s_lane2_TDATA;
  wire dp_lnk_tx_axi4s_lane2_TREADY;
  wire [11:0]dp_lnk_tx_axi4s_lane2_TUSER;
  wire dp_lnk_tx_axi4s_lane2_TVALID;
  wire [31:0]dp_lnk_tx_axi4s_lane3_TDATA;
  wire dp_lnk_tx_axi4s_lane3_TREADY;
  wire [11:0]dp_lnk_tx_axi4s_lane3_TUSER;
  wire dp_lnk_tx_axi4s_lane3_TVALID;
  wire [31:0]dp_tx_gt_ctrl_out;
  wire [2:0]dp_tx_ppc;
  wire [2:0]dp_tx_video_format;
  wire [31:0]dp_txss_axi_control;
  wire [0:0]not_gate1_Res;
  wire [15:0]s_axi_1_ARADDR;
  wire [2:0]s_axi_1_ARPROT;
  wire s_axi_1_ARREADY;
  wire [0:0]s_axi_1_ARVALID;
  wire [15:0]s_axi_1_AWADDR;
  wire [2:0]s_axi_1_AWPROT;
  wire s_axi_1_AWREADY;
  wire [0:0]s_axi_1_AWVALID;
  wire [0:0]s_axi_1_BREADY;
  wire [1:0]s_axi_1_BRESP;
  wire s_axi_1_BVALID;
  wire [31:0]s_axi_1_RDATA;
  wire [0:0]s_axi_1_RREADY;
  wire [1:0]s_axi_1_RRESP;
  wire s_axi_1_RVALID;
  wire [31:0]s_axi_1_WDATA;
  wire s_axi_1_WREADY;
  wire [3:0]s_axi_1_WSTRB;
  wire [0:0]s_axi_1_WVALID;
  wire s_axi_aclk_1;
  wire s_axi_aresetn_1;
  wire s_axis_aclk_stream1_1;
  wire s_axis_aresetn_stream1_1;
  wire [31:0]s_axis_audio_ingress_1_TDATA;
  wire [7:0]s_axis_audio_ingress_1_TID;
  wire s_axis_audio_ingress_1_TREADY;
  wire s_axis_audio_ingress_1_TVALID;
  wire s_axis_audio_ingress_aclk_1;
  wire s_axis_audio_ingress_aresetn_1;
  wire [7:0]s_axis_phy_tx_sb_status_1_TDATA;
  wire s_axis_phy_tx_sb_status_1_TREADY;
  wire s_axis_phy_tx_sb_status_1_TVALID;
  wire [119:0]s_axis_video_stream1_1_TDATA;
  wire s_axis_video_stream1_1_TLAST;
  wire s_axis_video_stream1_1_TREADY;
  wire s_axis_video_stream1_1_TUSER;
  wire s_axis_video_stream1_1_TVALID;
  wire tx_enc_clk_1;
  wire tx_hpd_1;
  wire tx_lnk_clk_1;
  wire tx_vid_clk_stream1_1;
  wire tx_vid_rst_stream1_1;
  wire [0:0]vb1_dp_vid_TX_VID_ENABLE;
  wire [0:0]vb1_dp_vid_TX_VID_HSYNC;
  wire vb1_dp_vid_TX_VID_ODDEVEN;
  wire [47:0]vb1_dp_vid_TX_VID_PIXEL0;
  wire [47:0]vb1_dp_vid_TX_VID_PIXEL1;
  wire [47:0]vb1_dp_vid_TX_VID_PIXEL2;
  wire [47:0]vb1_dp_vid_TX_VID_PIXEL3;
  wire [0:0]vb1_dp_vid_TX_VID_VSYNC;
  wire vb1_locked;
  wire vb1_overflow;
  wire vb1_sof_state_out;
  wire vb1_underflow;
  wire vb1_vtg_ce;
  wire vb_fid_stream1_1;
  wire vtc1_vtiming_out_ACTIVE_VIDEO;
  wire vtc1_vtiming_out_FIELD;
  wire vtc1_vtiming_out_HBLANK;
  wire vtc1_vtiming_out_HSYNC;
  wire vtc1_vtiming_out_VBLANK;
  wire vtc1_vtiming_out_VSYNC;
  wire [31:0]xbar_M00_AXI_ARADDR;
  wire [2:0]xbar_M00_AXI_ARPROT;
  wire xbar_M00_AXI_ARREADY;
  wire xbar_M00_AXI_ARVALID;
  wire [31:0]xbar_M00_AXI_AWADDR;
  wire [2:0]xbar_M00_AXI_AWPROT;
  wire xbar_M00_AXI_AWREADY;
  wire xbar_M00_AXI_AWVALID;
  wire xbar_M00_AXI_BREADY;
  wire [1:0]xbar_M00_AXI_BRESP;
  wire xbar_M00_AXI_BVALID;
  wire [31:0]xbar_M00_AXI_RDATA;
  wire xbar_M00_AXI_RREADY;
  wire [1:0]xbar_M00_AXI_RRESP;
  wire xbar_M00_AXI_RVALID;
  wire [31:0]xbar_M00_AXI_WDATA;
  wire xbar_M00_AXI_WREADY;
  wire [3:0]xbar_M00_AXI_WSTRB;
  wire xbar_M00_AXI_WVALID;
  wire [8:0]xbar_M01_AXI_ARADDR;
  wire xbar_M01_AXI_ARREADY;
  wire xbar_M01_AXI_ARVALID;
  wire [8:0]xbar_M01_AXI_AWADDR;
  wire xbar_M01_AXI_AWREADY;
  wire xbar_M01_AXI_AWVALID;
  wire xbar_M01_AXI_BREADY;
  wire [1:0]xbar_M01_AXI_BRESP;
  wire xbar_M01_AXI_BVALID;
  wire [31:0]xbar_M01_AXI_RDATA;
  wire xbar_M01_AXI_RREADY;
  wire [1:0]xbar_M01_AXI_RRESP;
  wire xbar_M01_AXI_RVALID;
  wire [31:0]xbar_M01_AXI_WDATA;
  wire xbar_M01_AXI_WREADY;
  wire [3:0]xbar_M01_AXI_WSTRB;
  wire xbar_M01_AXI_WVALID;
  wire [31:0]xlconcat_0_dout;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [19:0]xlconstant_2_dout;
  wire [0:0]xlslice1_Dout;

  assign aud_clk_1 = aud_clk;
  assign aud_rst_1 = aud_rst;
  assign aux_tx_data_en_out_n = dp_aux_tx_data_en_out_n;
  assign aux_tx_data_in_1 = aux_tx_data_in;
  assign aux_tx_data_out = dp_aux_tx_data_out;
  assign dp_lnk_tx_axi4s_TREADY = m_axis_lnk_tx_lane0_tready;
  assign dp_lnk_tx_axi4s_lane1_TREADY = m_axis_lnk_tx_lane1_tready;
  assign dp_lnk_tx_axi4s_lane2_TREADY = m_axis_lnk_tx_lane2_tready;
  assign dp_lnk_tx_axi4s_lane3_TREADY = m_axis_lnk_tx_lane3_tready;
  assign dptxss_dp_irq = dp_axi_int;
  assign m_axis_lnk_tx_lane0_tdata[31:0] = dp_lnk_tx_axi4s_TDATA;
  assign m_axis_lnk_tx_lane0_tuser[11:0] = dp_lnk_tx_axi4s_TUSER;
  assign m_axis_lnk_tx_lane0_tvalid = dp_lnk_tx_axi4s_TVALID;
  assign m_axis_lnk_tx_lane1_tdata[31:0] = dp_lnk_tx_axi4s_lane1_TDATA;
  assign m_axis_lnk_tx_lane1_tuser[11:0] = dp_lnk_tx_axi4s_lane1_TUSER;
  assign m_axis_lnk_tx_lane1_tvalid = dp_lnk_tx_axi4s_lane1_TVALID;
  assign m_axis_lnk_tx_lane2_tdata[31:0] = dp_lnk_tx_axi4s_lane2_TDATA;
  assign m_axis_lnk_tx_lane2_tuser[11:0] = dp_lnk_tx_axi4s_lane2_TUSER;
  assign m_axis_lnk_tx_lane2_tvalid = dp_lnk_tx_axi4s_lane2_TVALID;
  assign m_axis_lnk_tx_lane3_tdata[31:0] = dp_lnk_tx_axi4s_lane3_TDATA;
  assign m_axis_lnk_tx_lane3_tuser[11:0] = dp_lnk_tx_axi4s_lane3_TUSER;
  assign m_axis_lnk_tx_lane3_tvalid = dp_lnk_tx_axi4s_lane3_TVALID;
  assign s_axi_1_ARADDR = s_axi_araddr[15:0];
  assign s_axi_1_ARPROT = s_axi_arprot[2:0];
  assign s_axi_1_ARVALID = s_axi_arvalid[0];
  assign s_axi_1_AWADDR = s_axi_awaddr[15:0];
  assign s_axi_1_AWPROT = s_axi_awprot[2:0];
  assign s_axi_1_AWVALID = s_axi_awvalid[0];
  assign s_axi_1_BREADY = s_axi_bready[0];
  assign s_axi_1_RREADY = s_axi_rready[0];
  assign s_axi_1_WDATA = s_axi_wdata[31:0];
  assign s_axi_1_WSTRB = s_axi_wstrb[3:0];
  assign s_axi_1_WVALID = s_axi_wvalid[0];
  assign s_axi_aclk_1 = s_axi_aclk;
  assign s_axi_aresetn_1 = s_axi_aresetn;
  assign s_axi_arready[0] = s_axi_1_ARREADY;
  assign s_axi_awready[0] = s_axi_1_AWREADY;
  assign s_axi_bresp[1:0] = s_axi_1_BRESP;
  assign s_axi_bvalid[0] = s_axi_1_BVALID;
  assign s_axi_rdata[31:0] = s_axi_1_RDATA;
  assign s_axi_rresp[1:0] = s_axi_1_RRESP;
  assign s_axi_rvalid[0] = s_axi_1_RVALID;
  assign s_axi_wready[0] = s_axi_1_WREADY;
  assign s_axis_aclk_stream1_1 = s_axis_aclk_stream1;
  assign s_axis_aresetn_stream1_1 = s_axis_aresetn_stream1;
  assign s_axis_audio_ingress_1_TDATA = s_axis_audio_ingress_tdata[31:0];
  assign s_axis_audio_ingress_1_TID = s_axis_audio_ingress_tid[7:0];
  assign s_axis_audio_ingress_1_TVALID = s_axis_audio_ingress_tvalid;
  assign s_axis_audio_ingress_aclk_1 = s_axis_audio_ingress_aclk;
  assign s_axis_audio_ingress_aresetn_1 = s_axis_audio_ingress_aresetn;
  assign s_axis_audio_ingress_tready = s_axis_audio_ingress_1_TREADY;
  assign s_axis_phy_tx_sb_status_1_TDATA = s_axis_phy_tx_sb_status_tdata[7:0];
  assign s_axis_phy_tx_sb_status_1_TVALID = s_axis_phy_tx_sb_status_tvalid;
  assign s_axis_phy_tx_sb_status_tready = s_axis_phy_tx_sb_status_1_TREADY;
  assign s_axis_video_stream1_1_TDATA = s_axis_video_stream1_tdata[119:0];
  assign s_axis_video_stream1_1_TLAST = s_axis_video_stream1_tlast;
  assign s_axis_video_stream1_1_TUSER = s_axis_video_stream1_tuser;
  assign s_axis_video_stream1_1_TVALID = s_axis_video_stream1_tvalid;
  assign s_axis_video_stream1_tready = s_axis_video_stream1_1_TREADY;
  assign tx_enc_clk_1 = tx_enc_clk;
  assign tx_gt_ctrl_out[31:0] = dp_tx_gt_ctrl_out;
  assign tx_hpd_1 = tx_hpd;
  assign tx_lnk_clk_1 = tx_lnk_clk;
  assign tx_vid_clk_stream1_1 = tx_vid_clk_stream1;
  assign tx_vid_rst_stream1_1 = tx_vid_rst_stream1;
  assign vb_fid_stream1_1 = vb_fid_stream1;
  bd_38d0_dp_0 dp
       (.aud_clk(aud_clk_1),
        .aud_rst(aud_rst_1),
        .aux_tx_data_en_out_n(dp_aux_tx_data_en_out_n),
        .aux_tx_data_in(aux_tx_data_in_1),
        .aux_tx_data_out(dp_aux_tx_data_out),
        .axi_int(dp_axi_int),
        .lnk_tx_axi4s_lane0_tdata(dp_lnk_tx_axi4s_TDATA),
        .lnk_tx_axi4s_lane0_tready(dp_lnk_tx_axi4s_TREADY),
        .lnk_tx_axi4s_lane0_tuser(dp_lnk_tx_axi4s_TUSER),
        .lnk_tx_axi4s_lane0_tvalid(dp_lnk_tx_axi4s_TVALID),
        .lnk_tx_axi4s_lane1_tdata(dp_lnk_tx_axi4s_lane1_TDATA),
        .lnk_tx_axi4s_lane1_tready(dp_lnk_tx_axi4s_lane1_TREADY),
        .lnk_tx_axi4s_lane1_tuser(dp_lnk_tx_axi4s_lane1_TUSER),
        .lnk_tx_axi4s_lane1_tvalid(dp_lnk_tx_axi4s_lane1_TVALID),
        .lnk_tx_axi4s_lane2_tdata(dp_lnk_tx_axi4s_lane2_TDATA),
        .lnk_tx_axi4s_lane2_tready(dp_lnk_tx_axi4s_lane2_TREADY),
        .lnk_tx_axi4s_lane2_tuser(dp_lnk_tx_axi4s_lane2_TUSER),
        .lnk_tx_axi4s_lane2_tvalid(dp_lnk_tx_axi4s_lane2_TVALID),
        .lnk_tx_axi4s_lane3_tdata(dp_lnk_tx_axi4s_lane3_TDATA),
        .lnk_tx_axi4s_lane3_tready(dp_lnk_tx_axi4s_lane3_TREADY),
        .lnk_tx_axi4s_lane3_tuser(dp_lnk_tx_axi4s_lane3_TUSER),
        .lnk_tx_axi4s_lane3_tvalid(dp_lnk_tx_axi4s_lane3_TVALID),
        .lnk_tx_sb_status_axi4s_tdata(s_axis_phy_tx_sb_status_1_TDATA),
        .lnk_tx_sb_status_axi4s_tready(s_axis_phy_tx_sb_status_1_TREADY),
        .lnk_tx_sb_status_axi4s_tvalid(s_axis_phy_tx_sb_status_1_TVALID),
        .s_aud_axis_aclk(s_axis_audio_ingress_aclk_1),
        .s_aud_axis_aresetn(s_axis_audio_ingress_aresetn_1),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(xbar_M00_AXI_ARADDR),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arprot(xbar_M00_AXI_ARPROT),
        .s_axi_arready(xbar_M00_AXI_ARREADY),
        .s_axi_arvalid(xbar_M00_AXI_ARVALID),
        .s_axi_awaddr(xbar_M00_AXI_AWADDR),
        .s_axi_awprot(xbar_M00_AXI_AWPROT),
        .s_axi_awready(xbar_M00_AXI_AWREADY),
        .s_axi_awvalid(xbar_M00_AXI_AWVALID),
        .s_axi_bready(xbar_M00_AXI_BREADY),
        .s_axi_bresp(xbar_M00_AXI_BRESP),
        .s_axi_bvalid(xbar_M00_AXI_BVALID),
        .s_axi_rdata(xbar_M00_AXI_RDATA),
        .s_axi_rready(xbar_M00_AXI_RREADY),
        .s_axi_rresp(xbar_M00_AXI_RRESP),
        .s_axi_rvalid(xbar_M00_AXI_RVALID),
        .s_axi_wdata(xbar_M00_AXI_WDATA),
        .s_axi_wready(xbar_M00_AXI_WREADY),
        .s_axi_wstrb(xbar_M00_AXI_WSTRB),
        .s_axi_wvalid(xbar_M00_AXI_WVALID),
        .s_axis_audio_ingress_tdata(s_axis_audio_ingress_1_TDATA),
        .s_axis_audio_ingress_tid(s_axis_audio_ingress_1_TID),
        .s_axis_audio_ingress_tready(s_axis_audio_ingress_1_TREADY),
        .s_axis_audio_ingress_tvalid(s_axis_audio_ingress_1_TVALID),
        .tx_enc_clk(tx_enc_clk_1),
        .tx_gt_ctrl_out(dp_tx_gt_ctrl_out),
        .tx_hpd(tx_hpd_1),
        .tx_lnk_clk(tx_lnk_clk_1),
        .tx_ppc(dp_tx_ppc),
        .tx_vid_clk(tx_vid_clk_stream1_1),
        .tx_vid_enable(vb1_dp_vid_TX_VID_ENABLE),
        .tx_vid_hsync(vb1_dp_vid_TX_VID_HSYNC),
        .tx_vid_oddeven(vb1_dp_vid_TX_VID_ODDEVEN),
        .tx_vid_pixel0(vb1_dp_vid_TX_VID_PIXEL0),
        .tx_vid_pixel1(vb1_dp_vid_TX_VID_PIXEL1),
        .tx_vid_pixel2(vb1_dp_vid_TX_VID_PIXEL2),
        .tx_vid_pixel3(vb1_dp_vid_TX_VID_PIXEL3),
        .tx_vid_rst(tx_vid_rst_stream1_1),
        .tx_vid_vsync(vb1_dp_vid_TX_VID_VSYNC),
        .tx_video_format(dp_tx_video_format),
        .txss_axi_control(dp_txss_axi_control),
        .txss_axi_status(xlconcat_0_dout));
  bd_38d0_not_gate1_0 not_gate1
       (.Op1(tx_vid_rst_stream1_1),
        .Res(not_gate1_Res));
  bd_38d0_vb1_0 vb1
       (.aclk(s_axis_aclk_stream1_1),
        .aclken(xlconstant_0_dout),
        .aresetn(s_axis_aresetn_stream1_1),
        .fid(vb_fid_stream1_1),
        .locked(vb1_locked),
        .overflow(vb1_overflow),
        .ppc(dp_tx_ppc),
        .rst(tx_vid_rst_stream1_1),
        .sof_state_out(vb1_sof_state_out),
        .soft_reset(xlslice1_Dout),
        .tx_odd_even(vb1_dp_vid_TX_VID_ODDEVEN),
        .tx_vid_enable(vb1_dp_vid_TX_VID_ENABLE),
        .tx_vid_hsync(vb1_dp_vid_TX_VID_HSYNC),
        .tx_vid_pixel0(vb1_dp_vid_TX_VID_PIXEL0),
        .tx_vid_pixel1(vb1_dp_vid_TX_VID_PIXEL1),
        .tx_vid_pixel2(vb1_dp_vid_TX_VID_PIXEL2),
        .tx_vid_pixel3(vb1_dp_vid_TX_VID_PIXEL3),
        .tx_vid_vsync(vb1_dp_vid_TX_VID_VSYNC),
        .underflow(vb1_underflow),
        .vid_format(dp_tx_video_format),
        .vid_io_out_ce(xlconstant_0_dout),
        .vid_io_out_clk(tx_vid_clk_stream1_1),
        .video_in_tdata(s_axis_video_stream1_1_TDATA),
        .video_in_tlast(s_axis_video_stream1_1_TLAST),
        .video_in_tready(s_axis_video_stream1_1_TREADY),
        .video_in_tuser(s_axis_video_stream1_1_TUSER),
        .video_in_tvalid(s_axis_video_stream1_1_TVALID),
        .vtg_ce(vb1_vtg_ce),
        .vtiming_in_active_video(vtc1_vtiming_out_ACTIVE_VIDEO),
        .vtiming_in_field_id(vtc1_vtiming_out_FIELD),
        .vtiming_in_hblank(vtc1_vtiming_out_HBLANK),
        .vtiming_in_hsync(vtc1_vtiming_out_HSYNC),
        .vtiming_in_vblank(vtc1_vtiming_out_VBLANK),
        .vtiming_in_vsync(vtc1_vtiming_out_VSYNC));
  bd_38d0_vtc1_0 vtc1
       (.active_video_out(vtc1_vtiming_out_ACTIVE_VIDEO),
        .clk(tx_vid_clk_stream1_1),
        .clken(xlconstant_0_dout),
        .field_id_out(vtc1_vtiming_out_FIELD),
        .fsync_in(1'b0),
        .gen_clken(vb1_vtg_ce),
        .hblank_out(vtc1_vtiming_out_HBLANK),
        .hsync_out(vtc1_vtiming_out_HSYNC),
        .resetn(not_gate1_Res),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_aclken(xlconstant_0_dout),
        .s_axi_araddr(xbar_M01_AXI_ARADDR),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arready(xbar_M01_AXI_ARREADY),
        .s_axi_arvalid(xbar_M01_AXI_ARVALID),
        .s_axi_awaddr(xbar_M01_AXI_AWADDR),
        .s_axi_awready(xbar_M01_AXI_AWREADY),
        .s_axi_awvalid(xbar_M01_AXI_AWVALID),
        .s_axi_bready(xbar_M01_AXI_BREADY),
        .s_axi_bresp(xbar_M01_AXI_BRESP),
        .s_axi_bvalid(xbar_M01_AXI_BVALID),
        .s_axi_rdata(xbar_M01_AXI_RDATA),
        .s_axi_rready(xbar_M01_AXI_RREADY),
        .s_axi_rresp(xbar_M01_AXI_RRESP),
        .s_axi_rvalid(xbar_M01_AXI_RVALID),
        .s_axi_wdata(xbar_M01_AXI_WDATA),
        .s_axi_wready(xbar_M01_AXI_WREADY),
        .s_axi_wstrb(xbar_M01_AXI_WSTRB),
        .s_axi_wvalid(xbar_M01_AXI_WVALID),
        .sof_state(vb1_sof_state_out),
        .vblank_out(vtc1_vtiming_out_VBLANK),
        .vsync_out(vtc1_vtiming_out_VSYNC));
  bd_38d0_xbar_0 xbar
       (.M00_AXI_araddr(xbar_M00_AXI_ARADDR),
        .M00_AXI_arprot(xbar_M00_AXI_ARPROT),
        .M00_AXI_arready(xbar_M00_AXI_ARREADY),
        .M00_AXI_arvalid(xbar_M00_AXI_ARVALID),
        .M00_AXI_awaddr(xbar_M00_AXI_AWADDR),
        .M00_AXI_awprot(xbar_M00_AXI_AWPROT),
        .M00_AXI_awready(xbar_M00_AXI_AWREADY),
        .M00_AXI_awvalid(xbar_M00_AXI_AWVALID),
        .M00_AXI_bready(xbar_M00_AXI_BREADY),
        .M00_AXI_bresp(xbar_M00_AXI_BRESP),
        .M00_AXI_bvalid(xbar_M00_AXI_BVALID),
        .M00_AXI_rdata(xbar_M00_AXI_RDATA),
        .M00_AXI_rready(xbar_M00_AXI_RREADY),
        .M00_AXI_rresp(xbar_M00_AXI_RRESP),
        .M00_AXI_rvalid(xbar_M00_AXI_RVALID),
        .M00_AXI_wdata(xbar_M00_AXI_WDATA),
        .M00_AXI_wready(xbar_M00_AXI_WREADY),
        .M00_AXI_wstrb(xbar_M00_AXI_WSTRB),
        .M00_AXI_wvalid(xbar_M00_AXI_WVALID),
        .M01_AXI_araddr(xbar_M01_AXI_ARADDR),
        .M01_AXI_arready(xbar_M01_AXI_ARREADY),
        .M01_AXI_arvalid(xbar_M01_AXI_ARVALID),
        .M01_AXI_awaddr(xbar_M01_AXI_AWADDR),
        .M01_AXI_awready(xbar_M01_AXI_AWREADY),
        .M01_AXI_awvalid(xbar_M01_AXI_AWVALID),
        .M01_AXI_bready(xbar_M01_AXI_BREADY),
        .M01_AXI_bresp(xbar_M01_AXI_BRESP),
        .M01_AXI_bvalid(xbar_M01_AXI_BVALID),
        .M01_AXI_rdata(xbar_M01_AXI_RDATA),
        .M01_AXI_rready(xbar_M01_AXI_RREADY),
        .M01_AXI_rresp(xbar_M01_AXI_RRESP),
        .M01_AXI_rvalid(xbar_M01_AXI_RVALID),
        .M01_AXI_wdata(xbar_M01_AXI_WDATA),
        .M01_AXI_wready(xbar_M01_AXI_WREADY),
        .M01_AXI_wstrb(xbar_M01_AXI_WSTRB),
        .M01_AXI_wvalid(xbar_M01_AXI_WVALID),
        .S00_AXI_araddr(s_axi_1_ARADDR),
        .S00_AXI_arprot(s_axi_1_ARPROT),
        .S00_AXI_arready(s_axi_1_ARREADY),
        .S00_AXI_arvalid(s_axi_1_ARVALID),
        .S00_AXI_awaddr(s_axi_1_AWADDR),
        .S00_AXI_awprot(s_axi_1_AWPROT),
        .S00_AXI_awready(s_axi_1_AWREADY),
        .S00_AXI_awvalid(s_axi_1_AWVALID),
        .S00_AXI_bready(s_axi_1_BREADY),
        .S00_AXI_bresp(s_axi_1_BRESP),
        .S00_AXI_bvalid(s_axi_1_BVALID),
        .S00_AXI_rdata(s_axi_1_RDATA),
        .S00_AXI_rready(s_axi_1_RREADY),
        .S00_AXI_rresp(s_axi_1_RRESP),
        .S00_AXI_rvalid(s_axi_1_RVALID),
        .S00_AXI_wdata(s_axi_1_WDATA),
        .S00_AXI_wready(s_axi_1_WREADY),
        .S00_AXI_wstrb(s_axi_1_WSTRB),
        .S00_AXI_wvalid(s_axi_1_WVALID),
        .aclk(s_axi_aclk_1),
        .aresetn(s_axi_aresetn_1));
  bd_38d0_xlconcat_0_0 xlconcat_0
       (.In0(vb1_locked),
        .In1(vb1_overflow),
        .In10(xlconstant_1_dout),
        .In11(xlconstant_1_dout),
        .In12(xlconstant_2_dout),
        .In2(vb1_underflow),
        .In3(xlconstant_1_dout),
        .In4(xlconstant_1_dout),
        .In5(xlconstant_1_dout),
        .In6(xlconstant_1_dout),
        .In7(xlconstant_1_dout),
        .In8(xlconstant_1_dout),
        .In9(xlconstant_1_dout),
        .dout(xlconcat_0_dout));
  bd_38d0_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  bd_38d0_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  bd_38d0_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
  bd_38d0_xlslice1_0 xlslice1
       (.Din(dp_txss_axi_control),
        .Dout(xlslice1_Dout));
  bd_38d0_xlslice2_0 xlslice2
       (.Din(dp_txss_axi_control));
  bd_38d0_xlslice3_0 xlslice3
       (.Din(dp_txss_axi_control));
  bd_38d0_xlslice4_0 xlslice4
       (.Din(dp_txss_axi_control));
endmodule
