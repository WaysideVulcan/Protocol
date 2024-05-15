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


// IP VLNV: xilinx.com:ip:displayport:8.1
// IP Revision: 7

(* X_CORE_INFO = "bd_38d0_dp_0_dport_wrapper,Vivado 2023.2" *)
(* CHECK_LICENSE_TYPE = "bd_38d0_dp_0,bd_38d0_dp_0_dport_wrapper,{}" *)
(* CORE_GENERATION_INFO = "bd_38d0_dp_0,bd_38d0_dp_0_dport_wrapper,{x_ipProduct=Vivado 2023.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=displayport,x_ipVersion=8.1,x_ipCoreRevision=7,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_COMPONENT_NAME=bd_38d0_dp_0,C_FAMILY=versal,C_DEVICE=xcvc1902,C_FLOW_DIRECTION=0,C_PHY_TYPE_EXTERNAL=1,C_GT_DATAWIDTH=2,C_LANE_COUNT=4,C_INCLUDE_HDCP=0,C_INCLUDE_HDCP22=0,C_SECONDARY_SUPPORT=1,C_AUDIO_CHANNELS=2,C_IEEE_OUI=000A35,C_VENDOR_SPECIFIC=1,C_PROTOCOL_SELECTION=2,C_LINK_RATE=30,C_MST_E\
NABLE=0,C_NUMBER_OF_MST_STREAMS=2,C_MAX_BITS_PER_COLOR=10,C_QUAD_PIXEL_ENABLE=1,C_DUAL_PIXEL_ENABLE=0,C_YCRCB_ENABLE=1,C_YONLY_ENABLE=1,C_YUV420_ENABLE=0,C_BUF_BYPASS=0,C_EDP_EN=0,C_SIM_MODE=0,C_IS_VERSAL=1,C_INCLUDE_FEC_PORTS=0,C_FEC_ENCODER_DELAY=0,C_ENABLE_DSC=0,C_ENABLE_8B10B_ENC=1,C_ENABLE_8B10B_DEC=0,C_INCLUDE_VID_EDID=0,C_INCLUDE_CLK_RECOV_SUPPORT=0,x_ipLicense=displayport@2018.04(bought),x_ipLicense=rs_decoder@2013.03(bought)}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_38d0_dp_0 (
  s_axi_aclk,
  s_axi_aresetn,
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
  axi_int,
  tx_vid_clk,
  tx_vid_rst,
  tx_vid_vsync,
  tx_vid_hsync,
  tx_vid_oddeven,
  tx_vid_enable,
  tx_vid_pixel0,
  tx_vid_pixel1,
  tx_vid_pixel2,
  tx_vid_pixel3,
  tx_gt_ctrl_out,
  tx_bpc,
  tx_video_format,
  tx_ppc,
  txss_axi_control,
  txss_axi_status,
  aux_tx_data_in,
  aux_tx_data_out,
  aux_tx_data_en_out_n,
  tx_hpd,
  s_aud_axis_aclk,
  s_aud_axis_aresetn,
  aud_clk,
  aud_rst,
  s_axis_audio_ingress_tdata,
  s_axis_audio_ingress_tid,
  s_axis_audio_ingress_tvalid,
  s_axis_audio_ingress_tready,
  tx_enc_clk,
  tx_lnk_clk,
  lnk_tx_axi4s_lane0_tdata,
  lnk_tx_axi4s_lane0_tuser,
  lnk_tx_axi4s_lane0_tvalid,
  lnk_tx_axi4s_lane0_tready,
  lnk_tx_axi4s_lane1_tdata,
  lnk_tx_axi4s_lane1_tuser,
  lnk_tx_axi4s_lane1_tvalid,
  lnk_tx_axi4s_lane1_tready,
  lnk_tx_axi4s_lane2_tdata,
  lnk_tx_axi4s_lane2_tuser,
  lnk_tx_axi4s_lane2_tvalid,
  lnk_tx_axi4s_lane2_tready,
  lnk_tx_axi4s_lane3_tdata,
  lnk_tx_axi4s_lane3_tuser,
  lnk_tx_axi4s_lane3_tvalid,
  lnk_tx_axi4s_lane3_tready,
  lnk_tx_sb_status_axi4s_tdata,
  lnk_tx_sb_status_axi4s_tvalid,
  lnk_tx_sb_status_axi4s_tready,
  link_bw_high_out,
  link_bw_hbr2_out,
  bw_changed_out
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dp_axilite_clk, ASSOCIATED_BUSIF dp_s_axilite:lnk_tx_sb_status_axi4s:lnk_rx_sb_status_axi4s:lnk_rx_sb_control_axi4s, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dp_axilite_clk CLK" *)
input wire s_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dp_axilite_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 dp_axilite_rst RST" *)
input wire s_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dp_s_axilite AWADDR" *)
input wire [31 : 0] s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dp_s_axilite AWPROT" *)
input wire [2 : 0] s_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dp_s_axilite AWVALID" *)
input wire s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dp_s_axilite AWREADY" *)
output wire s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dp_s_axilite WDATA" *)
input wire [31 : 0] s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dp_s_axilite WSTRB" *)
input wire [3 : 0] s_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dp_s_axilite WVALID" *)
input wire s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dp_s_axilite WREADY" *)
output wire s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dp_s_axilite BRESP" *)
output wire [1 : 0] s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dp_s_axilite BVALID" *)
output wire s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dp_s_axilite BREADY" *)
input wire s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dp_s_axilite ARADDR" *)
input wire [31 : 0] s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dp_s_axilite ARPROT" *)
input wire [2 : 0] s_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dp_s_axilite ARVALID" *)
input wire s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dp_s_axilite ARREADY" *)
output wire s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dp_s_axilite RDATA" *)
output wire [31 : 0] s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dp_s_axilite RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dp_s_axilite RVALID" *)
output wire s_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dp_s_axilite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 1, NUM\
_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 dp_s_axilite RREADY" *)
input wire s_axi_rready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dp_axilite_int, SENSITIVITY LEVEL_HIGH, SUGGESTED_PRIORITY MEDIUM, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 dp_axilite_int INTERRUPT" *)
output wire axi_int;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_vid_clk, FREQ_HZ 299996999, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_clk_wizard_2_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_vid_clk CLK" *)
input wire tx_vid_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_vid_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 tx_vid_rst RST" *)
input wire tx_vid_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_tx_vid_intf_str0 TX_VID_VSYNC" *)
input wire tx_vid_vsync;
(* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_tx_vid_intf_str0 TX_VID_HSYNC" *)
input wire tx_vid_hsync;
(* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_tx_vid_intf_str0 TX_VID_ODDEVEN" *)
input wire tx_vid_oddeven;
(* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_tx_vid_intf_str0 TX_VID_ENABLE" *)
input wire tx_vid_enable;
(* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_tx_vid_intf_str0 TX_VID_PIXEL0" *)
input wire [47 : 0] tx_vid_pixel0;
(* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_tx_vid_intf_str0 TX_VID_PIXEL1" *)
input wire [47 : 0] tx_vid_pixel1;
(* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_tx_vid_intf_str0 TX_VID_PIXEL2" *)
input wire [47 : 0] tx_vid_pixel2;
(* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_tx_vid_intf_str0 TX_VID_PIXEL3" *)
input wire [47 : 0] tx_vid_pixel3;
output wire [31 : 0] tx_gt_ctrl_out;
output wire [2 : 0] tx_bpc;
output wire [2 : 0] tx_video_format;
output wire [2 : 0] tx_ppc;
output wire [31 : 0] txss_axi_control;
input wire [31 : 0] txss_axi_status;
input wire aux_tx_data_in;
output wire aux_tx_data_out;
output wire aux_tx_data_en_out_n;
input wire tx_hpd;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aud_axis_clk_ing, ASSOCIATED_BUSIF aud_axi_ingress, ASSOCIATED_RESET s_aud_axis_aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aud_axis_clk_ing CLK" *)
input wire s_aud_axis_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aud_axis_rst_ing, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aud_axis_rst_ing RST" *)
input wire s_aud_axis_aresetn;
input wire aud_clk;
input wire aud_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aud_axi_ingress TDATA" *)
input wire [31 : 0] s_axis_audio_ingress_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aud_axi_ingress TID" *)
input wire [7 : 0] s_axis_audio_ingress_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aud_axi_ingress TVALID" *)
input wire s_axis_audio_ingress_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aud_axi_ingress, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 aud_axi_ingress TREADY" *)
output wire s_axis_audio_ingress_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_enc_clk, FREQ_HZ 506.25, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch1_txoutclk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_enc_clk CLK" *)
input wire tx_enc_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_lnk_clk, ASSOCIATED_BUSIF lnk_tx_axi4s:lnk_tx_axi4s_lane1:lnk_tx_axi4s_lane2:lnk_tx_axi4s_lane3, ASSOCIATED_RESET dp_axilite_rst, FREQ_HZ 506250000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_txoutclk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_lnk_clk CLK" *)
input wire tx_lnk_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lnk_tx_axi4s TDATA" *)
output wire [31 : 0] lnk_tx_axi4s_lane0_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lnk_tx_axi4s TUSER" *)
output wire [11 : 0] lnk_tx_axi4s_lane0_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lnk_tx_axi4s TVALID" *)
output wire lnk_tx_axi4s_lane0_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lnk_tx_axi4s, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 506250000.0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_txoutclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lnk_tx_axi4s TREADY" *)
input wire lnk_tx_axi4s_lane0_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lnk_tx_axi4s_lane1 TDATA" *)
output wire [31 : 0] lnk_tx_axi4s_lane1_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lnk_tx_axi4s_lane1 TUSER" *)
output wire [11 : 0] lnk_tx_axi4s_lane1_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lnk_tx_axi4s_lane1 TVALID" *)
output wire lnk_tx_axi4s_lane1_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lnk_tx_axi4s_lane1, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 506250000.0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_txoutclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lnk_tx_axi4s_lane1 TREADY" *)
input wire lnk_tx_axi4s_lane1_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lnk_tx_axi4s_lane2 TDATA" *)
output wire [31 : 0] lnk_tx_axi4s_lane2_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lnk_tx_axi4s_lane2 TUSER" *)
output wire [11 : 0] lnk_tx_axi4s_lane2_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lnk_tx_axi4s_lane2 TVALID" *)
output wire lnk_tx_axi4s_lane2_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lnk_tx_axi4s_lane2, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 506250000.0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_txoutclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lnk_tx_axi4s_lane2 TREADY" *)
input wire lnk_tx_axi4s_lane2_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lnk_tx_axi4s_lane3 TDATA" *)
output wire [31 : 0] lnk_tx_axi4s_lane3_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lnk_tx_axi4s_lane3 TUSER" *)
output wire [11 : 0] lnk_tx_axi4s_lane3_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lnk_tx_axi4s_lane3 TVALID" *)
output wire lnk_tx_axi4s_lane3_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lnk_tx_axi4s_lane3, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 506250000.0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_txoutclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lnk_tx_axi4s_lane3 TREADY" *)
input wire lnk_tx_axi4s_lane3_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lnk_tx_sb_status_axi4s TDATA" *)
input wire [7 : 0] lnk_tx_sb_status_axi4s_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lnk_tx_sb_status_axi4s TVALID" *)
input wire lnk_tx_sb_status_axi4s_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lnk_tx_sb_status_axi4s, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lnk_tx_sb_status_axi4s TREADY" *)
output wire lnk_tx_sb_status_axi4s_tready;
output wire link_bw_high_out;
output wire link_bw_hbr2_out;
output wire bw_changed_out;

  bd_38d0_dp_0_dport_wrapper #(
    .C_COMPONENT_NAME("bd_38d0_dp_0"),
    .C_FAMILY("versal"),
    .C_DEVICE("xcvc1902"),
    .C_FLOW_DIRECTION(0),
    .C_PHY_TYPE_EXTERNAL(1),
    .C_GT_DATAWIDTH(2),
    .C_LANE_COUNT(4),
    .C_INCLUDE_HDCP(0),
    .C_INCLUDE_HDCP22(0),
    .C_SECONDARY_SUPPORT(1),
    .C_AUDIO_CHANNELS(2),
    .C_IEEE_OUI("000A35"),
    .C_VENDOR_SPECIFIC(1),
    .C_PROTOCOL_SELECTION(2),
    .C_LINK_RATE(30),
    .C_MST_ENABLE(0),
    .C_NUMBER_OF_MST_STREAMS(2),
    .C_MAX_BITS_PER_COLOR(10),
    .C_QUAD_PIXEL_ENABLE(1),
    .C_DUAL_PIXEL_ENABLE(0),
    .C_YCRCB_ENABLE(1),
    .C_YONLY_ENABLE(1),
    .C_YUV420_ENABLE(0),
    .C_BUF_BYPASS(0),
    .C_EDP_EN(0),
    .C_SIM_MODE(0),
    .C_IS_VERSAL(1),
    .C_INCLUDE_FEC_PORTS(0),
    .C_FEC_ENCODER_DELAY(0),
    .C_ENABLE_DSC(0),
    .C_ENABLE_8B10B_ENC(1),
    .C_ENABLE_8B10B_DEC(0),
    .C_INCLUDE_VID_EDID(0),
    .C_INCLUDE_CLK_RECOV_SUPPORT(0)
  ) inst (
    .s_axi_aclk(s_axi_aclk),
    .s_axi_aresetn(s_axi_aresetn),
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
    .axi_int(axi_int),
    .lnk_clk_ibufds(1'B0),
    .lnk_fwdclk_ibufds(1'B0),
    .tx_vid_clk(tx_vid_clk),
    .tx_vid_rst(tx_vid_rst),
    .tx_vid_vsync(tx_vid_vsync),
    .tx_vid_hsync(tx_vid_hsync),
    .tx_vid_oddeven(tx_vid_oddeven),
    .tx_vid_enable(tx_vid_enable),
    .tx_vid_pixel0(tx_vid_pixel0),
    .tx_vid_pixel1(tx_vid_pixel1),
    .tx_vid_pixel2(tx_vid_pixel2),
    .tx_vid_pixel3(tx_vid_pixel3),
    .tx_vid_clk_stream2(1'B0),
    .tx_vid_rst_stream2(1'B0),
    .tx_vid_vsync_stream2(1'B0),
    .tx_vid_hsync_stream2(1'B0),
    .tx_vid_oddeven_stream2(1'B0),
    .tx_vid_enable_stream2(1'B0),
    .tx_vid_pixel0_stream2(48'B0),
    .tx_vid_pixel1_stream2(48'B0),
    .tx_vid_pixel2_stream2(48'B0),
    .tx_vid_pixel3_stream2(48'B0),
    .tx_vid_clk_stream3(1'B0),
    .tx_vid_rst_stream3(1'B0),
    .tx_vid_vsync_stream3(1'B0),
    .tx_vid_hsync_stream3(1'B0),
    .tx_vid_oddeven_stream3(1'B0),
    .tx_vid_enable_stream3(1'B0),
    .tx_vid_pixel0_stream3(48'B0),
    .tx_vid_pixel1_stream3(48'B0),
    .tx_vid_pixel2_stream3(48'B0),
    .tx_vid_pixel3_stream3(48'B0),
    .tx_vid_clk_stream4(1'B0),
    .tx_vid_rst_stream4(1'B0),
    .tx_vid_vsync_stream4(1'B0),
    .tx_vid_hsync_stream4(1'B0),
    .tx_vid_oddeven_stream4(1'B0),
    .tx_vid_enable_stream4(1'B0),
    .tx_vid_pixel0_stream4(48'B0),
    .tx_vid_pixel1_stream4(48'B0),
    .tx_vid_pixel2_stream4(48'B0),
    .tx_vid_pixel3_stream4(48'B0),
    .tx_gt_ctrl_out(tx_gt_ctrl_out),
    .tx_bpc(tx_bpc),
    .tx_video_format(tx_video_format),
    .tx_ppc(tx_ppc),
    .txss_axi_control(txss_axi_control),
    .txss_axi_status(txss_axi_status),
    .tx_video_format_stream2(),
    .tx_ppc_stream2(),
    .tx_video_format_stream3(),
    .tx_ppc_stream3(),
    .tx_video_format_stream4(),
    .tx_ppc_stream4(),
    .lnk_tx_lane_p(),
    .lnk_tx_lane_n(),
    .aux_tx_io_p(),
    .aux_tx_io_n(),
    .aux_tx_data_in(aux_tx_data_in),
    .aux_tx_data_out(aux_tx_data_out),
    .aux_tx_data_en_out_n(aux_tx_data_en_out_n),
    .tx_hpd(tx_hpd),
    .rx_vid_clk(1'B0),
    .rx_vid_rst(1'B0),
    .rx_vid_vsync(),
    .rx_vid_hsync(),
    .rx_vid_oddeven(),
    .rx_vid_enable(),
    .rx_enable_dsc(),
    .rx_num_active_lanes(),
    .rx_vid_valid_per_pixel(),
    .rx_vid_last(),
    .rx_vid_pixel0(),
    .rx_vid_pixel1(),
    .rx_vid_pixel2(),
    .rx_vid_pixel3(),
    .rx_vid_en_clk_recov(),
    .rx_vid_clk_stream2(1'B0),
    .rx_vid_rst_stream2(1'B0),
    .rx_vid_vsync_stream2(),
    .rx_vid_hsync_stream2(),
    .rx_vid_oddeven_stream2(),
    .rx_vid_enable_stream2(),
    .rx_vid_pixel0_stream2(),
    .rx_vid_pixel1_stream2(),
    .rx_vid_pixel2_stream2(),
    .rx_vid_pixel3_stream2(),
    .rx_vid_en_clk_recov_stream2(),
    .rx_vid_clk_stream3(1'B0),
    .rx_vid_rst_stream3(1'B0),
    .rx_vid_vsync_stream3(),
    .rx_vid_hsync_stream3(),
    .rx_vid_oddeven_stream3(),
    .rx_vid_enable_stream3(),
    .rx_vid_pixel0_stream3(),
    .rx_vid_pixel1_stream3(),
    .rx_vid_pixel2_stream3(),
    .rx_vid_pixel3_stream3(),
    .rx_vid_en_clk_recov_stream3(),
    .rx_vid_clk_stream4(1'B0),
    .rx_vid_rst_stream4(1'B0),
    .rx_vid_vsync_stream4(),
    .rx_vid_hsync_stream4(),
    .rx_vid_oddeven_stream4(),
    .rx_vid_enable_stream4(),
    .rx_vid_pixel0_stream4(),
    .rx_vid_pixel1_stream4(),
    .rx_vid_pixel2_stream4(),
    .rx_vid_pixel3_stream4(),
    .rx_vid_en_clk_recov_stream4(),
    .rx_gt_ctrl_out(),
    .lnk_m_vid(),
    .lnk_n_vid(),
    .rx_misc0_str1(),
    .rx_misc1_str1(),
    .rx_misc0_str2(),
    .rx_misc1_str2(),
    .rx_misc0_str3(),
    .rx_misc1_str3(),
    .rx_misc0_str4(),
    .rx_misc1_str4(),
    .lnk_rx_lane_p(4'B0),
    .lnk_rx_lane_n(4'B0),
    .aux_rx_io_p(),
    .aux_rx_io_n(),
    .aux_rx_data_in(1'B0),
    .aux_rx_data_out(),
    .aux_rx_data_en_out_n(),
    .rx_hpd(),
    .i2c_sda_in(1'B1),
    .i2c_sda_enable_n(),
    .i2c_sda_o(),
    .i2c_scl_in(1'B1),
    .i2c_scl_enable_n(),
    .i2c_scl_o(),
    .edid_i2c_sda_in(1'B1),
    .edid_i2c_sda_enable_n(),
    .edid_i2c_sda_o(),
    .edid_i2c_scl_in(1'B1),
    .edid_i2c_scl_enable_n(),
    .edid_i2c_scl_o(),
    .s_aud_axis_aclk(s_aud_axis_aclk),
    .s_aud_axis_aresetn(s_aud_axis_aresetn),
    .aud_clk(aud_clk),
    .aud_rst(aud_rst),
    .s_axis_audio_ingress_tdata(s_axis_audio_ingress_tdata),
    .s_axis_audio_ingress_tid(s_axis_audio_ingress_tid),
    .s_axis_audio_ingress_tvalid(s_axis_audio_ingress_tvalid),
    .s_axis_audio_ingress_tready(s_axis_audio_ingress_tready),
    .tx_enc_clk(tx_enc_clk),
    .tx_lnk_clk(tx_lnk_clk),
    .lnk_tx_axi4s_lane0_tdata(lnk_tx_axi4s_lane0_tdata),
    .lnk_tx_axi4s_lane0_tuser(lnk_tx_axi4s_lane0_tuser),
    .lnk_tx_axi4s_lane0_tvalid(lnk_tx_axi4s_lane0_tvalid),
    .lnk_tx_axi4s_lane0_tready(lnk_tx_axi4s_lane0_tready),
    .lnk_tx_axi4s_lane1_tdata(lnk_tx_axi4s_lane1_tdata),
    .lnk_tx_axi4s_lane1_tuser(lnk_tx_axi4s_lane1_tuser),
    .lnk_tx_axi4s_lane1_tvalid(lnk_tx_axi4s_lane1_tvalid),
    .lnk_tx_axi4s_lane1_tready(lnk_tx_axi4s_lane1_tready),
    .lnk_tx_axi4s_lane2_tdata(lnk_tx_axi4s_lane2_tdata),
    .lnk_tx_axi4s_lane2_tuser(lnk_tx_axi4s_lane2_tuser),
    .lnk_tx_axi4s_lane2_tvalid(lnk_tx_axi4s_lane2_tvalid),
    .lnk_tx_axi4s_lane2_tready(lnk_tx_axi4s_lane2_tready),
    .lnk_tx_axi4s_lane3_tdata(lnk_tx_axi4s_lane3_tdata),
    .lnk_tx_axi4s_lane3_tuser(lnk_tx_axi4s_lane3_tuser),
    .lnk_tx_axi4s_lane3_tvalid(lnk_tx_axi4s_lane3_tvalid),
    .lnk_tx_axi4s_lane3_tready(lnk_tx_axi4s_lane3_tready),
    .lnk_tx_sb_status_axi4s_tdata(lnk_tx_sb_status_axi4s_tdata),
    .lnk_tx_sb_status_axi4s_tvalid(lnk_tx_sb_status_axi4s_tvalid),
    .lnk_tx_sb_status_axi4s_tready(lnk_tx_sb_status_axi4s_tready),
    .rx_dec_clk(1'B0),
    .rx_lnk_clk(1'B0),
    .lnk_rx_axi4s_lane0_tdata(32'B0),
    .lnk_rx_axi4s_lane0_tuser(12'B0),
    .lnk_rx_axi4s_lane0_tvalid(1'B0),
    .lnk_rx_axi4s_lane0_tready(),
    .lnk_rx_axi4s_lane1_tdata(32'B0),
    .lnk_rx_axi4s_lane1_tuser(12'B0),
    .lnk_rx_axi4s_lane1_tvalid(1'B0),
    .lnk_rx_axi4s_lane1_tready(),
    .lnk_rx_axi4s_lane2_tdata(32'B0),
    .lnk_rx_axi4s_lane2_tuser(12'B0),
    .lnk_rx_axi4s_lane2_tvalid(1'B0),
    .lnk_rx_axi4s_lane2_tready(),
    .lnk_rx_axi4s_lane3_tdata(32'B0),
    .lnk_rx_axi4s_lane3_tuser(12'B0),
    .lnk_rx_axi4s_lane3_tvalid(1'B0),
    .lnk_rx_axi4s_lane3_tready(),
    .lnk_rx_sb_status_axi4s_tdata(16'B0),
    .lnk_rx_sb_status_axi4s_tvalid(1'B0),
    .lnk_rx_sb_status_axi4s_tready(),
    .lnk_rx_sb_control_axi4s_tdata(),
    .lnk_rx_sb_control_axi4s_tvalid(),
    .lnk_rx_sb_control_axi4s_tready(1'B0),
    .lnk_m_aud(),
    .lnk_n_aud(),
    .m_aud_axis_aclk(1'B0),
    .m_aud_axis_aresetn(1'B1),
    .m_axis_audio_egress_tdata(),
    .m_axis_audio_egress_tid(),
    .m_axis_audio_egress_tvalid(),
    .m_axis_audio_egress_tready(1'B0),
    .link_bw_high_out(link_bw_high_out),
    .link_bw_hbr2_out(link_bw_hbr2_out),
    .bw_changed_out(bw_changed_out),
    .phy_pll_reset_out(),
    .common_qpll_clk(1'B0),
    .common_qpll_lock(1'B0),
    .common_qpll_ref_clk(1'B0),
    .pll0_lock(1'B0),
    .pll1_lock(1'B0),
    .pll0_clk(1'B0),
    .pll0_ref_clk(1'B0),
    .pll1_clk(1'B0),
    .pll1_ref_clk(1'B0),
    .link_debug_gt0(),
    .link_debug_gt1(),
    .link_debug_gt2(),
    .link_debug_gt3(),
    .link_debug_control(),
    .aux_debug_bus(),
    .lnk_clk(),
    .rx_vid_pixel_mode(),
    .rx_vid_msa_hres(),
    .rx_vid_msa_vres(),
    .rx_vid_msa_hres_stream2(),
    .rx_vid_msa_hres_stream3(),
    .rx_vid_msa_hres_stream4(),
    .rx_vid_msa_vres_stream2(),
    .rx_vid_msa_vres_stream3(),
    .rx_vid_msa_vres_stream4(),
    .rx_bpc(),
    .rx_bpc_stream2(),
    .rx_bpc_stream3(),
    .rx_bpc_stream4(),
    .rx_cformat(),
    .rx_cformat_stream2(),
    .rx_cformat_stream3(),
    .rx_cformat_stream4(),
    .common_qpll_clk_out(),
    .common_qpll_ref_clk_out(),
    .common_qpll_lock_out(),
    .pll0_lock_out(),
    .pll1_lock_out(),
    .pll0_clk_out(),
    .pll0_ref_clk_out(),
    .pll1_clk_out(),
    .pll1_ref_clk_out(),
    .lnk_clk_ibufds_out(),
    .lnk_clk_p(1'B1),
    .lnk_clk_n(1'B0),
    .lnk_fwdclk_p(1'B1),
    .lnk_fwdclk_n(1'B0),
    .aux_tx_channel_out_n(),
    .aux_tx_channel_out_p(),
    .aux_tx_channel_in_p(1'B1),
    .aux_tx_channel_in_n(1'B0),
    .aux_rx_channel_in_n(1'B0),
    .aux_rx_channel_in_p(1'B1),
    .aux_rx_channel_out_p(),
    .aux_rx_channel_out_n(),
    .hdcp_egress_data(),
    .hdcp_egress_tuser(),
    .hdcp_egress_tready(1'B0),
    .hdcp_egress_tvalid(),
    .hdcp_ingress_data(128'B0),
    .hdcp_ingress_tuser(16'B0),
    .hdcp_ingress_tready(),
    .hdcp_ingress_tvalid(1'B0),
    .hdcp_status(8'B0),
    .hdcp_ext_clk(1'B0),
    .hdcp_ingress_clk(1'B0),
    .hdcp_egress_clk(),
    .hdcp_ingress_clken(1'B0),
    .hdcp_egress_clken(),
    .hdcp_egress_fifo_afull(),
    .hdcp_rst(),
    .hdcp13_soft_rst(),
    .hdcp22_soft_rst(),
    .fec_rx_clken(),
    .fec_rx_reset(),
    .fec_rx_valid_in(),
    .fec_rx_data_in(),
    .fec_rx_data_out(64'B0),
    .fec_rx_data_k_out(8'B0),
    .fec_rx_val_out(1'B0),
    .fec_rx_pm_out(8'B0),
    .fec_rx_ph_out(8'B0),
    .fec_rx_enable_in(),
    .fec_rx_num_lanes(),
    .dsc_rx_debug_bus_vid(),
    .dsc_rx_debug_bus_lnk(),
    .acr_m_aud(),
    .acr_n_aud(),
    .acr_valid(),
    .m_axis_rx_pps_tdata(),
    .m_axis_rx_pps_tvalid(),
    .m_axis_rx_pps_tuser(),
    .m_axis_rx_pps_tlast(),
    .m_axis_rx_pps_tready(1'B0),
    .adaptive_sdp_out(),
    .adaptive_sdp_vld()
  );
endmodule
