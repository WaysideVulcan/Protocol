// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:v_dp_txss1:3.1
// IP Revision: 3

(* X_CORE_INFO = "bd_38d0,Vivado 2023.2" *)
(* CHECK_LICENSE_TYPE = "dpss_vck190_pt_v_dp_txss1_0_0,bd_38d0,{}" *)
(* CORE_GENERATION_INFO = "dpss_vck190_pt_v_dp_txss1_0_0,bd_38d0,{x_ipProduct=Vivado 2023.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=v_dp_txss1,x_ipVersion=3.1,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,MODE=0,PHY_DATA_WIDTH=2,BITS_PER_COLOR=10,NUM_STREAMS=1,LANE_COUNT=4,START_DSC_BYTE_FROM_LSB=1,ENABLE_420=0,PPC_FOR_420=4,ENABLE_INTERNAL_REMAP=1,INCLUDE_DUAL_SPLITTER=0,PHY_type_External=1,AUDIO_ENABLE=1,Number_of_Audio_Channels=2,AUX_IO_LOC=1,AUX_IO_TYPE=0,HDCP_ENABLE=0,HDCP22_ENABLE=0,SIM_MODE=Di\
sable,VIDEO_INTERFACE=0,PIXEL_MODE=4,Example_Test_Mode=Disable,ExampleModes=0,versal_board=0,INCLUDE_FEC_PORTS=0,ENABLE_DSC=0,FEC_ENCODER_DELAY=16,EDP_ENABLE=0,LINK_RATE=8.1,C_VERSAL=1,C_LINK_RATE=30,ENABLE_8B10B_ENC=1,EGW_IS_PARENT_IP=0,INCLUDE_CLK_WIZ=0,Component_Name=dpss_vck190_pt_v_dp_txss1_0_0,x_ipLicense=displayport@2018.04(bought),x_ipLicense=rs_decoder@2013.03(bought)}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module dpss_vck190_pt_v_dp_txss1_0_0 (
  aux_tx_data_in,
  aux_tx_data_out,
  aux_tx_data_en_out_n,
  tx_hpd,
  dptxss_dp_irq,
  tx_gt_ctrl_out,
  vb_fid_stream1,
  s_axi_aclk,
  s_axi_aresetn,
  s_axis_aclk_stream1,
  s_axis_aresetn_stream1,
  tx_vid_clk_stream1,
  tx_vid_rst_stream1,
  tx_enc_clk,
  tx_lnk_clk,
  aud_clk,
  aud_rst,
  s_axis_audio_ingress_aclk,
  s_axis_audio_ingress_aresetn,
  s_axi_awaddr,
  s_axi_awprot,
  s_axi_awvalid,
  s_axi_awready,
  s_axi_wdata,
  s_axi_wstrb,
  s_axi_wvalid,
  s_axi_wready,
  s_axi_bresp,
  s_axi_bvalid,
  s_axi_bready,
  s_axi_araddr,
  s_axi_arprot,
  s_axi_arvalid,
  s_axi_arready,
  s_axi_rdata,
  s_axi_rresp,
  s_axi_rvalid,
  s_axi_rready,
  s_axis_video_stream1_tdata,
  s_axis_video_stream1_tlast,
  s_axis_video_stream1_tready,
  s_axis_video_stream1_tuser,
  s_axis_video_stream1_tvalid,
  m_axis_lnk_tx_lane0_tdata,
  m_axis_lnk_tx_lane0_tready,
  m_axis_lnk_tx_lane0_tuser,
  m_axis_lnk_tx_lane0_tvalid,
  s_axis_phy_tx_sb_status_tdata,
  s_axis_phy_tx_sb_status_tready,
  s_axis_phy_tx_sb_status_tvalid,
  m_axis_lnk_tx_lane3_tdata,
  m_axis_lnk_tx_lane3_tready,
  m_axis_lnk_tx_lane3_tuser,
  m_axis_lnk_tx_lane3_tvalid,
  m_axis_lnk_tx_lane2_tdata,
  m_axis_lnk_tx_lane2_tready,
  m_axis_lnk_tx_lane2_tuser,
  m_axis_lnk_tx_lane2_tvalid,
  m_axis_lnk_tx_lane1_tdata,
  m_axis_lnk_tx_lane1_tready,
  m_axis_lnk_tx_lane1_tuser,
  m_axis_lnk_tx_lane1_tvalid,
  s_axis_audio_ingress_tdata,
  s_axis_audio_ingress_tid,
  s_axis_audio_ingress_tready,
  s_axis_audio_ingress_tvalid
);

