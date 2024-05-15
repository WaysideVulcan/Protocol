// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu May  9 19:08:13 2024
// Host        : Vulcan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_dprx_gt_ip0_0/dpss_vck190_pt_dprx_gt_ip0_0_stub.v
// Design      : dpss_vck190_pt_dprx_gt_ip0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1902-vsva2197-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dpss_vck190_pt_dprx_gt_ip0_0_top,Vivado 2023.2" *)
module dpss_vck190_pt_dprx_gt_ip0_0(gt_ctrl_aclk, gt_ctrl_aresetn, dp_gt_ctrl, 
  status_sb_rx_tdata, status_sb_rx_tvalid, status_sb_rx_tready, control_sb_rx_tdata, 
  control_sb_rx_tvalid, control_sb_rx_tready, ch0_rxdata, ch0_rxuserrdy, 
  ch0_rxpmaresetdone, ch0_rxmstdatapathreset, ch0_rxprogdivreset, ch0_rxresetdone, 
  ch0_rxbufstatus, ch0_rxmstreset, ch0_rxmstresetdone, ch0_rxcdrlock, ch0_rxbyteisaligned, 
  ch0_rxctrl0, ch0_rxctrl1, ch0_rxctrl3, ch0_rxlpmen, ch0_rxpd, ch0_rxpolarity, ch0_rxprbserr, 
  ch0_rxprbssel, ch0_rxrate, ch0_rxpcsresetmask, ch0_rxpmaresetmask, ch1_rxdata, 
  ch1_rxuserrdy, ch1_rxpmaresetdone, ch1_rxmstdatapathreset, ch1_rxprogdivreset, 
  ch1_rxresetdone, ch1_rxbufstatus, ch1_rxmstreset, ch1_rxmstresetdone, ch1_rxcdrlock, 
  ch1_rxbyteisaligned, ch1_rxctrl0, ch1_rxctrl1, ch1_rxctrl3, ch1_rxlpmen, ch1_rxpd, 
  ch1_rxpolarity, ch1_rxprbserr, ch1_rxprbssel, ch1_rxrate, ch1_rxpcsresetmask, 
  ch1_rxpmaresetmask, ch2_rxdata, ch2_rxuserrdy, ch2_rxpmaresetdone, 
  ch2_rxmstdatapathreset, ch2_rxprogdivreset, ch2_rxresetdone, ch2_rxbufstatus, 
  ch2_rxmstreset, ch2_rxmstresetdone, ch2_rxcdrlock, ch2_rxbyteisaligned, ch2_rxctrl0, 
  ch2_rxctrl1, ch2_rxctrl3, ch2_rxlpmen, ch2_rxpd, ch2_rxpolarity, ch2_rxprbserr, 
  ch2_rxprbssel, ch2_rxrate, ch2_rxpcsresetmask, ch2_rxpmaresetmask, ch3_rxdata, 
  ch3_rxuserrdy, ch3_rxpmaresetdone, ch3_rxmstdatapathreset, ch3_rxprogdivreset, 
  ch3_rxresetdone, ch3_rxbufstatus, ch3_rxmstreset, ch3_rxmstresetdone, ch3_rxcdrlock, 
  ch3_rxbyteisaligned, ch3_rxctrl0, ch3_rxctrl1, ch3_rxctrl3, ch3_rxlpmen, ch3_rxpd, 
  ch3_rxpolarity, ch3_rxprbserr, ch3_rxprbssel, ch3_rxrate, ch3_rxpcsresetmask, 
  ch3_rxpmaresetmask, rx_axi4s_ch0_tdata, rx_axi4s_ch0_tuser, rx_axi4s_ch0_tvalid, 
  rx_axi4s_ch0_tready, rx_axi4s_ch1_tdata, rx_axi4s_ch1_tuser, rx_axi4s_ch1_tvalid, 
  rx_axi4s_ch1_tready, rx_axi4s_ch2_tdata, rx_axi4s_ch2_tuser, rx_axi4s_ch2_tvalid, 
  rx_axi4s_ch2_tready, rx_axi4s_ch3_tdata, rx_axi4s_ch3_tuser, rx_axi4s_ch3_tvalid, 
  rx_axi4s_ch3_tready, gt_rxusrclk, rx_mmcm_locked, rx_pll0_locked, rx_pll1_locked, 
  rx_pll1_reset, rx_pll0_reset, rx_bufg_gt_clr, gt_powergood)
