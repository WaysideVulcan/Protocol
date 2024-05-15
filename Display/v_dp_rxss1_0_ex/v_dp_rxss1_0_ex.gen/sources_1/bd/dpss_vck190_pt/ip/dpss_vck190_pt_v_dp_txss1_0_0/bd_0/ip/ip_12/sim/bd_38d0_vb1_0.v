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


// IP VLNV: xilinx.com:ip:axi4svideo_bridge:1.0
// IP Revision: 17

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_38d0_vb1_0 (
  aclk,
  aresetn,
  soft_reset,
  video_in_tdata,
  video_in_tlast,
  video_in_tuser,
  video_in_tvalid,
  video_in_tready,
  vtiming_in_vblank,
  vtiming_in_active_video,
  vtiming_in_vsync,
  vtiming_in_hblank,
  vtiming_in_hsync,
  vtiming_in_field_id,
  vid_io_out_clk,
  rst,
  vtg_ce,
  tx_vid_clk,
  tx_vid_reset,
  tx_vid_vsync,
  tx_vid_hsync,
  tx_odd_even,
  tx_vid_enable,
  tx_vid_pixel0,
  tx_vid_pixel1,
  tx_vid_pixel2,
  tx_vid_pixel3,
  locked,
  overflow,
  underflow,
  sof_state_out,
  ppc,
  vid_format,
  vid_io_out_ce,
  fid,
  aclken
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME signal_clock, ASSOCIATED_BUSIF s_axis_video, ASSOCIATED_RESET aresetn, FREQ_HZ 299997009, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl1_ref_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 signal_clock CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME soft_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 soft_reset RST" *)
input wire soft_reset;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TDATA" *)
input wire [119 : 0] video_in_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TLAST" *)
input wire video_in_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TUSER" *)
input wire video_in_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TVALID" *)
input wire video_in_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_video, TDATA_NUM_BYTES 15, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl1_ref_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TREADY" *)
output wire video_in_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vid_timing_in VBLANK" *)
input wire [0 : 0] vtiming_in_vblank;
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vid_timing_in ACTIVE_VIDEO" *)
input wire [0 : 0] vtiming_in_active_video;
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vid_timing_in VSYNC" *)
input wire [0 : 0] vtiming_in_vsync;
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vid_timing_in HBLANK" *)
input wire [0 : 0] vtiming_in_hblank;
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vid_timing_in HSYNC" *)
input wire [0 : 0] vtiming_in_hsync;
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vid_timing_in FIELD" *)
input wire [0 : 0] vtiming_in_field_id;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_io_out_clk, ASSOCIATED_RESET tx_vid_reset, FREQ_HZ 299996999, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_clk_wizard_2_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_io_out_clk CLK" *)
input wire vid_io_out_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
output wire vtg_ce;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_vid_signal_clock, ASSOCIATED_RESET tx_vid_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_38d0_vb1_0_tx_vid_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_vid_signal_clock CLK" *)
output wire tx_vid_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vid_reset RST" *)
output wire tx_vid_reset;
(* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_vid TX_VID_VSYNC" *)
output wire [0 : 0] tx_vid_vsync;
(* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_vid TX_VID_HSYNC" *)
output wire [0 : 0] tx_vid_hsync;
(* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_vid TX_VID_ODDEVEN" *)
output wire tx_odd_even;
(* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_vid TX_VID_ENABLE" *)
output wire [0 : 0] tx_vid_enable;
(* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_vid TX_VID_PIXEL0" *)
output wire [47 : 0] tx_vid_pixel0;
(* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_vid TX_VID_PIXEL1" *)
output wire [47 : 0] tx_vid_pixel1;
(* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_vid TX_VID_PIXEL2" *)
output wire [47 : 0] tx_vid_pixel2;
(* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_vid TX_VID_PIXEL3" *)
output wire [47 : 0] tx_vid_pixel3;
output wire locked;
output wire overflow;
output wire underflow;
output wire sof_state_out;
input wire [2 : 0] ppc;
input wire [2 : 0] vid_format;
input wire vid_io_out_ce;
input wire fid;
input wire aclken;

  axi4svideo_bridge_v1_0_17 #(
    .pTDATA_NUM_BYTES(120),
    .C_FAMILY("versal"),
    .pCOLOROMETRY(3),
    .pBPC(10),
    .pPIXELS_PER_CLOCK(4),
    .pTCQ(100),
    .pUG934_COMPLIANCE(1'B1),
    .pENABLE_DSC(1'B0),
    .pENABLE_420(0),
    .pARB_RES_EN(0),
    .pINPUT_PIXELS_PER_CLOCK(4),
    .pSTART_DSC_BYTE_FROM_LSB(1'B1),
    .pPPC_CONVERT_EN(1)
  ) inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .soft_reset(soft_reset),
    .video_in_tdata(video_in_tdata),
    .video_in_tlast(video_in_tlast),
    .video_in_tuser(video_in_tuser),
    .video_in_tvalid(video_in_tvalid),
    .video_in_tready(video_in_tready),
    .vtiming_in_vblank(vtiming_in_vblank),
    .vtiming_in_active_video(vtiming_in_active_video),
    .vtiming_in_vsync(vtiming_in_vsync),
    .vtiming_in_hblank(vtiming_in_hblank),
    .vtiming_in_hsync(vtiming_in_hsync),
    .vtiming_in_field_id(vtiming_in_field_id),
    .vid_io_out_clk(vid_io_out_clk),
    .rst(rst),
    .vtg_ce(vtg_ce),
    .tx_vid_clk(tx_vid_clk),
    .tx_vid_reset(tx_vid_reset),
    .tx_vid_vsync(tx_vid_vsync),
    .tx_vid_hsync(tx_vid_hsync),
    .tx_odd_even(tx_odd_even),
    .tx_vid_enable(tx_vid_enable),
    .tx_vid_pixel0(tx_vid_pixel0),
    .tx_vid_pixel1(tx_vid_pixel1),
    .tx_vid_pixel2(tx_vid_pixel2),
    .tx_vid_pixel3(tx_vid_pixel3),
    .tx_vid_pixel4(),
    .tx_vid_pixel5(),
    .tx_vid_pixel6(),
    .tx_vid_pixel7(),
    .locked(locked),
    .overflow(overflow),
    .underflow(underflow),
    .sof_state_out(sof_state_out),
    .ppc(ppc),
    .vid_format(vid_format),
    .vid_io_out_ce(vid_io_out_ce),
    .fid(fid),
    .aclken(aclken),
    .enable_dsc(1'B0),
    .vtg_hactive(16'B0),
    .axi_tran_per_horiz_line(16'B0)
  );
endmodule
