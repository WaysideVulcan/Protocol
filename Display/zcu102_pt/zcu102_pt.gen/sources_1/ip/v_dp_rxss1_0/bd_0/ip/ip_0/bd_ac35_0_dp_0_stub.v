// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu May  9 17:22:50 2024
// Host        : Vulcan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Vulcan/Protocol/Display/zcu102_pt/zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/bd_ac35_0_dp_0_stub.v
// Design      : bd_ac35_0_dp_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_ac35_0_dp_0_dport_wrapper,Vivado 2023.2" *)
module bd_ac35_0_dp_0(s_axi_aclk, s_axi_aresetn, s_axi_awaddr, 
  s_axi_awprot, s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, 
  s_axi_wready, s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arprot, 
  s_axi_arvalid, s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, axi_int, 
  rx_vid_clk, rx_vid_rst, rx_vid_vsync, rx_vid_hsync, rx_vid_oddeven, rx_vid_enable, 
  rx_vid_pixel0, rx_vid_pixel1, rx_vid_pixel2, rx_vid_pixel3, lnk_m_vid, lnk_n_vid, 
  rx_misc0_str1, rx_misc1_str1, aux_rx_io_p, aux_rx_io_n, rx_hpd, i2c_sda_in, i2c_sda_enable_n, 
  i2c_sda_o, i2c_scl_in, i2c_scl_enable_n, i2c_scl_o, rx_lnk_clk, lnk_rx_axi4s_lane0_tdata, 
  lnk_rx_axi4s_lane0_tuser, lnk_rx_axi4s_lane0_tvalid, lnk_rx_axi4s_lane0_tready, 
  lnk_rx_axi4s_lane1_tdata, lnk_rx_axi4s_lane1_tuser, lnk_rx_axi4s_lane1_tvalid, 
  lnk_rx_axi4s_lane1_tready, lnk_rx_axi4s_lane2_tdata, lnk_rx_axi4s_lane2_tuser, 
  lnk_rx_axi4s_lane2_tvalid, lnk_rx_axi4s_lane2_tready, lnk_rx_axi4s_lane3_tdata, 
  lnk_rx_axi4s_lane3_tuser, lnk_rx_axi4s_lane3_tvalid, lnk_rx_axi4s_lane3_tready, 
  lnk_rx_sb_status_axi4s_tdata, lnk_rx_sb_status_axi4s_tvalid, 
  lnk_rx_sb_status_axi4s_tready, lnk_rx_sb_control_axi4s_tdata, 
  lnk_rx_sb_control_axi4s_tvalid, lnk_rx_sb_control_axi4s_tready, link_bw_high_out, 
  link_bw_hbr2_out, bw_changed_out, rx_vid_pixel_mode, rx_vid_msa_hres, rx_vid_msa_vres, 
  rx_bpc, rx_cformat, adaptive_sdp_out, adaptive_sdp_vld)