/* synthesis syn_black_box black_box_pad_pin="gt_ctrl_aresetn,dp_gt_ctrl[31:0],status_sb_rx_tdata[15:0],status_sb_rx_tvalid,status_sb_rx_tready,control_sb_rx_tdata[7:0],control_sb_rx_tvalid,control_sb_rx_tready,ch0_rxdata[31:0],ch0_rxuserrdy,ch0_rxpmaresetdone,ch0_rxmstdatapathreset,ch0_rxprogdivreset,ch0_rxresetdone,ch0_rxbufstatus[2:0],ch0_rxmstreset,ch0_rxmstresetdone,ch0_rxcdrlock,ch0_rxbyteisaligned,ch0_rxctrl0[15:0],ch0_rxctrl1[15:0],ch0_rxctrl3[7:0],ch0_rxlpmen,ch0_rxpd[1:0],ch0_rxpolarity,ch0_rxprbserr,ch0_rxprbssel[3:0],ch0_rxrate[2:0],ch0_rxpcsresetmask[4:0],ch0_rxpmaresetmask[6:0],ch1_rxdata[31:0],ch1_rxuserrdy,ch1_rxpmaresetdone,ch1_rxmstdatapathreset,ch1_rxprogdivreset,ch1_rxresetdone,ch1_rxbufstatus[2:0],ch1_rxmstreset,ch1_rxmstresetdone,ch1_rxcdrlock,ch1_rxbyteisaligned,ch1_rxctrl0[15:0],ch1_rxctrl1[15:0],ch1_rxctrl3[7:0],ch1_rxlpmen,ch1_rxpd[1:0],ch1_rxpolarity,ch1_rxprbserr,ch1_rxprbssel[3:0],ch1_rxrate[2:0],ch1_rxpcsresetmask[4:0],ch1_rxpmaresetmask[6:0],ch2_rxdata[31:0],ch2_rxuserrdy,ch2_rxpmaresetdone,ch2_rxmstdatapathreset,ch2_rxprogdivreset,ch2_rxresetdone,ch2_rxbufstatus[2:0],ch2_rxmstreset,ch2_rxmstresetdone,ch2_rxcdrlock,ch2_rxbyteisaligned,ch2_rxctrl0[15:0],ch2_rxctrl1[15:0],ch2_rxctrl3[7:0],ch2_rxlpmen,ch2_rxpd[1:0],ch2_rxpolarity,ch2_rxprbserr,ch2_rxprbssel[3:0],ch2_rxrate[2:0],ch2_rxpcsresetmask[4:0],ch2_rxpmaresetmask[6:0],ch3_rxdata[31:0],ch3_rxuserrdy,ch3_rxpmaresetdone,ch3_rxmstdatapathreset,ch3_rxprogdivreset,ch3_rxresetdone,ch3_rxbufstatus[2:0],ch3_rxmstreset,ch3_rxmstresetdone,ch3_rxcdrlock,ch3_rxbyteisaligned,ch3_rxctrl0[15:0],ch3_rxctrl1[15:0],ch3_rxctrl3[7:0],ch3_rxlpmen,ch3_rxpd[1:0],ch3_rxpolarity,ch3_rxprbserr,ch3_rxprbssel[3:0],ch3_rxrate[2:0],ch3_rxpcsresetmask[4:0],ch3_rxpmaresetmask[6:0],rx_axi4s_ch0_tdata[31:0],rx_axi4s_ch0_tuser[11:0],rx_axi4s_ch0_tvalid,rx_axi4s_ch0_tready,rx_axi4s_ch1_tdata[31:0],rx_axi4s_ch1_tuser[11:0],rx_axi4s_ch1_tvalid,rx_axi4s_ch1_tready,rx_axi4s_ch2_tdata[31:0],rx_axi4s_ch2_tuser[11:0],rx_axi4s_ch2_tvalid,rx_axi4s_ch2_tready,rx_axi4s_ch3_tdata[31:0],rx_axi4s_ch3_tuser[11:0],rx_axi4s_ch3_tvalid,rx_axi4s_ch3_tready,rx_mmcm_locked,rx_pll0_locked,rx_pll1_locked,rx_pll1_reset,rx_pll0_reset,rx_bufg_gt_clr,gt_powergood" */
/* synthesis syn_force_seq_prim="gt_ctrl_aclk" */
/* synthesis syn_force_seq_prim="gt_rxusrclk" */;
  input gt_ctrl_aclk /* synthesis syn_isclock = 1 */;
  input gt_ctrl_aresetn;
  input [31:0]dp_gt_ctrl;
  output [15:0]status_sb_rx_tdata;
  output status_sb_rx_tvalid;
  input status_sb_rx_tready;
  input [7:0]control_sb_rx_tdata;
  input control_sb_rx_tvalid;
  output control_sb_rx_tready;
  input [31:0]ch0_rxdata;
  output ch0_rxuserrdy;
  input ch0_rxpmaresetdone;
  output ch0_rxmstdatapathreset;
  output ch0_rxprogdivreset;
  input ch0_rxresetdone;
  input [2:0]ch0_rxbufstatus;
  output ch0_rxmstreset;
  input ch0_rxmstresetdone;
  input ch0_rxcdrlock;
  input ch0_rxbyteisaligned;
  input [15:0]ch0_rxctrl0;
  input [15:0]ch0_rxctrl1;
  input [7:0]ch0_rxctrl3;
  output ch0_rxlpmen;
  output [1:0]ch0_rxpd;
  output ch0_rxpolarity;
  input ch0_rxprbserr;
  output [3:0]ch0_rxprbssel;
  output [2:0]ch0_rxrate;
  output [4:0]ch0_rxpcsresetmask;
  output [6:0]ch0_rxpmaresetmask;
  input [31:0]ch1_rxdata;
  output ch1_rxuserrdy;
  input ch1_rxpmaresetdone;
  output ch1_rxmstdatapathreset;
  output ch1_rxprogdivreset;
  input ch1_rxresetdone;
  input [2:0]ch1_rxbufstatus;
  output ch1_rxmstreset;
  input ch1_rxmstresetdone;
  input ch1_rxcdrlock;
  input ch1_rxbyteisaligned;
  input [15:0]ch1_rxctrl0;
  input [15:0]ch1_rxctrl1;
  input [7:0]ch1_rxctrl3;
  output ch1_rxlpmen;
  output [1:0]ch1_rxpd;
  output ch1_rxpolarity;
  input ch1_rxprbserr;
  output [3:0]ch1_rxprbssel;
  output [2:0]ch1_rxrate;
  output [4:0]ch1_rxpcsresetmask;
  output [6:0]ch1_rxpmaresetmask;
  input [31:0]ch2_rxdata;
  output ch2_rxuserrdy;
  input ch2_rxpmaresetdone;
  output ch2_rxmstdatapathreset;
  output ch2_rxprogdivreset;
  input ch2_rxresetdone;
  input [2:0]ch2_rxbufstatus;
  output ch2_rxmstreset;
  input ch2_rxmstresetdone;
  input ch2_rxcdrlock;
  input ch2_rxbyteisaligned;
  input [15:0]ch2_rxctrl0;
  input [15:0]ch2_rxctrl1;
  input [7:0]ch2_rxctrl3;
  output ch2_rxlpmen;
  output [1:0]ch2_rxpd;
  output ch2_rxpolarity;
  input ch2_rxprbserr;
  output [3:0]ch2_rxprbssel;
  output [2:0]ch2_rxrate;
  output [4:0]ch2_rxpcsresetmask;
  output [6:0]ch2_rxpmaresetmask;
  input [31:0]ch3_rxdata;
  output ch3_rxuserrdy;
  input ch3_rxpmaresetdone;
  output ch3_rxmstdatapathreset;
  output ch3_rxprogdivreset;
  input ch3_rxresetdone;
  input [2:0]ch3_rxbufstatus;
  output ch3_rxmstreset;
  input ch3_rxmstresetdone;
  input ch3_rxcdrlock;
  input ch3_rxbyteisaligned;
  input [15:0]ch3_rxctrl0;
  input [15:0]ch3_rxctrl1;
  input [7:0]ch3_rxctrl3;
  output ch3_rxlpmen;
  output [1:0]ch3_rxpd;
  output ch3_rxpolarity;
  input ch3_rxprbserr;
  output [3:0]ch3_rxprbssel;
  output [2:0]ch3_rxrate;
  output [4:0]ch3_rxpcsresetmask;
  output [6:0]ch3_rxpmaresetmask;
  output [31:0]rx_axi4s_ch0_tdata;
  output [11:0]rx_axi4s_ch0_tuser;
  output rx_axi4s_ch0_tvalid;
  input rx_axi4s_ch0_tready;
  output [31:0]rx_axi4s_ch1_tdata;
  output [11:0]rx_axi4s_ch1_tuser;
  output rx_axi4s_ch1_tvalid;
  input rx_axi4s_ch1_tready;
  output [31:0]rx_axi4s_ch2_tdata;
  output [11:0]rx_axi4s_ch2_tuser;
  output rx_axi4s_ch2_tvalid;
  input rx_axi4s_ch2_tready;
  output [31:0]rx_axi4s_ch3_tdata;
  output [11:0]rx_axi4s_ch3_tuser;
  output rx_axi4s_ch3_tvalid;
  input rx_axi4s_ch3_tready;
  input gt_rxusrclk /* synthesis syn_isclock = 1 */;
  input rx_mmcm_locked;
  input rx_pll0_locked;
  input rx_pll1_locked;
  output rx_pll1_reset;
  output rx_pll0_reset;
  output rx_bufg_gt_clr;
  input gt_powergood;
endmodule
