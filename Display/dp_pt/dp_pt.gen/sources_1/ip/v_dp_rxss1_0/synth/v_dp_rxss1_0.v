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


// IP VLNV: xilinx.com:ip:v_dp_rxss1:3.1
// IP Revision: 1

(* X_CORE_INFO = "bd_ac35_0,Vivado 2023.2" *)
(* CHECK_LICENSE_TYPE = "v_dp_rxss1_0,bd_ac35_0,{}" *)
(* CORE_GENERATION_INFO = "v_dp_rxss1_0,bd_ac35_0,{x_ipProduct=Vivado 2023.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=v_dp_rxss1,x_ipVersion=3.1,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,MODE=0,PHY_DATA_WIDTH=2,BITS_PER_COLOR=8,NUM_STREAMS=1,LANE_COUNT=4,AUDIO_ENABLE=0,AUDIO_CHANNELS=2,AUX_IO_LOC=0,AUX_IO_TYPE=0,HDCP_ENABLE=0,HDCP22_ENABLE=0,SIM_MODE=Disable,PHY_type_External=1,VIDEO_INTERFACE=0,PIXEL_MODE=4,Example_Test_Mode=Disable,ExampleModes=10,versal_board=0,INCLUDE_FEC_PORTS=0,INCLUDE_CLK_R\
ECOV_SUPPORT=0,ENABLE_DSC=0,ENABLE_DSC_DUMMY_BYTES_IN_RX=0,START_DSC_BYTE_FROM_LSB=1,ENABLE_420=0,MAX_RESOLUTION_FOR_420=0,ENABLE_INTERNAL_REMAP=1,EDP_ENABLE=0,LINK_RATE=5.4,C_VERSAL=1,INCLUDE_AXI_IIC=1,C_LINK_RATE=20,ENABLE_8B10B_DEC=1,EGW_IS_PARENT_IP=0,INCLUDE_CLK_WIZ=0,INCLUDE_VID_EDID=0,INC_HDCP_KEYMNGMT_BLK=0,Component_Name=v_dp_rxss1_0,x_ipLicense=displayport@2018.04(bought)}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module v_dp_rxss1_0 (
  s_axi_aclk,
  s_axi_aresetn,
  rx_vid_clk,
  rx_vid_rst,
  m_axis_aclk_stream1,
  aux_rx_io_p,
  aux_rx_io_n,
  rx_dec_clk,
  rx_lnk_clk,
  rx_hpd,
  dprxss_dp_irq,
  rx_gt_ctrl_out,
  rx_misc0_str1,
  rx_misc1_str1,
  adaptive_sdp_out,
  adaptive_sdp_vld,
  ext_rst,
  dprxss_iic_irq,
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
  m_axis_video_stream1_tdata,
  m_axis_video_stream1_tlast,
  m_axis_video_stream1_tready,
  m_axis_video_stream1_tuser,
  m_axis_video_stream1_tvalid,
  s_axis_lnk_rx_lane0_tdata,
  s_axis_lnk_rx_lane0_tready,
  s_axis_lnk_rx_lane0_tuser,
  s_axis_lnk_rx_lane0_tvalid,
  m_axis_phy_rx_sb_control_tdata,
  m_axis_phy_rx_sb_control_tready,
  m_axis_phy_rx_sb_control_tvalid,
  s_axis_phy_rx_sb_status_tdata,
  s_axis_phy_rx_sb_status_tready,
  s_axis_phy_rx_sb_status_tvalid,
  s_axis_lnk_rx_lane3_tdata,
  s_axis_lnk_rx_lane3_tready,
  s_axis_lnk_rx_lane3_tuser,
  s_axis_lnk_rx_lane3_tvalid,
  s_axis_lnk_rx_lane2_tdata,
  s_axis_lnk_rx_lane2_tready,
  s_axis_lnk_rx_lane2_tuser,
  s_axis_lnk_rx_lane2_tvalid,
  s_axis_lnk_rx_lane1_tdata,
  s_axis_lnk_rx_lane1_tready,
  s_axis_lnk_rx_lane1_tuser,
  s_axis_lnk_rx_lane1_tvalid,
  edid_iic_scl_i,
  edid_iic_scl_o,
  edid_iic_scl_t,
  edid_iic_sda_i,
  edid_iic_sda_o,
  edid_iic_sda_t,
  ext_iic_scl_i,
  ext_iic_scl_o,
  ext_iic_scl_t,
  ext_iic_sda_i,
  ext_iic_sda_o,
  ext_iic_sda_t
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.s_axi_aclk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_ac35_0_s_axi_aclk, ASSOCIATED_BUSIF m_axis_phy_rx_sb_control:s_axi:s_axis_phy_rx_sb_status, ASSOCIATED_RESET s_axi_aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN s_sc_aclken" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.s_axi_aclk CLK" *)
input wire s_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.s_axi_aresetn RST" *)
input wire s_axi_aresetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.rx_vid_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_ac35_0_rx_vid_clk, ASSOCIATED_RESET rx_vid_rst, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.rx_vid_clk CLK" *)
input wire rx_vid_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.rx_vid_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.rx_vid_rst RST" *)
input wire rx_vid_rst;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.m_axis_aclk_stream1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_ac35_0_m_axis_aclk_stream1, ASSOCIATED_BUSIF m_axis_video_stream1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.m_axis_aclk_stream1 CLK" *)
input wire m_axis_aclk_stream1;
inout wire aux_rx_io_p;
inout wire aux_rx_io_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.rx_dec_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_ac35_0_rx_dec_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.rx_dec_clk CLK" *)
input wire rx_dec_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.rx_lnk_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_ac35_0_rx_lnk_clk, ASSOCIATED_BUSIF s_axis_lnk_rx_lane0:s_axis_lnk_rx_lane1:s_axis_lnk_rx_lane2:s_axis_lnk_rx_lane3, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.rx_lnk_clk CLK" *)
input wire rx_lnk_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.rx_hpd, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.rx_hpd DATA" *)
output wire rx_hpd;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.dprxss_dp_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.dprxss_dp_irq INTERRUPT" *)
output wire dprxss_dp_irq;
output wire [31 : 0] rx_gt_ctrl_out;
output wire [7 : 0] rx_misc0_str1;
output wire [7 : 0] rx_misc1_str1;
output wire [31 : 0] adaptive_sdp_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.adaptive_sdp_vld, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.adaptive_sdp_vld DATA" *)
output wire adaptive_sdp_vld;
output wire [0 : 0] ext_rst;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.dprxss_iic_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.dprxss_iic_irq INTERRUPT" *)
output wire dprxss_iic_irq;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *)
input wire [31 : 0] s_axi_awaddr;
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
input wire [31 : 0] s_axi_araddr;
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
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_ac35_0_s_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS\
 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *)
