// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu May  9 19:11:13 2024
// Host        : Vulcan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_v_dp_txss1_0_0/bd_0/ip/ip_12/bd_38d0_vb1_0_stub.v
// Design      : bd_38d0_vb1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1902-vsva2197-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi4svideo_bridge_v1_0_17,Vivado 2023.2" *)
module bd_38d0_vb1_0(aclk, aresetn, soft_reset, video_in_tdata, 
  video_in_tlast, video_in_tuser, video_in_tvalid, video_in_tready, vtiming_in_vblank, 
  vtiming_in_active_video, vtiming_in_vsync, vtiming_in_hblank, vtiming_in_hsync, 
  vtiming_in_field_id, vid_io_out_clk, rst, vtg_ce, tx_vid_clk, tx_vid_reset, tx_vid_vsync, 
  tx_vid_hsync, tx_odd_even, tx_vid_enable, tx_vid_pixel0, tx_vid_pixel1, tx_vid_pixel2, 
  tx_vid_pixel3, locked, overflow, underflow, sof_state_out, ppc, vid_format, vid_io_out_ce, fid, 
  aclken)
/* synthesis syn_black_box black_box_pad_pin="aresetn,soft_reset,video_in_tdata[119:0],video_in_tlast,video_in_tuser,video_in_tvalid,video_in_tready,vtiming_in_vblank[0:0],vtiming_in_active_video[0:0],vtiming_in_vsync[0:0],vtiming_in_hblank[0:0],vtiming_in_hsync[0:0],vtiming_in_field_id[0:0],rst,vtg_ce,tx_vid_reset,tx_vid_vsync[0:0],tx_vid_hsync[0:0],tx_odd_even,tx_vid_enable[0:0],tx_vid_pixel0[47:0],tx_vid_pixel1[47:0],tx_vid_pixel2[47:0],tx_vid_pixel3[47:0],locked,overflow,underflow,sof_state_out,ppc[2:0],vid_format[2:0],vid_io_out_ce,fid,aclken" */
/* synthesis syn_force_seq_prim="aclk" */
/* synthesis syn_force_seq_prim="vid_io_out_clk" */
/* synthesis syn_force_seq_prim="tx_vid_clk" */;
  input aclk /* synthesis syn_isclock = 1 */;
  input aresetn;
  input soft_reset;
  input [119:0]video_in_tdata;
  input video_in_tlast;
  input video_in_tuser;
  input video_in_tvalid;
  output video_in_tready;
  input [0:0]vtiming_in_vblank;
  input [0:0]vtiming_in_active_video;
  input [0:0]vtiming_in_vsync;
  input [0:0]vtiming_in_hblank;
  input [0:0]vtiming_in_hsync;
  input [0:0]vtiming_in_field_id;
  input vid_io_out_clk /* synthesis syn_isclock = 1 */;
  input rst;
  output vtg_ce;
  output tx_vid_clk /* synthesis syn_isclock = 1 */;
  output tx_vid_reset;
  output [0:0]tx_vid_vsync;
  output [0:0]tx_vid_hsync;
  output tx_odd_even;
  output [0:0]tx_vid_enable;
  output [47:0]tx_vid_pixel0;
  output [47:0]tx_vid_pixel1;
  output [47:0]tx_vid_pixel2;
  output [47:0]tx_vid_pixel3;
  output locked;
  output overflow;
  output underflow;
  output sof_state_out;
  input [2:0]ppc;
  input [2:0]vid_format;
  input vid_io_out_ce;
  input fid;
  input aclken;
endmodule
