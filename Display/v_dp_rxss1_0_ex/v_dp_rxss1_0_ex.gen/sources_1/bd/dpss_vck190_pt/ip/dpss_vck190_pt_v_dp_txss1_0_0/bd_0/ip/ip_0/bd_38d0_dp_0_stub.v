// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu May  9 19:12:36 2024
// Host        : Vulcan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_v_dp_txss1_0_0/bd_0/ip/ip_0/bd_38d0_dp_0_stub.v
// Design      : bd_38d0_dp_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1902-vsva2197-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_38d0_dp_0_dport_wrapper,Vivado 2023.2" *)
module bd_38d0_dp_0(s_axi_aclk, s_axi_aresetn, s_axi_awaddr, 
  s_axi_awprot, s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, 
  s_axi_wready, s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arprot, 
  s_axi_arvalid, s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, axi_int, 
  tx_vid_clk, tx_vid_rst, tx_vid_vsync, tx_vid_hsync, tx_vid_oddeven, tx_vid_enable, 
  tx_vid_pixel0, tx_vid_pixel1, tx_vid_pixel2, tx_vid_pixel3, tx_gt_ctrl_out, tx_bpc, 
  tx_video_format, tx_ppc, txss_axi_control, txss_axi_status, aux_tx_data_in, 
  aux_tx_data_out, aux_tx_data_en_out_n, tx_hpd, s_aud_axis_aclk, s_aud_axis_aresetn, 
  aud_clk, aud_rst, s_axis_audio_ingress_tdata, s_axis_audio_ingress_tid, 
  s_axis_audio_ingress_tvalid, s_axis_audio_ingress_tready, tx_enc_clk, tx_lnk_clk, 
  lnk_tx_axi4s_lane0_tdata, lnk_tx_axi4s_lane0_tuser, lnk_tx_axi4s_lane0_tvalid, 
  lnk_tx_axi4s_lane0_tready, lnk_tx_axi4s_lane1_tdata, lnk_tx_axi4s_lane1_tuser, 
  lnk_tx_axi4s_lane1_tvalid, lnk_tx_axi4s_lane1_tready, lnk_tx_axi4s_lane2_tdata, 
  lnk_tx_axi4s_lane2_tuser, lnk_tx_axi4s_lane2_tvalid, lnk_tx_axi4s_lane2_tready, 
  lnk_tx_axi4s_lane3_tdata, lnk_tx_axi4s_lane3_tuser, lnk_tx_axi4s_lane3_tvalid, 
  lnk_tx_axi4s_lane3_tready, lnk_tx_sb_status_axi4s_tdata, 
  lnk_tx_sb_status_axi4s_tvalid, lnk_tx_sb_status_axi4s_tready, link_bw_high_out, 
  link_bw_hbr2_out, bw_changed_out)
