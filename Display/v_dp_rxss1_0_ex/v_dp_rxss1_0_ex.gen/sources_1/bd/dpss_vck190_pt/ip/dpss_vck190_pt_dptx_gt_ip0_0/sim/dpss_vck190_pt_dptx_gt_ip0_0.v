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


// IP VLNV: xilinx.com:ip:v_vid_gt_bridge:2.0
// IP Revision: 4

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module dpss_vck190_pt_dptx_gt_ip0_0 (
  gt_ctrl_aclk,
  gt_ctrl_aresetn,
  dp_gt_ctrl,
  status_sb_tx_tdata,
  status_sb_tx_tvalid,
  status_sb_tx_tready,
  tx_axi4s_ch0_tdata,
  tx_axi4s_ch0_tuser,
  tx_axi4s_ch0_tvalid,
  tx_axi4s_ch0_tready,
  ch0_txdata,
  ch0_txmstdatapathreset,
  ch0_txprogdivreset,
  ch0_txresetdone,
  ch0_txuserrdy,
  ch0_txinhibit,
  ch0_txpolarity,
  ch0_txprbsforceerr,
  ch0_txpmaresetdone,
  ch0_txmstreset,
  ch0_txmstresetdone,
  ch0_txctrl0,
  ch0_txctrl1,
  ch0_txctrl2,
  ch0_txpd,
  ch0_txprbssel,
  ch0_txdiffctrl,
  ch0_txpostcursor,
  ch0_txprecursor,
  ch0_txrate,
  ch0_txpcsresetmask,
  ch0_txpmaresetmask,
  tx_axi4s_ch1_tdata,
  tx_axi4s_ch1_tuser,
  tx_axi4s_ch1_tvalid,
  tx_axi4s_ch1_tready,
  ch1_txdata,
  ch1_txmstdatapathreset,
  ch1_txprogdivreset,
  ch1_txresetdone,
  ch1_txuserrdy,
  ch1_txinhibit,
  ch1_txpolarity,
  ch1_txprbsforceerr,
  ch1_txpmaresetdone,
  ch1_txmstreset,
  ch1_txmstresetdone,
  ch1_txctrl0,
  ch1_txctrl1,
  ch1_txctrl2,
  ch1_txpd,
  ch1_txprbssel,
  ch1_txdiffctrl,
  ch1_txpostcursor,
  ch1_txprecursor,
  ch1_txrate,
  ch1_txpcsresetmask,
  ch1_txpmaresetmask,
  tx_axi4s_ch2_tdata,
  tx_axi4s_ch2_tuser,
  tx_axi4s_ch2_tvalid,
  tx_axi4s_ch2_tready,
  ch2_txdata,
  ch2_txmstdatapathreset,
  ch2_txprogdivreset,
  ch2_txresetdone,
  ch2_txuserrdy,
  ch2_txinhibit,
  ch2_txpolarity,
  ch2_txprbsforceerr,
  ch2_txpmaresetdone,
  ch2_txmstreset,
  ch2_txmstresetdone,
  ch2_txctrl0,
  ch2_txctrl1,
  ch2_txctrl2,
  ch2_txpd,
  ch2_txprbssel,
  ch2_txdiffctrl,
  ch2_txpostcursor,
  ch2_txprecursor,
  ch2_txrate,
  ch2_txpcsresetmask,
  ch2_txpmaresetmask,
  tx_axi4s_ch3_tdata,
  tx_axi4s_ch3_tuser,
  tx_axi4s_ch3_tvalid,
  tx_axi4s_ch3_tready,
  ch3_txdata,
  ch3_txmstdatapathreset,
  ch3_txprogdivreset,
  ch3_txresetdone,
  ch3_txuserrdy,
  ch3_txinhibit,
  ch3_txpolarity,
  ch3_txprbsforceerr,
  ch3_txpmaresetdone,
  ch3_txmstreset,
  ch3_txmstresetdone,
  ch3_txctrl0,
  ch3_txctrl1,
  ch3_txctrl2,
  ch3_txpd,
  ch3_txprbssel,
  ch3_txdiffctrl,
  ch3_txpostcursor,
  ch3_txprecursor,
  ch3_txrate,
  ch3_txpcsresetmask,
  ch3_txpmaresetmask,
  gt_txusrclk,
  tx_mmcm_locked,
  tx_pll0_locked,
  tx_pll1_locked,
  tx_pll1_reset,
  tx_pll0_reset,
  tx_bufg_gt_clr,
  gt_powergood
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gt_ctrl_aclk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, ASSOCIATED_BUSIF :DP_TX_PHY_SB_STS, ASSOCIATED_RESET /dptx_gt_ip0/gt_ctrl_aresetn, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 gt_ctrl_aclk CLK" *)
input wire gt_ctrl_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gt_ctrl_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 gt_ctrl_aresetn RST" *)
input wire gt_ctrl_aresetn;
input wire [31 : 0] dp_gt_ctrl;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DP_TX_PHY_SB_STS tdata" *)
output wire [7 : 0] status_sb_tx_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DP_TX_PHY_SB_STS tvalid" *)
output wire status_sb_tx_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DP_TX_PHY_SB_STS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DP_TX_PHY_SB_STS tready" *)
input wire status_sb_tx_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DP_TX_AXI4S_CH0 tdata" *)
input wire [31 : 0] tx_axi4s_ch0_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DP_TX_AXI4S_CH0 tuser" *)
input wire [11 : 0] tx_axi4s_ch0_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DP_TX_AXI4S_CH0 tvalid" *)
input wire tx_axi4s_ch0_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DP_TX_AXI4S_CH0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 506250000.0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_txoutclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DP_TX_AXI4S_CH0 tready" *)
output wire tx_axi4s_ch0_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX0 ch_txdata" *)
output wire [31 : 0] ch0_txdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX0 ch_txmstdatapathreset" *)
output wire ch0_txmstdatapathreset;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX0 ch_txprogdivreset" *)
output wire ch0_txprogdivreset;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX0 ch_txresetdone" *)
input wire ch0_txresetdone;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX0 ch_txuserrdy" *)
output wire ch0_txuserrdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX0 ch_txinhibit" *)
output wire ch0_txinhibit;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX0 ch_txpolarity" *)
output wire ch0_txpolarity;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX0 ch_txprbsforceerr" *)
output wire ch0_txprbsforceerr;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX0 ch_txpmaresetdone" *)
input wire ch0_txpmaresetdone;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX0 ch_txmstreset" *)
output wire ch0_txmstreset;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX0 ch_txmstresetdone" *)
input wire ch0_txmstresetdone;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX0 ch_txctrl0" *)
output wire [15 : 0] ch0_txctrl0;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX0 ch_txctrl1" *)
output wire [15 : 0] ch0_txctrl1;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX0 ch_txctrl2" *)
output wire [7 : 0] ch0_txctrl2;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX0 ch_txpd" *)
output wire [1 : 0] ch0_txpd;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX0 ch_txprbssel" *)
output wire [3 : 0] ch0_txprbssel;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX0 ch_txdiffctrl" *)
output wire [4 : 0] ch0_txdiffctrl;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX0 ch_txpostcursor" *)
output wire [4 : 0] ch0_txpostcursor;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX0 ch_txprecursor" *)
output wire [4 : 0] ch0_txprecursor;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX0 ch_txrate" *)
output wire [2 : 0] ch0_txrate;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX0 ch_txpcsresetmask" *)
output wire ch0_txpcsresetmask;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GT_TX0, PARENT_ID dpss_vck190_pt_dptx_gt_ip0_0, CHNL_NUMBER 0, MASTERCLK_SRC 1, GT_DIRECTION SIMPLEX_TX, TX_SETTINGS LR0_SETTINGS {TX_PAM_SEL NRZ TX_HD_EN 0 TX_GRAY_BYP true TX_GRAY_LITTLEENDIAN true TX_PRECODE_BYP true TX_PRECODE_LITTLEENDIAN false TX_LINE_RATE 1.62 TX_PLL_TYPE RPLL TX_REFCLK_FREQUENCY 270 TX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 TX_FRACN_ENABLED false TX_FRACN_OVRD false TX_FRACN_NUMERATOR 0 TX_REFCLK_SOURCE R0 TX_DATA_ENCODING RAW TX_USER_DATA_WIDTH 16 TX\
_INT_DATA_WIDTH 16 TX_BUFFER_MODE 1 TX_BUFFER_BYPASS_MODE Fast_Sync TX_PIPM_ENABLE false TX_OUTCLK_SOURCE TXPROGDIVCLK TXPROGDIV_FREQ_ENABLE true TXPROGDIV_FREQ_SOURCE RPLL TXPROGDIV_FREQ_VAL 101.250 TX_DIFF_SWING_EMPH_MODE CUSTOM TX_64B66B_SCRAMBLER false TX_64B66B_ENCODER false TX_64B66B_CRC false TX_RATE_GROUP A TX_LANE_DESKEW_HDMI_ENABLE false TX_BUFFER_RESET_ON_RATE_CHANGE ENABLE GT_TYPE GTY} LR1_SETTINGS {TX_PAM_SEL NRZ TX_HD_EN 0 TX_GRAY_BYP true TX_GRAY_LITTLEENDIAN true TX_PRECODE_BYP t\
rue TX_PRECODE_LITTLEENDIAN false TX_LINE_RATE 2.7 TX_PLL_TYPE RPLL TX_REFCLK_FREQUENCY 270 TX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 TX_FRACN_ENABLED false TX_FRACN_OVRD false TX_FRACN_NUMERATOR 0 TX_REFCLK_SOURCE R0 TX_DATA_ENCODING RAW TX_USER_DATA_WIDTH 16 TX_INT_DATA_WIDTH 16 TX_BUFFER_MODE 1 TX_BUFFER_BYPASS_MODE Fast_Sync TX_PIPM_ENABLE false TX_OUTCLK_SOURCE TXPROGDIVCLK TXPROGDIV_FREQ_ENABLE true TXPROGDIV_FREQ_SOURCE RPLL TXPROGDIV_FREQ_VAL 168.750 TX_DIFF_SWING_EMPH_MODE CUSTOM TX_6\
4B66B_SCRAMBLER false TX_64B66B_ENCODER false TX_64B66B_CRC false TX_RATE_GROUP A TX_LANE_DESKEW_HDMI_ENABLE false TX_BUFFER_RESET_ON_RATE_CHANGE ENABLE GT_TYPE GTY} LR2_SETTINGS {TX_PAM_SEL NRZ TX_HD_EN 0 TX_GRAY_BYP true TX_GRAY_LITTLEENDIAN true TX_PRECODE_BYP true TX_PRECODE_LITTLEENDIAN false TX_LINE_RATE 5.4 TX_PLL_TYPE RPLL TX_REFCLK_FREQUENCY 270 TX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 TX_FRACN_ENABLED false TX_FRACN_OVRD false TX_FRACN_NUMERATOR 0 TX_REFCLK_SOURCE R0 TX_DATA_ENCODIN\
G RAW TX_USER_DATA_WIDTH 16 TX_INT_DATA_WIDTH 16 TX_BUFFER_MODE 1 TX_BUFFER_BYPASS_MODE Fast_Sync TX_PIPM_ENABLE false TX_OUTCLK_SOURCE TXPROGDIVCLK TXPROGDIV_FREQ_ENABLE true TXPROGDIV_FREQ_SOURCE RPLL TXPROGDIV_FREQ_VAL 337.500 TX_DIFF_SWING_EMPH_MODE CUSTOM TX_64B66B_SCRAMBLER false TX_64B66B_ENCODER false TX_64B66B_CRC false TX_RATE_GROUP A TX_LANE_DESKEW_HDMI_ENABLE false TX_BUFFER_RESET_ON_RATE_CHANGE ENABLE GT_TYPE GTY} LR3_SETTINGS {TX_PAM_SEL NRZ TX_HD_EN 0 TX_GRAY_BYP true TX_GRAY_LITT\
LEENDIAN true TX_PRECODE_BYP true TX_PRECODE_LITTLEENDIAN false TX_LINE_RATE 8.1 TX_PLL_TYPE RPLL TX_REFCLK_FREQUENCY 270 TX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 TX_FRACN_ENABLED false TX_FRACN_OVRD false TX_FRACN_NUMERATOR 0 TX_REFCLK_SOURCE R0 TX_DATA_ENCODING RAW TX_USER_DATA_WIDTH 16 TX_INT_DATA_WIDTH 16 TX_BUFFER_MODE 1 TX_BUFFER_BYPASS_MODE Fast_Sync TX_PIPM_ENABLE false TX_OUTCLK_SOURCE TXPROGDIVCLK TXPROGDIV_FREQ_ENABLE true TXPROGDIV_FREQ_SOURCE RPLL TXPROGDIV_FREQ_VAL 506.250 TX_DI\
FF_SWING_EMPH_MODE CUSTOM TX_64B66B_SCRAMBLER false TX_64B66B_ENCODER false TX_64B66B_CRC false TX_RATE_GROUP A TX_LANE_DESKEW_HDMI_ENABLE false TX_BUFFER_RESET_ON_RATE_CHANGE ENABLE GT_TYPE GTY}, ADDITIONAL_QUAD_SETTINGS GT_TYPE GTY, ADDITIONAL_CONFIG_FILE no_addn_file_loaded, ADDITIONAL_CONFIG_ENABLE undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX0 ch_txpmaresetmask" *)
output wire [2 : 0] ch0_txpmaresetmask;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DP_TX_AXI4S_CH1 tdata" *)
input wire [31 : 0] tx_axi4s_ch1_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DP_TX_AXI4S_CH1 tuser" *)
input wire [11 : 0] tx_axi4s_ch1_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DP_TX_AXI4S_CH1 tvalid" *)
input wire tx_axi4s_ch1_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DP_TX_AXI4S_CH1, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 506250000.0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_txoutclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DP_TX_AXI4S_CH1 tready" *)
output wire tx_axi4s_ch1_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX1 ch_txdata" *)
output wire [31 : 0] ch1_txdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX1 ch_txmstdatapathreset" *)
output wire ch1_txmstdatapathreset;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX1 ch_txprogdivreset" *)
output wire ch1_txprogdivreset;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX1 ch_txresetdone" *)
input wire ch1_txresetdone;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX1 ch_txuserrdy" *)
output wire ch1_txuserrdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX1 ch_txinhibit" *)
output wire ch1_txinhibit;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX1 ch_txpolarity" *)
output wire ch1_txpolarity;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX1 ch_txprbsforceerr" *)
output wire ch1_txprbsforceerr;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX1 ch_txpmaresetdone" *)
input wire ch1_txpmaresetdone;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX1 ch_txmstreset" *)
output wire ch1_txmstreset;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX1 ch_txmstresetdone" *)
input wire ch1_txmstresetdone;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX1 ch_txctrl0" *)
output wire [15 : 0] ch1_txctrl0;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX1 ch_txctrl1" *)
output wire [15 : 0] ch1_txctrl1;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX1 ch_txctrl2" *)
output wire [7 : 0] ch1_txctrl2;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX1 ch_txpd" *)
output wire [1 : 0] ch1_txpd;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX1 ch_txprbssel" *)
output wire [3 : 0] ch1_txprbssel;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX1 ch_txdiffctrl" *)
output wire [4 : 0] ch1_txdiffctrl;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX1 ch_txpostcursor" *)
output wire [4 : 0] ch1_txpostcursor;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX1 ch_txprecursor" *)
output wire [4 : 0] ch1_txprecursor;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX1 ch_txrate" *)
output wire [2 : 0] ch1_txrate;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX1 ch_txpcsresetmask" *)
output wire ch1_txpcsresetmask;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GT_TX1, PARENT_ID dpss_vck190_pt_dptx_gt_ip0_0, CHNL_NUMBER 1, MASTERCLK_SRC 0, GT_DIRECTION SIMPLEX_TX, TX_SETTINGS LR0_SETTINGS {TX_PAM_SEL NRZ TX_HD_EN 0 TX_GRAY_BYP true TX_GRAY_LITTLEENDIAN true TX_PRECODE_BYP true TX_PRECODE_LITTLEENDIAN false TX_LINE_RATE 1.62 TX_PLL_TYPE RPLL TX_REFCLK_FREQUENCY 270 TX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 TX_FRACN_ENABLED false TX_FRACN_OVRD false TX_FRACN_NUMERATOR 0 TX_REFCLK_SOURCE R0 TX_DATA_ENCODING RAW TX_USER_DATA_WIDTH 16 TX\
_INT_DATA_WIDTH 16 TX_BUFFER_MODE 1 TX_BUFFER_BYPASS_MODE Fast_Sync TX_PIPM_ENABLE false TX_OUTCLK_SOURCE TXPROGDIVCLK TXPROGDIV_FREQ_ENABLE true TXPROGDIV_FREQ_SOURCE RPLL TXPROGDIV_FREQ_VAL 101.250 TX_DIFF_SWING_EMPH_MODE CUSTOM TX_64B66B_SCRAMBLER false TX_64B66B_ENCODER false TX_64B66B_CRC false TX_RATE_GROUP A TX_LANE_DESKEW_HDMI_ENABLE false TX_BUFFER_RESET_ON_RATE_CHANGE ENABLE GT_TYPE GTY} LR1_SETTINGS {TX_PAM_SEL NRZ TX_HD_EN 0 TX_GRAY_BYP true TX_GRAY_LITTLEENDIAN true TX_PRECODE_BYP t\
rue TX_PRECODE_LITTLEENDIAN false TX_LINE_RATE 2.7 TX_PLL_TYPE RPLL TX_REFCLK_FREQUENCY 270 TX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 TX_FRACN_ENABLED false TX_FRACN_OVRD false TX_FRACN_NUMERATOR 0 TX_REFCLK_SOURCE R0 TX_DATA_ENCODING RAW TX_USER_DATA_WIDTH 16 TX_INT_DATA_WIDTH 16 TX_BUFFER_MODE 1 TX_BUFFER_BYPASS_MODE Fast_Sync TX_PIPM_ENABLE false TX_OUTCLK_SOURCE TXPROGDIVCLK TXPROGDIV_FREQ_ENABLE true TXPROGDIV_FREQ_SOURCE RPLL TXPROGDIV_FREQ_VAL 168.750 TX_DIFF_SWING_EMPH_MODE CUSTOM TX_6\
4B66B_SCRAMBLER false TX_64B66B_ENCODER false TX_64B66B_CRC false TX_RATE_GROUP A TX_LANE_DESKEW_HDMI_ENABLE false TX_BUFFER_RESET_ON_RATE_CHANGE ENABLE GT_TYPE GTY} LR2_SETTINGS {TX_PAM_SEL NRZ TX_HD_EN 0 TX_GRAY_BYP true TX_GRAY_LITTLEENDIAN true TX_PRECODE_BYP true TX_PRECODE_LITTLEENDIAN false TX_LINE_RATE 5.4 TX_PLL_TYPE RPLL TX_REFCLK_FREQUENCY 270 TX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 TX_FRACN_ENABLED false TX_FRACN_OVRD false TX_FRACN_NUMERATOR 0 TX_REFCLK_SOURCE R0 TX_DATA_ENCODIN\
G RAW TX_USER_DATA_WIDTH 16 TX_INT_DATA_WIDTH 16 TX_BUFFER_MODE 1 TX_BUFFER_BYPASS_MODE Fast_Sync TX_PIPM_ENABLE false TX_OUTCLK_SOURCE TXPROGDIVCLK TXPROGDIV_FREQ_ENABLE true TXPROGDIV_FREQ_SOURCE RPLL TXPROGDIV_FREQ_VAL 337.500 TX_DIFF_SWING_EMPH_MODE CUSTOM TX_64B66B_SCRAMBLER false TX_64B66B_ENCODER false TX_64B66B_CRC false TX_RATE_GROUP A TX_LANE_DESKEW_HDMI_ENABLE false TX_BUFFER_RESET_ON_RATE_CHANGE ENABLE GT_TYPE GTY} LR3_SETTINGS {TX_PAM_SEL NRZ TX_HD_EN 0 TX_GRAY_BYP true TX_GRAY_LITT\
LEENDIAN true TX_PRECODE_BYP true TX_PRECODE_LITTLEENDIAN false TX_LINE_RATE 8.1 TX_PLL_TYPE RPLL TX_REFCLK_FREQUENCY 270 TX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 TX_FRACN_ENABLED false TX_FRACN_OVRD false TX_FRACN_NUMERATOR 0 TX_REFCLK_SOURCE R0 TX_DATA_ENCODING RAW TX_USER_DATA_WIDTH 16 TX_INT_DATA_WIDTH 16 TX_BUFFER_MODE 1 TX_BUFFER_BYPASS_MODE Fast_Sync TX_PIPM_ENABLE false TX_OUTCLK_SOURCE TXPROGDIVCLK TXPROGDIV_FREQ_ENABLE true TXPROGDIV_FREQ_SOURCE RPLL TXPROGDIV_FREQ_VAL 506.250 TX_DI\
FF_SWING_EMPH_MODE CUSTOM TX_64B66B_SCRAMBLER false TX_64B66B_ENCODER false TX_64B66B_CRC false TX_RATE_GROUP A TX_LANE_DESKEW_HDMI_ENABLE false TX_BUFFER_RESET_ON_RATE_CHANGE ENABLE GT_TYPE GTY}, ADDITIONAL_QUAD_SETTINGS GT_TYPE GTY, ADDITIONAL_CONFIG_FILE no_addn_file_loaded, ADDITIONAL_CONFIG_ENABLE undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX1 ch_txpmaresetmask" *)
output wire [2 : 0] ch1_txpmaresetmask;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DP_TX_AXI4S_CH2 tdata" *)
input wire [31 : 0] tx_axi4s_ch2_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DP_TX_AXI4S_CH2 tuser" *)
input wire [11 : 0] tx_axi4s_ch2_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DP_TX_AXI4S_CH2 tvalid" *)
input wire tx_axi4s_ch2_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DP_TX_AXI4S_CH2, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 506250000.0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_txoutclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DP_TX_AXI4S_CH2 tready" *)
output wire tx_axi4s_ch2_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX2 ch_txdata" *)
output wire [31 : 0] ch2_txdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX2 ch_txmstdatapathreset" *)
output wire ch2_txmstdatapathreset;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX2 ch_txprogdivreset" *)
output wire ch2_txprogdivreset;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX2 ch_txresetdone" *)
input wire ch2_txresetdone;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX2 ch_txuserrdy" *)
output wire ch2_txuserrdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX2 ch_txinhibit" *)
output wire ch2_txinhibit;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX2 ch_txpolarity" *)
output wire ch2_txpolarity;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX2 ch_txprbsforceerr" *)
output wire ch2_txprbsforceerr;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX2 ch_txpmaresetdone" *)
input wire ch2_txpmaresetdone;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX2 ch_txmstreset" *)
output wire ch2_txmstreset;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX2 ch_txmstresetdone" *)
input wire ch2_txmstresetdone;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX2 ch_txctrl0" *)
output wire [15 : 0] ch2_txctrl0;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX2 ch_txctrl1" *)
output wire [15 : 0] ch2_txctrl1;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX2 ch_txctrl2" *)
output wire [7 : 0] ch2_txctrl2;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX2 ch_txpd" *)
output wire [1 : 0] ch2_txpd;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX2 ch_txprbssel" *)
output wire [3 : 0] ch2_txprbssel;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX2 ch_txdiffctrl" *)
output wire [4 : 0] ch2_txdiffctrl;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX2 ch_txpostcursor" *)
output wire [4 : 0] ch2_txpostcursor;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX2 ch_txprecursor" *)
output wire [4 : 0] ch2_txprecursor;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX2 ch_txrate" *)
output wire [2 : 0] ch2_txrate;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX2 ch_txpcsresetmask" *)
output wire ch2_txpcsresetmask;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GT_TX2, PARENT_ID dpss_vck190_pt_dptx_gt_ip0_0, CHNL_NUMBER 2, MASTERCLK_SRC 0, GT_DIRECTION SIMPLEX_TX, TX_SETTINGS LR0_SETTINGS {TX_PAM_SEL NRZ TX_HD_EN 0 TX_GRAY_BYP true TX_GRAY_LITTLEENDIAN true TX_PRECODE_BYP true TX_PRECODE_LITTLEENDIAN false TX_LINE_RATE 1.62 TX_PLL_TYPE RPLL TX_REFCLK_FREQUENCY 270 TX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 TX_FRACN_ENABLED false TX_FRACN_OVRD false TX_FRACN_NUMERATOR 0 TX_REFCLK_SOURCE R0 TX_DATA_ENCODING RAW TX_USER_DATA_WIDTH 16 TX\
_INT_DATA_WIDTH 16 TX_BUFFER_MODE 1 TX_BUFFER_BYPASS_MODE Fast_Sync TX_PIPM_ENABLE false TX_OUTCLK_SOURCE TXPROGDIVCLK TXPROGDIV_FREQ_ENABLE true TXPROGDIV_FREQ_SOURCE RPLL TXPROGDIV_FREQ_VAL 101.250 TX_DIFF_SWING_EMPH_MODE CUSTOM TX_64B66B_SCRAMBLER false TX_64B66B_ENCODER false TX_64B66B_CRC false TX_RATE_GROUP A TX_LANE_DESKEW_HDMI_ENABLE false TX_BUFFER_RESET_ON_RATE_CHANGE ENABLE GT_TYPE GTY} LR1_SETTINGS {TX_PAM_SEL NRZ TX_HD_EN 0 TX_GRAY_BYP true TX_GRAY_LITTLEENDIAN true TX_PRECODE_BYP t\
rue TX_PRECODE_LITTLEENDIAN false TX_LINE_RATE 2.7 TX_PLL_TYPE RPLL TX_REFCLK_FREQUENCY 270 TX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 TX_FRACN_ENABLED false TX_FRACN_OVRD false TX_FRACN_NUMERATOR 0 TX_REFCLK_SOURCE R0 TX_DATA_ENCODING RAW TX_USER_DATA_WIDTH 16 TX_INT_DATA_WIDTH 16 TX_BUFFER_MODE 1 TX_BUFFER_BYPASS_MODE Fast_Sync TX_PIPM_ENABLE false TX_OUTCLK_SOURCE TXPROGDIVCLK TXPROGDIV_FREQ_ENABLE true TXPROGDIV_FREQ_SOURCE RPLL TXPROGDIV_FREQ_VAL 168.750 TX_DIFF_SWING_EMPH_MODE CUSTOM TX_6\
4B66B_SCRAMBLER false TX_64B66B_ENCODER false TX_64B66B_CRC false TX_RATE_GROUP A TX_LANE_DESKEW_HDMI_ENABLE false TX_BUFFER_RESET_ON_RATE_CHANGE ENABLE GT_TYPE GTY} LR2_SETTINGS {TX_PAM_SEL NRZ TX_HD_EN 0 TX_GRAY_BYP true TX_GRAY_LITTLEENDIAN true TX_PRECODE_BYP true TX_PRECODE_LITTLEENDIAN false TX_LINE_RATE 5.4 TX_PLL_TYPE RPLL TX_REFCLK_FREQUENCY 270 TX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 TX_FRACN_ENABLED false TX_FRACN_OVRD false TX_FRACN_NUMERATOR 0 TX_REFCLK_SOURCE R0 TX_DATA_ENCODIN\
G RAW TX_USER_DATA_WIDTH 16 TX_INT_DATA_WIDTH 16 TX_BUFFER_MODE 1 TX_BUFFER_BYPASS_MODE Fast_Sync TX_PIPM_ENABLE false TX_OUTCLK_SOURCE TXPROGDIVCLK TXPROGDIV_FREQ_ENABLE true TXPROGDIV_FREQ_SOURCE RPLL TXPROGDIV_FREQ_VAL 337.500 TX_DIFF_SWING_EMPH_MODE CUSTOM TX_64B66B_SCRAMBLER false TX_64B66B_ENCODER false TX_64B66B_CRC false TX_RATE_GROUP A TX_LANE_DESKEW_HDMI_ENABLE false TX_BUFFER_RESET_ON_RATE_CHANGE ENABLE GT_TYPE GTY} LR3_SETTINGS {TX_PAM_SEL NRZ TX_HD_EN 0 TX_GRAY_BYP true TX_GRAY_LITT\
LEENDIAN true TX_PRECODE_BYP true TX_PRECODE_LITTLEENDIAN false TX_LINE_RATE 8.1 TX_PLL_TYPE RPLL TX_REFCLK_FREQUENCY 270 TX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 TX_FRACN_ENABLED false TX_FRACN_OVRD false TX_FRACN_NUMERATOR 0 TX_REFCLK_SOURCE R0 TX_DATA_ENCODING RAW TX_USER_DATA_WIDTH 16 TX_INT_DATA_WIDTH 16 TX_BUFFER_MODE 1 TX_BUFFER_BYPASS_MODE Fast_Sync TX_PIPM_ENABLE false TX_OUTCLK_SOURCE TXPROGDIVCLK TXPROGDIV_FREQ_ENABLE true TXPROGDIV_FREQ_SOURCE RPLL TXPROGDIV_FREQ_VAL 506.250 TX_DI\
FF_SWING_EMPH_MODE CUSTOM TX_64B66B_SCRAMBLER false TX_64B66B_ENCODER false TX_64B66B_CRC false TX_RATE_GROUP A TX_LANE_DESKEW_HDMI_ENABLE false TX_BUFFER_RESET_ON_RATE_CHANGE ENABLE GT_TYPE GTY}, ADDITIONAL_QUAD_SETTINGS GT_TYPE GTY, ADDITIONAL_CONFIG_FILE no_addn_file_loaded, ADDITIONAL_CONFIG_ENABLE undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX2 ch_txpmaresetmask" *)
output wire [2 : 0] ch2_txpmaresetmask;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DP_TX_AXI4S_CH3 tdata" *)
input wire [31 : 0] tx_axi4s_ch3_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DP_TX_AXI4S_CH3 tuser" *)
input wire [11 : 0] tx_axi4s_ch3_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DP_TX_AXI4S_CH3 tvalid" *)
input wire tx_axi4s_ch3_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DP_TX_AXI4S_CH3, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 506250000.0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_txoutclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 DP_TX_AXI4S_CH3 tready" *)
output wire tx_axi4s_ch3_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX3 ch_txdata" *)
output wire [31 : 0] ch3_txdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX3 ch_txmstdatapathreset" *)
output wire ch3_txmstdatapathreset;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX3 ch_txprogdivreset" *)
output wire ch3_txprogdivreset;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX3 ch_txresetdone" *)
input wire ch3_txresetdone;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX3 ch_txuserrdy" *)
output wire ch3_txuserrdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX3 ch_txinhibit" *)
output wire ch3_txinhibit;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX3 ch_txpolarity" *)
output wire ch3_txpolarity;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX3 ch_txprbsforceerr" *)
output wire ch3_txprbsforceerr;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX3 ch_txpmaresetdone" *)
input wire ch3_txpmaresetdone;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX3 ch_txmstreset" *)
output wire ch3_txmstreset;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX3 ch_txmstresetdone" *)
input wire ch3_txmstresetdone;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX3 ch_txctrl0" *)
output wire [15 : 0] ch3_txctrl0;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX3 ch_txctrl1" *)
output wire [15 : 0] ch3_txctrl1;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX3 ch_txctrl2" *)
output wire [7 : 0] ch3_txctrl2;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX3 ch_txpd" *)
output wire [1 : 0] ch3_txpd;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX3 ch_txprbssel" *)
output wire [3 : 0] ch3_txprbssel;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX3 ch_txdiffctrl" *)
output wire [4 : 0] ch3_txdiffctrl;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX3 ch_txpostcursor" *)
output wire [4 : 0] ch3_txpostcursor;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX3 ch_txprecursor" *)
output wire [4 : 0] ch3_txprecursor;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX3 ch_txrate" *)
output wire [2 : 0] ch3_txrate;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX3 ch_txpcsresetmask" *)
output wire ch3_txpcsresetmask;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GT_TX3, PARENT_ID dpss_vck190_pt_dptx_gt_ip0_0, CHNL_NUMBER 3, MASTERCLK_SRC 0, GT_DIRECTION SIMPLEX_TX, TX_SETTINGS LR0_SETTINGS {TX_PAM_SEL NRZ TX_HD_EN 0 TX_GRAY_BYP true TX_GRAY_LITTLEENDIAN true TX_PRECODE_BYP true TX_PRECODE_LITTLEENDIAN false TX_LINE_RATE 1.62 TX_PLL_TYPE RPLL TX_REFCLK_FREQUENCY 270 TX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 TX_FRACN_ENABLED false TX_FRACN_OVRD false TX_FRACN_NUMERATOR 0 TX_REFCLK_SOURCE R0 TX_DATA_ENCODING RAW TX_USER_DATA_WIDTH 16 TX\
_INT_DATA_WIDTH 16 TX_BUFFER_MODE 1 TX_BUFFER_BYPASS_MODE Fast_Sync TX_PIPM_ENABLE false TX_OUTCLK_SOURCE TXPROGDIVCLK TXPROGDIV_FREQ_ENABLE true TXPROGDIV_FREQ_SOURCE RPLL TXPROGDIV_FREQ_VAL 101.250 TX_DIFF_SWING_EMPH_MODE CUSTOM TX_64B66B_SCRAMBLER false TX_64B66B_ENCODER false TX_64B66B_CRC false TX_RATE_GROUP A TX_LANE_DESKEW_HDMI_ENABLE false TX_BUFFER_RESET_ON_RATE_CHANGE ENABLE GT_TYPE GTY} LR1_SETTINGS {TX_PAM_SEL NRZ TX_HD_EN 0 TX_GRAY_BYP true TX_GRAY_LITTLEENDIAN true TX_PRECODE_BYP t\
rue TX_PRECODE_LITTLEENDIAN false TX_LINE_RATE 2.7 TX_PLL_TYPE RPLL TX_REFCLK_FREQUENCY 270 TX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 TX_FRACN_ENABLED false TX_FRACN_OVRD false TX_FRACN_NUMERATOR 0 TX_REFCLK_SOURCE R0 TX_DATA_ENCODING RAW TX_USER_DATA_WIDTH 16 TX_INT_DATA_WIDTH 16 TX_BUFFER_MODE 1 TX_BUFFER_BYPASS_MODE Fast_Sync TX_PIPM_ENABLE false TX_OUTCLK_SOURCE TXPROGDIVCLK TXPROGDIV_FREQ_ENABLE true TXPROGDIV_FREQ_SOURCE RPLL TXPROGDIV_FREQ_VAL 168.750 TX_DIFF_SWING_EMPH_MODE CUSTOM TX_6\
4B66B_SCRAMBLER false TX_64B66B_ENCODER false TX_64B66B_CRC false TX_RATE_GROUP A TX_LANE_DESKEW_HDMI_ENABLE false TX_BUFFER_RESET_ON_RATE_CHANGE ENABLE GT_TYPE GTY} LR2_SETTINGS {TX_PAM_SEL NRZ TX_HD_EN 0 TX_GRAY_BYP true TX_GRAY_LITTLEENDIAN true TX_PRECODE_BYP true TX_PRECODE_LITTLEENDIAN false TX_LINE_RATE 5.4 TX_PLL_TYPE RPLL TX_REFCLK_FREQUENCY 270 TX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 TX_FRACN_ENABLED false TX_FRACN_OVRD false TX_FRACN_NUMERATOR 0 TX_REFCLK_SOURCE R0 TX_DATA_ENCODIN\
G RAW TX_USER_DATA_WIDTH 16 TX_INT_DATA_WIDTH 16 TX_BUFFER_MODE 1 TX_BUFFER_BYPASS_MODE Fast_Sync TX_PIPM_ENABLE false TX_OUTCLK_SOURCE TXPROGDIVCLK TXPROGDIV_FREQ_ENABLE true TXPROGDIV_FREQ_SOURCE RPLL TXPROGDIV_FREQ_VAL 337.500 TX_DIFF_SWING_EMPH_MODE CUSTOM TX_64B66B_SCRAMBLER false TX_64B66B_ENCODER false TX_64B66B_CRC false TX_RATE_GROUP A TX_LANE_DESKEW_HDMI_ENABLE false TX_BUFFER_RESET_ON_RATE_CHANGE ENABLE GT_TYPE GTY} LR3_SETTINGS {TX_PAM_SEL NRZ TX_HD_EN 0 TX_GRAY_BYP true TX_GRAY_LITT\
LEENDIAN true TX_PRECODE_BYP true TX_PRECODE_LITTLEENDIAN false TX_LINE_RATE 8.1 TX_PLL_TYPE RPLL TX_REFCLK_FREQUENCY 270 TX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 TX_FRACN_ENABLED false TX_FRACN_OVRD false TX_FRACN_NUMERATOR 0 TX_REFCLK_SOURCE R0 TX_DATA_ENCODING RAW TX_USER_DATA_WIDTH 16 TX_INT_DATA_WIDTH 16 TX_BUFFER_MODE 1 TX_BUFFER_BYPASS_MODE Fast_Sync TX_PIPM_ENABLE false TX_OUTCLK_SOURCE TXPROGDIVCLK TXPROGDIV_FREQ_ENABLE true TXPROGDIV_FREQ_SOURCE RPLL TXPROGDIV_FREQ_VAL 506.250 TX_DI\
FF_SWING_EMPH_MODE CUSTOM TX_64B66B_SCRAMBLER false TX_64B66B_ENCODER false TX_64B66B_CRC false TX_RATE_GROUP A TX_LANE_DESKEW_HDMI_ENABLE false TX_BUFFER_RESET_ON_RATE_CHANGE ENABLE GT_TYPE GTY}, ADDITIONAL_QUAD_SETTINGS GT_TYPE GTY, ADDITIONAL_CONFIG_FILE no_addn_file_loaded, ADDITIONAL_CONFIG_ENABLE undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:gt_tx_interface:1.0 GT_TX3 ch_txpmaresetmask" *)
output wire [2 : 0] ch3_txpmaresetmask;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gt_txusrclk, FREQ_HZ 506250000.0, PARENT_ID undef, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_txoutclk, ASSOCIATED_BUSIF DP_TX_AXI4S_CH0:DP_TX_AXI4S_CH1:DP_TX_AXI4S_CH2:DP_TX_AXI4S_CH3" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:gt_usrclk:1.0 gt_txusrclk CLK" *)
input wire gt_txusrclk;
input wire tx_mmcm_locked;
input wire tx_pll0_locked;
input wire tx_pll1_locked;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HSCLK1_RPLL_RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 HSCLK1_RPLL_RESET RST" *)
output wire tx_pll1_reset;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HSCLK0_RPLL_RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 HSCLK0_RPLL_RESET RST" *)
output wire tx_pll0_reset;
output wire tx_bufg_gt_clr;
input wire gt_powergood;

  dpss_vck190_pt_dptx_gt_ip0_0_top #(
    .C_NEW_DP(1),
    .C_PROTOCOL(0),
    .C_TX_NUM_CH(4),
    .C_RX_NUM_CH(4),
    .C_ENABLE_TX(1),
    .C_ENABLE_RX(0),
    .C_TX_PLL(0),
    .C_RX_PLL(1),
    .C_TX_RATE(3),
    .C_RX_RATE(1),
    .C_USE_AXILITE(0),
    .C_USE_MSTR(1)
  ) inst (
    .gt_ctrl_aclk(gt_ctrl_aclk),
    .gt_ctrl_aresetn(gt_ctrl_aresetn),
    .dp_gt_ctrl(dp_gt_ctrl),
    .status_sb_tx_tdata(status_sb_tx_tdata),
    .status_sb_tx_tvalid(status_sb_tx_tvalid),
    .status_sb_tx_tready(status_sb_tx_tready),
    .tx_axi4s_ch0_tdata(tx_axi4s_ch0_tdata),
    .tx_axi4s_ch0_tuser(tx_axi4s_ch0_tuser),
    .tx_axi4s_ch0_tvalid(tx_axi4s_ch0_tvalid),
    .tx_axi4s_ch0_tready(tx_axi4s_ch0_tready),
    .ch0_txdata(ch0_txdata),
    .ch0_txmstdatapathreset(ch0_txmstdatapathreset),
    .ch0_txprogdivreset(ch0_txprogdivreset),
    .ch0_txresetdone(ch0_txresetdone),
    .ch0_txuserrdy(ch0_txuserrdy),
    .ch0_txinhibit(ch0_txinhibit),
    .ch0_txpolarity(ch0_txpolarity),
    .ch0_txprbsforceerr(ch0_txprbsforceerr),
    .ch0_txpmaresetdone(ch0_txpmaresetdone),
    .ch0_txmstreset(ch0_txmstreset),
    .ch0_txmstresetdone(ch0_txmstresetdone),
    .ch0_txctrl0(ch0_txctrl0),
    .ch0_txctrl1(ch0_txctrl1),
    .ch0_txctrl2(ch0_txctrl2),
    .ch0_txpd(ch0_txpd),
    .ch0_txprbssel(ch0_txprbssel),
    .ch0_txdiffctrl(ch0_txdiffctrl),
    .ch0_txpostcursor(ch0_txpostcursor),
    .ch0_txprecursor(ch0_txprecursor),
    .ch0_txrate(ch0_txrate),
    .ch0_txpcsresetmask(ch0_txpcsresetmask),
    .ch0_txpmaresetmask(ch0_txpmaresetmask),
    .tx_axi4s_ch1_tdata(tx_axi4s_ch1_tdata),
    .tx_axi4s_ch1_tuser(tx_axi4s_ch1_tuser),
    .tx_axi4s_ch1_tvalid(tx_axi4s_ch1_tvalid),
    .tx_axi4s_ch1_tready(tx_axi4s_ch1_tready),
    .ch1_txdata(ch1_txdata),
    .ch1_txmstdatapathreset(ch1_txmstdatapathreset),
    .ch1_txprogdivreset(ch1_txprogdivreset),
    .ch1_txresetdone(ch1_txresetdone),
    .ch1_txuserrdy(ch1_txuserrdy),
    .ch1_txinhibit(ch1_txinhibit),
    .ch1_txpolarity(ch1_txpolarity),
    .ch1_txprbsforceerr(ch1_txprbsforceerr),
    .ch1_txpmaresetdone(ch1_txpmaresetdone),
    .ch1_txmstreset(ch1_txmstreset),
    .ch1_txmstresetdone(ch1_txmstresetdone),
    .ch1_txctrl0(ch1_txctrl0),
    .ch1_txctrl1(ch1_txctrl1),
    .ch1_txctrl2(ch1_txctrl2),
    .ch1_txpd(ch1_txpd),
    .ch1_txprbssel(ch1_txprbssel),
    .ch1_txdiffctrl(ch1_txdiffctrl),
    .ch1_txpostcursor(ch1_txpostcursor),
    .ch1_txprecursor(ch1_txprecursor),
    .ch1_txrate(ch1_txrate),
    .ch1_txpcsresetmask(ch1_txpcsresetmask),
    .ch1_txpmaresetmask(ch1_txpmaresetmask),
    .tx_axi4s_ch2_tdata(tx_axi4s_ch2_tdata),
    .tx_axi4s_ch2_tuser(tx_axi4s_ch2_tuser),
    .tx_axi4s_ch2_tvalid(tx_axi4s_ch2_tvalid),
    .tx_axi4s_ch2_tready(tx_axi4s_ch2_tready),
    .ch2_txdata(ch2_txdata),
    .ch2_txmstdatapathreset(ch2_txmstdatapathreset),
    .ch2_txprogdivreset(ch2_txprogdivreset),
    .ch2_txresetdone(ch2_txresetdone),
    .ch2_txuserrdy(ch2_txuserrdy),
    .ch2_txinhibit(ch2_txinhibit),
    .ch2_txpolarity(ch2_txpolarity),
    .ch2_txprbsforceerr(ch2_txprbsforceerr),
    .ch2_txpmaresetdone(ch2_txpmaresetdone),
    .ch2_txmstreset(ch2_txmstreset),
    .ch2_txmstresetdone(ch2_txmstresetdone),
    .ch2_txctrl0(ch2_txctrl0),
    .ch2_txctrl1(ch2_txctrl1),
    .ch2_txctrl2(ch2_txctrl2),
    .ch2_txpd(ch2_txpd),
    .ch2_txprbssel(ch2_txprbssel),
    .ch2_txdiffctrl(ch2_txdiffctrl),
    .ch2_txpostcursor(ch2_txpostcursor),
    .ch2_txprecursor(ch2_txprecursor),
    .ch2_txrate(ch2_txrate),
    .ch2_txpcsresetmask(ch2_txpcsresetmask),
    .ch2_txpmaresetmask(ch2_txpmaresetmask),
    .tx_axi4s_ch3_tdata(tx_axi4s_ch3_tdata),
    .tx_axi4s_ch3_tuser(tx_axi4s_ch3_tuser),
    .tx_axi4s_ch3_tvalid(tx_axi4s_ch3_tvalid),
    .tx_axi4s_ch3_tready(tx_axi4s_ch3_tready),
    .ch3_txdata(ch3_txdata),
    .ch3_txmstdatapathreset(ch3_txmstdatapathreset),
    .ch3_txprogdivreset(ch3_txprogdivreset),
    .ch3_txresetdone(ch3_txresetdone),
    .ch3_txuserrdy(ch3_txuserrdy),
    .ch3_txinhibit(ch3_txinhibit),
    .ch3_txpolarity(ch3_txpolarity),
    .ch3_txprbsforceerr(ch3_txprbsforceerr),
    .ch3_txpmaresetdone(ch3_txpmaresetdone),
    .ch3_txmstreset(ch3_txmstreset),
    .ch3_txmstresetdone(ch3_txmstresetdone),
    .ch3_txctrl0(ch3_txctrl0),
    .ch3_txctrl1(ch3_txctrl1),
    .ch3_txctrl2(ch3_txctrl2),
    .ch3_txpd(ch3_txpd),
    .ch3_txprbssel(ch3_txprbssel),
    .ch3_txdiffctrl(ch3_txdiffctrl),
    .ch3_txpostcursor(ch3_txpostcursor),
    .ch3_txprecursor(ch3_txprecursor),
    .ch3_txrate(ch3_txrate),
    .ch3_txpcsresetmask(ch3_txpcsresetmask),
    .ch3_txpmaresetmask(ch3_txpmaresetmask),
    .gt_txusrclk(gt_txusrclk),
    .tx_mmcm_locked(tx_mmcm_locked),
    .tx_pll0_locked(tx_pll0_locked),
    .tx_pll1_locked(tx_pll1_locked),
    .tx_pll1_reset(tx_pll1_reset),
    .tx_pll0_reset(tx_pll0_reset),
    .tx_bufg_gt_clr(tx_bufg_gt_clr),
    .gt_powergood(gt_powergood)
  );
endmodule