/* synthesis syn_black_box black_box_pad_pin="s_axi_aresetn,s_axi_awaddr[31:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[31:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,axi_int,rx_vid_rst,rx_vid_vsync,rx_vid_hsync,rx_vid_oddeven,rx_vid_enable,rx_vid_pixel0[47:0],rx_vid_pixel1[47:0],rx_vid_pixel2[47:0],rx_vid_pixel3[47:0],lnk_m_vid[23:0],lnk_n_vid[23:0],rx_misc0_str1[7:0],rx_misc1_str1[7:0],aux_rx_io_p,aux_rx_io_n,rx_hpd,i2c_sda_in,i2c_sda_enable_n,i2c_sda_o,i2c_scl_in,i2c_scl_enable_n,i2c_scl_o,lnk_rx_axi4s_lane0_tdata[31:0],lnk_rx_axi4s_lane0_tuser[11:0],lnk_rx_axi4s_lane0_tvalid,lnk_rx_axi4s_lane0_tready,lnk_rx_axi4s_lane1_tdata[31:0],lnk_rx_axi4s_lane1_tuser[11:0],lnk_rx_axi4s_lane1_tvalid,lnk_rx_axi4s_lane1_tready,lnk_rx_axi4s_lane2_tdata[31:0],lnk_rx_axi4s_lane2_tuser[11:0],lnk_rx_axi4s_lane2_tvalid,lnk_rx_axi4s_lane2_tready,lnk_rx_axi4s_lane3_tdata[31:0],lnk_rx_axi4s_lane3_tuser[11:0],lnk_rx_axi4s_lane3_tvalid,lnk_rx_axi4s_lane3_tready,lnk_rx_sb_status_axi4s_tdata[15:0],lnk_rx_sb_status_axi4s_tvalid,lnk_rx_sb_status_axi4s_tready,lnk_rx_sb_control_axi4s_tdata[7:0],lnk_rx_sb_control_axi4s_tvalid,lnk_rx_sb_control_axi4s_tready,link_bw_high_out,link_bw_hbr2_out,bw_changed_out,rx_vid_pixel_mode[2:0],rx_vid_msa_hres[15:0],rx_vid_msa_vres[15:0],rx_bpc[2:0],rx_cformat[2:0],adaptive_sdp_out[31:0],adaptive_sdp_vld" */
/* synthesis syn_force_seq_prim="s_axi_aclk" */
/* synthesis syn_force_seq_prim="rx_vid_clk" */
/* synthesis syn_force_seq_prim="rx_lnk_clk" */;
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
  input rx_vid_clk /* synthesis syn_isclock = 1 */;
  input rx_vid_rst;
  output rx_vid_vsync;
  output rx_vid_hsync;
  output rx_vid_oddeven;
  output rx_vid_enable;
  output [47:0]rx_vid_pixel0;
  output [47:0]rx_vid_pixel1;
  output [47:0]rx_vid_pixel2;
  output [47:0]rx_vid_pixel3;
  output [23:0]lnk_m_vid;
  output [23:0]lnk_n_vid;
  output [7:0]rx_misc0_str1;
  output [7:0]rx_misc1_str1;
  inout aux_rx_io_p;
  inout aux_rx_io_n;
  output rx_hpd;
  input i2c_sda_in;
  output i2c_sda_enable_n;
  output i2c_sda_o;
  input i2c_scl_in;
  output i2c_scl_enable_n;
  output i2c_scl_o;
  input rx_lnk_clk /* synthesis syn_isclock = 1 */;
  input [31:0]lnk_rx_axi4s_lane0_tdata;
  input [11:0]lnk_rx_axi4s_lane0_tuser;
  input lnk_rx_axi4s_lane0_tvalid;
  output lnk_rx_axi4s_lane0_tready;
  input [31:0]lnk_rx_axi4s_lane1_tdata;
  input [11:0]lnk_rx_axi4s_lane1_tuser;
  input lnk_rx_axi4s_lane1_tvalid;
  output lnk_rx_axi4s_lane1_tready;
  input [31:0]lnk_rx_axi4s_lane2_tdata;
  input [11:0]lnk_rx_axi4s_lane2_tuser;
  input lnk_rx_axi4s_lane2_tvalid;
  output lnk_rx_axi4s_lane2_tready;
  input [31:0]lnk_rx_axi4s_lane3_tdata;
  input [11:0]lnk_rx_axi4s_lane3_tuser;
  input lnk_rx_axi4s_lane3_tvalid;
  output lnk_rx_axi4s_lane3_tready;
  input [15:0]lnk_rx_sb_status_axi4s_tdata;
  input lnk_rx_sb_status_axi4s_tvalid;
  output lnk_rx_sb_status_axi4s_tready;
  output [7:0]lnk_rx_sb_control_axi4s_tdata;
  output lnk_rx_sb_control_axi4s_tvalid;
  input lnk_rx_sb_control_axi4s_tready;
  output link_bw_high_out;
  output link_bw_hbr2_out;
  output bw_changed_out;
  output [2:0]rx_vid_pixel_mode;
  output [15:0]rx_vid_msa_hres;
  output [15:0]rx_vid_msa_vres;
  output [2:0]rx_bpc;
  output [2:0]rx_cformat;
  output [31:0]adaptive_sdp_out;
  output adaptive_sdp_vld;
endmodule