input wire aux_tx_data_in;
output wire aux_tx_data_out;
output wire aux_tx_data_en_out_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.tx_hpd, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.tx_hpd DATA" *)
input wire tx_hpd;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.dptxss_dp_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.dptxss_dp_irq INTERRUPT" *)
output wire dptxss_dp_irq;
output wire [31 : 0] tx_gt_ctrl_out;
input wire vb_fid_stream1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.s_axi_aclk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, ASSOCIATED_BUSIF s_axi:s_axis_phy_tx_sb_status, ASSOCIATED_RESET s_axi_aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN s_sc_aclken" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.s_axi_aclk CLK" *)
input wire s_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.s_axi_aresetn RST" *)
input wire s_axi_aresetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.s_axis_aclk_stream1, FREQ_HZ 299997009, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl1_ref_clk, ASSOCIATED_BUSIF s_axis_video_stream1, ASSOCIATED_RESET s_axis_aresetn_stream1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.s_axis_aclk_stream1 CLK" *)
input wire s_axis_aclk_stream1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.s_axis_aresetn_stream1, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.s_axis_aresetn_stream1 RST" *)
input wire s_axis_aresetn_stream1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.tx_vid_clk_stream1, FREQ_HZ 299996999, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_clk_wizard_2_0_clk_out1, ASSOCIATED_RESET tx_vid_rst_stream1, INSERT_VIP 0, ASSOCIATED_CLKEN clken" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.tx_vid_clk_stream1 CLK" *)
input wire tx_vid_clk_stream1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.tx_vid_rst_stream1, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.tx_vid_rst_stream1 RST" *)
input wire tx_vid_rst_stream1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.tx_enc_clk, FREQ_HZ 506.25, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch1_txoutclk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.tx_enc_clk CLK" *)
input wire tx_enc_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.tx_lnk_clk, FREQ_HZ 506250000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_txoutclk, ASSOCIATED_BUSIF m_axis_lnk_tx_lane0:m_axis_lnk_tx_lane1:m_axis_lnk_tx_lane2:m_axis_lnk_tx_lane3, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.tx_lnk_clk CLK" *)
input wire tx_lnk_clk;
input wire aud_clk;
input wire aud_rst;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.s_axis_audio_ingress_aclk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, ASSOCIATED_BUSIF s_axis_audio_ingress, ASSOCIATED_RESET s_axis_audio_ingress_aresetn, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.s_axis_audio_ingress_aclk CLK" *)
input wire s_axis_audio_ingress_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.s_axis_audio_ingress_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.s_axis_audio_ingress_aresetn RST" *)
input wire s_axis_audio_ingress_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *)
input wire [15 : 0] s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *)
input wire [2 : 0] s_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *)
input wire [0 : 0] s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *)
output wire [0 : 0] s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *)
input wire [31 : 0] s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *)
input wire [3 : 0] s_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *)
input wire [0 : 0] s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *)
output wire [0 : 0] s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *)
output wire [1 : 0] s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *)
output wire [0 : 0] s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *)
input wire [0 : 0] s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *)
input wire [15 : 0] s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *)
input wire [2 : 0] s_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *)
input wire [0 : 0] s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *)
output wire [0 : 0] s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *)
output wire [31 : 0] s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *)
output wire [0 : 0] s_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 1, NUM_WRITE_\
THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *)
input wire [0 : 0] s_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video_stream1 TDATA" *)
input wire [119 : 0] s_axis_video_stream1_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video_stream1 TLAST" *)
input wire s_axis_video_stream1_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video_stream1 TREADY" *)
output wire s_axis_video_stream1_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video_stream1 TUSER" *)
input wire s_axis_video_stream1_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_video_stream1, TDATA_NUM_BYTES 15, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl1_ref_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video_stream1 TVALID" *)
input wire s_axis_video_stream1_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane0 TDATA" *)
output wire [31 : 0] m_axis_lnk_tx_lane0_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane0 TREADY" *)
input wire m_axis_lnk_tx_lane0_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane0 TUSER" *)
output wire [11 : 0] m_axis_lnk_tx_lane0_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_lnk_tx_lane0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 506250000.0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_txoutclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane0 TVALID" *)
output wire m_axis_lnk_tx_lane0_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_phy_tx_sb_status TDATA" *)
input wire [7 : 0] s_axis_phy_tx_sb_status_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_phy_tx_sb_status TREADY" *)
output wire s_axis_phy_tx_sb_status_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_phy_tx_sb_status, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_phy_tx_sb_status TVALID" *)
input wire s_axis_phy_tx_sb_status_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane3 TDATA" *)
output wire [31 : 0] m_axis_lnk_tx_lane3_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane3 TREADY" *)
input wire m_axis_lnk_tx_lane3_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane3 TUSER" *)
output wire [11 : 0] m_axis_lnk_tx_lane3_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_lnk_tx_lane3, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 506250000.0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_txoutclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane3 TVALID" *)
output wire m_axis_lnk_tx_lane3_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane2 TDATA" *)
output wire [31 : 0] m_axis_lnk_tx_lane2_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane2 TREADY" *)
input wire m_axis_lnk_tx_lane2_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane2 TUSER" *)
output wire [11 : 0] m_axis_lnk_tx_lane2_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_lnk_tx_lane2, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 506250000.0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_txoutclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane2 TVALID" *)
output wire m_axis_lnk_tx_lane2_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane1 TDATA" *)
output wire [31 : 0] m_axis_lnk_tx_lane1_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane1 TREADY" *)
input wire m_axis_lnk_tx_lane1_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane1 TUSER" *)
output wire [11 : 0] m_axis_lnk_tx_lane1_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_lnk_tx_lane1, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 506250000.0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_txoutclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_lnk_tx_lane1 TVALID" *)
output wire m_axis_lnk_tx_lane1_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_audio_ingress TDATA" *)
input wire [31 : 0] s_axis_audio_ingress_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_audio_ingress TID" *)
input wire [7 : 0] s_axis_audio_ingress_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_audio_ingress TREADY" *)
output wire s_axis_audio_ingress_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_audio_ingress, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_audio_ingress TVALID" *)
input wire s_axis_audio_ingress_tvalid;

  bd_38d0 inst (
    .aux_tx_data_in(aux_tx_data_in),
    .aux_tx_data_out(aux_tx_data_out),
    .aux_tx_data_en_out_n(aux_tx_data_en_out_n),
    .tx_hpd(tx_hpd),
    .dptxss_dp_irq(dptxss_dp_irq),
    .tx_gt_ctrl_out(tx_gt_ctrl_out),
    .vb_fid_stream1(vb_fid_stream1),
    .s_axi_aclk(s_axi_aclk),
    .s_axi_aresetn(s_axi_aresetn),
    .s_axis_aclk_stream1(s_axis_aclk_stream1),
    .s_axis_aresetn_stream1(s_axis_aresetn_stream1),
    .tx_vid_clk_stream1(tx_vid_clk_stream1),
    .tx_vid_rst_stream1(tx_vid_rst_stream1),
    .tx_enc_clk(tx_enc_clk),
    .tx_lnk_clk(tx_lnk_clk),
    .aud_clk(aud_clk),
    .aud_rst(aud_rst),
    .s_axis_audio_ingress_aclk(s_axis_audio_ingress_aclk),
    .s_axis_audio_ingress_aresetn(s_axis_audio_ingress_aresetn),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awprot(s_axi_awprot),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_awready(s_axi_awready),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wstrb(s_axi_wstrb),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_wready(s_axi_wready),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_bready(s_axi_bready),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arprot(s_axi_arprot),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_arready(s_axi_arready),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_rready(s_axi_rready),
    .s_axis_video_stream1_tdata(s_axis_video_stream1_tdata),
    .s_axis_video_stream1_tlast(s_axis_video_stream1_tlast),
    .s_axis_video_stream1_tready(s_axis_video_stream1_tready),
    .s_axis_video_stream1_tuser(s_axis_video_stream1_tuser),
    .s_axis_video_stream1_tvalid(s_axis_video_stream1_tvalid),
    .m_axis_lnk_tx_lane0_tdata(m_axis_lnk_tx_lane0_tdata),
    .m_axis_lnk_tx_lane0_tready(m_axis_lnk_tx_lane0_tready),
    .m_axis_lnk_tx_lane0_tuser(m_axis_lnk_tx_lane0_tuser),
    .m_axis_lnk_tx_lane0_tvalid(m_axis_lnk_tx_lane0_tvalid),
    .s_axis_phy_tx_sb_status_tdata(s_axis_phy_tx_sb_status_tdata),
    .s_axis_phy_tx_sb_status_tready(s_axis_phy_tx_sb_status_tready),
    .s_axis_phy_tx_sb_status_tvalid(s_axis_phy_tx_sb_status_tvalid),
    .m_axis_lnk_tx_lane3_tdata(m_axis_lnk_tx_lane3_tdata),
    .m_axis_lnk_tx_lane3_tready(m_axis_lnk_tx_lane3_tready),
    .m_axis_lnk_tx_lane3_tuser(m_axis_lnk_tx_lane3_tuser),
    .m_axis_lnk_tx_lane3_tvalid(m_axis_lnk_tx_lane3_tvalid),
    .m_axis_lnk_tx_lane2_tdata(m_axis_lnk_tx_lane2_tdata),
    .m_axis_lnk_tx_lane2_tready(m_axis_lnk_tx_lane2_tready),
    .m_axis_lnk_tx_lane2_tuser(m_axis_lnk_tx_lane2_tuser),
    .m_axis_lnk_tx_lane2_tvalid(m_axis_lnk_tx_lane2_tvalid),
    .m_axis_lnk_tx_lane1_tdata(m_axis_lnk_tx_lane1_tdata),
    .m_axis_lnk_tx_lane1_tready(m_axis_lnk_tx_lane1_tready),
    .m_axis_lnk_tx_lane1_tuser(m_axis_lnk_tx_lane1_tuser),
    .m_axis_lnk_tx_lane1_tvalid(m_axis_lnk_tx_lane1_tvalid),
    .s_axis_audio_ingress_tdata(s_axis_audio_ingress_tdata),
    .s_axis_audio_ingress_tid(s_axis_audio_ingress_tid),
    .s_axis_audio_ingress_tready(s_axis_audio_ingress_tready),
    .s_axis_audio_ingress_tvalid(s_axis_audio_ingress_tvalid)
  );
endmodule