input wire [0 : 0] s_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video_stream1 TDATA" *)
output wire [95 : 0] m_axis_video_stream1_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video_stream1 TLAST" *)
output wire m_axis_video_stream1_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video_stream1 TREADY" *)
input wire m_axis_video_stream1_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video_stream1 TUSER" *)
output wire [0 : 0] m_axis_video_stream1_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_video_stream1, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN bd_ac35_0_m_axis_aclk_stream1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video_stream1 TVALID" *)
output wire m_axis_video_stream1_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane0 TDATA" *)
input wire [31 : 0] s_axis_lnk_rx_lane0_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane0 TREADY" *)
output wire s_axis_lnk_rx_lane0_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane0 TUSER" *)
input wire [11 : 0] s_axis_lnk_rx_lane0_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_lnk_rx_lane0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN bd_ac35_0_rx_lnk_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane0 TVALID" *)
input wire s_axis_lnk_rx_lane0_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_phy_rx_sb_control TDATA" *)
output wire [7 : 0] m_axis_phy_rx_sb_control_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_phy_rx_sb_control TREADY" *)
input wire m_axis_phy_rx_sb_control_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_phy_rx_sb_control, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN bd_ac35_0_s_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_phy_rx_sb_control TVALID" *)
output wire m_axis_phy_rx_sb_control_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_phy_rx_sb_status TDATA" *)
input wire [15 : 0] s_axis_phy_rx_sb_status_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_phy_rx_sb_status TREADY" *)
output wire s_axis_phy_rx_sb_status_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_phy_rx_sb_status, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN bd_ac35_0_s_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_phy_rx_sb_status TVALID" *)
input wire s_axis_phy_rx_sb_status_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane3 TDATA" *)
input wire [31 : 0] s_axis_lnk_rx_lane3_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane3 TREADY" *)
output wire s_axis_lnk_rx_lane3_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane3 TUSER" *)
input wire [11 : 0] s_axis_lnk_rx_lane3_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_lnk_rx_lane3, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN bd_ac35_0_rx_lnk_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane3 TVALID" *)
input wire s_axis_lnk_rx_lane3_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane2 TDATA" *)
input wire [31 : 0] s_axis_lnk_rx_lane2_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane2 TREADY" *)
output wire s_axis_lnk_rx_lane2_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane2 TUSER" *)
input wire [11 : 0] s_axis_lnk_rx_lane2_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_lnk_rx_lane2, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN bd_ac35_0_rx_lnk_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane2 TVALID" *)
input wire s_axis_lnk_rx_lane2_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane1 TDATA" *)
input wire [31 : 0] s_axis_lnk_rx_lane1_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane1 TREADY" *)
output wire s_axis_lnk_rx_lane1_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane1 TUSER" *)
input wire [11 : 0] s_axis_lnk_rx_lane1_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_lnk_rx_lane1, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN bd_ac35_0_rx_lnk_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane1 TVALID" *)
input wire s_axis_lnk_rx_lane1_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 edid_iic SCL_I" *)
input wire edid_iic_scl_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 edid_iic SCL_O" *)
output wire edid_iic_scl_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 edid_iic SCL_T" *)
output wire edid_iic_scl_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 edid_iic SDA_I" *)
input wire edid_iic_sda_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 edid_iic SDA_O" *)
output wire edid_iic_sda_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 edid_iic SDA_T" *)
output wire edid_iic_sda_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 ext_iic SCL_I" *)
input wire ext_iic_scl_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 ext_iic SCL_O" *)
output wire ext_iic_scl_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 ext_iic SCL_T" *)
output wire ext_iic_scl_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 ext_iic SDA_I" *)
input wire ext_iic_sda_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 ext_iic SDA_O" *)
output wire ext_iic_sda_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 ext_iic SDA_T" *)
output wire ext_iic_sda_t;

  bd_ac35_0 inst (
    .s_axi_aclk(s_axi_aclk),
    .s_axi_aresetn(s_axi_aresetn),
    .rx_vid_clk(rx_vid_clk),
    .rx_vid_rst(rx_vid_rst),
    .m_axis_aclk_stream1(m_axis_aclk_stream1),
    .aux_rx_io_p(aux_rx_io_p),
    .aux_rx_io_n(aux_rx_io_n),
    .rx_dec_clk(rx_dec_clk),
    .rx_lnk_clk(rx_lnk_clk),
    .rx_hpd(rx_hpd),
    .dprxss_dp_irq(dprxss_dp_irq),
    .rx_gt_ctrl_out(rx_gt_ctrl_out),
    .rx_misc0_str1(rx_misc0_str1),
    .rx_misc1_str1(rx_misc1_str1),
    .adaptive_sdp_out(adaptive_sdp_out),
    .adaptive_sdp_vld(adaptive_sdp_vld),
    .ext_rst(ext_rst),
    .dprxss_iic_irq(dprxss_iic_irq),
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
    .m_axis_video_stream1_tdata(m_axis_video_stream1_tdata),
    .m_axis_video_stream1_tlast(m_axis_video_stream1_tlast),
    .m_axis_video_stream1_tready(m_axis_video_stream1_tready),
    .m_axis_video_stream1_tuser(m_axis_video_stream1_tuser),
    .m_axis_video_stream1_tvalid(m_axis_video_stream1_tvalid),
    .s_axis_lnk_rx_lane0_tdata(s_axis_lnk_rx_lane0_tdata),
    .s_axis_lnk_rx_lane0_tready(s_axis_lnk_rx_lane0_tready),
    .s_axis_lnk_rx_lane0_tuser(s_axis_lnk_rx_lane0_tuser),
    .s_axis_lnk_rx_lane0_tvalid(s_axis_lnk_rx_lane0_tvalid),
    .m_axis_phy_rx_sb_control_tdata(m_axis_phy_rx_sb_control_tdata),
    .m_axis_phy_rx_sb_control_tready(m_axis_phy_rx_sb_control_tready),
    .m_axis_phy_rx_sb_control_tvalid(m_axis_phy_rx_sb_control_tvalid),
    .s_axis_phy_rx_sb_status_tdata(s_axis_phy_rx_sb_status_tdata),
    .s_axis_phy_rx_sb_status_tready(s_axis_phy_rx_sb_status_tready),
    .s_axis_phy_rx_sb_status_tvalid(s_axis_phy_rx_sb_status_tvalid),
    .s_axis_lnk_rx_lane3_tdata(s_axis_lnk_rx_lane3_tdata),
    .s_axis_lnk_rx_lane3_tready(s_axis_lnk_rx_lane3_tready),
    .s_axis_lnk_rx_lane3_tuser(s_axis_lnk_rx_lane3_tuser),
    .s_axis_lnk_rx_lane3_tvalid(s_axis_lnk_rx_lane3_tvalid),
    .s_axis_lnk_rx_lane2_tdata(s_axis_lnk_rx_lane2_tdata),
    .s_axis_lnk_rx_lane2_tready(s_axis_lnk_rx_lane2_tready),
    .s_axis_lnk_rx_lane2_tuser(s_axis_lnk_rx_lane2_tuser),
    .s_axis_lnk_rx_lane2_tvalid(s_axis_lnk_rx_lane2_tvalid),
    .s_axis_lnk_rx_lane1_tdata(s_axis_lnk_rx_lane1_tdata),
    .s_axis_lnk_rx_lane1_tready(s_axis_lnk_rx_lane1_tready),
    .s_axis_lnk_rx_lane1_tuser(s_axis_lnk_rx_lane1_tuser),
    .s_axis_lnk_rx_lane1_tvalid(s_axis_lnk_rx_lane1_tvalid),
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
    .ext_iic_sda_t(ext_iic_sda_t)
  );
endmodule