/* synthesis syn_black_box black_box_pad_pin="s_axi_aresetn,s_axi_awaddr[31:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[31:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,axi_int,tx_vid_rst,tx_vid_vsync,tx_vid_hsync,tx_vid_oddeven,tx_vid_enable,tx_vid_pixel0[47:0],tx_vid_pixel1[47:0],tx_vid_pixel2[47:0],tx_vid_pixel3[47:0],tx_gt_ctrl_out[31:0],tx_bpc[2:0],tx_video_format[2:0],tx_ppc[2:0],txss_axi_control[31:0],txss_axi_status[31:0],aux_tx_data_in,aux_tx_data_out,aux_tx_data_en_out_n,tx_hpd,s_aud_axis_aresetn,aud_rst,s_axis_audio_ingress_tdata[31:0],s_axis_audio_ingress_tid[7:0],s_axis_audio_ingress_tvalid,s_axis_audio_ingress_tready,lnk_tx_axi4s_lane0_tdata[31:0],lnk_tx_axi4s_lane0_tuser[11:0],lnk_tx_axi4s_lane0_tvalid,lnk_tx_axi4s_lane0_tready,lnk_tx_axi4s_lane1_tdata[31:0],lnk_tx_axi4s_lane1_tuser[11:0],lnk_tx_axi4s_lane1_tvalid,lnk_tx_axi4s_lane1_tready,lnk_tx_axi4s_lane2_tdata[31:0],lnk_tx_axi4s_lane2_tuser[11:0],lnk_tx_axi4s_lane2_tvalid,lnk_tx_axi4s_lane2_tready,lnk_tx_axi4s_lane3_tdata[31:0],lnk_tx_axi4s_lane3_tuser[11:0],lnk_tx_axi4s_lane3_tvalid,lnk_tx_axi4s_lane3_tready,lnk_tx_sb_status_axi4s_tdata[7:0],lnk_tx_sb_status_axi4s_tvalid,lnk_tx_sb_status_axi4s_tready,link_bw_high_out,link_bw_hbr2_out,bw_changed_out" */
/* synthesis syn_force_seq_prim="s_axi_aclk" */
/* synthesis syn_force_seq_prim="tx_vid_clk" */
/* synthesis syn_force_seq_prim="s_aud_axis_aclk" */
/* synthesis syn_force_seq_prim="aud_clk" */
/* synthesis syn_force_seq_prim="tx_enc_clk" */
/* synthesis syn_force_seq_prim="tx_lnk_clk" */;
  input s_axi_aclk /* synthesis syn_isclock = 1 */;
  input s_axi_aresetn;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output axi_int;
  input tx_vid_clk /* synthesis syn_isclock = 1 */;
  input tx_vid_rst;
  input tx_vid_vsync;
  input tx_vid_hsync;
  input tx_vid_oddeven;
  input tx_vid_enable;
  input [47:0]tx_vid_pixel0;
  input [47:0]tx_vid_pixel1;
  input [47:0]tx_vid_pixel2;
  input [47:0]tx_vid_pixel3;
  output [31:0]tx_gt_ctrl_out;
  output [2:0]tx_bpc;
  output [2:0]tx_video_format;
  output [2:0]tx_ppc;
  output [31:0]txss_axi_control;
  input [31:0]txss_axi_status;
  input aux_tx_data_in;
  output aux_tx_data_out;
  output aux_tx_data_en_out_n;
  input tx_hpd;
  input s_aud_axis_aclk /* synthesis syn_isclock = 1 */;
  input s_aud_axis_aresetn;
  input aud_clk /* synthesis syn_isclock = 1 */;
  input aud_rst;
  input [31:0]s_axis_audio_ingress_tdata;
  input [7:0]s_axis_audio_ingress_tid;
  input s_axis_audio_ingress_tvalid;
  output s_axis_audio_ingress_tready;
  input tx_enc_clk /* synthesis syn_isclock = 1 */;
  input tx_lnk_clk /* synthesis syn_isclock = 1 */;
  output [31:0]lnk_tx_axi4s_lane0_tdata;
  output [11:0]lnk_tx_axi4s_lane0_tuser;
  output lnk_tx_axi4s_lane0_tvalid;
  input lnk_tx_axi4s_lane0_tready;
  output [31:0]lnk_tx_axi4s_lane1_tdata;
  output [11:0]lnk_tx_axi4s_lane1_tuser;
  output lnk_tx_axi4s_lane1_tvalid;
  input lnk_tx_axi4s_lane1_tready;
  output [31:0]lnk_tx_axi4s_lane2_tdata;
  output [11:0]lnk_tx_axi4s_lane2_tuser;
  output lnk_tx_axi4s_lane2_tvalid;
  input lnk_tx_axi4s_lane2_tready;
  output [31:0]lnk_tx_axi4s_lane3_tdata;
  output [11:0]lnk_tx_axi4s_lane3_tuser;
  output lnk_tx_axi4s_lane3_tvalid;
  input lnk_tx_axi4s_lane3_tready;
  input [7:0]lnk_tx_sb_status_axi4s_tdata;
  input lnk_tx_sb_status_axi4s_tvalid;
  output lnk_tx_sb_status_axi4s_tready;
  output link_bw_high_out;
  output link_bw_hbr2_out;
  output bw_changed_out;
endmodule
