// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu May  9 19:11:13 2024
// Host        : Vulcan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_v_dp_txss1_0_0/bd_0/ip/ip_12/bd_38d0_vb1_0_sim_netlist.v
// Design      : bd_38d0_vb1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvc1902-vsva2197-2MP-e-S
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_38d0_vb1_0,axi4svideo_bridge_v1_0_17,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi4svideo_bridge_v1_0_17,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module bd_38d0_vb1_0
   (aclk,
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
    aclken);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 signal_clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME signal_clock, ASSOCIATED_BUSIF s_axis_video, ASSOCIATED_RESET aresetn, FREQ_HZ 299997009, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl1_ref_clk, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 soft_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME soft_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input soft_reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TDATA" *) input [119:0]video_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TLAST" *) input video_in_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TUSER" *) input video_in_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TVALID" *) input video_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_video, TDATA_NUM_BYTES 15, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 299997009, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl1_ref_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output video_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vid_timing_in VBLANK" *) input [0:0]vtiming_in_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vid_timing_in ACTIVE_VIDEO" *) input [0:0]vtiming_in_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vid_timing_in VSYNC" *) input [0:0]vtiming_in_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vid_timing_in HBLANK" *) input [0:0]vtiming_in_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vid_timing_in HSYNC" *) input [0:0]vtiming_in_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vid_timing_in FIELD" *) input [0:0]vtiming_in_field_id;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_io_out_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_io_out_clk, ASSOCIATED_RESET tx_vid_reset, FREQ_HZ 299996999, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_clk_wizard_2_0_clk_out1, INSERT_VIP 0" *) input vid_io_out_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  output vtg_ce;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 tx_vid_signal_clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_vid_signal_clock, ASSOCIATED_RESET tx_vid_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_38d0_vb1_0_tx_vid_clk, INSERT_VIP 0" *) output tx_vid_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vid_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) output tx_vid_reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_vid TX_VID_VSYNC" *) output [0:0]tx_vid_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_vid TX_VID_HSYNC" *) output [0:0]tx_vid_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_vid TX_VID_ODDEVEN" *) output tx_odd_even;
  (* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_vid TX_VID_ENABLE" *) output [0:0]tx_vid_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_vid TX_VID_PIXEL0" *) output [47:0]tx_vid_pixel0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_vid TX_VID_PIXEL1" *) output [47:0]tx_vid_pixel1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_vid TX_VID_PIXEL2" *) output [47:0]tx_vid_pixel2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:dp_vid:1.0 dp_vid TX_VID_PIXEL3" *) output [47:0]tx_vid_pixel3;
  output locked;
  output overflow;
  output underflow;
  output sof_state_out;
  input [2:0]ppc;
  input [2:0]vid_format;
  input vid_io_out_ce;
  input fid;
  input aclken;

  wire \<const0> ;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire locked;
  wire overflow;
  wire [2:0]ppc;
  wire rst;
  wire sof_state_out;
  wire soft_reset;
  wire tx_vid_clk;
  wire [0:0]tx_vid_enable;
  wire [0:0]tx_vid_hsync;
  wire [47:6]\^tx_vid_pixel0 ;
  wire [47:6]\^tx_vid_pixel1 ;
  wire [47:6]\^tx_vid_pixel2 ;
  wire [47:6]\^tx_vid_pixel3 ;
  wire tx_vid_reset;
  wire [0:0]tx_vid_vsync;
  wire underflow;
  wire [2:0]vid_format;
  wire vid_io_out_clk;
  wire [119:0]video_in_tdata;
  wire video_in_tlast;
  wire video_in_tready;
  wire video_in_tuser;
  wire video_in_tvalid;
  wire vtg_ce;
  wire [0:0]vtiming_in_active_video;
  wire [0:0]vtiming_in_field_id;
  wire [0:0]vtiming_in_hsync;
  wire [0:0]vtiming_in_vblank;
  wire [0:0]vtiming_in_vsync;
  wire NLW_inst_tx_odd_even_UNCONNECTED;
  wire [37:0]NLW_inst_tx_vid_pixel0_UNCONNECTED;
  wire [37:0]NLW_inst_tx_vid_pixel1_UNCONNECTED;
  wire [37:0]NLW_inst_tx_vid_pixel2_UNCONNECTED;
  wire [37:0]NLW_inst_tx_vid_pixel3_UNCONNECTED;
  wire [47:0]NLW_inst_tx_vid_pixel4_UNCONNECTED;
  wire [47:0]NLW_inst_tx_vid_pixel5_UNCONNECTED;
  wire [47:0]NLW_inst_tx_vid_pixel6_UNCONNECTED;
  wire [47:0]NLW_inst_tx_vid_pixel7_UNCONNECTED;

  assign tx_odd_even = \<const0> ;
  assign tx_vid_pixel0[47:38] = \^tx_vid_pixel0 [47:38];
  assign tx_vid_pixel0[37] = \<const0> ;
  assign tx_vid_pixel0[36] = \<const0> ;
  assign tx_vid_pixel0[35] = \<const0> ;
  assign tx_vid_pixel0[34] = \<const0> ;
  assign tx_vid_pixel0[33] = \<const0> ;
  assign tx_vid_pixel0[32] = \<const0> ;
  assign tx_vid_pixel0[31:22] = \^tx_vid_pixel0 [31:22];
  assign tx_vid_pixel0[21] = \<const0> ;
  assign tx_vid_pixel0[20] = \<const0> ;
  assign tx_vid_pixel0[19] = \<const0> ;
  assign tx_vid_pixel0[18] = \<const0> ;
  assign tx_vid_pixel0[17] = \<const0> ;
  assign tx_vid_pixel0[16] = \<const0> ;
  assign tx_vid_pixel0[15:6] = \^tx_vid_pixel0 [15:6];
  assign tx_vid_pixel0[5] = \<const0> ;
  assign tx_vid_pixel0[4] = \<const0> ;
  assign tx_vid_pixel0[3] = \<const0> ;
  assign tx_vid_pixel0[2] = \<const0> ;
  assign tx_vid_pixel0[1] = \<const0> ;
  assign tx_vid_pixel0[0] = \<const0> ;
  assign tx_vid_pixel1[47:38] = \^tx_vid_pixel1 [47:38];
  assign tx_vid_pixel1[37] = \<const0> ;
  assign tx_vid_pixel1[36] = \<const0> ;
  assign tx_vid_pixel1[35] = \<const0> ;
  assign tx_vid_pixel1[34] = \<const0> ;
  assign tx_vid_pixel1[33] = \<const0> ;
  assign tx_vid_pixel1[32] = \<const0> ;
  assign tx_vid_pixel1[31:22] = \^tx_vid_pixel1 [31:22];
  assign tx_vid_pixel1[21] = \<const0> ;
  assign tx_vid_pixel1[20] = \<const0> ;
  assign tx_vid_pixel1[19] = \<const0> ;
  assign tx_vid_pixel1[18] = \<const0> ;
  assign tx_vid_pixel1[17] = \<const0> ;
  assign tx_vid_pixel1[16] = \<const0> ;
  assign tx_vid_pixel1[15:6] = \^tx_vid_pixel1 [15:6];
  assign tx_vid_pixel1[5] = \<const0> ;
  assign tx_vid_pixel1[4] = \<const0> ;
  assign tx_vid_pixel1[3] = \<const0> ;
  assign tx_vid_pixel1[2] = \<const0> ;
  assign tx_vid_pixel1[1] = \<const0> ;
  assign tx_vid_pixel1[0] = \<const0> ;
  assign tx_vid_pixel2[47:38] = \^tx_vid_pixel2 [47:38];
  assign tx_vid_pixel2[37] = \<const0> ;
  assign tx_vid_pixel2[36] = \<const0> ;
  assign tx_vid_pixel2[35] = \<const0> ;
  assign tx_vid_pixel2[34] = \<const0> ;
  assign tx_vid_pixel2[33] = \<const0> ;
  assign tx_vid_pixel2[32] = \<const0> ;
  assign tx_vid_pixel2[31:22] = \^tx_vid_pixel2 [31:22];
  assign tx_vid_pixel2[21] = \<const0> ;
  assign tx_vid_pixel2[20] = \<const0> ;
  assign tx_vid_pixel2[19] = \<const0> ;
  assign tx_vid_pixel2[18] = \<const0> ;
  assign tx_vid_pixel2[17] = \<const0> ;
  assign tx_vid_pixel2[16] = \<const0> ;
  assign tx_vid_pixel2[15:6] = \^tx_vid_pixel2 [15:6];
  assign tx_vid_pixel2[5] = \<const0> ;
  assign tx_vid_pixel2[4] = \<const0> ;
  assign tx_vid_pixel2[3] = \<const0> ;
  assign tx_vid_pixel2[2] = \<const0> ;
  assign tx_vid_pixel2[1] = \<const0> ;
  assign tx_vid_pixel2[0] = \<const0> ;
  assign tx_vid_pixel3[47:38] = \^tx_vid_pixel3 [47:38];
  assign tx_vid_pixel3[37] = \<const0> ;
  assign tx_vid_pixel3[36] = \<const0> ;
  assign tx_vid_pixel3[35] = \<const0> ;
  assign tx_vid_pixel3[34] = \<const0> ;
  assign tx_vid_pixel3[33] = \<const0> ;
  assign tx_vid_pixel3[32] = \<const0> ;
  assign tx_vid_pixel3[31:22] = \^tx_vid_pixel3 [31:22];
  assign tx_vid_pixel3[21] = \<const0> ;
  assign tx_vid_pixel3[20] = \<const0> ;
  assign tx_vid_pixel3[19] = \<const0> ;
  assign tx_vid_pixel3[18] = \<const0> ;
  assign tx_vid_pixel3[17] = \<const0> ;
  assign tx_vid_pixel3[16] = \<const0> ;
  assign tx_vid_pixel3[15:6] = \^tx_vid_pixel3 [15:6];
  assign tx_vid_pixel3[5] = \<const0> ;
  assign tx_vid_pixel3[4] = \<const0> ;
  assign tx_vid_pixel3[3] = \<const0> ;
  assign tx_vid_pixel3[2] = \<const0> ;
  assign tx_vid_pixel3[1] = \<const0> ;
  assign tx_vid_pixel3[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "versal" *) 
  (* RGB = "2'b00" *) 
  (* YUV422 = "2'b10" *) 
  (* YUV444 = "2'b01" *) 
  (* Y_ONLY = "2'b11" *) 
  (* pARB_RES_EN = "0" *) 
  (* pBPC = "10" *) 
  (* pCOLOROMETRY = "3" *) 
  (* pENABLE_420 = "0" *) 
  (* pENABLE_DSC = "1'b0" *) 
  (* pINPUT_PIXELS_PER_CLOCK = "4" *) 
  (* pPIXELS_PER_CLOCK = "4" *) 
  (* pPPC_CONVERT_EN = "1" *) 
  (* pSTART_DSC_BYTE_FROM_LSB = "1'b1" *) 
  (* pTCQ = "100" *) 
  (* pTDATA_NUM_BYTES = "120" *) 
  (* pUG934_COMPLIANCE = "1'b1" *) 
  bd_38d0_vb1_0_axi4svideo_bridge_v1_0_17 inst
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .axi_tran_per_horiz_line({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .enable_dsc(1'b0),
        .fid(1'b0),
        .locked(locked),
        .overflow(overflow),
        .ppc(ppc),
        .rst(rst),
        .sof_state_out(sof_state_out),
        .soft_reset(soft_reset),
        .tx_odd_even(NLW_inst_tx_odd_even_UNCONNECTED),
        .tx_vid_clk(tx_vid_clk),
        .tx_vid_enable(tx_vid_enable),
        .tx_vid_hsync(tx_vid_hsync),
        .tx_vid_pixel0({\^tx_vid_pixel0 ,NLW_inst_tx_vid_pixel0_UNCONNECTED[5:0]}),
        .tx_vid_pixel1({\^tx_vid_pixel1 ,NLW_inst_tx_vid_pixel1_UNCONNECTED[5:0]}),
        .tx_vid_pixel2({\^tx_vid_pixel2 ,NLW_inst_tx_vid_pixel2_UNCONNECTED[5:0]}),
        .tx_vid_pixel3({\^tx_vid_pixel3 ,NLW_inst_tx_vid_pixel3_UNCONNECTED[5:0]}),
        .tx_vid_pixel4(NLW_inst_tx_vid_pixel4_UNCONNECTED[47:0]),
        .tx_vid_pixel5(NLW_inst_tx_vid_pixel5_UNCONNECTED[47:0]),
        .tx_vid_pixel6(NLW_inst_tx_vid_pixel6_UNCONNECTED[47:0]),
        .tx_vid_pixel7(NLW_inst_tx_vid_pixel7_UNCONNECTED[47:0]),
        .tx_vid_reset(tx_vid_reset),
        .tx_vid_vsync(tx_vid_vsync),
        .underflow(underflow),
        .vid_format(vid_format),
        .vid_io_out_ce(1'b0),
        .vid_io_out_clk(vid_io_out_clk),
        .video_in_tdata(video_in_tdata),
        .video_in_tlast(video_in_tlast),
        .video_in_tready(video_in_tready),
        .video_in_tuser(video_in_tuser),
        .video_in_tvalid(video_in_tvalid),
        .vtg_ce(vtg_ce),
        .vtg_hactive({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .vtiming_in_active_video(vtiming_in_active_video),
        .vtiming_in_field_id(vtiming_in_field_id),
        .vtiming_in_hblank(1'b0),
        .vtiming_in_hsync(vtiming_in_hsync),
        .vtiming_in_vblank(vtiming_in_vblank),
        .vtiming_in_vsync(vtiming_in_vsync));
endmodule

(* C_FAMILY = "versal" *) (* ORIG_REF_NAME = "axi4svideo_bridge_v1_0_17" *) (* RGB = "2'b00" *) 
(* YUV422 = "2'b10" *) (* YUV444 = "2'b01" *) (* Y_ONLY = "2'b11" *) 
(* pARB_RES_EN = "0" *) (* pBPC = "10" *) (* pCOLOROMETRY = "3" *) 
(* pENABLE_420 = "0" *) (* pENABLE_DSC = "1'b0" *) (* pINPUT_PIXELS_PER_CLOCK = "4" *) 
(* pPIXELS_PER_CLOCK = "4" *) (* pPPC_CONVERT_EN = "1" *) (* pSTART_DSC_BYTE_FROM_LSB = "1'b1" *) 
(* pTCQ = "100" *) (* pTDATA_NUM_BYTES = "120" *) (* pUG934_COMPLIANCE = "1'b1" *) 
module bd_38d0_vb1_0_axi4svideo_bridge_v1_0_17
   (aclk,
    rst,
    aclken,
    aresetn,
    video_in_tdata,
    video_in_tvalid,
    video_in_tready,
    video_in_tuser,
    video_in_tlast,
    fid,
    soft_reset,
    vid_io_out_clk,
    vid_io_out_ce,
    tx_vid_enable,
    tx_vid_vsync,
    tx_vid_hsync,
    tx_vid_pixel0,
    tx_vid_pixel1,
    tx_vid_pixel2,
    tx_vid_pixel3,
    tx_vid_pixel4,
    tx_vid_pixel5,
    tx_vid_pixel6,
    tx_vid_pixel7,
    vtiming_in_vsync,
    vtiming_in_hsync,
    vtiming_in_vblank,
    vtiming_in_hblank,
    vtiming_in_active_video,
    vtiming_in_field_id,
    vtg_ce,
    locked,
    underflow,
    overflow,
    vid_format,
    ppc,
    tx_vid_clk,
    tx_vid_reset,
    tx_odd_even,
    sof_state_out,
    vtg_hactive,
    axi_tran_per_horiz_line,
    enable_dsc);
  input aclk;
  input rst;
  input aclken;
  input aresetn;
  input [119:0]video_in_tdata;
  input video_in_tvalid;
  output video_in_tready;
  input video_in_tuser;
  input video_in_tlast;
  input fid;
  input soft_reset;
  input vid_io_out_clk;
  input vid_io_out_ce;
  output [0:0]tx_vid_enable;
  output [0:0]tx_vid_vsync;
  output [0:0]tx_vid_hsync;
  output [47:0]tx_vid_pixel0;
  output [47:0]tx_vid_pixel1;
  output [47:0]tx_vid_pixel2;
  output [47:0]tx_vid_pixel3;
  output [47:0]tx_vid_pixel4;
  output [47:0]tx_vid_pixel5;
  output [47:0]tx_vid_pixel6;
  output [47:0]tx_vid_pixel7;
  input [0:0]vtiming_in_vsync;
  input [0:0]vtiming_in_hsync;
  input [0:0]vtiming_in_vblank;
  input [0:0]vtiming_in_hblank;
  input [0:0]vtiming_in_active_video;
  input [0:0]vtiming_in_field_id;
  output vtg_ce;
  output locked;
  output underflow;
  output overflow;
  input [2:0]vid_format;
  input [2:0]ppc;
  output tx_vid_clk;
  output tx_vid_reset;
  output tx_odd_even;
  output sof_state_out;
  input [15:0]vtg_hactive;
  input [15:0]axi_tran_per_horiz_line;
  input enable_dsc;

  wire \<const0> ;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire [47:22]f_pixel00_out;
  wire [47:22]f_pixel11_out;
  wire [47:22]f_pixel21_out;
  wire [47:22]f_pixel31_out;
  wire i_sync_aresetn;
  wire i_sync_rst;
  wire i_sync_soft_reset_aclk;
  wire i_sync_soft_reset_vidclk;
  wire [109:0]in_data_mux;
  wire in_de_mux;
  wire in_hsync_mux;
  wire in_vsync_mux;
  wire locked;
  wire overflow;
  wire [2:0]ppc;
  wire [2:0]ppc_aclk;
  wire rst;
  wire sof_state_out;
  wire soft_reset;
  wire sync_cell_aresetn_inst_n_1;
  wire [0:0]tx_vid_enable;
  wire [0:0]tx_vid_hsync;
  wire [47:6]\^tx_vid_pixel0 ;
  wire [47:6]\^tx_vid_pixel1 ;
  wire [47:6]\^tx_vid_pixel2 ;
  wire [47:6]\^tx_vid_pixel3 ;
  wire [0:0]tx_vid_vsync;
  wire underflow;
  wire [2:0]vid_format;
  wire [1:0]vid_format_aclk;
  wire [1:0]vid_format_vid_clk;
  wire vid_io_out_clk;
  wire [119:0]video_in_tdata;
  wire video_in_tlast;
  wire video_in_tready;
  wire video_in_tready_to_remap;
  wire video_in_tuser;
  wire video_in_tvalid;
  wire [119:0]video_out_tdata_from_remap;
  wire video_out_tlast_from_remap;
  wire video_out_tuser_from_remap;
  wire video_out_tvalid_from_remap;
  wire vtg_ce;
  wire [0:0]vtiming_in_active_video;
  wire [0:0]vtiming_in_field_id;
  wire [0:0]vtiming_in_hsync;
  wire [0:0]vtiming_in_vblank;
  wire [0:0]vtiming_in_vsync;
  wire NLW_remapper_inst_FID_OUT_UNCONNECTED;
  wire NLW_remapper_inst_REMAP_FIFO_OVERFLOW_OUT_UNCONNECTED;
  wire NLW_remapper_inst_REMAP_FIFO_UNDERFLOW_OUT_UNCONNECTED;

  assign tx_odd_even = \<const0> ;
  assign tx_vid_clk = vid_io_out_clk;
  assign tx_vid_pixel0[47:38] = \^tx_vid_pixel0 [47:38];
  assign tx_vid_pixel0[37] = \<const0> ;
  assign tx_vid_pixel0[36] = \<const0> ;
  assign tx_vid_pixel0[35] = \<const0> ;
  assign tx_vid_pixel0[34] = \<const0> ;
  assign tx_vid_pixel0[33] = \<const0> ;
  assign tx_vid_pixel0[32] = \<const0> ;
  assign tx_vid_pixel0[31:22] = \^tx_vid_pixel0 [31:22];
  assign tx_vid_pixel0[21] = \<const0> ;
  assign tx_vid_pixel0[20] = \<const0> ;
  assign tx_vid_pixel0[19] = \<const0> ;
  assign tx_vid_pixel0[18] = \<const0> ;
  assign tx_vid_pixel0[17] = \<const0> ;
  assign tx_vid_pixel0[16] = \<const0> ;
  assign tx_vid_pixel0[15:6] = \^tx_vid_pixel0 [15:6];
  assign tx_vid_pixel0[5] = \<const0> ;
  assign tx_vid_pixel0[4] = \<const0> ;
  assign tx_vid_pixel0[3] = \<const0> ;
  assign tx_vid_pixel0[2] = \<const0> ;
  assign tx_vid_pixel0[1] = \<const0> ;
  assign tx_vid_pixel0[0] = \<const0> ;
  assign tx_vid_pixel1[47:38] = \^tx_vid_pixel1 [47:38];
  assign tx_vid_pixel1[37] = \<const0> ;
  assign tx_vid_pixel1[36] = \<const0> ;
  assign tx_vid_pixel1[35] = \<const0> ;
  assign tx_vid_pixel1[34] = \<const0> ;
  assign tx_vid_pixel1[33] = \<const0> ;
  assign tx_vid_pixel1[32] = \<const0> ;
  assign tx_vid_pixel1[31:22] = \^tx_vid_pixel1 [31:22];
  assign tx_vid_pixel1[21] = \<const0> ;
  assign tx_vid_pixel1[20] = \<const0> ;
  assign tx_vid_pixel1[19] = \<const0> ;
  assign tx_vid_pixel1[18] = \<const0> ;
  assign tx_vid_pixel1[17] = \<const0> ;
  assign tx_vid_pixel1[16] = \<const0> ;
  assign tx_vid_pixel1[15:6] = \^tx_vid_pixel1 [15:6];
  assign tx_vid_pixel1[5] = \<const0> ;
  assign tx_vid_pixel1[4] = \<const0> ;
  assign tx_vid_pixel1[3] = \<const0> ;
  assign tx_vid_pixel1[2] = \<const0> ;
  assign tx_vid_pixel1[1] = \<const0> ;
  assign tx_vid_pixel1[0] = \<const0> ;
  assign tx_vid_pixel2[47:38] = \^tx_vid_pixel2 [47:38];
  assign tx_vid_pixel2[37] = \<const0> ;
  assign tx_vid_pixel2[36] = \<const0> ;
  assign tx_vid_pixel2[35] = \<const0> ;
  assign tx_vid_pixel2[34] = \<const0> ;
  assign tx_vid_pixel2[33] = \<const0> ;
  assign tx_vid_pixel2[32] = \<const0> ;
  assign tx_vid_pixel2[31:22] = \^tx_vid_pixel2 [31:22];
  assign tx_vid_pixel2[21] = \<const0> ;
  assign tx_vid_pixel2[20] = \<const0> ;
  assign tx_vid_pixel2[19] = \<const0> ;
  assign tx_vid_pixel2[18] = \<const0> ;
  assign tx_vid_pixel2[17] = \<const0> ;
  assign tx_vid_pixel2[16] = \<const0> ;
  assign tx_vid_pixel2[15:6] = \^tx_vid_pixel2 [15:6];
  assign tx_vid_pixel2[5] = \<const0> ;
  assign tx_vid_pixel2[4] = \<const0> ;
  assign tx_vid_pixel2[3] = \<const0> ;
  assign tx_vid_pixel2[2] = \<const0> ;
  assign tx_vid_pixel2[1] = \<const0> ;
  assign tx_vid_pixel2[0] = \<const0> ;
  assign tx_vid_pixel3[47:38] = \^tx_vid_pixel3 [47:38];
  assign tx_vid_pixel3[37] = \<const0> ;
  assign tx_vid_pixel3[36] = \<const0> ;
  assign tx_vid_pixel3[35] = \<const0> ;
  assign tx_vid_pixel3[34] = \<const0> ;
  assign tx_vid_pixel3[33] = \<const0> ;
  assign tx_vid_pixel3[32] = \<const0> ;
  assign tx_vid_pixel3[31:22] = \^tx_vid_pixel3 [31:22];
  assign tx_vid_pixel3[21] = \<const0> ;
  assign tx_vid_pixel3[20] = \<const0> ;
  assign tx_vid_pixel3[19] = \<const0> ;
  assign tx_vid_pixel3[18] = \<const0> ;
  assign tx_vid_pixel3[17] = \<const0> ;
  assign tx_vid_pixel3[16] = \<const0> ;
  assign tx_vid_pixel3[15:6] = \^tx_vid_pixel3 [15:6];
  assign tx_vid_pixel3[5] = \<const0> ;
  assign tx_vid_pixel3[4] = \<const0> ;
  assign tx_vid_pixel3[3] = \<const0> ;
  assign tx_vid_pixel3[2] = \<const0> ;
  assign tx_vid_pixel3[1] = \<const0> ;
  assign tx_vid_pixel3[0] = \<const0> ;
  assign tx_vid_pixel4[47] = \<const0> ;
  assign tx_vid_pixel4[46] = \<const0> ;
  assign tx_vid_pixel4[45] = \<const0> ;
  assign tx_vid_pixel4[44] = \<const0> ;
  assign tx_vid_pixel4[43] = \<const0> ;
  assign tx_vid_pixel4[42] = \<const0> ;
  assign tx_vid_pixel4[41] = \<const0> ;
  assign tx_vid_pixel4[40] = \<const0> ;
  assign tx_vid_pixel4[39] = \<const0> ;
  assign tx_vid_pixel4[38] = \<const0> ;
  assign tx_vid_pixel4[37] = \<const0> ;
  assign tx_vid_pixel4[36] = \<const0> ;
  assign tx_vid_pixel4[35] = \<const0> ;
  assign tx_vid_pixel4[34] = \<const0> ;
  assign tx_vid_pixel4[33] = \<const0> ;
  assign tx_vid_pixel4[32] = \<const0> ;
  assign tx_vid_pixel4[31] = \<const0> ;
  assign tx_vid_pixel4[30] = \<const0> ;
  assign tx_vid_pixel4[29] = \<const0> ;
  assign tx_vid_pixel4[28] = \<const0> ;
  assign tx_vid_pixel4[27] = \<const0> ;
  assign tx_vid_pixel4[26] = \<const0> ;
  assign tx_vid_pixel4[25] = \<const0> ;
  assign tx_vid_pixel4[24] = \<const0> ;
  assign tx_vid_pixel4[23] = \<const0> ;
  assign tx_vid_pixel4[22] = \<const0> ;
  assign tx_vid_pixel4[21] = \<const0> ;
  assign tx_vid_pixel4[20] = \<const0> ;
  assign tx_vid_pixel4[19] = \<const0> ;
  assign tx_vid_pixel4[18] = \<const0> ;
  assign tx_vid_pixel4[17] = \<const0> ;
  assign tx_vid_pixel4[16] = \<const0> ;
  assign tx_vid_pixel4[15] = \<const0> ;
  assign tx_vid_pixel4[14] = \<const0> ;
  assign tx_vid_pixel4[13] = \<const0> ;
  assign tx_vid_pixel4[12] = \<const0> ;
  assign tx_vid_pixel4[11] = \<const0> ;
  assign tx_vid_pixel4[10] = \<const0> ;
  assign tx_vid_pixel4[9] = \<const0> ;
  assign tx_vid_pixel4[8] = \<const0> ;
  assign tx_vid_pixel4[7] = \<const0> ;
  assign tx_vid_pixel4[6] = \<const0> ;
  assign tx_vid_pixel4[5] = \<const0> ;
  assign tx_vid_pixel4[4] = \<const0> ;
  assign tx_vid_pixel4[3] = \<const0> ;
  assign tx_vid_pixel4[2] = \<const0> ;
  assign tx_vid_pixel4[1] = \<const0> ;
  assign tx_vid_pixel4[0] = \<const0> ;
  assign tx_vid_pixel5[47] = \<const0> ;
  assign tx_vid_pixel5[46] = \<const0> ;
  assign tx_vid_pixel5[45] = \<const0> ;
  assign tx_vid_pixel5[44] = \<const0> ;
  assign tx_vid_pixel5[43] = \<const0> ;
  assign tx_vid_pixel5[42] = \<const0> ;
  assign tx_vid_pixel5[41] = \<const0> ;
  assign tx_vid_pixel5[40] = \<const0> ;
  assign tx_vid_pixel5[39] = \<const0> ;
  assign tx_vid_pixel5[38] = \<const0> ;
  assign tx_vid_pixel5[37] = \<const0> ;
  assign tx_vid_pixel5[36] = \<const0> ;
  assign tx_vid_pixel5[35] = \<const0> ;
  assign tx_vid_pixel5[34] = \<const0> ;
  assign tx_vid_pixel5[33] = \<const0> ;
  assign tx_vid_pixel5[32] = \<const0> ;
  assign tx_vid_pixel5[31] = \<const0> ;
  assign tx_vid_pixel5[30] = \<const0> ;
  assign tx_vid_pixel5[29] = \<const0> ;
  assign tx_vid_pixel5[28] = \<const0> ;
  assign tx_vid_pixel5[27] = \<const0> ;
  assign tx_vid_pixel5[26] = \<const0> ;
  assign tx_vid_pixel5[25] = \<const0> ;
  assign tx_vid_pixel5[24] = \<const0> ;
  assign tx_vid_pixel5[23] = \<const0> ;
  assign tx_vid_pixel5[22] = \<const0> ;
  assign tx_vid_pixel5[21] = \<const0> ;
  assign tx_vid_pixel5[20] = \<const0> ;
  assign tx_vid_pixel5[19] = \<const0> ;
  assign tx_vid_pixel5[18] = \<const0> ;
  assign tx_vid_pixel5[17] = \<const0> ;
  assign tx_vid_pixel5[16] = \<const0> ;
  assign tx_vid_pixel5[15] = \<const0> ;
  assign tx_vid_pixel5[14] = \<const0> ;
  assign tx_vid_pixel5[13] = \<const0> ;
  assign tx_vid_pixel5[12] = \<const0> ;
  assign tx_vid_pixel5[11] = \<const0> ;
  assign tx_vid_pixel5[10] = \<const0> ;
  assign tx_vid_pixel5[9] = \<const0> ;
  assign tx_vid_pixel5[8] = \<const0> ;
  assign tx_vid_pixel5[7] = \<const0> ;
  assign tx_vid_pixel5[6] = \<const0> ;
  assign tx_vid_pixel5[5] = \<const0> ;
  assign tx_vid_pixel5[4] = \<const0> ;
  assign tx_vid_pixel5[3] = \<const0> ;
  assign tx_vid_pixel5[2] = \<const0> ;
  assign tx_vid_pixel5[1] = \<const0> ;
  assign tx_vid_pixel5[0] = \<const0> ;
  assign tx_vid_pixel6[47] = \<const0> ;
  assign tx_vid_pixel6[46] = \<const0> ;
  assign tx_vid_pixel6[45] = \<const0> ;
  assign tx_vid_pixel6[44] = \<const0> ;
  assign tx_vid_pixel6[43] = \<const0> ;
  assign tx_vid_pixel6[42] = \<const0> ;
  assign tx_vid_pixel6[41] = \<const0> ;
  assign tx_vid_pixel6[40] = \<const0> ;
  assign tx_vid_pixel6[39] = \<const0> ;
  assign tx_vid_pixel6[38] = \<const0> ;
  assign tx_vid_pixel6[37] = \<const0> ;
  assign tx_vid_pixel6[36] = \<const0> ;
  assign tx_vid_pixel6[35] = \<const0> ;
  assign tx_vid_pixel6[34] = \<const0> ;
  assign tx_vid_pixel6[33] = \<const0> ;
  assign tx_vid_pixel6[32] = \<const0> ;
  assign tx_vid_pixel6[31] = \<const0> ;
  assign tx_vid_pixel6[30] = \<const0> ;
  assign tx_vid_pixel6[29] = \<const0> ;
  assign tx_vid_pixel6[28] = \<const0> ;
  assign tx_vid_pixel6[27] = \<const0> ;
  assign tx_vid_pixel6[26] = \<const0> ;
  assign tx_vid_pixel6[25] = \<const0> ;
  assign tx_vid_pixel6[24] = \<const0> ;
  assign tx_vid_pixel6[23] = \<const0> ;
  assign tx_vid_pixel6[22] = \<const0> ;
  assign tx_vid_pixel6[21] = \<const0> ;
  assign tx_vid_pixel6[20] = \<const0> ;
  assign tx_vid_pixel6[19] = \<const0> ;
  assign tx_vid_pixel6[18] = \<const0> ;
  assign tx_vid_pixel6[17] = \<const0> ;
  assign tx_vid_pixel6[16] = \<const0> ;
  assign tx_vid_pixel6[15] = \<const0> ;
  assign tx_vid_pixel6[14] = \<const0> ;
  assign tx_vid_pixel6[13] = \<const0> ;
  assign tx_vid_pixel6[12] = \<const0> ;
  assign tx_vid_pixel6[11] = \<const0> ;
  assign tx_vid_pixel6[10] = \<const0> ;
  assign tx_vid_pixel6[9] = \<const0> ;
  assign tx_vid_pixel6[8] = \<const0> ;
  assign tx_vid_pixel6[7] = \<const0> ;
  assign tx_vid_pixel6[6] = \<const0> ;
  assign tx_vid_pixel6[5] = \<const0> ;
  assign tx_vid_pixel6[4] = \<const0> ;
  assign tx_vid_pixel6[3] = \<const0> ;
  assign tx_vid_pixel6[2] = \<const0> ;
  assign tx_vid_pixel6[1] = \<const0> ;
  assign tx_vid_pixel6[0] = \<const0> ;
  assign tx_vid_pixel7[47] = \<const0> ;
  assign tx_vid_pixel7[46] = \<const0> ;
  assign tx_vid_pixel7[45] = \<const0> ;
  assign tx_vid_pixel7[44] = \<const0> ;
  assign tx_vid_pixel7[43] = \<const0> ;
  assign tx_vid_pixel7[42] = \<const0> ;
  assign tx_vid_pixel7[41] = \<const0> ;
  assign tx_vid_pixel7[40] = \<const0> ;
  assign tx_vid_pixel7[39] = \<const0> ;
  assign tx_vid_pixel7[38] = \<const0> ;
  assign tx_vid_pixel7[37] = \<const0> ;
  assign tx_vid_pixel7[36] = \<const0> ;
  assign tx_vid_pixel7[35] = \<const0> ;
  assign tx_vid_pixel7[34] = \<const0> ;
  assign tx_vid_pixel7[33] = \<const0> ;
  assign tx_vid_pixel7[32] = \<const0> ;
  assign tx_vid_pixel7[31] = \<const0> ;
  assign tx_vid_pixel7[30] = \<const0> ;
  assign tx_vid_pixel7[29] = \<const0> ;
  assign tx_vid_pixel7[28] = \<const0> ;
  assign tx_vid_pixel7[27] = \<const0> ;
  assign tx_vid_pixel7[26] = \<const0> ;
  assign tx_vid_pixel7[25] = \<const0> ;
  assign tx_vid_pixel7[24] = \<const0> ;
  assign tx_vid_pixel7[23] = \<const0> ;
  assign tx_vid_pixel7[22] = \<const0> ;
  assign tx_vid_pixel7[21] = \<const0> ;
  assign tx_vid_pixel7[20] = \<const0> ;
  assign tx_vid_pixel7[19] = \<const0> ;
  assign tx_vid_pixel7[18] = \<const0> ;
  assign tx_vid_pixel7[17] = \<const0> ;
  assign tx_vid_pixel7[16] = \<const0> ;
  assign tx_vid_pixel7[15] = \<const0> ;
  assign tx_vid_pixel7[14] = \<const0> ;
  assign tx_vid_pixel7[13] = \<const0> ;
  assign tx_vid_pixel7[12] = \<const0> ;
  assign tx_vid_pixel7[11] = \<const0> ;
  assign tx_vid_pixel7[10] = \<const0> ;
  assign tx_vid_pixel7[9] = \<const0> ;
  assign tx_vid_pixel7[8] = \<const0> ;
  assign tx_vid_pixel7[7] = \<const0> ;
  assign tx_vid_pixel7[6] = \<const0> ;
  assign tx_vid_pixel7[5] = \<const0> ;
  assign tx_vid_pixel7[4] = \<const0> ;
  assign tx_vid_pixel7[3] = \<const0> ;
  assign tx_vid_pixel7[2] = \<const0> ;
  assign tx_vid_pixel7[1] = \<const0> ;
  assign tx_vid_pixel7[0] = \<const0> ;
  assign tx_vid_reset = rst;
  GND GND
       (.G(\<const0> ));
  FDRE \f_pixel0_reg[10] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[14]),
        .Q(\^tx_vid_pixel0 [10]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel0_reg[11] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[15]),
        .Q(\^tx_vid_pixel0 [11]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel0_reg[12] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[16]),
        .Q(\^tx_vid_pixel0 [12]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel0_reg[13] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[17]),
        .Q(\^tx_vid_pixel0 [13]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel0_reg[14] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[18]),
        .Q(\^tx_vid_pixel0 [14]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel0_reg[15] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[19]),
        .Q(\^tx_vid_pixel0 [15]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel0_reg[22] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel00_out[22]),
        .Q(\^tx_vid_pixel0 [22]),
        .R(1'b0));
  FDRE \f_pixel0_reg[23] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel00_out[23]),
        .Q(\^tx_vid_pixel0 [23]),
        .R(1'b0));
  FDRE \f_pixel0_reg[24] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel00_out[24]),
        .Q(\^tx_vid_pixel0 [24]),
        .R(1'b0));
  FDRE \f_pixel0_reg[25] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel00_out[25]),
        .Q(\^tx_vid_pixel0 [25]),
        .R(1'b0));
  FDRE \f_pixel0_reg[26] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel00_out[26]),
        .Q(\^tx_vid_pixel0 [26]),
        .R(1'b0));
  FDRE \f_pixel0_reg[27] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel00_out[27]),
        .Q(\^tx_vid_pixel0 [27]),
        .R(1'b0));
  FDRE \f_pixel0_reg[28] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel00_out[28]),
        .Q(\^tx_vid_pixel0 [28]),
        .R(1'b0));
  FDRE \f_pixel0_reg[29] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel00_out[29]),
        .Q(\^tx_vid_pixel0 [29]),
        .R(1'b0));
  FDRE \f_pixel0_reg[30] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel00_out[30]),
        .Q(\^tx_vid_pixel0 [30]),
        .R(1'b0));
  FDRE \f_pixel0_reg[31] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel00_out[31]),
        .Q(\^tx_vid_pixel0 [31]),
        .R(1'b0));
  FDRE \f_pixel0_reg[38] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel00_out[38]),
        .Q(\^tx_vid_pixel0 [38]),
        .R(1'b0));
  FDRE \f_pixel0_reg[39] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel00_out[39]),
        .Q(\^tx_vid_pixel0 [39]),
        .R(1'b0));
  FDRE \f_pixel0_reg[40] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel00_out[40]),
        .Q(\^tx_vid_pixel0 [40]),
        .R(1'b0));
  FDRE \f_pixel0_reg[41] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel00_out[41]),
        .Q(\^tx_vid_pixel0 [41]),
        .R(1'b0));
  FDRE \f_pixel0_reg[42] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel00_out[42]),
        .Q(\^tx_vid_pixel0 [42]),
        .R(1'b0));
  FDRE \f_pixel0_reg[43] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel00_out[43]),
        .Q(\^tx_vid_pixel0 [43]),
        .R(1'b0));
  FDRE \f_pixel0_reg[44] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel00_out[44]),
        .Q(\^tx_vid_pixel0 [44]),
        .R(1'b0));
  FDRE \f_pixel0_reg[45] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel00_out[45]),
        .Q(\^tx_vid_pixel0 [45]),
        .R(1'b0));
  FDRE \f_pixel0_reg[46] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel00_out[46]),
        .Q(\^tx_vid_pixel0 [46]),
        .R(1'b0));
  FDRE \f_pixel0_reg[47] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel00_out[47]),
        .Q(\^tx_vid_pixel0 [47]),
        .R(1'b0));
  FDRE \f_pixel0_reg[6] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[10]),
        .Q(\^tx_vid_pixel0 [6]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel0_reg[7] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[11]),
        .Q(\^tx_vid_pixel0 [7]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel0_reg[8] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[12]),
        .Q(\^tx_vid_pixel0 [8]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel0_reg[9] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[13]),
        .Q(\^tx_vid_pixel0 [9]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel1_reg[10] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[44]),
        .Q(\^tx_vid_pixel1 [10]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel1_reg[11] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[45]),
        .Q(\^tx_vid_pixel1 [11]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel1_reg[12] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[46]),
        .Q(\^tx_vid_pixel1 [12]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel1_reg[13] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[47]),
        .Q(\^tx_vid_pixel1 [13]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel1_reg[14] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[48]),
        .Q(\^tx_vid_pixel1 [14]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel1_reg[15] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[49]),
        .Q(\^tx_vid_pixel1 [15]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel1_reg[22] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel11_out[22]),
        .Q(\^tx_vid_pixel1 [22]),
        .R(1'b0));
  FDRE \f_pixel1_reg[23] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel11_out[23]),
        .Q(\^tx_vid_pixel1 [23]),
        .R(1'b0));
  FDRE \f_pixel1_reg[24] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel11_out[24]),
        .Q(\^tx_vid_pixel1 [24]),
        .R(1'b0));
  FDRE \f_pixel1_reg[25] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel11_out[25]),
        .Q(\^tx_vid_pixel1 [25]),
        .R(1'b0));
  FDRE \f_pixel1_reg[26] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel11_out[26]),
        .Q(\^tx_vid_pixel1 [26]),
        .R(1'b0));
  FDRE \f_pixel1_reg[27] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel11_out[27]),
        .Q(\^tx_vid_pixel1 [27]),
        .R(1'b0));
  FDRE \f_pixel1_reg[28] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel11_out[28]),
        .Q(\^tx_vid_pixel1 [28]),
        .R(1'b0));
  FDRE \f_pixel1_reg[29] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel11_out[29]),
        .Q(\^tx_vid_pixel1 [29]),
        .R(1'b0));
  FDRE \f_pixel1_reg[30] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel11_out[30]),
        .Q(\^tx_vid_pixel1 [30]),
        .R(1'b0));
  FDRE \f_pixel1_reg[31] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel11_out[31]),
        .Q(\^tx_vid_pixel1 [31]),
        .R(1'b0));
  FDRE \f_pixel1_reg[38] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel11_out[38]),
        .Q(\^tx_vid_pixel1 [38]),
        .R(1'b0));
  FDRE \f_pixel1_reg[39] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel11_out[39]),
        .Q(\^tx_vid_pixel1 [39]),
        .R(1'b0));
  FDRE \f_pixel1_reg[40] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel11_out[40]),
        .Q(\^tx_vid_pixel1 [40]),
        .R(1'b0));
  FDRE \f_pixel1_reg[41] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel11_out[41]),
        .Q(\^tx_vid_pixel1 [41]),
        .R(1'b0));
  FDRE \f_pixel1_reg[42] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel11_out[42]),
        .Q(\^tx_vid_pixel1 [42]),
        .R(1'b0));
  FDRE \f_pixel1_reg[43] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel11_out[43]),
        .Q(\^tx_vid_pixel1 [43]),
        .R(1'b0));
  FDRE \f_pixel1_reg[44] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel11_out[44]),
        .Q(\^tx_vid_pixel1 [44]),
        .R(1'b0));
  FDRE \f_pixel1_reg[45] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel11_out[45]),
        .Q(\^tx_vid_pixel1 [45]),
        .R(1'b0));
  FDRE \f_pixel1_reg[46] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel11_out[46]),
        .Q(\^tx_vid_pixel1 [46]),
        .R(1'b0));
  FDRE \f_pixel1_reg[47] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel11_out[47]),
        .Q(\^tx_vid_pixel1 [47]),
        .R(1'b0));
  FDRE \f_pixel1_reg[6] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[40]),
        .Q(\^tx_vid_pixel1 [6]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel1_reg[7] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[41]),
        .Q(\^tx_vid_pixel1 [7]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel1_reg[8] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[42]),
        .Q(\^tx_vid_pixel1 [8]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel1_reg[9] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[43]),
        .Q(\^tx_vid_pixel1 [9]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel2_reg[10] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[74]),
        .Q(\^tx_vid_pixel2 [10]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel2_reg[11] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[75]),
        .Q(\^tx_vid_pixel2 [11]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel2_reg[12] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[76]),
        .Q(\^tx_vid_pixel2 [12]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel2_reg[13] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[77]),
        .Q(\^tx_vid_pixel2 [13]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel2_reg[14] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[78]),
        .Q(\^tx_vid_pixel2 [14]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel2_reg[15] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[79]),
        .Q(\^tx_vid_pixel2 [15]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel2_reg[22] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel21_out[22]),
        .Q(\^tx_vid_pixel2 [22]),
        .R(1'b0));
  FDRE \f_pixel2_reg[23] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel21_out[23]),
        .Q(\^tx_vid_pixel2 [23]),
        .R(1'b0));
  FDRE \f_pixel2_reg[24] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel21_out[24]),
        .Q(\^tx_vid_pixel2 [24]),
        .R(1'b0));
  FDRE \f_pixel2_reg[25] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel21_out[25]),
        .Q(\^tx_vid_pixel2 [25]),
        .R(1'b0));
  FDRE \f_pixel2_reg[26] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel21_out[26]),
        .Q(\^tx_vid_pixel2 [26]),
        .R(1'b0));
  FDRE \f_pixel2_reg[27] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel21_out[27]),
        .Q(\^tx_vid_pixel2 [27]),
        .R(1'b0));
  FDRE \f_pixel2_reg[28] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel21_out[28]),
        .Q(\^tx_vid_pixel2 [28]),
        .R(1'b0));
  FDRE \f_pixel2_reg[29] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel21_out[29]),
        .Q(\^tx_vid_pixel2 [29]),
        .R(1'b0));
  FDRE \f_pixel2_reg[30] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel21_out[30]),
        .Q(\^tx_vid_pixel2 [30]),
        .R(1'b0));
  FDRE \f_pixel2_reg[31] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel21_out[31]),
        .Q(\^tx_vid_pixel2 [31]),
        .R(1'b0));
  FDRE \f_pixel2_reg[38] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel21_out[38]),
        .Q(\^tx_vid_pixel2 [38]),
        .R(1'b0));
  FDRE \f_pixel2_reg[39] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel21_out[39]),
        .Q(\^tx_vid_pixel2 [39]),
        .R(1'b0));
  FDRE \f_pixel2_reg[40] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel21_out[40]),
        .Q(\^tx_vid_pixel2 [40]),
        .R(1'b0));
  FDRE \f_pixel2_reg[41] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel21_out[41]),
        .Q(\^tx_vid_pixel2 [41]),
        .R(1'b0));
  FDRE \f_pixel2_reg[42] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel21_out[42]),
        .Q(\^tx_vid_pixel2 [42]),
        .R(1'b0));
  FDRE \f_pixel2_reg[43] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel21_out[43]),
        .Q(\^tx_vid_pixel2 [43]),
        .R(1'b0));
  FDRE \f_pixel2_reg[44] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel21_out[44]),
        .Q(\^tx_vid_pixel2 [44]),
        .R(1'b0));
  FDRE \f_pixel2_reg[45] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel21_out[45]),
        .Q(\^tx_vid_pixel2 [45]),
        .R(1'b0));
  FDRE \f_pixel2_reg[46] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel21_out[46]),
        .Q(\^tx_vid_pixel2 [46]),
        .R(1'b0));
  FDRE \f_pixel2_reg[47] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel21_out[47]),
        .Q(\^tx_vid_pixel2 [47]),
        .R(1'b0));
  FDRE \f_pixel2_reg[6] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[70]),
        .Q(\^tx_vid_pixel2 [6]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel2_reg[7] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[71]),
        .Q(\^tx_vid_pixel2 [7]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel2_reg[8] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[72]),
        .Q(\^tx_vid_pixel2 [8]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel2_reg[9] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[73]),
        .Q(\^tx_vid_pixel2 [9]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel3_reg[10] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[104]),
        .Q(\^tx_vid_pixel3 [10]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel3_reg[11] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[105]),
        .Q(\^tx_vid_pixel3 [11]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel3_reg[12] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[106]),
        .Q(\^tx_vid_pixel3 [12]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel3_reg[13] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[107]),
        .Q(\^tx_vid_pixel3 [13]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel3_reg[14] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[108]),
        .Q(\^tx_vid_pixel3 [14]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel3_reg[15] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[109]),
        .Q(\^tx_vid_pixel3 [15]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel3_reg[22] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel31_out[22]),
        .Q(\^tx_vid_pixel3 [22]),
        .R(1'b0));
  FDRE \f_pixel3_reg[23] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel31_out[23]),
        .Q(\^tx_vid_pixel3 [23]),
        .R(1'b0));
  FDRE \f_pixel3_reg[24] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel31_out[24]),
        .Q(\^tx_vid_pixel3 [24]),
        .R(1'b0));
  FDRE \f_pixel3_reg[25] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel31_out[25]),
        .Q(\^tx_vid_pixel3 [25]),
        .R(1'b0));
  FDRE \f_pixel3_reg[26] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel31_out[26]),
        .Q(\^tx_vid_pixel3 [26]),
        .R(1'b0));
  FDRE \f_pixel3_reg[27] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel31_out[27]),
        .Q(\^tx_vid_pixel3 [27]),
        .R(1'b0));
  FDRE \f_pixel3_reg[28] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel31_out[28]),
        .Q(\^tx_vid_pixel3 [28]),
        .R(1'b0));
  FDRE \f_pixel3_reg[29] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel31_out[29]),
        .Q(\^tx_vid_pixel3 [29]),
        .R(1'b0));
  FDRE \f_pixel3_reg[30] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel31_out[30]),
        .Q(\^tx_vid_pixel3 [30]),
        .R(1'b0));
  FDRE \f_pixel3_reg[31] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel31_out[31]),
        .Q(\^tx_vid_pixel3 [31]),
        .R(1'b0));
  FDRE \f_pixel3_reg[38] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel31_out[38]),
        .Q(\^tx_vid_pixel3 [38]),
        .R(1'b0));
  FDRE \f_pixel3_reg[39] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel31_out[39]),
        .Q(\^tx_vid_pixel3 [39]),
        .R(1'b0));
  FDRE \f_pixel3_reg[40] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel31_out[40]),
        .Q(\^tx_vid_pixel3 [40]),
        .R(1'b0));
  FDRE \f_pixel3_reg[41] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel31_out[41]),
        .Q(\^tx_vid_pixel3 [41]),
        .R(1'b0));
  FDRE \f_pixel3_reg[42] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel31_out[42]),
        .Q(\^tx_vid_pixel3 [42]),
        .R(1'b0));
  FDRE \f_pixel3_reg[43] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel31_out[43]),
        .Q(\^tx_vid_pixel3 [43]),
        .R(1'b0));
  FDRE \f_pixel3_reg[44] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel31_out[44]),
        .Q(\^tx_vid_pixel3 [44]),
        .R(1'b0));
  FDRE \f_pixel3_reg[45] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel31_out[45]),
        .Q(\^tx_vid_pixel3 [45]),
        .R(1'b0));
  FDRE \f_pixel3_reg[46] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel31_out[46]),
        .Q(\^tx_vid_pixel3 [46]),
        .R(1'b0));
  FDRE \f_pixel3_reg[47] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(f_pixel31_out[47]),
        .Q(\^tx_vid_pixel3 [47]),
        .R(1'b0));
  FDRE \f_pixel3_reg[6] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[100]),
        .Q(\^tx_vid_pixel3 [6]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel3_reg[7] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[101]),
        .Q(\^tx_vid_pixel3 [7]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel3_reg[8] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[102]),
        .Q(\^tx_vid_pixel3 [8]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_pixel3_reg[9] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_data_mux[103]),
        .Q(\^tx_vid_pixel3 [9]),
        .R(vid_format_vid_clk[1]));
  FDRE \f_vid_active_video_ph0_reg[0] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_de_mux),
        .Q(tx_vid_enable),
        .R(1'b0));
  FDRE \f_vid_hsync_ph0_reg[0] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_hsync_mux),
        .Q(tx_vid_hsync),
        .R(1'b0));
  FDRE \f_vid_vsync_ph0_reg[0] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(in_vsync_mux),
        .Q(tx_vid_vsync),
        .R(1'b0));
  bd_38d0_vb1_0_v_axi4s_vid_out_v4_0_17 inst
       (.D(f_pixel00_out[47:38]),
        .Q({in_data_mux[109:100],in_data_mux[79:70],in_data_mux[49:40],in_data_mux[19:0]}),
        .TREADY_IN(video_in_tready_to_remap),
        .TVALID_OUT(video_out_tvalid_from_remap),
        .aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .dest_out(i_sync_soft_reset_aclk),
        .din({video_out_tuser_from_remap,video_out_tlast_from_remap,video_out_tdata_from_remap}),
        .\f_pixel3_reg[47] (vid_format_vid_clk),
        .i_sync_rst(i_sync_rst),
        .\in_data_mux_reg[119] ({f_pixel31_out[47:38],f_pixel31_out[31:22]}),
        .\in_data_mux_reg[59] ({f_pixel11_out[47:38],f_pixel11_out[31:22]}),
        .\in_data_mux_reg[89] ({f_pixel21_out[47:38],f_pixel21_out[31:22]}),
        .in_de_mux(in_de_mux),
        .in_hsync_mux(in_hsync_mux),
        .in_vsync_mux(in_vsync_mux),
        .overflow(overflow),
        .rst(sync_cell_aresetn_inst_n_1),
        .sof_state_out(sof_state_out),
        .src_in(locked),
        .underflow(underflow),
        .vid_io_out_clk(vid_io_out_clk),
        .vtg_ce(vtg_ce),
        .vtg_vsync_bp_reg(i_sync_soft_reset_vidclk),
        .vtg_vsync_bp_reg_0(rst),
        .vtiming_in_active_video(vtiming_in_active_video),
        .vtiming_in_field_id(vtiming_in_field_id),
        .vtiming_in_hsync(vtiming_in_hsync),
        .vtiming_in_vblank(vtiming_in_vblank),
        .vtiming_in_vsync(vtiming_in_vsync));
  (* C_ADDR_WIDTH_PIXEL_REMAP_420 = "10" *) 
  (* C_COMPONENTS_PER_PIXEL = "3" *) 
  (* C_DP_MODE = "1" *) 
  (* C_DSC_EN = "0" *) 
  (* C_FAMILY = "versal" *) 
  (* C_HDMI_MODE = "0" *) 
  (* C_INPUT_PIXELS_PER_CLOCK = "4" *) 
  (* C_M_AXIS_TDATA_WIDTH = "120" *) 
  (* C_PPC_CONVERT_EN = "1" *) 
  (* C_S_AXIS_COMPONENT_WIDTH = "10" *) 
  (* C_S_AXIS_TDATA_WIDTH = "120" *) 
  (* C_YUV420_REMAP_EN = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  bd_38d0_vb1_0_axi_remapper_tx_v1_0_1_top remapper_inst
       (.ACLK(aclk),
        .ACLKEN(1'b0),
        .ARESETN(i_sync_aresetn),
        .DSC_EN(1'b0),
        .FID_IN(1'b0),
        .FID_OUT(NLW_remapper_inst_FID_OUT_UNCONNECTED),
        .OUTPUT_PPC({1'b0,ppc_aclk}),
        .REMAP_FIFO_OVERFLOW_OUT(NLW_remapper_inst_REMAP_FIFO_OVERFLOW_OUT_UNCONNECTED),
        .REMAP_FIFO_UNDERFLOW_OUT(NLW_remapper_inst_REMAP_FIFO_UNDERFLOW_OUT_UNCONNECTED),
        .TDATA_IN(video_in_tdata),
        .TDATA_OUT(video_out_tdata_from_remap),
        .TLAST_IN(video_in_tlast),
        .TLAST_OUT(video_out_tlast_from_remap),
        .TREADY_IN(video_in_tready_to_remap),
        .TREADY_OUT(video_in_tready),
        .TUSER_IN(video_in_tuser),
        .TUSER_OUT(video_out_tuser_from_remap),
        .TVALID_IN(video_in_tvalid),
        .TVALID_OUT(video_out_tvalid_from_remap),
        .VID_FORMAT(vid_format_aclk),
        .YUV420_REMAP_EN(1'b0),
        .locked(1'b0));
  bd_38d0_vb1_0_axi4svideo_bridge_v1_0_17_sync_cell__xdcDup__1 sync_cell_aresetn_inst
       (.ARESETN(i_sync_aresetn),
        .aclk(aclk),
        .aresetn(aresetn),
        .dest_out(i_sync_soft_reset_aclk),
        .rst(sync_cell_aresetn_inst_n_1),
        .soft_reset(soft_reset));
  bd_38d0_vb1_0_axi4svideo_bridge_v1_0_17_sync_cell__parameterized0 sync_cell_ppc_aclk
       (.aclk(aclk),
        .dest_out(ppc_aclk),
        .ppc(ppc));
  bd_38d0_vb1_0_axi4svideo_bridge_v1_0_17_sync_cell__parameterized0__xdcDup__1 sync_cell_vid_format_aclk
       (.aclk(aclk),
        .dest_out(vid_format_aclk),
        .vid_format(vid_format));
  bd_38d0_vb1_0_axi4svideo_bridge_v1_0_17_sync_cell__parameterized0__xdcDup__2 sync_cell_vid_format_vid_clk
       (.D(f_pixel00_out[31:22]),
        .Q(in_data_mux[9:0]),
        .dest_out(vid_format_vid_clk),
        .vid_format(vid_format),
        .vid_io_out_clk(vid_io_out_clk));
  bd_38d0_vb1_0_axi4svideo_bridge_v1_0_17_sync_cell sync_cell_vid_rst_inst
       (.dest_out(i_sync_soft_reset_vidclk),
        .i_sync_rst(i_sync_rst),
        .rst(rst),
        .soft_reset(soft_reset),
        .vid_io_out_clk(vid_io_out_clk));
endmodule

(* ORIG_REF_NAME = "axi4svideo_bridge_v1_0_17_sync_cell" *) 
module bd_38d0_vb1_0_axi4svideo_bridge_v1_0_17_sync_cell
   (dest_out,
    i_sync_rst,
    soft_reset,
    vid_io_out_clk,
    rst);
  output [0:0]dest_out;
  output i_sync_rst;
  input soft_reset;
  input vid_io_out_clk;
  input rst;

  wire [0:0]dest_out;
  wire i_sync_rst;
  wire rst;
  wire soft_reset;
  wire vid_io_out_clk;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(dest_out),
        .I1(rst),
        .O(i_sync_rst));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "1" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_38d0_vb1_0_xpm_cdc_array_single xpm_cdc_array_single_inst
       (.dest_clk(vid_io_out_clk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(soft_reset));
endmodule

(* ORIG_REF_NAME = "axi4svideo_bridge_v1_0_17_sync_cell" *) 
module bd_38d0_vb1_0_axi4svideo_bridge_v1_0_17_sync_cell__parameterized0
   (dest_out,
    ppc,
    aclk);
  output [2:0]dest_out;
  input [2:0]ppc;
  input aclk;

  wire aclk;
  wire [2:0]dest_out;
  wire [2:0]ppc;

  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "3" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_38d0_vb1_0_xpm_cdc_array_single__parameterized0 xpm_cdc_array_single_inst
       (.dest_clk(aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(ppc));
endmodule

(* ORIG_REF_NAME = "axi4svideo_bridge_v1_0_17_sync_cell" *) 
module bd_38d0_vb1_0_axi4svideo_bridge_v1_0_17_sync_cell__parameterized0__xdcDup__1
   (dest_out,
    vid_format,
    aclk);
  output [1:0]dest_out;
  input [2:0]vid_format;
  input aclk;

  wire aclk;
  wire [1:0]dest_out;
  wire [2:0]vid_format;
  wire [2:2]NLW_xpm_cdc_array_single_inst_dest_out_UNCONNECTED;

  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "3" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_38d0_vb1_0_xpm_cdc_array_single__parameterized0__3 xpm_cdc_array_single_inst
       (.dest_clk(aclk),
        .dest_out({NLW_xpm_cdc_array_single_inst_dest_out_UNCONNECTED[2],dest_out}),
        .src_clk(1'b0),
        .src_in(vid_format));
endmodule

(* ORIG_REF_NAME = "axi4svideo_bridge_v1_0_17_sync_cell" *) 
module bd_38d0_vb1_0_axi4svideo_bridge_v1_0_17_sync_cell__parameterized0__xdcDup__2
   (dest_out,
    D,
    vid_format,
    vid_io_out_clk,
    Q);
  output [1:0]dest_out;
  output [9:0]D;
  input [2:0]vid_format;
  input vid_io_out_clk;
  input [9:0]Q;

  wire [9:0]D;
  wire [9:0]Q;
  wire [1:0]dest_out;
  wire [2:0]vid_format;
  wire vid_io_out_clk;
  wire [2:2]NLW_xpm_cdc_array_single_inst_dest_out_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \f_pixel0[22]_i_1 
       (.I0(dest_out[0]),
        .I1(dest_out[1]),
        .I2(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \f_pixel0[23]_i_1 
       (.I0(dest_out[0]),
        .I1(dest_out[1]),
        .I2(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \f_pixel0[24]_i_1 
       (.I0(dest_out[0]),
        .I1(dest_out[1]),
        .I2(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \f_pixel0[25]_i_1 
       (.I0(dest_out[0]),
        .I1(dest_out[1]),
        .I2(Q[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \f_pixel0[26]_i_1 
       (.I0(dest_out[0]),
        .I1(dest_out[1]),
        .I2(Q[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \f_pixel0[27]_i_1 
       (.I0(dest_out[0]),
        .I1(dest_out[1]),
        .I2(Q[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \f_pixel0[28]_i_1 
       (.I0(dest_out[0]),
        .I1(dest_out[1]),
        .I2(Q[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \f_pixel0[29]_i_1 
       (.I0(dest_out[0]),
        .I1(dest_out[1]),
        .I2(Q[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \f_pixel0[30]_i_1 
       (.I0(dest_out[0]),
        .I1(dest_out[1]),
        .I2(Q[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \f_pixel0[31]_i_1 
       (.I0(dest_out[0]),
        .I1(dest_out[1]),
        .I2(Q[9]),
        .O(D[9]));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "3" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_38d0_vb1_0_xpm_cdc_array_single__parameterized0__4 xpm_cdc_array_single_inst
       (.dest_clk(vid_io_out_clk),
        .dest_out({NLW_xpm_cdc_array_single_inst_dest_out_UNCONNECTED[2],dest_out}),
        .src_clk(1'b0),
        .src_in(vid_format));
endmodule

(* ORIG_REF_NAME = "axi4svideo_bridge_v1_0_17_sync_cell" *) 
module bd_38d0_vb1_0_axi4svideo_bridge_v1_0_17_sync_cell__xdcDup__1
   (dest_out,
    rst,
    ARESETN,
    soft_reset,
    aclk,
    aresetn);
  output [0:0]dest_out;
  output rst;
  output ARESETN;
  input soft_reset;
  input aclk;
  input aresetn;

  wire ARESETN;
  wire aclk;
  wire aresetn;
  wire [0:0]dest_out;
  wire rst;
  wire soft_reset;

  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'hB)) 
    XPM_FIFO_ASYNC_INST_i_1
       (.I0(dest_out),
        .I1(aresetn),
        .O(rst));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h4)) 
    remapper_inst_i_1
       (.I0(dest_out),
        .I1(aresetn),
        .O(ARESETN));
  (* DEST_SYNC_FF = "3" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "1" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_38d0_vb1_0_xpm_cdc_array_single__2 xpm_cdc_array_single_inst
       (.dest_clk(aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(soft_reset));
endmodule

(* ORIG_REF_NAME = "v_axi4s_vid_out_v4_0_17" *) 
module bd_38d0_vb1_0_v_axi4s_vid_out_v4_0_17
   (src_in,
    overflow,
    underflow,
    in_de_mux,
    in_vsync_mux,
    in_hsync_mux,
    sof_state_out,
    TREADY_IN,
    vtg_ce,
    D,
    Q,
    \in_data_mux_reg[59] ,
    \in_data_mux_reg[89] ,
    \in_data_mux_reg[119] ,
    vid_io_out_clk,
    aclk,
    rst,
    din,
    i_sync_rst,
    vtiming_in_active_video,
    vtiming_in_vsync,
    vtiming_in_vblank,
    vtiming_in_hsync,
    aresetn,
    dest_out,
    TVALID_OUT,
    aclken,
    vtiming_in_field_id,
    \f_pixel3_reg[47] ,
    vtg_vsync_bp_reg,
    vtg_vsync_bp_reg_0);
  output src_in;
  output overflow;
  output underflow;
  output in_de_mux;
  output in_vsync_mux;
  output in_hsync_mux;
  output sof_state_out;
  output TREADY_IN;
  output vtg_ce;
  output [9:0]D;
  output [49:0]Q;
  output [19:0]\in_data_mux_reg[59] ;
  output [19:0]\in_data_mux_reg[89] ;
  output [19:0]\in_data_mux_reg[119] ;
  input vid_io_out_clk;
  input aclk;
  input rst;
  input [121:0]din;
  input i_sync_rst;
  input [0:0]vtiming_in_active_video;
  input [0:0]vtiming_in_vsync;
  input [0:0]vtiming_in_vblank;
  input [0:0]vtiming_in_hsync;
  input aresetn;
  input [0:0]dest_out;
  input TVALID_OUT;
  input aclken;
  input [0:0]vtiming_in_field_id;
  input [1:0]\f_pixel3_reg[47] ;
  input [0:0]vtg_vsync_bp_reg;
  input vtg_vsync_bp_reg_0;

  wire COUPLER_INST_n_124;
  wire COUPLER_INST_n_125;
  wire COUPLER_INST_n_128;
  wire COUPLER_INST_n_129;
  wire COUPLER_INST_n_130;
  wire COUPLER_INST_n_133;
  wire COUPLER_INST_n_134;
  wire [9:0]D;
  wire [49:0]Q;
  wire SYNC_INST_n_5;
  wire TREADY_IN;
  wire TVALID_OUT;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire [0:0]dest_out;
  wire [121:0]din;
  wire [1:0]\f_pixel3_reg[47] ;
  wire [119:0]fifo_data;
  wire fifo_eol;
  wire fifo_eol_dly;
  wire fifo_eol_re;
  wire fifo_fid;
  wire fifo_rd_en;
  wire fifo_sof;
  wire fifo_sof_dly;
  wire first_sof;
  wire fivid_reset_full_frame;
  wire i_sync_rst;
  wire [19:0]\in_data_mux_reg[119] ;
  wire [19:0]\in_data_mux_reg[59] ;
  wire [19:0]\in_data_mux_reg[89] ;
  wire in_de_mux;
  wire in_de_mux0;
  wire in_hsync_mux;
  wire in_vsync_mux;
  wire locked_from_sync;
  wire locked_from_sync_dly;
  wire overflow;
  wire p_22_in;
  wire rst;
  wire sof_state_out;
  wire src_in;
  wire [2:2]state;
  wire underflow;
  wire vid_io_out_clk;
  wire vtg_ce;
  wire vtg_sof_dly;
  wire [0:0]vtg_vsync_bp_reg;
  wire vtg_vsync_bp_reg_0;
  wire [0:0]vtiming_in_active_video;
  wire [0:0]vtiming_in_field_id;
  wire [0:0]vtiming_in_hsync;
  wire [0:0]vtiming_in_vblank;
  wire [0:0]vtiming_in_vsync;

  bd_38d0_vb1_0_v_axi4s_vid_out_v4_0_17_cdc_single CDC_SINGLE_LOCKED_INST
       (.aclk(aclk),
        .dest_out(locked_from_sync),
        .src_in(src_in));
  bd_38d0_vb1_0_v_axi4s_vid_out_v4_0_17_cdc_single__xdcDup__1 CDC_SINGLE_REMAP_UNDERFLOW_INST
       (.vid_io_out_clk(vid_io_out_clk));
  bd_38d0_vb1_0_v_axi4s_vid_out_v4_0_17_coupler COUPLER_INST
       (.E(fifo_rd_en),
        .\FSM_sequential_state_reg[2] (SYNC_INST_n_5),
        .TREADY_IN(TREADY_IN),
        .TVALID_OUT(TVALID_OUT),
        .aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .dest_out(dest_out),
        .din(din),
        .dout({fifo_fid,fifo_sof,fifo_eol,fifo_data}),
        .fifo_eol_dly(fifo_eol_dly),
        .fifo_eol_re(fifo_eol_re),
        .fifo_sof_dly(fifo_sof_dly),
        .fifo_sof_dly_reg(COUPLER_INST_n_130),
        .fifo_sof_dly_reg_0(p_22_in),
        .first_sof(first_sof),
        .first_sof_reg(locked_from_sync),
        .\grdc.rd_data_count_i_reg[10] (COUPLER_INST_n_128),
        .locked_from_sync_dly(locked_from_sync_dly),
        .overflow(overflow),
        .rd_data_count({COUPLER_INST_n_124,COUPLER_INST_n_125}),
        .rst(rst),
        .sof_state_out(sof_state_out),
        .state(state),
        .\syncstages_ff_reg[2][0] (COUPLER_INST_n_133),
        .\syncstages_ff_reg[2][0]_0 (COUPLER_INST_n_134),
        .underflow(underflow),
        .vid_io_out_clk(vid_io_out_clk),
        .vtg_sof_dly(vtg_sof_dly),
        .vtg_sof_dly_reg(COUPLER_INST_n_129));
  bd_38d0_vb1_0_v_axi4s_vid_out_v4_0_17_formatter FORMATTER_INST
       (.D(D),
        .E(fifo_rd_en),
        .Q(Q),
        .SR(in_de_mux0),
        .\f_pixel3_reg[47] (\f_pixel3_reg[47] ),
        .fivid_reset_full_frame(fivid_reset_full_frame),
        .fivid_reset_full_frame_reg_0(vtg_vsync_bp_reg),
        .fivid_reset_full_frame_reg_1(vtg_vsync_bp_reg_0),
        .\in_data_mux_reg[119]_0 (\in_data_mux_reg[119] ),
        .\in_data_mux_reg[119]_1 (fifo_data),
        .\in_data_mux_reg[59]_0 (\in_data_mux_reg[59] ),
        .\in_data_mux_reg[89]_0 (\in_data_mux_reg[89] ),
        .in_de_mux(in_de_mux),
        .in_hsync_mux(in_hsync_mux),
        .in_vsync_mux(in_vsync_mux),
        .src_in(src_in),
        .vid_io_out_clk(vid_io_out_clk),
        .vtiming_in_active_video(vtiming_in_active_video),
        .vtiming_in_hsync(vtiming_in_hsync),
        .vtiming_in_vblank(vtiming_in_vblank),
        .vtiming_in_vsync(vtiming_in_vsync));
  bd_38d0_vb1_0_v_axi4s_vid_out_v4_0_17_sync SYNC_INST
       (.E(fifo_rd_en),
        .\FSM_sequential_state_reg[1]_0 (SYNC_INST_n_5),
        .\FSM_sequential_state_reg[2]_0 (state),
        .\FSM_sequential_state_reg[2]_1 (COUPLER_INST_n_129),
        .\FSM_sequential_state_reg[2]_2 (COUPLER_INST_n_128),
        .SR(in_de_mux0),
        .dout({fifo_fid,fifo_sof,fifo_eol}),
        .\fifo_eol_cnt_reg[0]_0 (COUPLER_INST_n_130),
        .fifo_eol_dly(fifo_eol_dly),
        .fifo_eol_re(fifo_eol_re),
        .\fifo_sof_cnt_reg[7]_0 (p_22_in),
        .fifo_sof_dly(fifo_sof_dly),
        .fivid_reset_full_frame(fivid_reset_full_frame),
        .i_sync_rst(i_sync_rst),
        .rd_data_count({COUPLER_INST_n_124,COUPLER_INST_n_125}),
        .src_in(src_in),
        .vid_io_out_clk(vid_io_out_clk),
        .vtg_ce(vtg_ce),
        .vtg_sof_dly(vtg_sof_dly),
        .vtg_vsync_bp_reg_0(vtg_vsync_bp_reg),
        .vtg_vsync_bp_reg_1(vtg_vsync_bp_reg_0),
        .vtiming_in_active_video(vtiming_in_active_video),
        .vtiming_in_field_id(vtiming_in_field_id),
        .vtiming_in_vsync(vtiming_in_vsync));
  FDRE first_sof_reg
       (.C(aclk),
        .CE(1'b1),
        .D(COUPLER_INST_n_134),
        .Q(first_sof),
        .R(1'b0));
  FDRE locked_from_sync_dly_reg
       (.C(aclk),
        .CE(1'b1),
        .D(locked_from_sync),
        .Q(locked_from_sync_dly),
        .R(1'b0));
  FDRE sof_state_out_reg
       (.C(aclk),
        .CE(1'b1),
        .D(COUPLER_INST_n_133),
        .Q(sof_state_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "v_axi4s_vid_out_v4_0_17_cdc_single" *) 
module bd_38d0_vb1_0_v_axi4s_vid_out_v4_0_17_cdc_single
   (dest_out,
    src_in,
    aclk);
  output dest_out;
  input src_in;
  input aclk;

  wire aclk;
  wire dest_out;
  wire src_in;

  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_38d0_vb1_0_xpm_cdc_single__4 xpm_cdc_single_inst
       (.dest_clk(aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(src_in));
endmodule

(* ORIG_REF_NAME = "v_axi4s_vid_out_v4_0_17_cdc_single" *) 
module bd_38d0_vb1_0_v_axi4s_vid_out_v4_0_17_cdc_single__xdcDup__1
   (vid_io_out_clk);
  input vid_io_out_clk;

  wire vid_io_out_clk;
  wire NLW_xpm_cdc_single_inst_dest_out_UNCONNECTED;

  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_38d0_vb1_0_xpm_cdc_single__3 xpm_cdc_single_inst
       (.dest_clk(vid_io_out_clk),
        .dest_out(NLW_xpm_cdc_single_inst_dest_out_UNCONNECTED),
        .src_clk(1'b0),
        .src_in(1'b0));
endmodule

(* ORIG_REF_NAME = "v_axi4s_vid_out_v4_0_17_coupler" *) 
module bd_38d0_vb1_0_v_axi4s_vid_out_v4_0_17_coupler
   (overflow,
    dout,
    rd_data_count,
    underflow,
    TREADY_IN,
    \grdc.rd_data_count_i_reg[10] ,
    vtg_sof_dly_reg,
    fifo_sof_dly_reg,
    fifo_sof_dly_reg_0,
    fifo_eol_re,
    \syncstages_ff_reg[2][0] ,
    \syncstages_ff_reg[2][0]_0 ,
    rst,
    aclk,
    din,
    vid_io_out_clk,
    E,
    aresetn,
    dest_out,
    TVALID_OUT,
    aclken,
    first_sof,
    state,
    \FSM_sequential_state_reg[2] ,
    vtg_sof_dly,
    fifo_sof_dly,
    fifo_eol_dly,
    sof_state_out,
    locked_from_sync_dly,
    first_sof_reg);
  output overflow;
  output [122:0]dout;
  output [1:0]rd_data_count;
  output underflow;
  output TREADY_IN;
  output \grdc.rd_data_count_i_reg[10] ;
  output vtg_sof_dly_reg;
  output fifo_sof_dly_reg;
  output [0:0]fifo_sof_dly_reg_0;
  output fifo_eol_re;
  output \syncstages_ff_reg[2][0] ;
  output \syncstages_ff_reg[2][0]_0 ;
  input rst;
  input aclk;
  input [121:0]din;
  input vid_io_out_clk;
  input [0:0]E;
  input aresetn;
  input [0:0]dest_out;
  input TVALID_OUT;
  input aclken;
  input first_sof;
  input [0:0]state;
  input \FSM_sequential_state_reg[2] ;
  input vtg_sof_dly;
  input fifo_sof_dly;
  input fifo_eol_dly;
  input sof_state_out;
  input locked_from_sync_dly;
  input first_sof_reg;

  wire [0:0]E;
  wire \FSM_sequential_state_reg[2] ;
  wire TREADY_IN;
  wire TVALID_OUT;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire [0:0]dest_out;
  wire [121:0]din;
  wire [122:0]dout;
  wire fifo_eol_dly;
  wire fifo_eol_re;
  wire fifo_sof_dly;
  wire fifo_sof_dly_reg;
  wire [0:0]fifo_sof_dly_reg_0;
  wire first_sof;
  wire first_sof_reg;
  wire \grdc.rd_data_count_i_reg[10] ;
  wire locked_from_sync_dly;
  wire overflow;
  wire [1:0]rd_data_count;
  wire rst;
  wire sof_state_out;
  wire [0:0]state;
  wire \syncstages_ff_reg[2][0] ;
  wire \syncstages_ff_reg[2][0]_0 ;
  wire underflow;
  wire vid_io_out_clk;
  wire vtg_sof_dly;
  wire vtg_sof_dly_reg;

  bd_38d0_vb1_0_v_axi4s_vid_out_v4_0_17_fifo_async \generate_async_fifo.FIFO_INST 
       (.E(E),
        .\FSM_sequential_state_reg[2] (\FSM_sequential_state_reg[2] ),
        .TREADY_IN(TREADY_IN),
        .TVALID_OUT(TVALID_OUT),
        .aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .dest_out(dest_out),
        .din(din),
        .dout(dout),
        .fifo_eol_dly(fifo_eol_dly),
        .fifo_eol_re(fifo_eol_re),
        .fifo_sof_dly(fifo_sof_dly),
        .fifo_sof_dly_reg(fifo_sof_dly_reg),
        .fifo_sof_dly_reg_0(fifo_sof_dly_reg_0),
        .first_sof(first_sof),
        .first_sof_reg(first_sof_reg),
        .\grdc.rd_data_count_i_reg[10] (\grdc.rd_data_count_i_reg[10] ),
        .locked_from_sync_dly(locked_from_sync_dly),
        .overflow(overflow),
        .rd_data_count(rd_data_count),
        .rst(rst),
        .sof_state_out(sof_state_out),
        .state(state),
        .\syncstages_ff_reg[2][0] (\syncstages_ff_reg[2][0] ),
        .\syncstages_ff_reg[2][0]_0 (\syncstages_ff_reg[2][0]_0 ),
        .underflow(underflow),
        .vid_io_out_clk(vid_io_out_clk),
        .vtg_sof_dly(vtg_sof_dly),
        .vtg_sof_dly_reg(vtg_sof_dly_reg));
endmodule

(* ORIG_REF_NAME = "v_axi4s_vid_out_v4_0_17_fifo_async" *) 
module bd_38d0_vb1_0_v_axi4s_vid_out_v4_0_17_fifo_async
   (overflow,
    dout,
    rd_data_count,
    underflow,
    TREADY_IN,
    \grdc.rd_data_count_i_reg[10] ,
    vtg_sof_dly_reg,
    fifo_sof_dly_reg,
    fifo_sof_dly_reg_0,
    fifo_eol_re,
    \syncstages_ff_reg[2][0] ,
    \syncstages_ff_reg[2][0]_0 ,
    rst,
    aclk,
    din,
    vid_io_out_clk,
    E,
    aresetn,
    dest_out,
    TVALID_OUT,
    aclken,
    first_sof,
    state,
    \FSM_sequential_state_reg[2] ,
    vtg_sof_dly,
    fifo_sof_dly,
    fifo_eol_dly,
    sof_state_out,
    locked_from_sync_dly,
    first_sof_reg);
  output overflow;
  output [122:0]dout;
  output [1:0]rd_data_count;
  output underflow;
  output TREADY_IN;
  output \grdc.rd_data_count_i_reg[10] ;
  output vtg_sof_dly_reg;
  output fifo_sof_dly_reg;
  output [0:0]fifo_sof_dly_reg_0;
  output fifo_eol_re;
  output \syncstages_ff_reg[2][0] ;
  output \syncstages_ff_reg[2][0]_0 ;
  input rst;
  input aclk;
  input [121:0]din;
  input vid_io_out_clk;
  input [0:0]E;
  input aresetn;
  input [0:0]dest_out;
  input TVALID_OUT;
  input aclken;
  input first_sof;
  input [0:0]state;
  input \FSM_sequential_state_reg[2] ;
  input vtg_sof_dly;
  input fifo_sof_dly;
  input fifo_eol_dly;
  input sof_state_out;
  input locked_from_sync_dly;
  input first_sof_reg;

  wire [0:0]E;
  wire \FSM_sequential_state_reg[2] ;
  wire TREADY_IN;
  wire TVALID_OUT;
  wire XPM_FIFO_ASYNC_INST_i_4_n_0;
  wire XPM_FIFO_ASYNC_INST_n_10;
  wire XPM_FIFO_ASYNC_INST_n_11;
  wire XPM_FIFO_ASYNC_INST_n_12;
  wire XPM_FIFO_ASYNC_INST_n_13;
  wire XPM_FIFO_ASYNC_INST_n_2;
  wire XPM_FIFO_ASYNC_INST_n_217;
  wire XPM_FIFO_ASYNC_INST_n_218;
  wire XPM_FIFO_ASYNC_INST_n_219;
  wire XPM_FIFO_ASYNC_INST_n_220;
  wire XPM_FIFO_ASYNC_INST_n_221;
  wire XPM_FIFO_ASYNC_INST_n_222;
  wire XPM_FIFO_ASYNC_INST_n_223;
  wire XPM_FIFO_ASYNC_INST_n_224;
  wire XPM_FIFO_ASYNC_INST_n_225;
  wire XPM_FIFO_ASYNC_INST_n_226;
  wire XPM_FIFO_ASYNC_INST_n_228;
  wire XPM_FIFO_ASYNC_INST_n_3;
  wire XPM_FIFO_ASYNC_INST_n_4;
  wire XPM_FIFO_ASYNC_INST_n_5;
  wire XPM_FIFO_ASYNC_INST_n_6;
  wire XPM_FIFO_ASYNC_INST_n_7;
  wire XPM_FIFO_ASYNC_INST_n_8;
  wire XPM_FIFO_ASYNC_INST_n_9;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire [0:0]dest_out;
  wire [121:0]din;
  wire [122:0]dout;
  wire [191:120]fifo_data;
  wire fifo_empty;
  wire fifo_eol_dly;
  wire fifo_eol_re;
  wire fifo_sof_dly;
  wire fifo_sof_dly_reg;
  wire [0:0]fifo_sof_dly_reg_0;
  wire first_sof;
  wire first_sof_reg;
  wire full_i;
  wire \grdc.rd_data_count_i_reg[10] ;
  wire locked_from_sync_dly;
  wire overflow;
  wire [1:0]rd_data_count;
  wire rst;
  wire sof_state_out;
  wire sof_state_out0;
  wire [0:0]state;
  wire \syncstages_ff_reg[2][0] ;
  wire \syncstages_ff_reg[2][0]_0 ;
  wire underflow;
  wire vid_io_out_clk;
  wire vtg_sof_dly;
  wire vtg_sof_dly_reg;
  wire wr_en_i;
  wire wr_rst_busy_i;
  wire NLW_XPM_FIFO_ASYNC_INST_almost_empty_UNCONNECTED;
  wire NLW_XPM_FIFO_ASYNC_INST_almost_full_UNCONNECTED;
  wire NLW_XPM_FIFO_ASYNC_INST_data_valid_UNCONNECTED;
  wire NLW_XPM_FIFO_ASYNC_INST_dbiterr_UNCONNECTED;
  wire NLW_XPM_FIFO_ASYNC_INST_prog_empty_UNCONNECTED;
  wire NLW_XPM_FIFO_ASYNC_INST_prog_full_UNCONNECTED;
  wire NLW_XPM_FIFO_ASYNC_INST_sbiterr_UNCONNECTED;
  wire NLW_XPM_FIFO_ASYNC_INST_wr_ack_UNCONNECTED;

  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(rd_data_count[0]),
        .I1(rd_data_count[1]),
        .I2(state),
        .I3(\FSM_sequential_state_reg[2] ),
        .O(\grdc.rd_data_count_i_reg[10] ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(fifo_sof_dly_reg),
        .I1(vtg_sof_dly),
        .O(vtg_sof_dly_reg));
  (* CASCADE_HEIGHT = "1" *) 
  (* CDC_SYNC_STAGES = "4" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* EN_ADV_FEATURE_ASYNC = "16'b0000011100000111" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_WRITE_DEPTH = "2048" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "12" *) 
  (* READ_DATA_WIDTH = "195" *) 
  (* READ_MODE = "0" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "195" *) 
  (* WR_DATA_COUNT_WIDTH = "12" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_38d0_vb1_0_xpm_fifo_async XPM_FIFO_ASYNC_INST
       (.almost_empty(NLW_XPM_FIFO_ASYNC_INST_almost_empty_UNCONNECTED),
        .almost_full(NLW_XPM_FIFO_ASYNC_INST_almost_full_UNCONNECTED),
        .data_valid(NLW_XPM_FIFO_ASYNC_INST_data_valid_UNCONNECTED),
        .dbiterr(NLW_XPM_FIFO_ASYNC_INST_dbiterr_UNCONNECTED),
        .din({1'b0,din[121:120],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[119:0]}),
        .dout({dout[122:120],fifo_data,dout[119:0]}),
        .empty(fifo_empty),
        .full(full_i),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(NLW_XPM_FIFO_ASYNC_INST_prog_empty_UNCONNECTED),
        .prog_full(NLW_XPM_FIFO_ASYNC_INST_prog_full_UNCONNECTED),
        .rd_clk(vid_io_out_clk),
        .rd_data_count({rd_data_count,XPM_FIFO_ASYNC_INST_n_217,XPM_FIFO_ASYNC_INST_n_218,XPM_FIFO_ASYNC_INST_n_219,XPM_FIFO_ASYNC_INST_n_220,XPM_FIFO_ASYNC_INST_n_221,XPM_FIFO_ASYNC_INST_n_222,XPM_FIFO_ASYNC_INST_n_223,XPM_FIFO_ASYNC_INST_n_224,XPM_FIFO_ASYNC_INST_n_225,XPM_FIFO_ASYNC_INST_n_226}),
        .rd_en(E),
        .rd_rst_busy(XPM_FIFO_ASYNC_INST_n_228),
        .rst(rst),
        .sbiterr(NLW_XPM_FIFO_ASYNC_INST_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(underflow),
        .wr_ack(NLW_XPM_FIFO_ASYNC_INST_wr_ack_UNCONNECTED),
        .wr_clk(aclk),
        .wr_data_count({XPM_FIFO_ASYNC_INST_n_2,XPM_FIFO_ASYNC_INST_n_3,XPM_FIFO_ASYNC_INST_n_4,XPM_FIFO_ASYNC_INST_n_5,XPM_FIFO_ASYNC_INST_n_6,XPM_FIFO_ASYNC_INST_n_7,XPM_FIFO_ASYNC_INST_n_8,XPM_FIFO_ASYNC_INST_n_9,XPM_FIFO_ASYNC_INST_n_10,XPM_FIFO_ASYNC_INST_n_11,XPM_FIFO_ASYNC_INST_n_12,XPM_FIFO_ASYNC_INST_n_13}),
        .wr_en(wr_en_i),
        .wr_rst_busy(wr_rst_busy_i));
  LUT5 #(
    .INIT(32'h02000000)) 
    XPM_FIFO_ASYNC_INST_i_2
       (.I0(XPM_FIFO_ASYNC_INST_i_4_n_0),
        .I1(full_i),
        .I2(wr_rst_busy_i),
        .I3(TVALID_OUT),
        .I4(aclken),
        .O(wr_en_i));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    XPM_FIFO_ASYNC_INST_i_4
       (.I0(din[121]),
        .I1(first_sof),
        .I2(aresetn),
        .I3(dest_out),
        .O(XPM_FIFO_ASYNC_INST_i_4_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    \fifo_eol_cnt[12]_i_3 
       (.I0(dout[121]),
        .I1(fifo_sof_dly),
        .O(fifo_sof_dly_reg));
  LUT2 #(
    .INIT(4'h2)) 
    fifo_eol_re_dly_i_1
       (.I0(dout[120]),
        .I1(fifo_eol_dly),
        .O(fifo_eol_re));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_sof_cnt[7]_i_1 
       (.I0(fifo_sof_dly_reg),
        .O(fifo_sof_dly_reg_0));
  LUT6 #(
    .INIT(64'h4440444000004440)) 
    first_sof_i_1
       (.I0(dest_out),
        .I1(aresetn),
        .I2(sof_state_out0),
        .I3(first_sof),
        .I4(locked_from_sync_dly),
        .I5(first_sof_reg),
        .O(\syncstages_ff_reg[2][0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    remapper_inst_i_2
       (.I0(wr_rst_busy_i),
        .I1(full_i),
        .I2(aresetn),
        .I3(dest_out),
        .O(TREADY_IN));
  LUT4 #(
    .INIT(16'h0440)) 
    sof_state_out_i_1
       (.I0(dest_out),
        .I1(aresetn),
        .I2(sof_state_out),
        .I3(sof_state_out0),
        .O(\syncstages_ff_reg[2][0] ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    sof_state_out_i_2
       (.I0(dest_out),
        .I1(aresetn),
        .I2(full_i),
        .I3(wr_rst_busy_i),
        .I4(din[121]),
        .I5(TVALID_OUT),
        .O(sof_state_out0));
endmodule

(* ORIG_REF_NAME = "v_axi4s_vid_out_v4_0_17_formatter" *) 
module bd_38d0_vb1_0_v_axi4s_vid_out_v4_0_17_formatter
   (in_de_mux,
    in_vsync_mux,
    in_hsync_mux,
    fivid_reset_full_frame,
    D,
    Q,
    \in_data_mux_reg[59]_0 ,
    \in_data_mux_reg[89]_0 ,
    \in_data_mux_reg[119]_0 ,
    vtiming_in_vblank,
    vid_io_out_clk,
    SR,
    vtiming_in_active_video,
    vtiming_in_vsync,
    vtiming_in_hsync,
    \f_pixel3_reg[47] ,
    fivid_reset_full_frame_reg_0,
    fivid_reset_full_frame_reg_1,
    src_in,
    E,
    \in_data_mux_reg[119]_1 );
  output in_de_mux;
  output in_vsync_mux;
  output in_hsync_mux;
  output fivid_reset_full_frame;
  output [9:0]D;
  output [49:0]Q;
  output [19:0]\in_data_mux_reg[59]_0 ;
  output [19:0]\in_data_mux_reg[89]_0 ;
  output [19:0]\in_data_mux_reg[119]_0 ;
  input [0:0]vtiming_in_vblank;
  input vid_io_out_clk;
  input [0:0]SR;
  input [0:0]vtiming_in_active_video;
  input [0:0]vtiming_in_vsync;
  input [0:0]vtiming_in_hsync;
  input [1:0]\f_pixel3_reg[47] ;
  input [0:0]fivid_reset_full_frame_reg_0;
  input fivid_reset_full_frame_reg_1;
  input src_in;
  input [0:0]E;
  input [119:0]\in_data_mux_reg[119]_1 ;

  wire [9:0]D;
  wire [0:0]E;
  wire [49:0]Q;
  wire [0:0]SR;
  wire [1:0]\f_pixel3_reg[47] ;
  wire fivid_reset_full_frame;
  wire fivid_reset_full_frame_i_1_n_0;
  wire [0:0]fivid_reset_full_frame_reg_0;
  wire fivid_reset_full_frame_reg_1;
  wire [119:20]in_data_mux;
  wire [19:0]\in_data_mux_reg[119]_0 ;
  wire [119:0]\in_data_mux_reg[119]_1 ;
  wire [19:0]\in_data_mux_reg[59]_0 ;
  wire [19:0]\in_data_mux_reg[89]_0 ;
  wire in_de_mux;
  wire in_hsync_mux;
  wire in_vsync_mux;
  wire src_in;
  wire vblank_rising;
  wire vblank_rising0;
  wire vid_io_out_clk;
  wire vtg_vblank_1;
  wire [0:0]vtiming_in_active_video;
  wire [0:0]vtiming_in_hsync;
  wire [0:0]vtiming_in_vblank;
  wire [0:0]vtiming_in_vsync;

  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel0[38]_i_1 
       (.I0(in_data_mux[20]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(Q[0]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(Q[10]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel0[39]_i_1 
       (.I0(in_data_mux[21]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(Q[1]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(Q[11]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel0[40]_i_1 
       (.I0(in_data_mux[22]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(Q[2]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(Q[12]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel0[41]_i_1 
       (.I0(in_data_mux[23]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(Q[3]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(Q[13]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel0[42]_i_1 
       (.I0(in_data_mux[24]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(Q[4]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(Q[14]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel0[43]_i_1 
       (.I0(in_data_mux[25]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(Q[5]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(Q[15]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel0[44]_i_1 
       (.I0(in_data_mux[26]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(Q[6]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(Q[16]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel0[45]_i_1 
       (.I0(in_data_mux[27]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(Q[7]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(Q[17]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel0[46]_i_1 
       (.I0(in_data_mux[28]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(Q[8]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(Q[18]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel0[47]_i_1 
       (.I0(in_data_mux[29]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(Q[9]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(Q[19]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel1[22]_i_1 
       (.I0(in_data_mux[20]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[30]),
        .O(\in_data_mux_reg[59]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel1[23]_i_1 
       (.I0(in_data_mux[21]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[31]),
        .O(\in_data_mux_reg[59]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel1[24]_i_1 
       (.I0(in_data_mux[22]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[32]),
        .O(\in_data_mux_reg[59]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel1[25]_i_1 
       (.I0(in_data_mux[23]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[33]),
        .O(\in_data_mux_reg[59]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel1[26]_i_1 
       (.I0(in_data_mux[24]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[34]),
        .O(\in_data_mux_reg[59]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel1[27]_i_1 
       (.I0(in_data_mux[25]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[35]),
        .O(\in_data_mux_reg[59]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel1[28]_i_1 
       (.I0(in_data_mux[26]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[36]),
        .O(\in_data_mux_reg[59]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel1[29]_i_1 
       (.I0(in_data_mux[27]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[37]),
        .O(\in_data_mux_reg[59]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel1[30]_i_1 
       (.I0(in_data_mux[28]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[38]),
        .O(\in_data_mux_reg[59]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel1[31]_i_1 
       (.I0(in_data_mux[29]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[39]),
        .O(\in_data_mux_reg[59]_0 [9]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel1[38]_i_1 
       (.I0(in_data_mux[50]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(Q[10]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(in_data_mux[30]),
        .O(\in_data_mux_reg[59]_0 [10]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel1[39]_i_1 
       (.I0(in_data_mux[51]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(Q[11]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(in_data_mux[31]),
        .O(\in_data_mux_reg[59]_0 [11]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel1[40]_i_1 
       (.I0(in_data_mux[52]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(Q[12]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(in_data_mux[32]),
        .O(\in_data_mux_reg[59]_0 [12]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel1[41]_i_1 
       (.I0(in_data_mux[53]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(Q[13]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(in_data_mux[33]),
        .O(\in_data_mux_reg[59]_0 [13]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel1[42]_i_1 
       (.I0(in_data_mux[54]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(Q[14]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(in_data_mux[34]),
        .O(\in_data_mux_reg[59]_0 [14]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel1[43]_i_1 
       (.I0(in_data_mux[55]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(Q[15]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(in_data_mux[35]),
        .O(\in_data_mux_reg[59]_0 [15]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel1[44]_i_1 
       (.I0(in_data_mux[56]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(Q[16]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(in_data_mux[36]),
        .O(\in_data_mux_reg[59]_0 [16]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel1[45]_i_1 
       (.I0(in_data_mux[57]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(Q[17]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(in_data_mux[37]),
        .O(\in_data_mux_reg[59]_0 [17]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel1[46]_i_1 
       (.I0(in_data_mux[58]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(Q[18]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(in_data_mux[38]),
        .O(\in_data_mux_reg[59]_0 [18]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel1[47]_i_1 
       (.I0(in_data_mux[59]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(Q[19]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(in_data_mux[39]),
        .O(\in_data_mux_reg[59]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel2[22]_i_1 
       (.I0(Q[20]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[60]),
        .O(\in_data_mux_reg[89]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel2[23]_i_1 
       (.I0(Q[21]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[61]),
        .O(\in_data_mux_reg[89]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel2[24]_i_1 
       (.I0(Q[22]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[62]),
        .O(\in_data_mux_reg[89]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel2[25]_i_1 
       (.I0(Q[23]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[63]),
        .O(\in_data_mux_reg[89]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel2[26]_i_1 
       (.I0(Q[24]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[64]),
        .O(\in_data_mux_reg[89]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel2[27]_i_1 
       (.I0(Q[25]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[65]),
        .O(\in_data_mux_reg[89]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel2[28]_i_1 
       (.I0(Q[26]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[66]),
        .O(\in_data_mux_reg[89]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel2[29]_i_1 
       (.I0(Q[27]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[67]),
        .O(\in_data_mux_reg[89]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel2[30]_i_1 
       (.I0(Q[28]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[68]),
        .O(\in_data_mux_reg[89]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel2[31]_i_1 
       (.I0(Q[29]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[69]),
        .O(\in_data_mux_reg[89]_0 [9]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel2[38]_i_1 
       (.I0(in_data_mux[80]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(in_data_mux[20]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(in_data_mux[50]),
        .O(\in_data_mux_reg[89]_0 [10]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel2[39]_i_1 
       (.I0(in_data_mux[81]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(in_data_mux[21]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(in_data_mux[51]),
        .O(\in_data_mux_reg[89]_0 [11]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel2[40]_i_1 
       (.I0(in_data_mux[82]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(in_data_mux[22]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(in_data_mux[52]),
        .O(\in_data_mux_reg[89]_0 [12]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel2[41]_i_1 
       (.I0(in_data_mux[83]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(in_data_mux[23]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(in_data_mux[53]),
        .O(\in_data_mux_reg[89]_0 [13]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel2[42]_i_1 
       (.I0(in_data_mux[84]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(in_data_mux[24]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(in_data_mux[54]),
        .O(\in_data_mux_reg[89]_0 [14]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel2[43]_i_1 
       (.I0(in_data_mux[85]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(in_data_mux[25]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(in_data_mux[55]),
        .O(\in_data_mux_reg[89]_0 [15]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel2[44]_i_1 
       (.I0(in_data_mux[86]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(in_data_mux[26]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(in_data_mux[56]),
        .O(\in_data_mux_reg[89]_0 [16]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel2[45]_i_1 
       (.I0(in_data_mux[87]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(in_data_mux[27]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(in_data_mux[57]),
        .O(\in_data_mux_reg[89]_0 [17]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel2[46]_i_1 
       (.I0(in_data_mux[88]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(in_data_mux[28]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(in_data_mux[58]),
        .O(\in_data_mux_reg[89]_0 [18]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel2[47]_i_1 
       (.I0(in_data_mux[89]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(in_data_mux[29]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(in_data_mux[59]),
        .O(\in_data_mux_reg[89]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel3[22]_i_1 
       (.I0(in_data_mux[60]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[90]),
        .O(\in_data_mux_reg[119]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel3[23]_i_1 
       (.I0(in_data_mux[61]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[91]),
        .O(\in_data_mux_reg[119]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel3[24]_i_1 
       (.I0(in_data_mux[62]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[92]),
        .O(\in_data_mux_reg[119]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel3[25]_i_1 
       (.I0(in_data_mux[63]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[93]),
        .O(\in_data_mux_reg[119]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel3[26]_i_1 
       (.I0(in_data_mux[64]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[94]),
        .O(\in_data_mux_reg[119]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel3[27]_i_1 
       (.I0(in_data_mux[65]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[95]),
        .O(\in_data_mux_reg[119]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel3[28]_i_1 
       (.I0(in_data_mux[66]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[96]),
        .O(\in_data_mux_reg[119]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel3[29]_i_1 
       (.I0(in_data_mux[67]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[97]),
        .O(\in_data_mux_reg[119]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel3[30]_i_1 
       (.I0(in_data_mux[68]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[98]),
        .O(\in_data_mux_reg[119]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \f_pixel3[31]_i_1 
       (.I0(in_data_mux[69]),
        .I1(\f_pixel3_reg[47] [0]),
        .I2(\f_pixel3_reg[47] [1]),
        .I3(in_data_mux[99]),
        .O(\in_data_mux_reg[119]_0 [9]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel3[38]_i_1 
       (.I0(in_data_mux[110]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(in_data_mux[30]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(Q[30]),
        .O(\in_data_mux_reg[119]_0 [10]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel3[39]_i_1 
       (.I0(in_data_mux[111]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(in_data_mux[31]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(Q[31]),
        .O(\in_data_mux_reg[119]_0 [11]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel3[40]_i_1 
       (.I0(in_data_mux[112]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(in_data_mux[32]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(Q[32]),
        .O(\in_data_mux_reg[119]_0 [12]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel3[41]_i_1 
       (.I0(in_data_mux[113]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(in_data_mux[33]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(Q[33]),
        .O(\in_data_mux_reg[119]_0 [13]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel3[42]_i_1 
       (.I0(in_data_mux[114]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(in_data_mux[34]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(Q[34]),
        .O(\in_data_mux_reg[119]_0 [14]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel3[43]_i_1 
       (.I0(in_data_mux[115]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(in_data_mux[35]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(Q[35]),
        .O(\in_data_mux_reg[119]_0 [15]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel3[44]_i_1 
       (.I0(in_data_mux[116]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(in_data_mux[36]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(Q[36]),
        .O(\in_data_mux_reg[119]_0 [16]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel3[45]_i_1 
       (.I0(in_data_mux[117]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(in_data_mux[37]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(Q[37]),
        .O(\in_data_mux_reg[119]_0 [17]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel3[46]_i_1 
       (.I0(in_data_mux[118]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(in_data_mux[38]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(Q[38]),
        .O(\in_data_mux_reg[119]_0 [18]));
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \f_pixel3[47]_i_1 
       (.I0(in_data_mux[119]),
        .I1(\f_pixel3_reg[47] [1]),
        .I2(in_data_mux[39]),
        .I3(\f_pixel3_reg[47] [0]),
        .I4(Q[39]),
        .O(\in_data_mux_reg[119]_0 [19]));
  LUT5 #(
    .INIT(32'h10101000)) 
    fivid_reset_full_frame_i_1
       (.I0(fivid_reset_full_frame_reg_0),
        .I1(fivid_reset_full_frame_reg_1),
        .I2(src_in),
        .I3(vblank_rising),
        .I4(fivid_reset_full_frame),
        .O(fivid_reset_full_frame_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fivid_reset_full_frame_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(fivid_reset_full_frame_i_1_n_0),
        .Q(fivid_reset_full_frame),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[0] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[100] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [100]),
        .Q(Q[40]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[101] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [101]),
        .Q(Q[41]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[102] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [102]),
        .Q(Q[42]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[103] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [103]),
        .Q(Q[43]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[104] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [104]),
        .Q(Q[44]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[105] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [105]),
        .Q(Q[45]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[106] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [106]),
        .Q(Q[46]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[107] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [107]),
        .Q(Q[47]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[108] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [108]),
        .Q(Q[48]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[109] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [109]),
        .Q(Q[49]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[10] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [10]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[110] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [110]),
        .Q(in_data_mux[110]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[111] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [111]),
        .Q(in_data_mux[111]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[112] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [112]),
        .Q(in_data_mux[112]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[113] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [113]),
        .Q(in_data_mux[113]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[114] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [114]),
        .Q(in_data_mux[114]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[115] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [115]),
        .Q(in_data_mux[115]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[116] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [116]),
        .Q(in_data_mux[116]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[117] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [117]),
        .Q(in_data_mux[117]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[118] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [118]),
        .Q(in_data_mux[118]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[119] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [119]),
        .Q(in_data_mux[119]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[11] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [11]),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[12] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [12]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[13] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [13]),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[14] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [14]),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[15] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [15]),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[16] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [16]),
        .Q(Q[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[17] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [17]),
        .Q(Q[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[18] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [18]),
        .Q(Q[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[19] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [19]),
        .Q(Q[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[1] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[20] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [20]),
        .Q(in_data_mux[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[21] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [21]),
        .Q(in_data_mux[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[22] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [22]),
        .Q(in_data_mux[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[23] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [23]),
        .Q(in_data_mux[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[24] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [24]),
        .Q(in_data_mux[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[25] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [25]),
        .Q(in_data_mux[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[26] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [26]),
        .Q(in_data_mux[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[27] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [27]),
        .Q(in_data_mux[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[28] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [28]),
        .Q(in_data_mux[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[29] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [29]),
        .Q(in_data_mux[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[2] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[30] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [30]),
        .Q(in_data_mux[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[31] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [31]),
        .Q(in_data_mux[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[32] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [32]),
        .Q(in_data_mux[32]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[33] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [33]),
        .Q(in_data_mux[33]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[34] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [34]),
        .Q(in_data_mux[34]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[35] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [35]),
        .Q(in_data_mux[35]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[36] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [36]),
        .Q(in_data_mux[36]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[37] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [37]),
        .Q(in_data_mux[37]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[38] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [38]),
        .Q(in_data_mux[38]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[39] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [39]),
        .Q(in_data_mux[39]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[3] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[40] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [40]),
        .Q(Q[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[41] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [41]),
        .Q(Q[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[42] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [42]),
        .Q(Q[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[43] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [43]),
        .Q(Q[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[44] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [44]),
        .Q(Q[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[45] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [45]),
        .Q(Q[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[46] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [46]),
        .Q(Q[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[47] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [47]),
        .Q(Q[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[48] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [48]),
        .Q(Q[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[49] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [49]),
        .Q(Q[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[4] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[50] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [50]),
        .Q(in_data_mux[50]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[51] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [51]),
        .Q(in_data_mux[51]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[52] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [52]),
        .Q(in_data_mux[52]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[53] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [53]),
        .Q(in_data_mux[53]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[54] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [54]),
        .Q(in_data_mux[54]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[55] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [55]),
        .Q(in_data_mux[55]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[56] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [56]),
        .Q(in_data_mux[56]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[57] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [57]),
        .Q(in_data_mux[57]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[58] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [58]),
        .Q(in_data_mux[58]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[59] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [59]),
        .Q(in_data_mux[59]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[5] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[60] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [60]),
        .Q(in_data_mux[60]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[61] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [61]),
        .Q(in_data_mux[61]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[62] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [62]),
        .Q(in_data_mux[62]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[63] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [63]),
        .Q(in_data_mux[63]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[64] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [64]),
        .Q(in_data_mux[64]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[65] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [65]),
        .Q(in_data_mux[65]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[66] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [66]),
        .Q(in_data_mux[66]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[67] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [67]),
        .Q(in_data_mux[67]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[68] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [68]),
        .Q(in_data_mux[68]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[69] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [69]),
        .Q(in_data_mux[69]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[6] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[70] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [70]),
        .Q(Q[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[71] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [71]),
        .Q(Q[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[72] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [72]),
        .Q(Q[32]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[73] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [73]),
        .Q(Q[33]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[74] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [74]),
        .Q(Q[34]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[75] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [75]),
        .Q(Q[35]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[76] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [76]),
        .Q(Q[36]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[77] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [77]),
        .Q(Q[37]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[78] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [78]),
        .Q(Q[38]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[79] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [79]),
        .Q(Q[39]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[7] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[80] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [80]),
        .Q(in_data_mux[80]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[81] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [81]),
        .Q(in_data_mux[81]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[82] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [82]),
        .Q(in_data_mux[82]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[83] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [83]),
        .Q(in_data_mux[83]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[84] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [84]),
        .Q(in_data_mux[84]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[85] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [85]),
        .Q(in_data_mux[85]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[86] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [86]),
        .Q(in_data_mux[86]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[87] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [87]),
        .Q(in_data_mux[87]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[88] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [88]),
        .Q(in_data_mux[88]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[89] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [89]),
        .Q(in_data_mux[89]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[8] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [8]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[90] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [90]),
        .Q(in_data_mux[90]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[91] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [91]),
        .Q(in_data_mux[91]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[92] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [92]),
        .Q(in_data_mux[92]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[93] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [93]),
        .Q(in_data_mux[93]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[94] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [94]),
        .Q(in_data_mux[94]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[95] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [95]),
        .Q(in_data_mux[95]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[96] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [96]),
        .Q(in_data_mux[96]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[97] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [97]),
        .Q(in_data_mux[97]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[98] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [98]),
        .Q(in_data_mux[98]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[99] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [99]),
        .Q(in_data_mux[99]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[9] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(\in_data_mux_reg[119]_1 [9]),
        .Q(Q[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_de_mux_reg[0] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(vtiming_in_active_video),
        .Q(in_de_mux),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_hsync_mux_reg[0] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(vtiming_in_hsync),
        .Q(in_hsync_mux),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \in_vsync_mux_reg[0] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(vtiming_in_vsync),
        .Q(in_vsync_mux),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    vblank_rising_i_1
       (.I0(vtiming_in_vblank),
        .I1(vtg_vblank_1),
        .O(vblank_rising0));
  FDRE #(
    .INIT(1'b0)) 
    vblank_rising_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(vblank_rising0),
        .Q(vblank_rising),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    vtg_vblank_1_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(vtiming_in_vblank),
        .Q(vtg_vblank_1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "v_axi4s_vid_out_v4_0_17_sync" *) 
module bd_38d0_vb1_0_v_axi4s_vid_out_v4_0_17_sync
   (fifo_eol_dly,
    fifo_sof_dly,
    vtg_sof_dly,
    src_in,
    \FSM_sequential_state_reg[2]_0 ,
    \FSM_sequential_state_reg[1]_0 ,
    E,
    vtg_ce,
    SR,
    i_sync_rst,
    vtiming_in_active_video,
    vid_io_out_clk,
    vtiming_in_vsync,
    dout,
    fifo_eol_re,
    \fifo_eol_cnt_reg[0]_0 ,
    vtiming_in_field_id,
    rd_data_count,
    \FSM_sequential_state_reg[2]_1 ,
    \FSM_sequential_state_reg[2]_2 ,
    vtg_vsync_bp_reg_0,
    vtg_vsync_bp_reg_1,
    fivid_reset_full_frame,
    \fifo_sof_cnt_reg[7]_0 );
  output fifo_eol_dly;
  output fifo_sof_dly;
  output vtg_sof_dly;
  output src_in;
  output [0:0]\FSM_sequential_state_reg[2]_0 ;
  output \FSM_sequential_state_reg[1]_0 ;
  output [0:0]E;
  output vtg_ce;
  output [0:0]SR;
  input i_sync_rst;
  input [0:0]vtiming_in_active_video;
  input vid_io_out_clk;
  input [0:0]vtiming_in_vsync;
  input [2:0]dout;
  input fifo_eol_re;
  input \fifo_eol_cnt_reg[0]_0 ;
  input [0:0]vtiming_in_field_id;
  input [1:0]rd_data_count;
  input \FSM_sequential_state_reg[2]_1 ;
  input \FSM_sequential_state_reg[2]_2 ;
  input [0:0]vtg_vsync_bp_reg_0;
  input vtg_vsync_bp_reg_1;
  input fivid_reset_full_frame;
  input [0:0]\fifo_sof_cnt_reg[7]_0 ;

  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_10_n_0 ;
  wire \FSM_sequential_state[0]_i_11_n_0 ;
  wire \FSM_sequential_state[0]_i_12_n_0 ;
  wire \FSM_sequential_state[0]_i_13_n_0 ;
  wire \FSM_sequential_state[0]_i_14_n_0 ;
  wire \FSM_sequential_state[0]_i_15_n_0 ;
  wire \FSM_sequential_state[0]_i_16_n_0 ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[0]_i_6_n_0 ;
  wire \FSM_sequential_state[0]_i_7_n_0 ;
  wire \FSM_sequential_state[0]_i_8_n_0 ;
  wire \FSM_sequential_state[0]_i_9_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_10_n_0 ;
  wire \FSM_sequential_state[3]_i_11_n_0 ;
  wire \FSM_sequential_state[3]_i_12_n_0 ;
  wire \FSM_sequential_state[3]_i_13_n_0 ;
  wire \FSM_sequential_state[3]_i_14_n_0 ;
  wire \FSM_sequential_state[3]_i_2_n_0 ;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_6_n_0 ;
  wire \FSM_sequential_state[3]_i_7_n_0 ;
  wire \FSM_sequential_state[3]_i_8_n_0 ;
  wire \FSM_sequential_state[3]_i_9_n_0 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire [0:0]\FSM_sequential_state_reg[2]_0 ;
  wire \FSM_sequential_state_reg[2]_1 ;
  wire \FSM_sequential_state_reg[2]_2 ;
  wire [0:0]SR;
  wire [2:0]dout;
  wire \fifo_eol_cnt[12]_i_1_n_0 ;
  wire [12:0]fifo_eol_cnt_reg;
  wire \fifo_eol_cnt_reg[0]_0 ;
  wire \fifo_eol_cnt_reg[10]_i_1_n_0 ;
  wire \fifo_eol_cnt_reg[10]_i_1_n_2 ;
  wire \fifo_eol_cnt_reg[10]_i_1_n_3 ;
  wire \fifo_eol_cnt_reg[11]_i_1_n_0 ;
  wire \fifo_eol_cnt_reg[11]_i_1_n_2 ;
  wire \fifo_eol_cnt_reg[11]_i_1_n_3 ;
  wire \fifo_eol_cnt_reg[11]_i_2_n_0 ;
  wire \fifo_eol_cnt_reg[11]_i_2_n_1 ;
  wire \fifo_eol_cnt_reg[12]_i_2_n_0 ;
  wire \fifo_eol_cnt_reg[12]_i_2_n_2 ;
  wire \fifo_eol_cnt_reg[12]_i_2_n_3 ;
  wire \fifo_eol_cnt_reg[1]_i_1_n_0 ;
  wire \fifo_eol_cnt_reg[1]_i_1_n_2 ;
  wire \fifo_eol_cnt_reg[1]_i_1_n_3 ;
  wire \fifo_eol_cnt_reg[2]_i_1_n_0 ;
  wire \fifo_eol_cnt_reg[2]_i_1_n_2 ;
  wire \fifo_eol_cnt_reg[2]_i_1_n_3 ;
  wire \fifo_eol_cnt_reg[3]_i_1_n_0 ;
  wire \fifo_eol_cnt_reg[3]_i_1_n_2 ;
  wire \fifo_eol_cnt_reg[3]_i_1_n_3 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_0 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_2 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_3 ;
  wire \fifo_eol_cnt_reg[5]_i_1_n_0 ;
  wire \fifo_eol_cnt_reg[5]_i_1_n_2 ;
  wire \fifo_eol_cnt_reg[5]_i_1_n_3 ;
  wire \fifo_eol_cnt_reg[6]_i_1_n_0 ;
  wire \fifo_eol_cnt_reg[6]_i_1_n_2 ;
  wire \fifo_eol_cnt_reg[6]_i_1_n_3 ;
  wire \fifo_eol_cnt_reg[7]_i_1_n_0 ;
  wire \fifo_eol_cnt_reg[7]_i_1_n_2 ;
  wire \fifo_eol_cnt_reg[7]_i_1_n_3 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_0 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_2 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_3 ;
  wire \fifo_eol_cnt_reg[9]_i_1_n_0 ;
  wire \fifo_eol_cnt_reg[9]_i_1_n_2 ;
  wire \fifo_eol_cnt_reg[9]_i_1_n_3 ;
  wire \fifo_eol_cnt_reg[9]_i_2_n_0 ;
  wire \fifo_eol_cnt_reg[9]_i_2_n_1 ;
  wire \fifo_eol_cnt_reg[9]_i_2_n_2 ;
  wire \fifo_eol_cnt_reg[9]_i_2_n_3 ;
  wire fifo_eol_dly;
  wire fifo_eol_re;
  wire fifo_eol_re_dly;
  wire \fifo_sof_cnt[7]_i_3_n_0 ;
  wire [7:0]fifo_sof_cnt_reg;
  wire [0:0]\fifo_sof_cnt_reg[7]_0 ;
  wire fifo_sof_dly;
  wire fivid_reset_full_frame;
  wire i_sync_rst;
  wire locked_i_2_n_0;
  wire [12:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire [7:0]p_0_in__1;
  wire p_3_in;
  wire [1:0]rd_data_count;
  wire sof_ignore;
  wire sof_ignore0;
  wire sof_ignore_i_1_n_0;
  wire sof_ignore_i_2_n_0;
  wire sof_ignore_i_3_n_0;
  wire sof_ignore_i_4_n_0;
  wire src_in;
  wire [3:0]state;
  wire vid_io_out_clk;
  wire vtg_ce;
  wire vtg_ce_INST_0_i_1_n_0;
  wire vtg_de_dly;
  wire vtg_lag;
  wire \vtg_lag[0]_i_4_n_0 ;
  wire \vtg_lag[0]_i_5_n_0 ;
  wire [31:0]vtg_lag_reg;
  wire \vtg_lag_reg[0]_i_3_n_0 ;
  wire \vtg_lag_reg[0]_i_3_n_1 ;
  wire \vtg_lag_reg[0]_i_3_n_2 ;
  wire \vtg_lag_reg[0]_i_3_n_3 ;
  wire \vtg_lag_reg[10]_i_1_n_0 ;
  wire \vtg_lag_reg[10]_i_1_n_1 ;
  wire \vtg_lag_reg[10]_i_1_n_2 ;
  wire \vtg_lag_reg[10]_i_1_n_3 ;
  wire \vtg_lag_reg[10]_i_2_n_0 ;
  wire \vtg_lag_reg[10]_i_2_n_1 ;
  wire \vtg_lag_reg[10]_i_2_n_2 ;
  wire \vtg_lag_reg[10]_i_2_n_3 ;
  wire \vtg_lag_reg[11]_i_1_n_0 ;
  wire \vtg_lag_reg[11]_i_1_n_1 ;
  wire \vtg_lag_reg[11]_i_1_n_2 ;
  wire \vtg_lag_reg[11]_i_1_n_3 ;
  wire \vtg_lag_reg[12]_i_1_n_0 ;
  wire \vtg_lag_reg[12]_i_1_n_1 ;
  wire \vtg_lag_reg[12]_i_1_n_2 ;
  wire \vtg_lag_reg[12]_i_1_n_3 ;
  wire \vtg_lag_reg[13]_i_1_n_0 ;
  wire \vtg_lag_reg[13]_i_1_n_1 ;
  wire \vtg_lag_reg[13]_i_1_n_2 ;
  wire \vtg_lag_reg[13]_i_1_n_3 ;
  wire \vtg_lag_reg[14]_i_1_n_0 ;
  wire \vtg_lag_reg[14]_i_1_n_1 ;
  wire \vtg_lag_reg[14]_i_1_n_2 ;
  wire \vtg_lag_reg[14]_i_1_n_3 ;
  wire \vtg_lag_reg[15]_i_1_n_0 ;
  wire \vtg_lag_reg[15]_i_1_n_1 ;
  wire \vtg_lag_reg[15]_i_1_n_2 ;
  wire \vtg_lag_reg[15]_i_1_n_3 ;
  wire \vtg_lag_reg[16]_i_1_n_0 ;
  wire \vtg_lag_reg[16]_i_1_n_1 ;
  wire \vtg_lag_reg[16]_i_1_n_2 ;
  wire \vtg_lag_reg[16]_i_1_n_3 ;
  wire \vtg_lag_reg[17]_i_1_n_0 ;
  wire \vtg_lag_reg[17]_i_1_n_1 ;
  wire \vtg_lag_reg[17]_i_1_n_2 ;
  wire \vtg_lag_reg[17]_i_1_n_3 ;
  wire \vtg_lag_reg[18]_i_1_n_0 ;
  wire \vtg_lag_reg[18]_i_1_n_1 ;
  wire \vtg_lag_reg[18]_i_1_n_2 ;
  wire \vtg_lag_reg[18]_i_1_n_3 ;
  wire \vtg_lag_reg[18]_i_2_n_0 ;
  wire \vtg_lag_reg[18]_i_2_n_1 ;
  wire \vtg_lag_reg[18]_i_2_n_2 ;
  wire \vtg_lag_reg[18]_i_2_n_3 ;
  wire \vtg_lag_reg[19]_i_1_n_0 ;
  wire \vtg_lag_reg[19]_i_1_n_1 ;
  wire \vtg_lag_reg[19]_i_1_n_2 ;
  wire \vtg_lag_reg[19]_i_1_n_3 ;
  wire \vtg_lag_reg[1]_i_1_n_0 ;
  wire \vtg_lag_reg[1]_i_1_n_1 ;
  wire \vtg_lag_reg[1]_i_1_n_2 ;
  wire \vtg_lag_reg[1]_i_1_n_3 ;
  wire \vtg_lag_reg[20]_i_1_n_0 ;
  wire \vtg_lag_reg[20]_i_1_n_1 ;
  wire \vtg_lag_reg[20]_i_1_n_2 ;
  wire \vtg_lag_reg[20]_i_1_n_3 ;
  wire \vtg_lag_reg[21]_i_1_n_0 ;
  wire \vtg_lag_reg[21]_i_1_n_1 ;
  wire \vtg_lag_reg[21]_i_1_n_2 ;
  wire \vtg_lag_reg[21]_i_1_n_3 ;
  wire \vtg_lag_reg[22]_i_1_n_0 ;
  wire \vtg_lag_reg[22]_i_1_n_1 ;
  wire \vtg_lag_reg[22]_i_1_n_2 ;
  wire \vtg_lag_reg[22]_i_1_n_3 ;
  wire \vtg_lag_reg[23]_i_1_n_0 ;
  wire \vtg_lag_reg[23]_i_1_n_1 ;
  wire \vtg_lag_reg[23]_i_1_n_2 ;
  wire \vtg_lag_reg[23]_i_1_n_3 ;
  wire \vtg_lag_reg[24]_i_1_n_0 ;
  wire \vtg_lag_reg[24]_i_1_n_1 ;
  wire \vtg_lag_reg[24]_i_1_n_2 ;
  wire \vtg_lag_reg[24]_i_1_n_3 ;
  wire \vtg_lag_reg[25]_i_1_n_0 ;
  wire \vtg_lag_reg[25]_i_1_n_1 ;
  wire \vtg_lag_reg[25]_i_1_n_2 ;
  wire \vtg_lag_reg[25]_i_1_n_3 ;
  wire \vtg_lag_reg[26]_i_1_n_0 ;
  wire \vtg_lag_reg[26]_i_1_n_1 ;
  wire \vtg_lag_reg[26]_i_1_n_2 ;
  wire \vtg_lag_reg[26]_i_1_n_3 ;
  wire \vtg_lag_reg[26]_i_2_n_0 ;
  wire \vtg_lag_reg[26]_i_2_n_1 ;
  wire \vtg_lag_reg[26]_i_2_n_2 ;
  wire \vtg_lag_reg[26]_i_2_n_3 ;
  wire \vtg_lag_reg[27]_i_1_n_0 ;
  wire \vtg_lag_reg[27]_i_1_n_1 ;
  wire \vtg_lag_reg[27]_i_1_n_2 ;
  wire \vtg_lag_reg[27]_i_1_n_3 ;
  wire \vtg_lag_reg[28]_i_1_n_0 ;
  wire \vtg_lag_reg[28]_i_1_n_1 ;
  wire \vtg_lag_reg[28]_i_1_n_2 ;
  wire \vtg_lag_reg[28]_i_1_n_3 ;
  wire \vtg_lag_reg[29]_i_1_n_0 ;
  wire \vtg_lag_reg[29]_i_1_n_1 ;
  wire \vtg_lag_reg[29]_i_1_n_2 ;
  wire \vtg_lag_reg[29]_i_1_n_3 ;
  wire \vtg_lag_reg[2]_i_1_n_0 ;
  wire \vtg_lag_reg[2]_i_1_n_1 ;
  wire \vtg_lag_reg[2]_i_1_n_2 ;
  wire \vtg_lag_reg[2]_i_1_n_3 ;
  wire \vtg_lag_reg[2]_i_2_n_0 ;
  wire \vtg_lag_reg[2]_i_2_n_1 ;
  wire \vtg_lag_reg[2]_i_2_n_2 ;
  wire \vtg_lag_reg[2]_i_2_n_3 ;
  wire \vtg_lag_reg[30]_i_1_n_0 ;
  wire \vtg_lag_reg[30]_i_1_n_1 ;
  wire \vtg_lag_reg[30]_i_1_n_2 ;
  wire \vtg_lag_reg[30]_i_1_n_3 ;
  wire \vtg_lag_reg[31]_i_1_n_0 ;
  wire \vtg_lag_reg[31]_i_1_n_1 ;
  wire \vtg_lag_reg[31]_i_1_n_2 ;
  wire \vtg_lag_reg[31]_i_1_n_3 ;
  wire \vtg_lag_reg[3]_i_1_n_0 ;
  wire \vtg_lag_reg[3]_i_1_n_1 ;
  wire \vtg_lag_reg[3]_i_1_n_2 ;
  wire \vtg_lag_reg[3]_i_1_n_3 ;
  wire \vtg_lag_reg[4]_i_1_n_0 ;
  wire \vtg_lag_reg[4]_i_1_n_1 ;
  wire \vtg_lag_reg[4]_i_1_n_2 ;
  wire \vtg_lag_reg[4]_i_1_n_3 ;
  wire \vtg_lag_reg[5]_i_1_n_0 ;
  wire \vtg_lag_reg[5]_i_1_n_1 ;
  wire \vtg_lag_reg[5]_i_1_n_2 ;
  wire \vtg_lag_reg[5]_i_1_n_3 ;
  wire \vtg_lag_reg[6]_i_1_n_0 ;
  wire \vtg_lag_reg[6]_i_1_n_1 ;
  wire \vtg_lag_reg[6]_i_1_n_2 ;
  wire \vtg_lag_reg[6]_i_1_n_3 ;
  wire \vtg_lag_reg[7]_i_1_n_0 ;
  wire \vtg_lag_reg[7]_i_1_n_1 ;
  wire \vtg_lag_reg[7]_i_1_n_2 ;
  wire \vtg_lag_reg[7]_i_1_n_3 ;
  wire \vtg_lag_reg[8]_i_1_n_0 ;
  wire \vtg_lag_reg[8]_i_1_n_1 ;
  wire \vtg_lag_reg[8]_i_1_n_2 ;
  wire \vtg_lag_reg[8]_i_1_n_3 ;
  wire \vtg_lag_reg[9]_i_1_n_0 ;
  wire \vtg_lag_reg[9]_i_1_n_1 ;
  wire \vtg_lag_reg[9]_i_1_n_2 ;
  wire \vtg_lag_reg[9]_i_1_n_3 ;
  wire vtg_sof;
  wire vtg_sof_cnt0;
  wire \vtg_sof_cnt[7]_i_3_n_0 ;
  wire [7:0]vtg_sof_cnt_reg;
  wire vtg_sof_dly;
  wire vtg_vsync_bp_i_1_n_0;
  wire [0:0]vtg_vsync_bp_reg_0;
  wire vtg_vsync_bp_reg_1;
  wire vtg_vsync_bp_reg_n_0;
  wire vtg_vsync_dly;
  wire [0:0]vtiming_in_active_video;
  wire [0:0]vtiming_in_field_id;
  wire [0:0]vtiming_in_vsync;
  wire \NLW_fifo_eol_cnt_reg[11]_i_2_COUTF_UNCONNECTED ;
  wire \NLW_fifo_eol_cnt_reg[11]_i_2_COUTH_UNCONNECTED ;
  wire \NLW_fifo_eol_cnt_reg[11]_i_2_CYE_UNCONNECTED ;
  wire \NLW_fifo_eol_cnt_reg[11]_i_2_CYF_UNCONNECTED ;
  wire \NLW_fifo_eol_cnt_reg[11]_i_2_CYG_UNCONNECTED ;
  wire \NLW_fifo_eol_cnt_reg[11]_i_2_CYH_UNCONNECTED ;
  wire \NLW_fifo_eol_cnt_reg[11]_i_2_GEE_UNCONNECTED ;
  wire \NLW_fifo_eol_cnt_reg[11]_i_2_GEF_UNCONNECTED ;
  wire \NLW_fifo_eol_cnt_reg[11]_i_2_GEG_UNCONNECTED ;
  wire \NLW_fifo_eol_cnt_reg[11]_i_2_GEH_UNCONNECTED ;
  wire \NLW_fifo_eol_cnt_reg[11]_i_2_PROPE_UNCONNECTED ;
  wire \NLW_fifo_eol_cnt_reg[11]_i_2_PROPF_UNCONNECTED ;
  wire \NLW_fifo_eol_cnt_reg[11]_i_2_PROPG_UNCONNECTED ;
  wire \NLW_fifo_eol_cnt_reg[11]_i_2_PROPH_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state[0]_i_3_n_0 ),
        .I2(\FSM_sequential_state[0]_i_4_n_0 ),
        .I3(\FSM_sequential_state[0]_i_5_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_0 ),
        .I5(\FSM_sequential_state_reg[2]_0 ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT4 #(
    .INIT(16'h4FFF)) 
    \FSM_sequential_state[0]_i_10 
       (.I0(vtg_sof_dly),
        .I1(\FSM_sequential_state[3]_i_6_n_0 ),
        .I2(state[1]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_state[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT4 #(
    .INIT(16'h404F)) 
    \FSM_sequential_state[0]_i_11 
       (.I0(\FSM_sequential_state[3]_i_13_n_0 ),
        .I1(vtg_sof_dly),
        .I2(\fifo_eol_cnt_reg[0]_0 ),
        .I3(locked_i_2_n_0),
        .O(\FSM_sequential_state[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state[0]_i_12 
       (.I0(vtg_lag_reg[6]),
        .I1(vtg_lag_reg[5]),
        .I2(vtg_lag_reg[8]),
        .I3(vtg_lag_reg[7]),
        .O(\FSM_sequential_state[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state[0]_i_13 
       (.I0(vtg_lag_reg[2]),
        .I1(vtg_lag_reg[1]),
        .I2(vtg_lag_reg[4]),
        .I3(vtg_lag_reg[3]),
        .O(\FSM_sequential_state[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[0]_i_14 
       (.I0(vtg_lag_reg[19]),
        .I1(vtg_lag_reg[18]),
        .I2(vtg_lag_reg[21]),
        .I3(vtg_lag_reg[20]),
        .O(\FSM_sequential_state[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[0]_i_15 
       (.I0(vtg_lag_reg[27]),
        .I1(vtg_lag_reg[26]),
        .I2(vtg_lag_reg[29]),
        .I3(vtg_lag_reg[28]),
        .O(\FSM_sequential_state[0]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_state[0]_i_16 
       (.I0(vtg_lag_reg[11]),
        .I1(vtg_lag_reg[30]),
        .I2(vtg_lag_reg[31]),
        .I3(vtg_lag_reg[13]),
        .I4(vtg_lag_reg[12]),
        .O(\FSM_sequential_state[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF220001012200)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(\FSM_sequential_state[3]_i_8_n_0 ),
        .I4(state[1]),
        .I5(\FSM_sequential_state[0]_i_6_n_0 ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(\FSM_sequential_state[0]_i_7_n_0 ),
        .I1(\FSM_sequential_state[0]_i_8_n_0 ),
        .I2(\FSM_sequential_state[0]_i_9_n_0 ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h05050011F5050011)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(state[1]),
        .I1(\FSM_sequential_state_reg[2]_0 ),
        .I2(vtiming_in_active_video),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\fifo_eol_cnt_reg[0]_0 ),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF08080808080808)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(\FSM_sequential_state[0]_i_10_n_0 ),
        .I1(\fifo_eol_cnt_reg[0]_0 ),
        .I2(locked_i_2_n_0),
        .I3(\FSM_sequential_state[0]_i_11_n_0 ),
        .I4(\FSM_sequential_state[3]_i_6_n_0 ),
        .I5(state[1]),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \FSM_sequential_state[0]_i_6 
       (.I0(\FSM_sequential_state[3]_i_5_n_0 ),
        .I1(\FSM_sequential_state[3]_i_6_n_0 ),
        .I2(\vtg_lag[0]_i_5_n_0 ),
        .I3(vtg_sof_dly),
        .I4(\fifo_eol_cnt_reg[0]_0 ),
        .O(\FSM_sequential_state[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    \FSM_sequential_state[0]_i_7 
       (.I0(vtg_lag_reg[10]),
        .I1(vtg_lag_reg[9]),
        .I2(vtg_lag_reg[0]),
        .I3(\FSM_sequential_state[0]_i_12_n_0 ),
        .I4(\FSM_sequential_state[0]_i_13_n_0 ),
        .O(\FSM_sequential_state[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_state[0]_i_8 
       (.I0(vtg_lag_reg[16]),
        .I1(vtg_lag_reg[17]),
        .I2(vtg_lag_reg[14]),
        .I3(vtg_lag_reg[15]),
        .I4(\FSM_sequential_state[0]_i_14_n_0 ),
        .O(\FSM_sequential_state[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state[0]_i_9 
       (.I0(\FSM_sequential_state[0]_i_15_n_0 ),
        .I1(vtg_lag_reg[23]),
        .I2(vtg_lag_reg[22]),
        .I3(vtg_lag_reg[25]),
        .I4(vtg_lag_reg[24]),
        .I5(\FSM_sequential_state[0]_i_16_n_0 ),
        .O(\FSM_sequential_state[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAEEEA)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg[2]_0 ),
        .I2(rd_data_count[0]),
        .I3(rd_data_count[1]),
        .I4(\FSM_sequential_state_reg[1]_0 ),
        .I5(\FSM_sequential_state[1]_i_4_n_0 ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002AA0202)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\vtg_lag[0]_i_4_n_0 ),
        .I1(\fifo_eol_cnt_reg[0]_0 ),
        .I2(locked_i_2_n_0),
        .I3(\vtg_lag[0]_i_5_n_0 ),
        .I4(fifo_eol_re_dly),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\vtg_lag[0]_i_5_n_0 ),
        .I1(state[1]),
        .O(\FSM_sequential_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAAAABEAAFFAAFFAA)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\FSM_sequential_state[1]_i_5_n_0 ),
        .I1(state[0]),
        .I2(state[3]),
        .I3(vtg_ce_INST_0_i_1_n_0),
        .I4(\FSM_sequential_state[3]_i_6_n_0 ),
        .I5(\FSM_sequential_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDFD5000000000000)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(\FSM_sequential_state_reg[2]_1 ),
        .I1(\FSM_sequential_state[3]_i_13_n_0 ),
        .I2(\fifo_eol_cnt_reg[0]_0 ),
        .I3(locked_i_2_n_0),
        .I4(\FSM_sequential_state[3]_i_6_n_0 ),
        .I5(vtg_ce_INST_0_i_1_n_0),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFDFCFFFCFFFC)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(\FSM_sequential_state[2]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg[2]_2 ),
        .I3(p_3_in),
        .I4(\FSM_sequential_state_reg[2]_1 ),
        .I5(\FSM_sequential_state[3]_i_6_n_0 ),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state[3]_i_10_n_0 ),
        .I1(fifo_eol_re_dly),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\vtg_lag[0]_i_4_n_0 ),
        .I1(state[3]),
        .I2(state[0]),
        .I3(dout[1]),
        .I4(dout[2]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[3]_i_10 
       (.I0(vtiming_in_active_video),
        .I1(vtg_de_dly),
        .O(\FSM_sequential_state[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \FSM_sequential_state[3]_i_11 
       (.I0(fifo_sof_cnt_reg[7]),
        .I1(fifo_sof_cnt_reg[0]),
        .I2(fifo_sof_cnt_reg[1]),
        .I3(fifo_sof_cnt_reg[2]),
        .O(\FSM_sequential_state[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_state[3]_i_12 
       (.I0(vtg_sof_cnt_reg[5]),
        .I1(vtg_sof_cnt_reg[6]),
        .I2(vtg_sof_cnt_reg[3]),
        .I3(vtg_sof_cnt_reg[4]),
        .I4(\FSM_sequential_state[3]_i_14_n_0 ),
        .O(\FSM_sequential_state[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[3]_i_13 
       (.I0(\vtg_lag[0]_i_5_n_0 ),
        .I1(sof_ignore),
        .O(\FSM_sequential_state[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \FSM_sequential_state[3]_i_14 
       (.I0(vtg_sof_cnt_reg[7]),
        .I1(vtg_sof_cnt_reg[0]),
        .I2(vtg_sof_cnt_reg[1]),
        .I3(vtg_sof_cnt_reg[2]),
        .O(\FSM_sequential_state[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAFFFFEAAAEAAA)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(\FSM_sequential_state[3]_i_3_n_0 ),
        .I1(\FSM_sequential_state[3]_i_4_n_0 ),
        .I2(\FSM_sequential_state[3]_i_5_n_0 ),
        .I3(vtg_ce_INST_0_i_1_n_0),
        .I4(\FSM_sequential_state[3]_i_6_n_0 ),
        .I5(p_3_in),
        .O(\FSM_sequential_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAAAAAAEAEAAAA)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(\FSM_sequential_state[3]_i_7_n_0 ),
        .I1(state[0]),
        .I2(\FSM_sequential_state[3]_i_8_n_0 ),
        .I3(\FSM_sequential_state[3]_i_9_n_0 ),
        .I4(\vtg_lag[0]_i_4_n_0 ),
        .I5(state[3]),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT5 #(
    .INIT(32'h00040400)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(\fifo_eol_cnt_reg[0]_0 ),
        .I1(vtg_sof_dly),
        .I2(\vtg_lag[0]_i_5_n_0 ),
        .I3(fifo_eol_re_dly),
        .I4(\FSM_sequential_state[3]_i_10_n_0 ),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(\FSM_sequential_state[3]_i_11_n_0 ),
        .I1(fifo_sof_cnt_reg[4]),
        .I2(fifo_sof_cnt_reg[3]),
        .I3(fifo_sof_cnt_reg[6]),
        .I4(fifo_sof_cnt_reg[5]),
        .I5(\FSM_sequential_state[3]_i_12_n_0 ),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(\FSM_sequential_state[3]_i_10_n_0 ),
        .I1(fifo_eol_re_dly),
        .O(\FSM_sequential_state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00002A2A3C002A2A)) 
    \FSM_sequential_state[3]_i_7 
       (.I0(p_3_in),
        .I1(fifo_eol_re_dly),
        .I2(\FSM_sequential_state[3]_i_10_n_0 ),
        .I3(vtg_ce_INST_0_i_1_n_0),
        .I4(\FSM_sequential_state_reg[2]_1 ),
        .I5(\FSM_sequential_state[3]_i_13_n_0 ),
        .O(\FSM_sequential_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_sequential_state[3]_i_8 
       (.I0(vtg_vsync_bp_reg_n_0),
        .I1(vtg_de_dly),
        .I2(vtiming_in_active_video),
        .I3(vtiming_in_field_id),
        .O(\FSM_sequential_state[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT5 #(
    .INIT(32'h5F501F1F)) 
    \FSM_sequential_state[3]_i_9 
       (.I0(\FSM_sequential_state[0]_i_3_n_0 ),
        .I1(fifo_sof_dly),
        .I2(state[0]),
        .I3(dout[2]),
        .I4(dout[1]),
        .O(\FSM_sequential_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "C_SYNC_FALN_EOL_LAGGING:0011,C_SYNC_FALN_EOL_LEADING:0000,C_SYNC_CALN_SOF_FIFO:0100,C_SYNC_LALN_SOF_LEADING:0110,C_SYNC_LALN_SOF_LAGGING:0101,C_SYNC_LALN_EOL_LAGGING:0111,C_SYNC_CALN_SOF_VTG:1000,C_SYNC_IDLE:0001,C_SYNC_LALN_EOL_LEADING:1100,C_SYNC_FALN_ACTIVE:0010,C_SYNC_FALN_LOCK:1011,C_SYNC_FALN_SOF_LAGGING:1010,C_SYNC_FALN_SOF_LEADING:1001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_sequential_state_reg[0] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .S(i_sync_rst));
  (* FSM_ENCODED_STATES = "C_SYNC_FALN_EOL_LAGGING:0011,C_SYNC_FALN_EOL_LEADING:0000,C_SYNC_CALN_SOF_FIFO:0100,C_SYNC_LALN_SOF_LEADING:0110,C_SYNC_LALN_SOF_LAGGING:0101,C_SYNC_LALN_EOL_LAGGING:0111,C_SYNC_CALN_SOF_VTG:1000,C_SYNC_IDLE:0001,C_SYNC_LALN_EOL_LEADING:1100,C_SYNC_FALN_ACTIVE:0010,C_SYNC_FALN_LOCK:1011,C_SYNC_FALN_SOF_LAGGING:1010,C_SYNC_FALN_SOF_LEADING:1001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(i_sync_rst));
  (* FSM_ENCODED_STATES = "C_SYNC_FALN_EOL_LAGGING:0011,C_SYNC_FALN_EOL_LEADING:0000,C_SYNC_CALN_SOF_FIFO:0100,C_SYNC_LALN_SOF_LEADING:0110,C_SYNC_LALN_SOF_LAGGING:0101,C_SYNC_LALN_EOL_LAGGING:0111,C_SYNC_CALN_SOF_VTG:1000,C_SYNC_IDLE:0001,C_SYNC_LALN_EOL_LEADING:1100,C_SYNC_FALN_ACTIVE:0010,C_SYNC_FALN_LOCK:1011,C_SYNC_FALN_SOF_LAGGING:1010,C_SYNC_FALN_SOF_LEADING:1001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg[2]_0 ),
        .R(i_sync_rst));
  (* FSM_ENCODED_STATES = "C_SYNC_FALN_EOL_LAGGING:0011,C_SYNC_FALN_EOL_LEADING:0000,C_SYNC_CALN_SOF_FIFO:0100,C_SYNC_LALN_SOF_LEADING:0110,C_SYNC_LALN_SOF_LAGGING:0101,C_SYNC_LALN_EOL_LAGGING:0111,C_SYNC_CALN_SOF_VTG:1000,C_SYNC_IDLE:0001,C_SYNC_LALN_EOL_LEADING:1100,C_SYNC_FALN_ACTIVE:0010,C_SYNC_FALN_LOCK:1011,C_SYNC_FALN_SOF_LAGGING:1010,C_SYNC_FALN_SOF_LEADING:1001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[3] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[3]_i_2_n_0 ),
        .Q(state[3]),
        .R(i_sync_rst));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT5 #(
    .INIT(32'hCCCDCDC5)) 
    XPM_FIFO_ASYNC_INST_i_3
       (.I0(\FSM_sequential_state_reg[2]_0 ),
        .I1(vtiming_in_active_video),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[3]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_eol_cnt[0]_i_1 
       (.I0(fifo_eol_cnt_reg[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFD55555D5)) 
    \fifo_eol_cnt[12]_i_1 
       (.I0(\fifo_eol_cnt_reg[0]_0 ),
        .I1(\vtg_lag[0]_i_4_n_0 ),
        .I2(state[3]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(sof_ignore0),
        .O(\fifo_eol_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[0] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_re_dly),
        .D(p_0_in[0]),
        .Q(fifo_eol_cnt_reg[0]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[10] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_re_dly),
        .D(p_0_in[10]),
        .Q(fifo_eol_cnt_reg[10]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \fifo_eol_cnt_reg[10]_i_1 
       (.GE(\fifo_eol_cnt_reg[10]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(fifo_eol_cnt_reg[10]),
        .I4(\fifo_eol_cnt_reg[9]_i_1_n_2 ),
        .O51(p_0_in[10]),
        .O52(\fifo_eol_cnt_reg[10]_i_1_n_2 ),
        .PROP(\fifo_eol_cnt_reg[10]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[11] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_re_dly),
        .D(p_0_in[11]),
        .Q(fifo_eol_cnt_reg[11]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \fifo_eol_cnt_reg[11]_i_1 
       (.GE(\fifo_eol_cnt_reg[11]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(fifo_eol_cnt_reg[11]),
        .I4(\fifo_eol_cnt_reg[11]_i_2_n_0 ),
        .O51(p_0_in[11]),
        .O52(\fifo_eol_cnt_reg[11]_i_1_n_2 ),
        .PROP(\fifo_eol_cnt_reg[11]_i_1_n_3 ));
  (* KEEP = "yes" *) 
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("FALSE"),
    .LOOKH("FALSE")) 
    \fifo_eol_cnt_reg[11]_i_2 
       (.CIN(\fifo_eol_cnt_reg[9]_i_2_n_3 ),
        .COUTB(\fifo_eol_cnt_reg[11]_i_2_n_0 ),
        .COUTD(\fifo_eol_cnt_reg[11]_i_2_n_1 ),
        .COUTF(\NLW_fifo_eol_cnt_reg[11]_i_2_COUTF_UNCONNECTED ),
        .COUTH(\NLW_fifo_eol_cnt_reg[11]_i_2_COUTH_UNCONNECTED ),
        .CYA(\fifo_eol_cnt_reg[9]_i_1_n_2 ),
        .CYB(\fifo_eol_cnt_reg[10]_i_1_n_2 ),
        .CYC(\fifo_eol_cnt_reg[11]_i_1_n_2 ),
        .CYD(\fifo_eol_cnt_reg[12]_i_2_n_2 ),
        .CYE(\NLW_fifo_eol_cnt_reg[11]_i_2_CYE_UNCONNECTED ),
        .CYF(\NLW_fifo_eol_cnt_reg[11]_i_2_CYF_UNCONNECTED ),
        .CYG(\NLW_fifo_eol_cnt_reg[11]_i_2_CYG_UNCONNECTED ),
        .CYH(\NLW_fifo_eol_cnt_reg[11]_i_2_CYH_UNCONNECTED ),
        .GEA(\fifo_eol_cnt_reg[9]_i_1_n_0 ),
        .GEB(\fifo_eol_cnt_reg[10]_i_1_n_0 ),
        .GEC(\fifo_eol_cnt_reg[11]_i_1_n_0 ),
        .GED(\fifo_eol_cnt_reg[12]_i_2_n_0 ),
        .GEE(\NLW_fifo_eol_cnt_reg[11]_i_2_GEE_UNCONNECTED ),
        .GEF(\NLW_fifo_eol_cnt_reg[11]_i_2_GEF_UNCONNECTED ),
        .GEG(\NLW_fifo_eol_cnt_reg[11]_i_2_GEG_UNCONNECTED ),
        .GEH(\NLW_fifo_eol_cnt_reg[11]_i_2_GEH_UNCONNECTED ),
        .PROPA(\fifo_eol_cnt_reg[9]_i_1_n_3 ),
        .PROPB(\fifo_eol_cnt_reg[10]_i_1_n_3 ),
        .PROPC(\fifo_eol_cnt_reg[11]_i_1_n_3 ),
        .PROPD(\fifo_eol_cnt_reg[12]_i_2_n_3 ),
        .PROPE(\NLW_fifo_eol_cnt_reg[11]_i_2_PROPE_UNCONNECTED ),
        .PROPF(\NLW_fifo_eol_cnt_reg[11]_i_2_PROPF_UNCONNECTED ),
        .PROPG(\NLW_fifo_eol_cnt_reg[11]_i_2_PROPG_UNCONNECTED ),
        .PROPH(\NLW_fifo_eol_cnt_reg[11]_i_2_PROPH_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[12] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_re_dly),
        .D(p_0_in[12]),
        .Q(fifo_eol_cnt_reg[12]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00FF0000FFFF00)) 
    \fifo_eol_cnt_reg[12]_i_2 
       (.GE(\fifo_eol_cnt_reg[12]_i_2_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(fifo_eol_cnt_reg[12]),
        .I4(\fifo_eol_cnt_reg[11]_i_1_n_2 ),
        .O51(p_0_in[12]),
        .O52(\fifo_eol_cnt_reg[12]_i_2_n_2 ),
        .PROP(\fifo_eol_cnt_reg[12]_i_2_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[1] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_re_dly),
        .D(p_0_in[1]),
        .Q(fifo_eol_cnt_reg[1]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \fifo_eol_cnt_reg[1]_i_1 
       (.GE(\fifo_eol_cnt_reg[1]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(fifo_eol_cnt_reg[1]),
        .I4(fifo_eol_cnt_reg[0]),
        .O51(p_0_in[1]),
        .O52(\fifo_eol_cnt_reg[1]_i_1_n_2 ),
        .PROP(\fifo_eol_cnt_reg[1]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[2] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_re_dly),
        .D(p_0_in[2]),
        .Q(fifo_eol_cnt_reg[2]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \fifo_eol_cnt_reg[2]_i_1 
       (.GE(\fifo_eol_cnt_reg[2]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(fifo_eol_cnt_reg[2]),
        .I4(\fifo_eol_cnt_reg[1]_i_1_n_2 ),
        .O51(p_0_in[2]),
        .O52(\fifo_eol_cnt_reg[2]_i_1_n_2 ),
        .PROP(\fifo_eol_cnt_reg[2]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[3] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_re_dly),
        .D(p_0_in[3]),
        .Q(fifo_eol_cnt_reg[3]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \fifo_eol_cnt_reg[3]_i_1 
       (.GE(\fifo_eol_cnt_reg[3]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(fifo_eol_cnt_reg[3]),
        .I4(\fifo_eol_cnt_reg[9]_i_2_n_0 ),
        .O51(p_0_in[3]),
        .O52(\fifo_eol_cnt_reg[3]_i_1_n_2 ),
        .PROP(\fifo_eol_cnt_reg[3]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[4] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_re_dly),
        .D(p_0_in[4]),
        .Q(fifo_eol_cnt_reg[4]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \fifo_eol_cnt_reg[4]_i_1 
       (.GE(\fifo_eol_cnt_reg[4]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(fifo_eol_cnt_reg[4]),
        .I4(\fifo_eol_cnt_reg[3]_i_1_n_2 ),
        .O51(p_0_in[4]),
        .O52(\fifo_eol_cnt_reg[4]_i_1_n_2 ),
        .PROP(\fifo_eol_cnt_reg[4]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[5] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_re_dly),
        .D(p_0_in[5]),
        .Q(fifo_eol_cnt_reg[5]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \fifo_eol_cnt_reg[5]_i_1 
       (.GE(\fifo_eol_cnt_reg[5]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(fifo_eol_cnt_reg[5]),
        .I4(\fifo_eol_cnt_reg[9]_i_2_n_1 ),
        .O51(p_0_in[5]),
        .O52(\fifo_eol_cnt_reg[5]_i_1_n_2 ),
        .PROP(\fifo_eol_cnt_reg[5]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[6] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_re_dly),
        .D(p_0_in[6]),
        .Q(fifo_eol_cnt_reg[6]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \fifo_eol_cnt_reg[6]_i_1 
       (.GE(\fifo_eol_cnt_reg[6]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(fifo_eol_cnt_reg[6]),
        .I4(\fifo_eol_cnt_reg[5]_i_1_n_2 ),
        .O51(p_0_in[6]),
        .O52(\fifo_eol_cnt_reg[6]_i_1_n_2 ),
        .PROP(\fifo_eol_cnt_reg[6]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[7] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_re_dly),
        .D(p_0_in[7]),
        .Q(fifo_eol_cnt_reg[7]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \fifo_eol_cnt_reg[7]_i_1 
       (.GE(\fifo_eol_cnt_reg[7]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(fifo_eol_cnt_reg[7]),
        .I4(\fifo_eol_cnt_reg[9]_i_2_n_2 ),
        .O51(p_0_in[7]),
        .O52(\fifo_eol_cnt_reg[7]_i_1_n_2 ),
        .PROP(\fifo_eol_cnt_reg[7]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[8] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_re_dly),
        .D(p_0_in[8]),
        .Q(fifo_eol_cnt_reg[8]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \fifo_eol_cnt_reg[8]_i_1 
       (.GE(\fifo_eol_cnt_reg[8]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(fifo_eol_cnt_reg[8]),
        .I4(\fifo_eol_cnt_reg[7]_i_1_n_2 ),
        .O51(p_0_in[8]),
        .O52(\fifo_eol_cnt_reg[8]_i_1_n_2 ),
        .PROP(\fifo_eol_cnt_reg[8]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[9] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_re_dly),
        .D(p_0_in[9]),
        .Q(fifo_eol_cnt_reg[9]),
        .R(\fifo_eol_cnt[12]_i_1_n_0 ));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \fifo_eol_cnt_reg[9]_i_1 
       (.GE(\fifo_eol_cnt_reg[9]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(fifo_eol_cnt_reg[9]),
        .I4(\fifo_eol_cnt_reg[9]_i_2_n_3 ),
        .O51(p_0_in[9]),
        .O52(\fifo_eol_cnt_reg[9]_i_1_n_2 ),
        .PROP(\fifo_eol_cnt_reg[9]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \fifo_eol_cnt_reg[9]_i_2 
       (.CIN(fifo_eol_cnt_reg[0]),
        .COUTB(\fifo_eol_cnt_reg[9]_i_2_n_0 ),
        .COUTD(\fifo_eol_cnt_reg[9]_i_2_n_1 ),
        .COUTF(\fifo_eol_cnt_reg[9]_i_2_n_2 ),
        .COUTH(\fifo_eol_cnt_reg[9]_i_2_n_3 ),
        .CYA(\fifo_eol_cnt_reg[1]_i_1_n_2 ),
        .CYB(\fifo_eol_cnt_reg[2]_i_1_n_2 ),
        .CYC(\fifo_eol_cnt_reg[3]_i_1_n_2 ),
        .CYD(\fifo_eol_cnt_reg[4]_i_1_n_2 ),
        .CYE(\fifo_eol_cnt_reg[5]_i_1_n_2 ),
        .CYF(\fifo_eol_cnt_reg[6]_i_1_n_2 ),
        .CYG(\fifo_eol_cnt_reg[7]_i_1_n_2 ),
        .CYH(\fifo_eol_cnt_reg[8]_i_1_n_2 ),
        .GEA(\fifo_eol_cnt_reg[1]_i_1_n_0 ),
        .GEB(\fifo_eol_cnt_reg[2]_i_1_n_0 ),
        .GEC(\fifo_eol_cnt_reg[3]_i_1_n_0 ),
        .GED(\fifo_eol_cnt_reg[4]_i_1_n_0 ),
        .GEE(\fifo_eol_cnt_reg[5]_i_1_n_0 ),
        .GEF(\fifo_eol_cnt_reg[6]_i_1_n_0 ),
        .GEG(\fifo_eol_cnt_reg[7]_i_1_n_0 ),
        .GEH(\fifo_eol_cnt_reg[8]_i_1_n_0 ),
        .PROPA(\fifo_eol_cnt_reg[1]_i_1_n_3 ),
        .PROPB(\fifo_eol_cnt_reg[2]_i_1_n_3 ),
        .PROPC(\fifo_eol_cnt_reg[3]_i_1_n_3 ),
        .PROPD(\fifo_eol_cnt_reg[4]_i_1_n_3 ),
        .PROPE(\fifo_eol_cnt_reg[5]_i_1_n_3 ),
        .PROPF(\fifo_eol_cnt_reg[6]_i_1_n_3 ),
        .PROPG(\fifo_eol_cnt_reg[7]_i_1_n_3 ),
        .PROPH(\fifo_eol_cnt_reg[8]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    fifo_eol_dly_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(dout[0]),
        .Q(fifo_eol_dly),
        .R(i_sync_rst));
  FDRE #(
    .INIT(1'b0)) 
    fifo_eol_re_dly_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(fifo_eol_re),
        .Q(fifo_eol_re_dly),
        .R(i_sync_rst));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_sof_cnt[0]_i_1 
       (.I0(fifo_sof_cnt_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fifo_sof_cnt[1]_i_1 
       (.I0(fifo_sof_cnt_reg[0]),
        .I1(fifo_sof_cnt_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \fifo_sof_cnt[2]_i_1 
       (.I0(fifo_sof_cnt_reg[1]),
        .I1(fifo_sof_cnt_reg[0]),
        .I2(fifo_sof_cnt_reg[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \fifo_sof_cnt[3]_i_1 
       (.I0(fifo_sof_cnt_reg[2]),
        .I1(fifo_sof_cnt_reg[0]),
        .I2(fifo_sof_cnt_reg[1]),
        .I3(fifo_sof_cnt_reg[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fifo_sof_cnt[4]_i_1 
       (.I0(\fifo_sof_cnt[7]_i_3_n_0 ),
        .I1(fifo_sof_cnt_reg[4]),
        .O(p_0_in__1[4]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \fifo_sof_cnt[5]_i_1 
       (.I0(fifo_sof_cnt_reg[4]),
        .I1(\fifo_sof_cnt[7]_i_3_n_0 ),
        .I2(fifo_sof_cnt_reg[5]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \fifo_sof_cnt[6]_i_1 
       (.I0(\fifo_sof_cnt[7]_i_3_n_0 ),
        .I1(fifo_sof_cnt_reg[4]),
        .I2(fifo_sof_cnt_reg[5]),
        .I3(fifo_sof_cnt_reg[6]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \fifo_sof_cnt[7]_i_2 
       (.I0(\fifo_sof_cnt[7]_i_3_n_0 ),
        .I1(fifo_sof_cnt_reg[6]),
        .I2(fifo_sof_cnt_reg[5]),
        .I3(fifo_sof_cnt_reg[4]),
        .I4(fifo_sof_cnt_reg[7]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \fifo_sof_cnt[7]_i_3 
       (.I0(fifo_sof_cnt_reg[2]),
        .I1(fifo_sof_cnt_reg[0]),
        .I2(fifo_sof_cnt_reg[1]),
        .I3(fifo_sof_cnt_reg[3]),
        .O(\fifo_sof_cnt[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[0] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[7]_0 ),
        .D(p_0_in__1[0]),
        .Q(fifo_sof_cnt_reg[0]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[1] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[7]_0 ),
        .D(p_0_in__1[1]),
        .Q(fifo_sof_cnt_reg[1]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[2] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[7]_0 ),
        .D(p_0_in__1[2]),
        .Q(fifo_sof_cnt_reg[2]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[3] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[7]_0 ),
        .D(p_0_in__1[3]),
        .Q(fifo_sof_cnt_reg[3]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[4] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[7]_0 ),
        .D(p_0_in__1[4]),
        .Q(fifo_sof_cnt_reg[4]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[5] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[7]_0 ),
        .D(p_0_in__1[5]),
        .Q(fifo_sof_cnt_reg[5]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[6] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[7]_0 ),
        .D(p_0_in__1[6]),
        .Q(fifo_sof_cnt_reg[6]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[7] 
       (.C(vid_io_out_clk),
        .CE(\fifo_sof_cnt_reg[7]_0 ),
        .D(p_0_in__1[7]),
        .Q(fifo_sof_cnt_reg[7]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_sof_dly_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(dout[1]),
        .Q(fifo_sof_dly),
        .R(i_sync_rst));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \in_de_mux[0]_i_1 
       (.I0(vtg_vsync_bp_reg_0),
        .I1(vtg_vsync_bp_reg_1),
        .I2(src_in),
        .I3(fivid_reset_full_frame),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT2 #(
    .INIT(4'h2)) 
    locked_i_1
       (.I0(vtg_ce_INST_0_i_1_n_0),
        .I1(locked_i_2_n_0),
        .O(p_3_in));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT2 #(
    .INIT(4'h7)) 
    locked_i_2
       (.I0(state[0]),
        .I1(state[3]),
        .O(locked_i_2_n_0));
  FDRE locked_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(p_3_in),
        .Q(src_in),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    sof_ignore_i_1
       (.I0(sof_ignore_i_2_n_0),
        .I1(sof_ignore_i_3_n_0),
        .I2(sof_ignore_i_4_n_0),
        .I3(sof_ignore),
        .I4(sof_ignore0),
        .O(sof_ignore_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT4 #(
    .INIT(16'h0F0E)) 
    sof_ignore_i_2
       (.I0(fifo_eol_cnt_reg[2]),
        .I1(fifo_eol_cnt_reg[1]),
        .I2(dout[2]),
        .I3(fifo_eol_cnt_reg[0]),
        .O(sof_ignore_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF0000FFFE)) 
    sof_ignore_i_3
       (.I0(fifo_eol_cnt_reg[8]),
        .I1(fifo_eol_cnt_reg[11]),
        .I2(fifo_eol_cnt_reg[12]),
        .I3(fifo_eol_cnt_reg[10]),
        .I4(dout[2]),
        .I5(fifo_eol_cnt_reg[9]),
        .O(sof_ignore_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF0000FFFE)) 
    sof_ignore_i_4
       (.I0(fifo_eol_cnt_reg[3]),
        .I1(fifo_eol_cnt_reg[6]),
        .I2(fifo_eol_cnt_reg[7]),
        .I3(fifo_eol_cnt_reg[5]),
        .I4(dout[2]),
        .I5(fifo_eol_cnt_reg[4]),
        .O(sof_ignore_i_4_n_0));
  FDRE #(
    .INIT(1'b1)) 
    sof_ignore_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(sof_ignore_i_1_n_0),
        .Q(sof_ignore),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'hFF04)) 
    vtg_ce_INST_0
       (.I0(\FSM_sequential_state_reg[2]_0 ),
        .I1(state[0]),
        .I2(state[3]),
        .I3(vtg_ce_INST_0_i_1_n_0),
        .O(vtg_ce));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT2 #(
    .INIT(4'h2)) 
    vtg_ce_INST_0_i_1
       (.I0(state[1]),
        .I1(\FSM_sequential_state_reg[2]_0 ),
        .O(vtg_ce_INST_0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vtg_de_dly_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(vtiming_in_active_video),
        .Q(vtg_de_dly),
        .R(i_sync_rst));
  LUT5 #(
    .INIT(32'hEEEEFEEE)) 
    \vtg_lag[0]_i_1 
       (.I0(vtg_vsync_bp_reg_0),
        .I1(vtg_vsync_bp_reg_1),
        .I2(\vtg_lag[0]_i_4_n_0 ),
        .I3(state[0]),
        .I4(state[3]),
        .O(sof_ignore0));
  LUT3 #(
    .INIT(8'h70)) 
    \vtg_lag[0]_i_2 
       (.I0(locked_i_2_n_0),
        .I1(\vtg_lag[0]_i_5_n_0 ),
        .I2(\vtg_lag[0]_i_4_n_0 ),
        .O(vtg_lag));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \vtg_lag[0]_i_4 
       (.I0(state[1]),
        .I1(\FSM_sequential_state_reg[2]_0 ),
        .O(\vtg_lag[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \vtg_lag[0]_i_5 
       (.I0(state[0]),
        .I1(state[3]),
        .O(\vtg_lag[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[0] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[0]_i_3_n_1 ),
        .Q(vtg_lag_reg[0]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFFFFFF00FF0000FF)) 
    \vtg_lag_reg[0]_i_3 
       (.GE(\vtg_lag_reg[0]_i_3_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[0]),
        .I4(1'b0),
        .O51(\vtg_lag_reg[0]_i_3_n_1 ),
        .O52(\vtg_lag_reg[0]_i_3_n_2 ),
        .PROP(\vtg_lag_reg[0]_i_3_n_3 ));
  FDSE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[10] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[10]_i_1_n_1 ),
        .Q(vtg_lag_reg[10]),
        .S(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[10]_i_1 
       (.GE(\vtg_lag_reg[10]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[10]),
        .I4(\vtg_lag_reg[10]_i_2_n_0 ),
        .O51(\vtg_lag_reg[10]_i_1_n_1 ),
        .O52(\vtg_lag_reg[10]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[10]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \vtg_lag_reg[10]_i_2 
       (.CIN(\vtg_lag_reg[2]_i_2_n_3 ),
        .COUTB(\vtg_lag_reg[10]_i_2_n_0 ),
        .COUTD(\vtg_lag_reg[10]_i_2_n_1 ),
        .COUTF(\vtg_lag_reg[10]_i_2_n_2 ),
        .COUTH(\vtg_lag_reg[10]_i_2_n_3 ),
        .CYA(\vtg_lag_reg[8]_i_1_n_2 ),
        .CYB(\vtg_lag_reg[9]_i_1_n_2 ),
        .CYC(\vtg_lag_reg[10]_i_1_n_2 ),
        .CYD(\vtg_lag_reg[11]_i_1_n_2 ),
        .CYE(\vtg_lag_reg[12]_i_1_n_2 ),
        .CYF(\vtg_lag_reg[13]_i_1_n_2 ),
        .CYG(\vtg_lag_reg[14]_i_1_n_2 ),
        .CYH(\vtg_lag_reg[15]_i_1_n_2 ),
        .GEA(\vtg_lag_reg[8]_i_1_n_0 ),
        .GEB(\vtg_lag_reg[9]_i_1_n_0 ),
        .GEC(\vtg_lag_reg[10]_i_1_n_0 ),
        .GED(\vtg_lag_reg[11]_i_1_n_0 ),
        .GEE(\vtg_lag_reg[12]_i_1_n_0 ),
        .GEF(\vtg_lag_reg[13]_i_1_n_0 ),
        .GEG(\vtg_lag_reg[14]_i_1_n_0 ),
        .GEH(\vtg_lag_reg[15]_i_1_n_0 ),
        .PROPA(\vtg_lag_reg[8]_i_1_n_3 ),
        .PROPB(\vtg_lag_reg[9]_i_1_n_3 ),
        .PROPC(\vtg_lag_reg[10]_i_1_n_3 ),
        .PROPD(\vtg_lag_reg[11]_i_1_n_3 ),
        .PROPE(\vtg_lag_reg[12]_i_1_n_3 ),
        .PROPF(\vtg_lag_reg[13]_i_1_n_3 ),
        .PROPG(\vtg_lag_reg[14]_i_1_n_3 ),
        .PROPH(\vtg_lag_reg[15]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[11] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[11]_i_1_n_1 ),
        .Q(vtg_lag_reg[11]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[11]_i_1 
       (.GE(\vtg_lag_reg[11]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[11]),
        .I4(\vtg_lag_reg[10]_i_1_n_2 ),
        .O51(\vtg_lag_reg[11]_i_1_n_1 ),
        .O52(\vtg_lag_reg[11]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[11]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[12] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[12]_i_1_n_1 ),
        .Q(vtg_lag_reg[12]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[12]_i_1 
       (.GE(\vtg_lag_reg[12]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[12]),
        .I4(\vtg_lag_reg[10]_i_2_n_1 ),
        .O51(\vtg_lag_reg[12]_i_1_n_1 ),
        .O52(\vtg_lag_reg[12]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[12]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[13] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[13]_i_1_n_1 ),
        .Q(vtg_lag_reg[13]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[13]_i_1 
       (.GE(\vtg_lag_reg[13]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[13]),
        .I4(\vtg_lag_reg[12]_i_1_n_2 ),
        .O51(\vtg_lag_reg[13]_i_1_n_1 ),
        .O52(\vtg_lag_reg[13]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[13]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[14] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[14]_i_1_n_1 ),
        .Q(vtg_lag_reg[14]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[14]_i_1 
       (.GE(\vtg_lag_reg[14]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[14]),
        .I4(\vtg_lag_reg[10]_i_2_n_2 ),
        .O51(\vtg_lag_reg[14]_i_1_n_1 ),
        .O52(\vtg_lag_reg[14]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[14]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[15] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[15]_i_1_n_1 ),
        .Q(vtg_lag_reg[15]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[15]_i_1 
       (.GE(\vtg_lag_reg[15]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[15]),
        .I4(\vtg_lag_reg[14]_i_1_n_2 ),
        .O51(\vtg_lag_reg[15]_i_1_n_1 ),
        .O52(\vtg_lag_reg[15]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[15]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[16] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[16]_i_1_n_1 ),
        .Q(vtg_lag_reg[16]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[16]_i_1 
       (.GE(\vtg_lag_reg[16]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[16]),
        .I4(\vtg_lag_reg[10]_i_2_n_3 ),
        .O51(\vtg_lag_reg[16]_i_1_n_1 ),
        .O52(\vtg_lag_reg[16]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[16]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[17] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[17]_i_1_n_1 ),
        .Q(vtg_lag_reg[17]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[17]_i_1 
       (.GE(\vtg_lag_reg[17]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[17]),
        .I4(\vtg_lag_reg[16]_i_1_n_2 ),
        .O51(\vtg_lag_reg[17]_i_1_n_1 ),
        .O52(\vtg_lag_reg[17]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[17]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[18] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[18]_i_1_n_1 ),
        .Q(vtg_lag_reg[18]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[18]_i_1 
       (.GE(\vtg_lag_reg[18]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[18]),
        .I4(\vtg_lag_reg[18]_i_2_n_0 ),
        .O51(\vtg_lag_reg[18]_i_1_n_1 ),
        .O52(\vtg_lag_reg[18]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[18]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \vtg_lag_reg[18]_i_2 
       (.CIN(\vtg_lag_reg[10]_i_2_n_3 ),
        .COUTB(\vtg_lag_reg[18]_i_2_n_0 ),
        .COUTD(\vtg_lag_reg[18]_i_2_n_1 ),
        .COUTF(\vtg_lag_reg[18]_i_2_n_2 ),
        .COUTH(\vtg_lag_reg[18]_i_2_n_3 ),
        .CYA(\vtg_lag_reg[16]_i_1_n_2 ),
        .CYB(\vtg_lag_reg[17]_i_1_n_2 ),
        .CYC(\vtg_lag_reg[18]_i_1_n_2 ),
        .CYD(\vtg_lag_reg[19]_i_1_n_2 ),
        .CYE(\vtg_lag_reg[20]_i_1_n_2 ),
        .CYF(\vtg_lag_reg[21]_i_1_n_2 ),
        .CYG(\vtg_lag_reg[22]_i_1_n_2 ),
        .CYH(\vtg_lag_reg[23]_i_1_n_2 ),
        .GEA(\vtg_lag_reg[16]_i_1_n_0 ),
        .GEB(\vtg_lag_reg[17]_i_1_n_0 ),
        .GEC(\vtg_lag_reg[18]_i_1_n_0 ),
        .GED(\vtg_lag_reg[19]_i_1_n_0 ),
        .GEE(\vtg_lag_reg[20]_i_1_n_0 ),
        .GEF(\vtg_lag_reg[21]_i_1_n_0 ),
        .GEG(\vtg_lag_reg[22]_i_1_n_0 ),
        .GEH(\vtg_lag_reg[23]_i_1_n_0 ),
        .PROPA(\vtg_lag_reg[16]_i_1_n_3 ),
        .PROPB(\vtg_lag_reg[17]_i_1_n_3 ),
        .PROPC(\vtg_lag_reg[18]_i_1_n_3 ),
        .PROPD(\vtg_lag_reg[19]_i_1_n_3 ),
        .PROPE(\vtg_lag_reg[20]_i_1_n_3 ),
        .PROPF(\vtg_lag_reg[21]_i_1_n_3 ),
        .PROPG(\vtg_lag_reg[22]_i_1_n_3 ),
        .PROPH(\vtg_lag_reg[23]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[19] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[19]_i_1_n_1 ),
        .Q(vtg_lag_reg[19]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[19]_i_1 
       (.GE(\vtg_lag_reg[19]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[19]),
        .I4(\vtg_lag_reg[18]_i_1_n_2 ),
        .O51(\vtg_lag_reg[19]_i_1_n_1 ),
        .O52(\vtg_lag_reg[19]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[19]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[1] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[1]_i_1_n_1 ),
        .Q(vtg_lag_reg[1]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[1]_i_1 
       (.GE(\vtg_lag_reg[1]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[1]),
        .I4(\vtg_lag_reg[0]_i_3_n_2 ),
        .O51(\vtg_lag_reg[1]_i_1_n_1 ),
        .O52(\vtg_lag_reg[1]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[1]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[20] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[20]_i_1_n_1 ),
        .Q(vtg_lag_reg[20]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[20]_i_1 
       (.GE(\vtg_lag_reg[20]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[20]),
        .I4(\vtg_lag_reg[18]_i_2_n_1 ),
        .O51(\vtg_lag_reg[20]_i_1_n_1 ),
        .O52(\vtg_lag_reg[20]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[20]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[21] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[21]_i_1_n_1 ),
        .Q(vtg_lag_reg[21]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[21]_i_1 
       (.GE(\vtg_lag_reg[21]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[21]),
        .I4(\vtg_lag_reg[20]_i_1_n_2 ),
        .O51(\vtg_lag_reg[21]_i_1_n_1 ),
        .O52(\vtg_lag_reg[21]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[21]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[22] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[22]_i_1_n_1 ),
        .Q(vtg_lag_reg[22]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[22]_i_1 
       (.GE(\vtg_lag_reg[22]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[22]),
        .I4(\vtg_lag_reg[18]_i_2_n_2 ),
        .O51(\vtg_lag_reg[22]_i_1_n_1 ),
        .O52(\vtg_lag_reg[22]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[22]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[23] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[23]_i_1_n_1 ),
        .Q(vtg_lag_reg[23]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[23]_i_1 
       (.GE(\vtg_lag_reg[23]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[23]),
        .I4(\vtg_lag_reg[22]_i_1_n_2 ),
        .O51(\vtg_lag_reg[23]_i_1_n_1 ),
        .O52(\vtg_lag_reg[23]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[23]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[24] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[24]_i_1_n_1 ),
        .Q(vtg_lag_reg[24]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[24]_i_1 
       (.GE(\vtg_lag_reg[24]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[24]),
        .I4(\vtg_lag_reg[18]_i_2_n_3 ),
        .O51(\vtg_lag_reg[24]_i_1_n_1 ),
        .O52(\vtg_lag_reg[24]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[24]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[25] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[25]_i_1_n_1 ),
        .Q(vtg_lag_reg[25]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[25]_i_1 
       (.GE(\vtg_lag_reg[25]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[25]),
        .I4(\vtg_lag_reg[24]_i_1_n_2 ),
        .O51(\vtg_lag_reg[25]_i_1_n_1 ),
        .O52(\vtg_lag_reg[25]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[25]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[26] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[26]_i_1_n_1 ),
        .Q(vtg_lag_reg[26]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[26]_i_1 
       (.GE(\vtg_lag_reg[26]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[26]),
        .I4(\vtg_lag_reg[26]_i_2_n_0 ),
        .O51(\vtg_lag_reg[26]_i_1_n_1 ),
        .O52(\vtg_lag_reg[26]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[26]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \vtg_lag_reg[26]_i_2 
       (.CIN(\vtg_lag_reg[18]_i_2_n_3 ),
        .COUTB(\vtg_lag_reg[26]_i_2_n_0 ),
        .COUTD(\vtg_lag_reg[26]_i_2_n_1 ),
        .COUTF(\vtg_lag_reg[26]_i_2_n_2 ),
        .COUTH(\vtg_lag_reg[26]_i_2_n_3 ),
        .CYA(\vtg_lag_reg[24]_i_1_n_2 ),
        .CYB(\vtg_lag_reg[25]_i_1_n_2 ),
        .CYC(\vtg_lag_reg[26]_i_1_n_2 ),
        .CYD(\vtg_lag_reg[27]_i_1_n_2 ),
        .CYE(\vtg_lag_reg[28]_i_1_n_2 ),
        .CYF(\vtg_lag_reg[29]_i_1_n_2 ),
        .CYG(\vtg_lag_reg[30]_i_1_n_2 ),
        .CYH(\vtg_lag_reg[31]_i_1_n_2 ),
        .GEA(\vtg_lag_reg[24]_i_1_n_0 ),
        .GEB(\vtg_lag_reg[25]_i_1_n_0 ),
        .GEC(\vtg_lag_reg[26]_i_1_n_0 ),
        .GED(\vtg_lag_reg[27]_i_1_n_0 ),
        .GEE(\vtg_lag_reg[28]_i_1_n_0 ),
        .GEF(\vtg_lag_reg[29]_i_1_n_0 ),
        .GEG(\vtg_lag_reg[30]_i_1_n_0 ),
        .GEH(\vtg_lag_reg[31]_i_1_n_0 ),
        .PROPA(\vtg_lag_reg[24]_i_1_n_3 ),
        .PROPB(\vtg_lag_reg[25]_i_1_n_3 ),
        .PROPC(\vtg_lag_reg[26]_i_1_n_3 ),
        .PROPD(\vtg_lag_reg[27]_i_1_n_3 ),
        .PROPE(\vtg_lag_reg[28]_i_1_n_3 ),
        .PROPF(\vtg_lag_reg[29]_i_1_n_3 ),
        .PROPG(\vtg_lag_reg[30]_i_1_n_3 ),
        .PROPH(\vtg_lag_reg[31]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[27] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[27]_i_1_n_1 ),
        .Q(vtg_lag_reg[27]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[27]_i_1 
       (.GE(\vtg_lag_reg[27]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[27]),
        .I4(\vtg_lag_reg[26]_i_1_n_2 ),
        .O51(\vtg_lag_reg[27]_i_1_n_1 ),
        .O52(\vtg_lag_reg[27]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[27]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[28] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[28]_i_1_n_1 ),
        .Q(vtg_lag_reg[28]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[28]_i_1 
       (.GE(\vtg_lag_reg[28]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[28]),
        .I4(\vtg_lag_reg[26]_i_2_n_1 ),
        .O51(\vtg_lag_reg[28]_i_1_n_1 ),
        .O52(\vtg_lag_reg[28]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[28]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[29] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[29]_i_1_n_1 ),
        .Q(vtg_lag_reg[29]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[29]_i_1 
       (.GE(\vtg_lag_reg[29]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[29]),
        .I4(\vtg_lag_reg[28]_i_1_n_2 ),
        .O51(\vtg_lag_reg[29]_i_1_n_1 ),
        .O52(\vtg_lag_reg[29]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[29]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[2] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[2]_i_1_n_1 ),
        .Q(vtg_lag_reg[2]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[2]_i_1 
       (.GE(\vtg_lag_reg[2]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[2]),
        .I4(\vtg_lag_reg[2]_i_2_n_0 ),
        .O51(\vtg_lag_reg[2]_i_1_n_1 ),
        .O52(\vtg_lag_reg[2]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[2]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \vtg_lag_reg[2]_i_2 
       (.CIN(1'b0),
        .COUTB(\vtg_lag_reg[2]_i_2_n_0 ),
        .COUTD(\vtg_lag_reg[2]_i_2_n_1 ),
        .COUTF(\vtg_lag_reg[2]_i_2_n_2 ),
        .COUTH(\vtg_lag_reg[2]_i_2_n_3 ),
        .CYA(\vtg_lag_reg[0]_i_3_n_2 ),
        .CYB(\vtg_lag_reg[1]_i_1_n_2 ),
        .CYC(\vtg_lag_reg[2]_i_1_n_2 ),
        .CYD(\vtg_lag_reg[3]_i_1_n_2 ),
        .CYE(\vtg_lag_reg[4]_i_1_n_2 ),
        .CYF(\vtg_lag_reg[5]_i_1_n_2 ),
        .CYG(\vtg_lag_reg[6]_i_1_n_2 ),
        .CYH(\vtg_lag_reg[7]_i_1_n_2 ),
        .GEA(\vtg_lag_reg[0]_i_3_n_0 ),
        .GEB(\vtg_lag_reg[1]_i_1_n_0 ),
        .GEC(\vtg_lag_reg[2]_i_1_n_0 ),
        .GED(\vtg_lag_reg[3]_i_1_n_0 ),
        .GEE(\vtg_lag_reg[4]_i_1_n_0 ),
        .GEF(\vtg_lag_reg[5]_i_1_n_0 ),
        .GEG(\vtg_lag_reg[6]_i_1_n_0 ),
        .GEH(\vtg_lag_reg[7]_i_1_n_0 ),
        .PROPA(\vtg_lag_reg[0]_i_3_n_3 ),
        .PROPB(\vtg_lag_reg[1]_i_1_n_3 ),
        .PROPC(\vtg_lag_reg[2]_i_1_n_3 ),
        .PROPD(\vtg_lag_reg[3]_i_1_n_3 ),
        .PROPE(\vtg_lag_reg[4]_i_1_n_3 ),
        .PROPF(\vtg_lag_reg[5]_i_1_n_3 ),
        .PROPG(\vtg_lag_reg[6]_i_1_n_3 ),
        .PROPH(\vtg_lag_reg[7]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[30] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[30]_i_1_n_1 ),
        .Q(vtg_lag_reg[30]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[30]_i_1 
       (.GE(\vtg_lag_reg[30]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[30]),
        .I4(\vtg_lag_reg[26]_i_2_n_2 ),
        .O51(\vtg_lag_reg[30]_i_1_n_1 ),
        .O52(\vtg_lag_reg[30]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[30]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[31] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[31]_i_1_n_1 ),
        .Q(vtg_lag_reg[31]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00FF0000FFFF00)) 
    \vtg_lag_reg[31]_i_1 
       (.GE(\vtg_lag_reg[31]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[31]),
        .I4(\vtg_lag_reg[30]_i_1_n_2 ),
        .O51(\vtg_lag_reg[31]_i_1_n_1 ),
        .O52(\vtg_lag_reg[31]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[31]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[3] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[3]_i_1_n_1 ),
        .Q(vtg_lag_reg[3]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[3]_i_1 
       (.GE(\vtg_lag_reg[3]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[3]),
        .I4(\vtg_lag_reg[2]_i_1_n_2 ),
        .O51(\vtg_lag_reg[3]_i_1_n_1 ),
        .O52(\vtg_lag_reg[3]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[3]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[4] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[4]_i_1_n_1 ),
        .Q(vtg_lag_reg[4]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[4]_i_1 
       (.GE(\vtg_lag_reg[4]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[4]),
        .I4(\vtg_lag_reg[2]_i_2_n_1 ),
        .O51(\vtg_lag_reg[4]_i_1_n_1 ),
        .O52(\vtg_lag_reg[4]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[4]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[5] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[5]_i_1_n_1 ),
        .Q(vtg_lag_reg[5]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[5]_i_1 
       (.GE(\vtg_lag_reg[5]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[5]),
        .I4(\vtg_lag_reg[4]_i_1_n_2 ),
        .O51(\vtg_lag_reg[5]_i_1_n_1 ),
        .O52(\vtg_lag_reg[5]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[5]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[6] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[6]_i_1_n_1 ),
        .Q(vtg_lag_reg[6]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[6]_i_1 
       (.GE(\vtg_lag_reg[6]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[6]),
        .I4(\vtg_lag_reg[2]_i_2_n_2 ),
        .O51(\vtg_lag_reg[6]_i_1_n_1 ),
        .O52(\vtg_lag_reg[6]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[6]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[7] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[7]_i_1_n_1 ),
        .Q(vtg_lag_reg[7]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[7]_i_1 
       (.GE(\vtg_lag_reg[7]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[7]),
        .I4(\vtg_lag_reg[6]_i_1_n_2 ),
        .O51(\vtg_lag_reg[7]_i_1_n_1 ),
        .O52(\vtg_lag_reg[7]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[7]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[8] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[8]_i_1_n_1 ),
        .Q(vtg_lag_reg[8]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[8]_i_1 
       (.GE(\vtg_lag_reg[8]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[8]),
        .I4(\vtg_lag_reg[2]_i_2_n_3 ),
        .O51(\vtg_lag_reg[8]_i_1_n_1 ),
        .O52(\vtg_lag_reg[8]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[8]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[9] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[9]_i_1_n_1 ),
        .Q(vtg_lag_reg[9]),
        .R(sof_ignore0));
  LUT6CY #(
    .INIT(64'hFF00000000FFFF00)) 
    \vtg_lag_reg[9]_i_1 
       (.GE(\vtg_lag_reg[9]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(vtg_lag_reg[9]),
        .I4(\vtg_lag_reg[8]_i_1_n_2 ),
        .O51(\vtg_lag_reg[9]_i_1_n_1 ),
        .O52(\vtg_lag_reg[9]_i_1_n_2 ),
        .PROP(\vtg_lag_reg[9]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \vtg_sof_cnt[0]_i_1 
       (.I0(vtg_sof_cnt_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vtg_sof_cnt[1]_i_1 
       (.I0(vtg_sof_cnt_reg[0]),
        .I1(vtg_sof_cnt_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vtg_sof_cnt[2]_i_1 
       (.I0(vtg_sof_cnt_reg[1]),
        .I1(vtg_sof_cnt_reg[0]),
        .I2(vtg_sof_cnt_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \vtg_sof_cnt[3]_i_1 
       (.I0(vtg_sof_cnt_reg[2]),
        .I1(vtg_sof_cnt_reg[0]),
        .I2(vtg_sof_cnt_reg[1]),
        .I3(vtg_sof_cnt_reg[3]),
        .O(p_0_in__0[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \vtg_sof_cnt[4]_i_1 
       (.I0(\vtg_sof_cnt[7]_i_3_n_0 ),
        .I1(vtg_sof_cnt_reg[4]),
        .O(p_0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vtg_sof_cnt[5]_i_1 
       (.I0(vtg_sof_cnt_reg[4]),
        .I1(\vtg_sof_cnt[7]_i_3_n_0 ),
        .I2(vtg_sof_cnt_reg[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \vtg_sof_cnt[6]_i_1 
       (.I0(\vtg_sof_cnt[7]_i_3_n_0 ),
        .I1(vtg_sof_cnt_reg[4]),
        .I2(vtg_sof_cnt_reg[5]),
        .I3(vtg_sof_cnt_reg[6]),
        .O(p_0_in__0[6]));
  LUT6 #(
    .INIT(64'hEEEEEFFEEEEFFFFF)) 
    \vtg_sof_cnt[7]_i_1 
       (.I0(vtg_vsync_bp_reg_0),
        .I1(vtg_vsync_bp_reg_1),
        .I2(state[0]),
        .I3(state[3]),
        .I4(\FSM_sequential_state_reg[2]_0 ),
        .I5(state[1]),
        .O(vtg_sof_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \vtg_sof_cnt[7]_i_2 
       (.I0(\vtg_sof_cnt[7]_i_3_n_0 ),
        .I1(vtg_sof_cnt_reg[6]),
        .I2(vtg_sof_cnt_reg[5]),
        .I3(vtg_sof_cnt_reg[4]),
        .I4(vtg_sof_cnt_reg[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \vtg_sof_cnt[7]_i_3 
       (.I0(vtg_sof_cnt_reg[2]),
        .I1(vtg_sof_cnt_reg[0]),
        .I2(vtg_sof_cnt_reg[1]),
        .I3(vtg_sof_cnt_reg[3]),
        .O(\vtg_sof_cnt[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[0] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_dly),
        .D(p_0_in__0[0]),
        .Q(vtg_sof_cnt_reg[0]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[1] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_dly),
        .D(p_0_in__0[1]),
        .Q(vtg_sof_cnt_reg[1]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[2] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_dly),
        .D(p_0_in__0[2]),
        .Q(vtg_sof_cnt_reg[2]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[3] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_dly),
        .D(p_0_in__0[3]),
        .Q(vtg_sof_cnt_reg[3]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[4] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_dly),
        .D(p_0_in__0[4]),
        .Q(vtg_sof_cnt_reg[4]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[5] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_dly),
        .D(p_0_in__0[5]),
        .Q(vtg_sof_cnt_reg[5]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[6] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_dly),
        .D(p_0_in__0[6]),
        .Q(vtg_sof_cnt_reg[6]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[7] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_dly),
        .D(p_0_in__0[7]),
        .Q(vtg_sof_cnt_reg[7]),
        .R(vtg_sof_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'h20)) 
    vtg_sof_dly_i_1
       (.I0(vtg_vsync_bp_reg_n_0),
        .I1(vtg_de_dly),
        .I2(vtiming_in_active_video),
        .O(vtg_sof));
  FDRE #(
    .INIT(1'b0)) 
    vtg_sof_dly_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(vtg_sof),
        .Q(vtg_sof_dly),
        .R(i_sync_rst));
  LUT6 #(
    .INIT(64'h0101010100010000)) 
    vtg_vsync_bp_i_1
       (.I0(vtg_vsync_bp_reg_0),
        .I1(vtg_vsync_bp_reg_1),
        .I2(vtg_de_dly),
        .I3(vtiming_in_vsync),
        .I4(vtg_vsync_dly),
        .I5(vtg_vsync_bp_reg_n_0),
        .O(vtg_vsync_bp_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vtg_vsync_bp_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(vtg_vsync_bp_i_1_n_0),
        .Q(vtg_vsync_bp_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    vtg_vsync_dly_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(vtiming_in_vsync),
        .Q(vtg_vsync_dly),
        .R(i_sync_rst));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "1" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module bd_38d0_vb1_0_xpm_cdc_array_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [0:0]src_in;
  input dest_clk;
  output [0:0]dest_out;

  wire async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[2] ;

  assign async_path_bit = src_in[0];
  assign dest_out[0] = \syncstages_ff[2] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit),
        .Q(\syncstages_ff[0] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] ),
        .Q(\syncstages_ff[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] ),
        .Q(\syncstages_ff[2] ),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "1" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module bd_38d0_vb1_0_xpm_cdc_array_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [0:0]src_in;
  input dest_clk;
  output [0:0]dest_out;

  wire async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire \syncstages_ff[2] ;

  assign async_path_bit = src_in[0];
  assign dest_out[0] = \syncstages_ff[2] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit),
        .Q(\syncstages_ff[0] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] ),
        .Q(\syncstages_ff[1] ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] ),
        .Q(\syncstages_ff[2] ),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "3" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module bd_38d0_vb1_0_xpm_cdc_array_single__parameterized0
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [2:0]src_in;
  input dest_clk;
  output [2:0]dest_out;

  wire [2:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[2] ;

  assign async_path_bit = src_in[2:0];
  assign dest_out[2:0] = \syncstages_ff[2] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[0]),
        .Q(\syncstages_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[1]),
        .Q(\syncstages_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[2]),
        .Q(\syncstages_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [0]),
        .Q(\syncstages_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [1]),
        .Q(\syncstages_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [2]),
        .Q(\syncstages_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [0]),
        .Q(\syncstages_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [1]),
        .Q(\syncstages_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [2]),
        .Q(\syncstages_ff[2] [2]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "3" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module bd_38d0_vb1_0_xpm_cdc_array_single__parameterized0__3
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [2:0]src_in;
  input dest_clk;
  output [2:0]dest_out;

  wire [2:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[2] ;

  assign async_path_bit = src_in[2:0];
  assign dest_out[2:0] = \syncstages_ff[2] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[0]),
        .Q(\syncstages_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[1]),
        .Q(\syncstages_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[2]),
        .Q(\syncstages_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [0]),
        .Q(\syncstages_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [1]),
        .Q(\syncstages_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [2]),
        .Q(\syncstages_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [0]),
        .Q(\syncstages_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [1]),
        .Q(\syncstages_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [2]),
        .Q(\syncstages_ff[2] [2]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "3" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module bd_38d0_vb1_0_xpm_cdc_array_single__parameterized0__4
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [2:0]src_in;
  input dest_clk;
  output [2:0]dest_out;

  wire [2:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [2:0]\syncstages_ff[2] ;

  assign async_path_bit = src_in[2:0];
  assign dest_out[2:0] = \syncstages_ff[2] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[0]),
        .Q(\syncstages_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[1]),
        .Q(\syncstages_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[2]),
        .Q(\syncstages_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [0]),
        .Q(\syncstages_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [1]),
        .Q(\syncstages_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [2]),
        .Q(\syncstages_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [0]),
        .Q(\syncstages_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [1]),
        .Q(\syncstages_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [2]),
        .Q(\syncstages_ff[2] [2]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module bd_38d0_vb1_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [10:0]src_in_bin;
  input dest_clk;
  output [10:0]dest_out_bin;

  wire [10:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[3] ;
  wire [9:0]\^dest_out_bin ;
  wire [9:0]gray_enc;
  wire src_clk;
  wire [10:0]src_in_bin;

  assign dest_out_bin[10] = \dest_graysync_ff[3] [10];
  assign dest_out_bin[9:0] = \^dest_out_bin [9:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [10]),
        .Q(\dest_graysync_ff[2] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(\dest_graysync_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(\dest_graysync_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(\dest_graysync_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(\dest_graysync_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(\dest_graysync_ff[2] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [10]),
        .Q(\dest_graysync_ff[3] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(\dest_graysync_ff[3] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [5]),
        .Q(\dest_graysync_ff[3] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [6]),
        .Q(\dest_graysync_ff[3] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [7]),
        .Q(\dest_graysync_ff[3] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [8]),
        .Q(\dest_graysync_ff[3] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [9]),
        .Q(\dest_graysync_ff[3] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[3] [3]),
        .I3(\dest_graysync_ff[3] [1]),
        .I4(\dest_graysync_ff[3] [2]),
        .I5(\dest_graysync_ff[3] [0]),
        .O(\^dest_out_bin [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[3] [3]),
        .I3(\dest_graysync_ff[3] [1]),
        .I4(\dest_graysync_ff[3] [2]),
        .O(\^dest_out_bin [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[3] [3]),
        .I3(\dest_graysync_ff[3] [2]),
        .O(\^dest_out_bin [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[3] [3]),
        .O(\^dest_out_bin [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\^dest_out_bin [5]),
        .O(\^dest_out_bin [4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[3] [8]),
        .I1(\dest_graysync_ff[3] [10]),
        .I2(\dest_graysync_ff[3] [9]),
        .I3(\dest_graysync_ff[3] [6]),
        .I4(\dest_graysync_ff[3] [7]),
        .I5(\dest_graysync_ff[3] [5]),
        .O(\^dest_out_bin [5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[3] [8]),
        .I1(\dest_graysync_ff[3] [10]),
        .I2(\dest_graysync_ff[3] [9]),
        .I3(\dest_graysync_ff[3] [6]),
        .I4(\dest_graysync_ff[3] [7]),
        .O(\^dest_out_bin [6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[3] [8]),
        .I1(\dest_graysync_ff[3] [10]),
        .I2(\dest_graysync_ff[3] [9]),
        .I3(\dest_graysync_ff[3] [7]),
        .O(\^dest_out_bin [7]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[8]_INST_0 
       (.I0(\dest_graysync_ff[3] [8]),
        .I1(\dest_graysync_ff[3] [10]),
        .I2(\dest_graysync_ff[3] [9]),
        .O(\^dest_out_bin [8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[9]_INST_0 
       (.I0(\dest_graysync_ff[3] [9]),
        .I1(\dest_graysync_ff[3] [10]),
        .O(\^dest_out_bin [9]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module bd_38d0_vb1_0_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [10:0]src_in_bin;
  input dest_clk;
  output [10:0]dest_out_bin;

  wire [10:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[3] ;
  wire [9:0]\^dest_out_bin ;
  wire [9:0]gray_enc;
  wire src_clk;
  wire [10:0]src_in_bin;

  assign dest_out_bin[10] = \dest_graysync_ff[3] [10];
  assign dest_out_bin[9:0] = \^dest_out_bin [9:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [10]),
        .Q(\dest_graysync_ff[2] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(\dest_graysync_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(\dest_graysync_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(\dest_graysync_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(\dest_graysync_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(\dest_graysync_ff[2] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [10]),
        .Q(\dest_graysync_ff[3] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(\dest_graysync_ff[3] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [5]),
        .Q(\dest_graysync_ff[3] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [6]),
        .Q(\dest_graysync_ff[3] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [7]),
        .Q(\dest_graysync_ff[3] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [8]),
        .Q(\dest_graysync_ff[3] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [9]),
        .Q(\dest_graysync_ff[3] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[3] [3]),
        .I3(\dest_graysync_ff[3] [2]),
        .I4(\dest_graysync_ff[3] [1]),
        .I5(\dest_graysync_ff[3] [0]),
        .O(\^dest_out_bin [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[3] [3]),
        .I3(\dest_graysync_ff[3] [2]),
        .I4(\dest_graysync_ff[3] [1]),
        .O(\^dest_out_bin [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[3] [3]),
        .I3(\dest_graysync_ff[3] [2]),
        .O(\^dest_out_bin [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[3] [3]),
        .O(\^dest_out_bin [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[3] [4]),
        .I1(\^dest_out_bin [5]),
        .O(\^dest_out_bin [4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[3] [9]),
        .I1(\dest_graysync_ff[3] [10]),
        .I2(\dest_graysync_ff[3] [8]),
        .I3(\dest_graysync_ff[3] [7]),
        .I4(\dest_graysync_ff[3] [6]),
        .I5(\dest_graysync_ff[3] [5]),
        .O(\^dest_out_bin [5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[3] [9]),
        .I1(\dest_graysync_ff[3] [10]),
        .I2(\dest_graysync_ff[3] [8]),
        .I3(\dest_graysync_ff[3] [7]),
        .I4(\dest_graysync_ff[3] [6]),
        .O(\^dest_out_bin [6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[3] [9]),
        .I1(\dest_graysync_ff[3] [10]),
        .I2(\dest_graysync_ff[3] [8]),
        .I3(\dest_graysync_ff[3] [7]),
        .O(\^dest_out_bin [7]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[8]_INST_0 
       (.I0(\dest_graysync_ff[3] [9]),
        .I1(\dest_graysync_ff[3] [10]),
        .I2(\dest_graysync_ff[3] [8]),
        .O(\^dest_out_bin [8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[9]_INST_0 
       (.I0(\dest_graysync_ff[3] [9]),
        .I1(\dest_graysync_ff[3] [10]),
        .O(\^dest_out_bin [9]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "6" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module bd_38d0_vb1_0_xpm_cdc_gray__parameterized0
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [11:0]src_in_bin;
  input dest_clk;
  output [11:0]dest_out_bin;

  wire [11:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[3] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[4] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[5] ;
  wire [10:0]\^dest_out_bin ;
  wire [10:0]gray_enc;
  wire src_clk;
  wire [11:0]src_in_bin;

  assign dest_out_bin[11] = \dest_graysync_ff[5] [11];
  assign dest_out_bin[10:0] = \^dest_out_bin [10:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [10]),
        .Q(\dest_graysync_ff[2] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [11]),
        .Q(\dest_graysync_ff[2] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(\dest_graysync_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(\dest_graysync_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(\dest_graysync_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(\dest_graysync_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(\dest_graysync_ff[2] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [10]),
        .Q(\dest_graysync_ff[3] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [11]),
        .Q(\dest_graysync_ff[3] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(\dest_graysync_ff[3] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [5]),
        .Q(\dest_graysync_ff[3] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [6]),
        .Q(\dest_graysync_ff[3] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [7]),
        .Q(\dest_graysync_ff[3] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [8]),
        .Q(\dest_graysync_ff[3] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [9]),
        .Q(\dest_graysync_ff[3] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [0]),
        .Q(\dest_graysync_ff[4] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [10]),
        .Q(\dest_graysync_ff[4] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [11]),
        .Q(\dest_graysync_ff[4] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [1]),
        .Q(\dest_graysync_ff[4] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [2]),
        .Q(\dest_graysync_ff[4] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [3]),
        .Q(\dest_graysync_ff[4] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [4]),
        .Q(\dest_graysync_ff[4] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [5]),
        .Q(\dest_graysync_ff[4] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [6]),
        .Q(\dest_graysync_ff[4] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [7]),
        .Q(\dest_graysync_ff[4] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [8]),
        .Q(\dest_graysync_ff[4] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[4][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[3] [9]),
        .Q(\dest_graysync_ff[4] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[5][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[4] [0]),
        .Q(\dest_graysync_ff[5] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[5][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[4] [10]),
        .Q(\dest_graysync_ff[5] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[5][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[4] [11]),
        .Q(\dest_graysync_ff[5] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[5][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[4] [1]),
        .Q(\dest_graysync_ff[5] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[5][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[4] [2]),
        .Q(\dest_graysync_ff[5] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[5][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[4] [3]),
        .Q(\dest_graysync_ff[5] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[5][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[4] [4]),
        .Q(\dest_graysync_ff[5] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[5][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[4] [5]),
        .Q(\dest_graysync_ff[5] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[5][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[4] [6]),
        .Q(\dest_graysync_ff[5] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[5][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[4] [7]),
        .Q(\dest_graysync_ff[5] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[5][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[4] [8]),
        .Q(\dest_graysync_ff[5] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[5][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[4] [9]),
        .Q(\dest_graysync_ff[5] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[5] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[5] [3]),
        .I3(\dest_graysync_ff[5] [2]),
        .I4(\dest_graysync_ff[5] [1]),
        .I5(\dest_graysync_ff[5] [0]),
        .O(\^dest_out_bin [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[10]_INST_0 
       (.I0(\dest_graysync_ff[5] [10]),
        .I1(\dest_graysync_ff[5] [11]),
        .O(\^dest_out_bin [10]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[5] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[5] [3]),
        .I3(\dest_graysync_ff[5] [2]),
        .I4(\dest_graysync_ff[5] [1]),
        .O(\^dest_out_bin [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[5] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[5] [3]),
        .I3(\dest_graysync_ff[5] [2]),
        .O(\^dest_out_bin [2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[5] [4]),
        .I1(\^dest_out_bin [5]),
        .I2(\dest_graysync_ff[5] [3]),
        .O(\^dest_out_bin [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[5] [4]),
        .I1(\^dest_out_bin [5]),
        .O(\^dest_out_bin [4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[5] [9]),
        .I1(\^dest_out_bin [10]),
        .I2(\dest_graysync_ff[5] [7]),
        .I3(\dest_graysync_ff[5] [8]),
        .I4(\dest_graysync_ff[5] [6]),
        .I5(\dest_graysync_ff[5] [5]),
        .O(\^dest_out_bin [5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[5] [9]),
        .I1(\^dest_out_bin [10]),
        .I2(\dest_graysync_ff[5] [7]),
        .I3(\dest_graysync_ff[5] [8]),
        .I4(\dest_graysync_ff[5] [6]),
        .O(\^dest_out_bin [6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[5] [9]),
        .I1(\^dest_out_bin [10]),
        .I2(\dest_graysync_ff[5] [7]),
        .I3(\dest_graysync_ff[5] [8]),
        .O(\^dest_out_bin [7]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[8]_INST_0 
       (.I0(\dest_graysync_ff[5] [9]),
        .I1(\^dest_out_bin [10]),
        .I2(\dest_graysync_ff[5] [8]),
        .O(\^dest_out_bin [8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[9]_INST_0 
       (.I0(\dest_graysync_ff[5] [9]),
        .I1(\^dest_out_bin [10]),
        .O(\^dest_out_bin [9]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[11]),
        .Q(async_path[11]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module bd_38d0_vb1_0_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [11:0]src_in_bin;
  input dest_clk;
  output [11:0]dest_out_bin;

  wire [11:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[3] ;
  wire [10:0]\^dest_out_bin ;
  wire [10:0]gray_enc;
  wire src_clk;
  wire [11:0]src_in_bin;

  assign dest_out_bin[11] = \dest_graysync_ff[3] [11];
  assign dest_out_bin[10:0] = \^dest_out_bin [10:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [10]),
        .Q(\dest_graysync_ff[2] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [11]),
        .Q(\dest_graysync_ff[2] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(\dest_graysync_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(\dest_graysync_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(\dest_graysync_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(\dest_graysync_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(\dest_graysync_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(\dest_graysync_ff[2] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [0]),
        .Q(\dest_graysync_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [10]),
        .Q(\dest_graysync_ff[3] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [11]),
        .Q(\dest_graysync_ff[3] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [1]),
        .Q(\dest_graysync_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [2]),
        .Q(\dest_graysync_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(\dest_graysync_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [4]),
        .Q(\dest_graysync_ff[3] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [5]),
        .Q(\dest_graysync_ff[3] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [6]),
        .Q(\dest_graysync_ff[3] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [7]),
        .Q(\dest_graysync_ff[3] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [8]),
        .Q(\dest_graysync_ff[3] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[3][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [9]),
        .Q(\dest_graysync_ff[3] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[3] [3]),
        .I1(\^dest_out_bin [4]),
        .I2(\dest_graysync_ff[3] [1]),
        .I3(\dest_graysync_ff[3] [2]),
        .I4(\dest_graysync_ff[3] [0]),
        .O(\^dest_out_bin [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[10]_INST_0 
       (.I0(\dest_graysync_ff[3] [10]),
        .I1(\dest_graysync_ff[3] [11]),
        .O(\^dest_out_bin [10]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[3] [3]),
        .I1(\^dest_out_bin [4]),
        .I2(\dest_graysync_ff[3] [1]),
        .I3(\dest_graysync_ff[3] [2]),
        .O(\^dest_out_bin [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[3] [3]),
        .I1(\^dest_out_bin [4]),
        .I2(\dest_graysync_ff[3] [2]),
        .O(\^dest_out_bin [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[3] [3]),
        .I1(\^dest_out_bin [4]),
        .O(\^dest_out_bin [3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[3] [7]),
        .I1(\^dest_out_bin [9]),
        .I2(\dest_graysync_ff[3] [8]),
        .I3(\dest_graysync_ff[3] [6]),
        .I4(\dest_graysync_ff[3] [4]),
        .I5(\dest_graysync_ff[3] [5]),
        .O(\^dest_out_bin [4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[3] [7]),
        .I1(\^dest_out_bin [9]),
        .I2(\dest_graysync_ff[3] [8]),
        .I3(\dest_graysync_ff[3] [6]),
        .I4(\dest_graysync_ff[3] [5]),
        .O(\^dest_out_bin [5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[3] [7]),
        .I1(\^dest_out_bin [9]),
        .I2(\dest_graysync_ff[3] [8]),
        .I3(\dest_graysync_ff[3] [6]),
        .O(\^dest_out_bin [6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[3] [7]),
        .I1(\^dest_out_bin [9]),
        .I2(\dest_graysync_ff[3] [8]),
        .O(\^dest_out_bin [7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[8]_INST_0 
       (.I0(\dest_graysync_ff[3] [8]),
        .I1(\^dest_out_bin [9]),
        .O(\^dest_out_bin [8]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[9]_INST_0 
       (.I0(\dest_graysync_ff[3] [9]),
        .I1(\dest_graysync_ff[3] [11]),
        .I2(\dest_graysync_ff[3] [10]),
        .O(\^dest_out_bin [9]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[11]),
        .Q(async_path[11]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module bd_38d0_vb1_0_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module bd_38d0_vb1_0_xpm_cdc_single__3
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module bd_38d0_vb1_0_xpm_cdc_single__4
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "4" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module bd_38d0_vb1_0_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [3:0]syncstages_ff;

  assign dest_rst = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "4" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module bd_38d0_vb1_0_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [3:0]syncstages_ff;

  assign dest_rst = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_38d0_vb1_0_xpm_counter_updn
   (src_in_bin,
    Q,
    \count_value_i_reg[0]_0 ,
    \src_gray_ff_reg[0] ,
    \count_value_i_reg[0]_1 ,
    ram_empty_i,
    rd_en,
    SR,
    rd_clk);
  output [0:0]src_in_bin;
  output [1:0]Q;
  output \count_value_i_reg[0]_0 ;
  input [0:0]\src_gray_ff_reg[0] ;
  input [1:0]\count_value_i_reg[0]_1 ;
  input ram_empty_i;
  input rd_en;
  input [0:0]SR;
  input rd_clk;

  wire [1:0]Q;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__4_n_0 ;
  wire \count_value_i[1]_i_3_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[0]_1 ;
  wire \gen_fwft.count_en ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [0:0]\src_gray_ff_reg[0] ;
  wire [0:0]src_in_bin;

  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h66CE9931)) 
    \count_value_i[0]_i_1__4 
       (.I0(\count_value_i_reg[0]_1 [1]),
        .I1(ram_empty_i),
        .I2(\count_value_i_reg[0]_1 [0]),
        .I3(rd_en),
        .I4(Q[0]),
        .O(\count_value_i[0]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'h9931)) 
    \count_value_i[1]_i_2 
       (.I0(\count_value_i_reg[0]_1 [1]),
        .I1(ram_empty_i),
        .I2(\count_value_i_reg[0]_1 [0]),
        .I3(rd_en),
        .O(\gen_fwft.count_en ));
  LUT6 #(
    .INIT(64'hEE77CEFF11883100)) 
    \count_value_i[1]_i_3 
       (.I0(\count_value_i_reg[0]_1 [1]),
        .I1(ram_empty_i),
        .I2(\count_value_i_reg[0]_1 [0]),
        .I3(Q[0]),
        .I4(rd_en),
        .I5(Q[1]),
        .O(\count_value_i[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[0]_i_1__4_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[1]_i_3_n_0 ),
        .Q(Q[1]),
        .R(SR));
  LUT2 #(
    .INIT(4'h6)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_12 
       (.I0(Q[0]),
        .I1(\src_gray_ff_reg[0] ),
        .O(src_in_bin));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \grdc.rd_data_count_i[1]_i_2 
       (.I0(Q[0]),
        .I1(\src_gray_ff_reg[0] ),
        .O(\count_value_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_38d0_vb1_0_xpm_counter_updn__parameterized0
   (Q,
    ram_empty_i0,
    p_1_in,
    src_in_bin,
    D,
    E,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    \gen_pf_ic_rc.ram_empty_i_reg_0 ,
    \grdc.rd_data_count_i_reg[1] ,
    \gen_pf_ic_rc.ram_empty_i_reg_1 ,
    \grdc.rd_data_count_i_reg[1]_0 ,
    \grdc.rd_data_count_i_reg[11] ,
    \grdc.rd_data_count_i_reg[2] ,
    \count_value_i_reg[11]_0 ,
    ram_empty_i,
    rd_en,
    \count_value_i_reg[11]_1 ,
    rd_clk);
  output [10:0]Q;
  output ram_empty_i0;
  output p_1_in;
  output [10:0]src_in_bin;
  output [11:0]D;
  output [0:0]E;
  input \gen_pf_ic_rc.ram_empty_i_reg ;
  input \gen_pf_ic_rc.ram_empty_i_reg_0 ;
  input [1:0]\grdc.rd_data_count_i_reg[1] ;
  input [10:0]\gen_pf_ic_rc.ram_empty_i_reg_1 ;
  input \grdc.rd_data_count_i_reg[1]_0 ;
  input [11:0]\grdc.rd_data_count_i_reg[11] ;
  input \grdc.rd_data_count_i_reg[2] ;
  input [1:0]\count_value_i_reg[11]_0 ;
  input ram_empty_i;
  input rd_en;
  input \count_value_i_reg[11]_1 ;
  input rd_clk;

  wire [11:0]D;
  wire [0:0]E;
  wire [10:0]Q;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[10]_i_1__3_n_0 ;
  wire \count_value_i[11]_i_1__0_n_0 ;
  wire \count_value_i[11]_i_2__0_n_0 ;
  wire \count_value_i[1]_i_1__3_n_0 ;
  wire \count_value_i[2]_i_1__3_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1__3_n_0 ;
  wire \count_value_i[6]_i_1__3_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__3_n_0 ;
  wire \count_value_i[8]_i_1__3_n_0 ;
  wire \count_value_i[9]_i_1__3_n_0 ;
  wire [1:0]\count_value_i_reg[11]_0 ;
  wire \count_value_i_reg[11]_1 ;
  wire \count_value_i_reg_n_0_[11] ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ;
  wire \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_14_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_7_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_8_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_0 ;
  wire [10:0]\gen_pf_ic_rc.ram_empty_i_reg_1 ;
  wire \grdc.rd_data_count_i_reg[0]_i_1_n_0 ;
  wire \grdc.rd_data_count_i_reg[0]_i_1_n_2 ;
  wire \grdc.rd_data_count_i_reg[0]_i_1_n_3 ;
  wire \grdc.rd_data_count_i_reg[10]_i_1_n_0 ;
  wire \grdc.rd_data_count_i_reg[10]_i_1_n_2 ;
  wire \grdc.rd_data_count_i_reg[10]_i_1_n_3 ;
  wire \grdc.rd_data_count_i_reg[10]_i_2_n_0 ;
  wire \grdc.rd_data_count_i_reg[10]_i_2_n_1 ;
  wire [11:0]\grdc.rd_data_count_i_reg[11] ;
  wire \grdc.rd_data_count_i_reg[11]_i_2_n_0 ;
  wire \grdc.rd_data_count_i_reg[11]_i_2_n_2 ;
  wire \grdc.rd_data_count_i_reg[11]_i_2_n_3 ;
  wire [1:0]\grdc.rd_data_count_i_reg[1] ;
  wire \grdc.rd_data_count_i_reg[1]_0 ;
  wire \grdc.rd_data_count_i_reg[1]_i_1_n_0 ;
  wire \grdc.rd_data_count_i_reg[1]_i_1_n_2 ;
  wire \grdc.rd_data_count_i_reg[1]_i_1_n_3 ;
  wire \grdc.rd_data_count_i_reg[2] ;
  wire \grdc.rd_data_count_i_reg[2]_i_1_n_0 ;
  wire \grdc.rd_data_count_i_reg[2]_i_1_n_2 ;
  wire \grdc.rd_data_count_i_reg[2]_i_1_n_3 ;
  wire \grdc.rd_data_count_i_reg[3]_i_1_n_0 ;
  wire \grdc.rd_data_count_i_reg[3]_i_1_n_2 ;
  wire \grdc.rd_data_count_i_reg[3]_i_1_n_3 ;
  wire \grdc.rd_data_count_i_reg[4]_i_1_n_0 ;
  wire \grdc.rd_data_count_i_reg[4]_i_1_n_2 ;
  wire \grdc.rd_data_count_i_reg[4]_i_1_n_3 ;
  wire \grdc.rd_data_count_i_reg[5]_i_1_n_0 ;
  wire \grdc.rd_data_count_i_reg[5]_i_1_n_2 ;
  wire \grdc.rd_data_count_i_reg[5]_i_1_n_3 ;
  wire \grdc.rd_data_count_i_reg[6]_i_1_n_0 ;
  wire \grdc.rd_data_count_i_reg[6]_i_1_n_2 ;
  wire \grdc.rd_data_count_i_reg[6]_i_1_n_3 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_0 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_2 ;
  wire \grdc.rd_data_count_i_reg[7]_i_1_n_3 ;
  wire \grdc.rd_data_count_i_reg[8]_i_1_n_0 ;
  wire \grdc.rd_data_count_i_reg[8]_i_1_n_2 ;
  wire \grdc.rd_data_count_i_reg[8]_i_1_n_3 ;
  wire \grdc.rd_data_count_i_reg[8]_i_2_n_0 ;
  wire \grdc.rd_data_count_i_reg[8]_i_2_n_1 ;
  wire \grdc.rd_data_count_i_reg[8]_i_2_n_2 ;
  wire \grdc.rd_data_count_i_reg[8]_i_2_n_3 ;
  wire \grdc.rd_data_count_i_reg[9]_i_1_n_0 ;
  wire \grdc.rd_data_count_i_reg[9]_i_1_n_2 ;
  wire \grdc.rd_data_count_i_reg[9]_i_1_n_3 ;
  wire p_1_in;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;
  wire rd_en;
  wire [10:0]src_in_bin;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_2_COUTF_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_2_COUTH_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_2_CYE_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_2_CYF_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_2_CYG_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_2_CYH_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_2_GEE_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_2_GEF_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_2_GEG_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_2_GEH_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_2_PROPE_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_2_PROPF_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_2_PROPG_UNCONNECTED ;
  wire \NLW_grdc.rd_data_count_i_reg[10]_i_2_PROPH_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \count_value_i[0]_i_1__3 
       (.I0(Q[0]),
        .I1(p_1_in),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \count_value_i[10]_i_1__3 
       (.I0(Q[10]),
        .I1(Q[7]),
        .I2(\count_value_i[11]_i_2__0_n_0 ),
        .I3(Q[8]),
        .I4(Q[9]),
        .O(\count_value_i[10]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \count_value_i[11]_i_1__0 
       (.I0(\count_value_i_reg_n_0_[11] ),
        .I1(Q[10]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(\count_value_i[11]_i_2__0_n_0 ),
        .I5(Q[7]),
        .O(\count_value_i[11]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \count_value_i[11]_i_2__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[11]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \count_value_i[1]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(p_1_in),
        .O(\count_value_i[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \count_value_i[2]_i_1__3 
       (.I0(Q[2]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[2]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \count_value_i[5]_i_1__3 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hDFFF2000FFFF0000)) 
    \count_value_i[6]_i_1__3 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(Q[5]),
        .O(\count_value_i[6]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[0]),
        .I1(p_1_in),
        .I2(Q[1]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \count_value_i[7]_i_1__3 
       (.I0(Q[7]),
        .I1(\count_value_i[11]_i_2__0_n_0 ),
        .O(\count_value_i[7]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \count_value_i[8]_i_1__3 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(\count_value_i[11]_i_2__0_n_0 ),
        .O(\count_value_i[8]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \count_value_i[9]_i_1__3 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(\count_value_i[11]_i_2__0_n_0 ),
        .I3(Q[7]),
        .O(\count_value_i[9]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[11]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[10]_i_1__3_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[11]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[11]_i_1__0_n_0 ),
        .Q(\count_value_i_reg_n_0_[11] ),
        .R(\count_value_i_reg[11]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__3_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[11]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__3_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[11]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[11]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[11]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__3_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[11]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1__3_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[11]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[7]_i_1__3_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[11]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[8]_i_1__3_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[11]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[9]_i_1__3_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[11]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1 
       (.I0(\count_value_i_reg_n_0_[11] ),
        .I1(Q[10]),
        .I2(Q[9]),
        .I3(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ),
        .O(src_in_bin[10]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h9AAA559A)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\grdc.rd_data_count_i_reg[1] [0]),
        .I3(\grdc.rd_data_count_i_reg[1] [1]),
        .I4(Q[1]),
        .O(src_in_bin[1]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[1] [0]),
        .I2(Q[1]),
        .I3(\grdc.rd_data_count_i_reg[1] [1]),
        .O(src_in_bin[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_14_n_0 ),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEFAEEF)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_14 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\grdc.rd_data_count_i_reg[1] [1]),
        .I3(\grdc.rd_data_count_i_reg[1] [0]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2 
       (.I0(Q[10]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ),
        .I2(Q[9]),
        .O(src_in_bin[9]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3 
       (.I0(Q[9]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_13_n_0 ),
        .O(src_in_bin[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_14_n_0 ),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(src_in_bin[7]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_14_n_0 ),
        .I3(Q[4]),
        .I4(Q[6]),
        .O(src_in_bin[6]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_14_n_0 ),
        .I3(Q[5]),
        .O(src_in_bin[5]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7 
       (.I0(Q[5]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_14_n_0 ),
        .I2(Q[4]),
        .O(src_in_bin[4]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8 
       (.I0(Q[4]),
        .I1(\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_14_n_0 ),
        .O(src_in_bin[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA9A9A599A)) 
    \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\grdc.rd_data_count_i_reg[1] [1]),
        .I3(\grdc.rd_data_count_i_reg[1] [0]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(src_in_bin[2]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h4444444F)) 
    \gen_pf_ic_rc.ram_empty_i_i_1 
       (.I0(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ),
        .I1(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg ),
        .I3(\gen_pf_ic_rc.ram_empty_i_reg_0 ),
        .I4(p_1_in),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_pf_ic_rc.ram_empty_i_i_2 
       (.I0(Q[6]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_1 [6]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_1 [8]),
        .I3(Q[8]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_1 [7]),
        .I5(Q[7]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4004000000004004)) 
    \gen_pf_ic_rc.ram_empty_i_i_3 
       (.I0(\gen_pf_ic_rc.ram_empty_i_i_7_n_0 ),
        .I1(\gen_pf_ic_rc.ram_empty_i_i_8_n_0 ),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_1 [9]),
        .I3(Q[9]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_1 [10]),
        .I5(Q[10]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hCCCE)) 
    \gen_pf_ic_rc.ram_empty_i_i_6 
       (.I0(\count_value_i_reg[11]_0 [1]),
        .I1(ram_empty_i),
        .I2(\count_value_i_reg[11]_0 [0]),
        .I3(rd_en),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_pf_ic_rc.ram_empty_i_i_7 
       (.I0(Q[0]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_1 [0]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_1 [2]),
        .I3(Q[2]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_1 [1]),
        .I5(Q[1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_8 
       (.I0(Q[4]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_1 [4]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_1 [3]),
        .I3(Q[3]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_1 [5]),
        .I5(Q[5]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h3331)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[11]_0 [1]),
        .I1(ram_empty_i),
        .I2(\count_value_i_reg[11]_0 [0]),
        .I3(rd_en),
        .O(E));
  LUT6CY #(
    .INIT(64'hFF3C3C003CC3C33C)) 
    \grdc.rd_data_count_i_reg[0]_i_1 
       (.GE(\grdc.rd_data_count_i_reg[0]_i_1_n_0 ),
        .I0(1'b1),
        .I1(Q[0]),
        .I2(\grdc.rd_data_count_i_reg[1] [0]),
        .I3(\grdc.rd_data_count_i_reg[11] [0]),
        .I4(1'b0),
        .O51(D[0]),
        .O52(\grdc.rd_data_count_i_reg[0]_i_1_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[0]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF44F40044BB4B44B)) 
    \grdc.rd_data_count_i_reg[10]_i_1 
       (.GE(\grdc.rd_data_count_i_reg[10]_i_1_n_0 ),
        .I0(Q[9]),
        .I1(\grdc.rd_data_count_i_reg[11] [9]),
        .I2(Q[10]),
        .I3(\grdc.rd_data_count_i_reg[11] [10]),
        .I4(\grdc.rd_data_count_i_reg[10]_i_2_n_0 ),
        .O51(D[10]),
        .O52(\grdc.rd_data_count_i_reg[10]_i_1_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[10]_i_1_n_3 ));
  (* KEEP = "yes" *) 
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("FALSE"),
    .LOOKH("FALSE")) 
    \grdc.rd_data_count_i_reg[10]_i_2 
       (.CIN(\grdc.rd_data_count_i_reg[8]_i_2_n_3 ),
        .COUTB(\grdc.rd_data_count_i_reg[10]_i_2_n_0 ),
        .COUTD(\grdc.rd_data_count_i_reg[10]_i_2_n_1 ),
        .COUTF(\NLW_grdc.rd_data_count_i_reg[10]_i_2_COUTF_UNCONNECTED ),
        .COUTH(\NLW_grdc.rd_data_count_i_reg[10]_i_2_COUTH_UNCONNECTED ),
        .CYA(\grdc.rd_data_count_i_reg[8]_i_1_n_2 ),
        .CYB(\grdc.rd_data_count_i_reg[9]_i_1_n_2 ),
        .CYC(\grdc.rd_data_count_i_reg[10]_i_1_n_2 ),
        .CYD(\grdc.rd_data_count_i_reg[11]_i_2_n_2 ),
        .CYE(\NLW_grdc.rd_data_count_i_reg[10]_i_2_CYE_UNCONNECTED ),
        .CYF(\NLW_grdc.rd_data_count_i_reg[10]_i_2_CYF_UNCONNECTED ),
        .CYG(\NLW_grdc.rd_data_count_i_reg[10]_i_2_CYG_UNCONNECTED ),
        .CYH(\NLW_grdc.rd_data_count_i_reg[10]_i_2_CYH_UNCONNECTED ),
        .GEA(\grdc.rd_data_count_i_reg[8]_i_1_n_0 ),
        .GEB(\grdc.rd_data_count_i_reg[9]_i_1_n_0 ),
        .GEC(\grdc.rd_data_count_i_reg[10]_i_1_n_0 ),
        .GED(\grdc.rd_data_count_i_reg[11]_i_2_n_0 ),
        .GEE(\NLW_grdc.rd_data_count_i_reg[10]_i_2_GEE_UNCONNECTED ),
        .GEF(\NLW_grdc.rd_data_count_i_reg[10]_i_2_GEF_UNCONNECTED ),
        .GEG(\NLW_grdc.rd_data_count_i_reg[10]_i_2_GEG_UNCONNECTED ),
        .GEH(\NLW_grdc.rd_data_count_i_reg[10]_i_2_GEH_UNCONNECTED ),
        .PROPA(\grdc.rd_data_count_i_reg[8]_i_1_n_3 ),
        .PROPB(\grdc.rd_data_count_i_reg[9]_i_1_n_3 ),
        .PROPC(\grdc.rd_data_count_i_reg[10]_i_1_n_3 ),
        .PROPD(\grdc.rd_data_count_i_reg[11]_i_2_n_3 ),
        .PROPE(\NLW_grdc.rd_data_count_i_reg[10]_i_2_PROPE_UNCONNECTED ),
        .PROPF(\NLW_grdc.rd_data_count_i_reg[10]_i_2_PROPF_UNCONNECTED ),
        .PROPG(\NLW_grdc.rd_data_count_i_reg[10]_i_2_PROPG_UNCONNECTED ),
        .PROPH(\NLW_grdc.rd_data_count_i_reg[10]_i_2_PROPH_UNCONNECTED ));
  LUT6CY #(
    .INIT(64'hD22DD22D2DD2D22D)) 
    \grdc.rd_data_count_i_reg[11]_i_2 
       (.GE(\grdc.rd_data_count_i_reg[11]_i_2_n_0 ),
        .I0(\grdc.rd_data_count_i_reg[11] [10]),
        .I1(Q[10]),
        .I2(\count_value_i_reg_n_0_[11] ),
        .I3(\grdc.rd_data_count_i_reg[11] [11]),
        .I4(\grdc.rd_data_count_i_reg[10]_i_1_n_2 ),
        .O51(D[11]),
        .O52(\grdc.rd_data_count_i_reg[11]_i_2_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[11]_i_2_n_3 ));
  LUT6CY #(
    .INIT(64'hBEEB288269969669)) 
    \grdc.rd_data_count_i_reg[1]_i_1 
       (.GE(\grdc.rd_data_count_i_reg[1]_i_1_n_0 ),
        .I0(\grdc.rd_data_count_i_reg[1]_0 ),
        .I1(\grdc.rd_data_count_i_reg[1] [1]),
        .I2(Q[1]),
        .I3(\grdc.rd_data_count_i_reg[11] [1]),
        .I4(\grdc.rd_data_count_i_reg[0]_i_1_n_2 ),
        .O51(D[1]),
        .O52(\grdc.rd_data_count_i_reg[1]_i_1_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[1]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hFCCFC00CC33C3CC3)) 
    \grdc.rd_data_count_i_reg[2]_i_1 
       (.GE(\grdc.rd_data_count_i_reg[2]_i_1_n_0 ),
        .I0(1'b1),
        .I1(\grdc.rd_data_count_i_reg[2] ),
        .I2(Q[2]),
        .I3(\grdc.rd_data_count_i_reg[11] [2]),
        .I4(\grdc.rd_data_count_i_reg[8]_i_2_n_0 ),
        .O51(D[2]),
        .O52(\grdc.rd_data_count_i_reg[2]_i_1_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[2]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF44F40044BB4B44B)) 
    \grdc.rd_data_count_i_reg[3]_i_1 
       (.GE(\grdc.rd_data_count_i_reg[3]_i_1_n_0 ),
        .I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[11] [2]),
        .I2(Q[3]),
        .I3(\grdc.rd_data_count_i_reg[11] [3]),
        .I4(\grdc.rd_data_count_i_reg[2]_i_1_n_2 ),
        .O51(D[3]),
        .O52(\grdc.rd_data_count_i_reg[3]_i_1_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[3]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF44F40044BB4B44B)) 
    \grdc.rd_data_count_i_reg[4]_i_1 
       (.GE(\grdc.rd_data_count_i_reg[4]_i_1_n_0 ),
        .I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[11] [3]),
        .I2(Q[4]),
        .I3(\grdc.rd_data_count_i_reg[11] [4]),
        .I4(\grdc.rd_data_count_i_reg[8]_i_2_n_1 ),
        .O51(D[4]),
        .O52(\grdc.rd_data_count_i_reg[4]_i_1_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[4]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF44F40044BB4B44B)) 
    \grdc.rd_data_count_i_reg[5]_i_1 
       (.GE(\grdc.rd_data_count_i_reg[5]_i_1_n_0 ),
        .I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[11] [4]),
        .I2(Q[5]),
        .I3(\grdc.rd_data_count_i_reg[11] [5]),
        .I4(\grdc.rd_data_count_i_reg[4]_i_1_n_2 ),
        .O51(D[5]),
        .O52(\grdc.rd_data_count_i_reg[5]_i_1_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[5]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF44F40044BB4B44B)) 
    \grdc.rd_data_count_i_reg[6]_i_1 
       (.GE(\grdc.rd_data_count_i_reg[6]_i_1_n_0 ),
        .I0(Q[5]),
        .I1(\grdc.rd_data_count_i_reg[11] [5]),
        .I2(Q[6]),
        .I3(\grdc.rd_data_count_i_reg[11] [6]),
        .I4(\grdc.rd_data_count_i_reg[8]_i_2_n_2 ),
        .O51(D[6]),
        .O52(\grdc.rd_data_count_i_reg[6]_i_1_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[6]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF44F40044BB4B44B)) 
    \grdc.rd_data_count_i_reg[7]_i_1 
       (.GE(\grdc.rd_data_count_i_reg[7]_i_1_n_0 ),
        .I0(Q[6]),
        .I1(\grdc.rd_data_count_i_reg[11] [6]),
        .I2(Q[7]),
        .I3(\grdc.rd_data_count_i_reg[11] [7]),
        .I4(\grdc.rd_data_count_i_reg[6]_i_1_n_2 ),
        .O51(D[7]),
        .O52(\grdc.rd_data_count_i_reg[7]_i_1_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[7]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF44F40044BB4B44B)) 
    \grdc.rd_data_count_i_reg[8]_i_1 
       (.GE(\grdc.rd_data_count_i_reg[8]_i_1_n_0 ),
        .I0(Q[7]),
        .I1(\grdc.rd_data_count_i_reg[11] [7]),
        .I2(Q[8]),
        .I3(\grdc.rd_data_count_i_reg[11] [8]),
        .I4(\grdc.rd_data_count_i_reg[8]_i_2_n_3 ),
        .O51(D[8]),
        .O52(\grdc.rd_data_count_i_reg[8]_i_1_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[8]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \grdc.rd_data_count_i_reg[8]_i_2 
       (.CIN(1'b0),
        .COUTB(\grdc.rd_data_count_i_reg[8]_i_2_n_0 ),
        .COUTD(\grdc.rd_data_count_i_reg[8]_i_2_n_1 ),
        .COUTF(\grdc.rd_data_count_i_reg[8]_i_2_n_2 ),
        .COUTH(\grdc.rd_data_count_i_reg[8]_i_2_n_3 ),
        .CYA(\grdc.rd_data_count_i_reg[0]_i_1_n_2 ),
        .CYB(\grdc.rd_data_count_i_reg[1]_i_1_n_2 ),
        .CYC(\grdc.rd_data_count_i_reg[2]_i_1_n_2 ),
        .CYD(\grdc.rd_data_count_i_reg[3]_i_1_n_2 ),
        .CYE(\grdc.rd_data_count_i_reg[4]_i_1_n_2 ),
        .CYF(\grdc.rd_data_count_i_reg[5]_i_1_n_2 ),
        .CYG(\grdc.rd_data_count_i_reg[6]_i_1_n_2 ),
        .CYH(\grdc.rd_data_count_i_reg[7]_i_1_n_2 ),
        .GEA(\grdc.rd_data_count_i_reg[0]_i_1_n_0 ),
        .GEB(\grdc.rd_data_count_i_reg[1]_i_1_n_0 ),
        .GEC(\grdc.rd_data_count_i_reg[2]_i_1_n_0 ),
        .GED(\grdc.rd_data_count_i_reg[3]_i_1_n_0 ),
        .GEE(\grdc.rd_data_count_i_reg[4]_i_1_n_0 ),
        .GEF(\grdc.rd_data_count_i_reg[5]_i_1_n_0 ),
        .GEG(\grdc.rd_data_count_i_reg[6]_i_1_n_0 ),
        .GEH(\grdc.rd_data_count_i_reg[7]_i_1_n_0 ),
        .PROPA(\grdc.rd_data_count_i_reg[0]_i_1_n_3 ),
        .PROPB(\grdc.rd_data_count_i_reg[1]_i_1_n_3 ),
        .PROPC(\grdc.rd_data_count_i_reg[2]_i_1_n_3 ),
        .PROPD(\grdc.rd_data_count_i_reg[3]_i_1_n_3 ),
        .PROPE(\grdc.rd_data_count_i_reg[4]_i_1_n_3 ),
        .PROPF(\grdc.rd_data_count_i_reg[5]_i_1_n_3 ),
        .PROPG(\grdc.rd_data_count_i_reg[6]_i_1_n_3 ),
        .PROPH(\grdc.rd_data_count_i_reg[7]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF44F40044BB4B44B)) 
    \grdc.rd_data_count_i_reg[9]_i_1 
       (.GE(\grdc.rd_data_count_i_reg[9]_i_1_n_0 ),
        .I0(Q[8]),
        .I1(\grdc.rd_data_count_i_reg[11] [8]),
        .I2(Q[9]),
        .I3(\grdc.rd_data_count_i_reg[11] [9]),
        .I4(\grdc.rd_data_count_i_reg[8]_i_1_n_2 ),
        .O51(D[9]),
        .O52(\grdc.rd_data_count_i_reg[9]_i_1_n_2 ),
        .PROP(\grdc.rd_data_count_i_reg[9]_i_1_n_3 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_38d0_vb1_0_xpm_counter_updn__parameterized0_2
   (Q,
    D,
    \gwdc.wr_data_count_i_reg[11] ,
    wr_pntr_plus1_pf_carry,
    wrst_busy,
    wr_clk);
  output [11:0]Q;
  output [11:0]D;
  input [11:0]\gwdc.wr_data_count_i_reg[11] ;
  input wr_pntr_plus1_pf_carry;
  input wrst_busy;
  input wr_clk;

  wire [11:0]D;
  wire [11:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[10]_i_1_n_0 ;
  wire \count_value_i[11]_i_1_n_0 ;
  wire \count_value_i[11]_i_2_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[7]_i_2_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[9]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[0]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[0]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[0]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_2_n_1 ;
  wire [11:0]\gwdc.wr_data_count_i_reg[11] ;
  wire \gwdc.wr_data_count_i_reg[11]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[11]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[11]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[1]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[1]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[1]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[2]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[2]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[2]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[4]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[4]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[4]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[5]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[5]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[5]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[6]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[6]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[6]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[8]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[8]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[8]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[8]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i_reg[8]_i_2_n_1 ;
  wire \gwdc.wr_data_count_i_reg[8]_i_2_n_2 ;
  wire \gwdc.wr_data_count_i_reg[8]_i_2_n_3 ;
  wire \gwdc.wr_data_count_i_reg[9]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[9]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[9]_i_1_n_3 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_COUTF_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_COUTH_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_CYE_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_CYF_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_CYG_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_CYH_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_GEE_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_GEF_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_GEG_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_GEH_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_PROPE_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_PROPF_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_PROPG_UNCONNECTED ;
  wire \NLW_gwdc.wr_data_count_i_reg[10]_i_2_PROPH_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1 
       (.I0(Q[8]),
        .I1(\count_value_i[11]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[11]_i_1 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(\count_value_i[11]_i_2_n_0 ),
        .I3(Q[8]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(\count_value_i[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \count_value_i[11]_i_2 
       (.I0(Q[6]),
        .I1(\count_value_i[7]_i_2_n_0 ),
        .I2(Q[5]),
        .O(\count_value_i[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[5]_i_1 
       (.I0(\count_value_i[7]_i_2_n_0 ),
        .I1(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[6]_i_1 
       (.I0(\count_value_i[7]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[8]_i_1 
       (.I0(\count_value_i[11]_i_2_n_0 ),
        .I1(Q[7]),
        .I2(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[9]_i_1 
       (.I0(Q[7]),
        .I1(\count_value_i[11]_i_2_n_0 ),
        .I2(Q[8]),
        .I3(Q[9]),
        .O(\count_value_i[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[11]_i_1_n_0 ),
        .Q(Q[11]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(wrst_busy));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gwdc.wr_data_count_i_reg[0]_i_1 
       (.GE(\gwdc.wr_data_count_i_reg[0]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[0]),
        .I3(\gwdc.wr_data_count_i_reg[11] [0]),
        .I4(1'b1),
        .O51(D[0]),
        .O52(\gwdc.wr_data_count_i_reg[0]_i_1_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[0]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gwdc.wr_data_count_i_reg[10]_i_1 
       (.GE(\gwdc.wr_data_count_i_reg[10]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[10]),
        .I3(\gwdc.wr_data_count_i_reg[11] [10]),
        .I4(\gwdc.wr_data_count_i_reg[10]_i_2_n_0 ),
        .O51(D[10]),
        .O52(\gwdc.wr_data_count_i_reg[10]_i_1_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[10]_i_1_n_3 ));
  (* KEEP = "yes" *) 
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("FALSE"),
    .LOOKH("FALSE")) 
    \gwdc.wr_data_count_i_reg[10]_i_2 
       (.CIN(\gwdc.wr_data_count_i_reg[8]_i_2_n_3 ),
        .COUTB(\gwdc.wr_data_count_i_reg[10]_i_2_n_0 ),
        .COUTD(\gwdc.wr_data_count_i_reg[10]_i_2_n_1 ),
        .COUTF(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_COUTF_UNCONNECTED ),
        .COUTH(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_COUTH_UNCONNECTED ),
        .CYA(\gwdc.wr_data_count_i_reg[8]_i_1_n_2 ),
        .CYB(\gwdc.wr_data_count_i_reg[9]_i_1_n_2 ),
        .CYC(\gwdc.wr_data_count_i_reg[10]_i_1_n_2 ),
        .CYD(\gwdc.wr_data_count_i_reg[11]_i_1_n_2 ),
        .CYE(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_CYE_UNCONNECTED ),
        .CYF(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_CYF_UNCONNECTED ),
        .CYG(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_CYG_UNCONNECTED ),
        .CYH(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_CYH_UNCONNECTED ),
        .GEA(\gwdc.wr_data_count_i_reg[8]_i_1_n_0 ),
        .GEB(\gwdc.wr_data_count_i_reg[9]_i_1_n_0 ),
        .GEC(\gwdc.wr_data_count_i_reg[10]_i_1_n_0 ),
        .GED(\gwdc.wr_data_count_i_reg[11]_i_1_n_0 ),
        .GEE(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_GEE_UNCONNECTED ),
        .GEF(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_GEF_UNCONNECTED ),
        .GEG(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_GEG_UNCONNECTED ),
        .GEH(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_GEH_UNCONNECTED ),
        .PROPA(\gwdc.wr_data_count_i_reg[8]_i_1_n_3 ),
        .PROPB(\gwdc.wr_data_count_i_reg[9]_i_1_n_3 ),
        .PROPC(\gwdc.wr_data_count_i_reg[10]_i_1_n_3 ),
        .PROPD(\gwdc.wr_data_count_i_reg[11]_i_1_n_3 ),
        .PROPE(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_PROPE_UNCONNECTED ),
        .PROPF(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_PROPF_UNCONNECTED ),
        .PROPG(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_PROPG_UNCONNECTED ),
        .PROPH(\NLW_gwdc.wr_data_count_i_reg[10]_i_2_PROPH_UNCONNECTED ));
  LUT6CY #(
    .INIT(64'hF00FF00F0FF0F00F)) 
    \gwdc.wr_data_count_i_reg[11]_i_1 
       (.GE(\gwdc.wr_data_count_i_reg[11]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[11]),
        .I3(\gwdc.wr_data_count_i_reg[11] [11]),
        .I4(\gwdc.wr_data_count_i_reg[10]_i_1_n_2 ),
        .O51(D[11]),
        .O52(\gwdc.wr_data_count_i_reg[11]_i_1_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[11]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gwdc.wr_data_count_i_reg[1]_i_1 
       (.GE(\gwdc.wr_data_count_i_reg[1]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[1]),
        .I3(\gwdc.wr_data_count_i_reg[11] [1]),
        .I4(\gwdc.wr_data_count_i_reg[0]_i_1_n_2 ),
        .O51(D[1]),
        .O52(\gwdc.wr_data_count_i_reg[1]_i_1_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[1]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gwdc.wr_data_count_i_reg[2]_i_1 
       (.GE(\gwdc.wr_data_count_i_reg[2]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[2]),
        .I3(\gwdc.wr_data_count_i_reg[11] [2]),
        .I4(\gwdc.wr_data_count_i_reg[8]_i_2_n_0 ),
        .O51(D[2]),
        .O52(\gwdc.wr_data_count_i_reg[2]_i_1_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[2]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gwdc.wr_data_count_i_reg[3]_i_1 
       (.GE(\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[3]),
        .I3(\gwdc.wr_data_count_i_reg[11] [3]),
        .I4(\gwdc.wr_data_count_i_reg[2]_i_1_n_2 ),
        .O51(D[3]),
        .O52(\gwdc.wr_data_count_i_reg[3]_i_1_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[3]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gwdc.wr_data_count_i_reg[4]_i_1 
       (.GE(\gwdc.wr_data_count_i_reg[4]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[4]),
        .I3(\gwdc.wr_data_count_i_reg[11] [4]),
        .I4(\gwdc.wr_data_count_i_reg[8]_i_2_n_1 ),
        .O51(D[4]),
        .O52(\gwdc.wr_data_count_i_reg[4]_i_1_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[4]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gwdc.wr_data_count_i_reg[5]_i_1 
       (.GE(\gwdc.wr_data_count_i_reg[5]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[5]),
        .I3(\gwdc.wr_data_count_i_reg[11] [5]),
        .I4(\gwdc.wr_data_count_i_reg[4]_i_1_n_2 ),
        .O51(D[5]),
        .O52(\gwdc.wr_data_count_i_reg[5]_i_1_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[5]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gwdc.wr_data_count_i_reg[6]_i_1 
       (.GE(\gwdc.wr_data_count_i_reg[6]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[6]),
        .I3(\gwdc.wr_data_count_i_reg[11] [6]),
        .I4(\gwdc.wr_data_count_i_reg[8]_i_2_n_2 ),
        .O51(D[6]),
        .O52(\gwdc.wr_data_count_i_reg[6]_i_1_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[6]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gwdc.wr_data_count_i_reg[7]_i_1 
       (.GE(\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[7]),
        .I3(\gwdc.wr_data_count_i_reg[11] [7]),
        .I4(\gwdc.wr_data_count_i_reg[6]_i_1_n_2 ),
        .O51(D[7]),
        .O52(\gwdc.wr_data_count_i_reg[7]_i_1_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[7]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gwdc.wr_data_count_i_reg[8]_i_1 
       (.GE(\gwdc.wr_data_count_i_reg[8]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[8]),
        .I3(\gwdc.wr_data_count_i_reg[11] [8]),
        .I4(\gwdc.wr_data_count_i_reg[8]_i_2_n_3 ),
        .O51(D[8]),
        .O52(\gwdc.wr_data_count_i_reg[8]_i_1_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[8]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \gwdc.wr_data_count_i_reg[8]_i_2 
       (.CIN(1'b1),
        .COUTB(\gwdc.wr_data_count_i_reg[8]_i_2_n_0 ),
        .COUTD(\gwdc.wr_data_count_i_reg[8]_i_2_n_1 ),
        .COUTF(\gwdc.wr_data_count_i_reg[8]_i_2_n_2 ),
        .COUTH(\gwdc.wr_data_count_i_reg[8]_i_2_n_3 ),
        .CYA(\gwdc.wr_data_count_i_reg[0]_i_1_n_2 ),
        .CYB(\gwdc.wr_data_count_i_reg[1]_i_1_n_2 ),
        .CYC(\gwdc.wr_data_count_i_reg[2]_i_1_n_2 ),
        .CYD(\gwdc.wr_data_count_i_reg[3]_i_1_n_2 ),
        .CYE(\gwdc.wr_data_count_i_reg[4]_i_1_n_2 ),
        .CYF(\gwdc.wr_data_count_i_reg[5]_i_1_n_2 ),
        .CYG(\gwdc.wr_data_count_i_reg[6]_i_1_n_2 ),
        .CYH(\gwdc.wr_data_count_i_reg[7]_i_1_n_2 ),
        .GEA(\gwdc.wr_data_count_i_reg[0]_i_1_n_0 ),
        .GEB(\gwdc.wr_data_count_i_reg[1]_i_1_n_0 ),
        .GEC(\gwdc.wr_data_count_i_reg[2]_i_1_n_0 ),
        .GED(\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ),
        .GEE(\gwdc.wr_data_count_i_reg[4]_i_1_n_0 ),
        .GEF(\gwdc.wr_data_count_i_reg[5]_i_1_n_0 ),
        .GEG(\gwdc.wr_data_count_i_reg[6]_i_1_n_0 ),
        .GEH(\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ),
        .PROPA(\gwdc.wr_data_count_i_reg[0]_i_1_n_3 ),
        .PROPB(\gwdc.wr_data_count_i_reg[1]_i_1_n_3 ),
        .PROPC(\gwdc.wr_data_count_i_reg[2]_i_1_n_3 ),
        .PROPD(\gwdc.wr_data_count_i_reg[3]_i_1_n_3 ),
        .PROPE(\gwdc.wr_data_count_i_reg[4]_i_1_n_3 ),
        .PROPF(\gwdc.wr_data_count_i_reg[5]_i_1_n_3 ),
        .PROPG(\gwdc.wr_data_count_i_reg[6]_i_1_n_3 ),
        .PROPH(\gwdc.wr_data_count_i_reg[7]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gwdc.wr_data_count_i_reg[9]_i_1 
       (.GE(\gwdc.wr_data_count_i_reg[9]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[9]),
        .I3(\gwdc.wr_data_count_i_reg[11] [9]),
        .I4(\gwdc.wr_data_count_i_reg[8]_i_1_n_2 ),
        .O51(D[9]),
        .O52(\gwdc.wr_data_count_i_reg[9]_i_1_n_2 ),
        .PROP(\gwdc.wr_data_count_i_reg[9]_i_1_n_3 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_38d0_vb1_0_xpm_counter_updn__parameterized1
   (Q,
    \count_value_i_reg[4]_0 ,
    p_1_in,
    \gen_pf_ic_rc.ram_empty_i_i_4 ,
    \count_value_i_reg[0]_0 ,
    E,
    rd_clk);
  output [7:0]Q;
  output \count_value_i_reg[4]_0 ;
  input p_1_in;
  input [2:0]\gen_pf_ic_rc.ram_empty_i_i_4 ;
  input \count_value_i_reg[0]_0 ;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [7:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[10]_i_1__2_n_0 ;
  wire \count_value_i[10]_i_2__1_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[8]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_1__2_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[4]_0 ;
  wire \count_value_i_reg_n_0_[3] ;
  wire \count_value_i_reg_n_0_[4] ;
  wire \count_value_i_reg_n_0_[5] ;
  wire [2:0]\gen_pf_ic_rc.ram_empty_i_i_4 ;
  wire p_1_in;
  wire rd_clk;

  LUT2 #(
    .INIT(4'h9)) 
    \count_value_i[0]_i_1__2 
       (.I0(Q[0]),
        .I1(p_1_in),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_value_i[10]_i_1__2 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[10]_i_2__1_n_0 ),
        .I3(Q[4]),
        .I4(Q[6]),
        .O(\count_value_i[10]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \count_value_i[10]_i_2__1 
       (.I0(\count_value_i_reg_n_0_[3] ),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(\count_value_i_reg_n_0_[4] ),
        .I4(Q[3]),
        .I5(\count_value_i_reg_n_0_[5] ),
        .O(\count_value_i[10]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \count_value_i[1]_i_1__2 
       (.I0(Q[1]),
        .I1(p_1_in),
        .I2(Q[0]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[2]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \count_value_i[3]_i_1 
       (.I0(\count_value_i_reg_n_0_[3] ),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \count_value_i[4]_i_1 
       (.I0(\count_value_i_reg_n_0_[4] ),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(\count_value_i_reg_n_0_[3] ),
        .O(\count_value_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \count_value_i[5]_i_1__2 
       (.I0(\count_value_i_reg_n_0_[3] ),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(\count_value_i_reg_n_0_[4] ),
        .I4(\count_value_i_reg_n_0_[5] ),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFF20000000)) 
    \count_value_i[6]_i_1__2 
       (.I0(\count_value_i_reg_n_0_[3] ),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(\count_value_i_reg_n_0_[4] ),
        .I4(\count_value_i_reg_n_0_[5] ),
        .I5(Q[3]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \count_value_i[6]_i_2 
       (.I0(Q[0]),
        .I1(p_1_in),
        .I2(Q[1]),
        .O(\count_value_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[4]),
        .I1(\count_value_i[10]_i_2__1_n_0 ),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_value_i[8]_i_1__2 
       (.I0(Q[5]),
        .I1(\count_value_i[10]_i_2__1_n_0 ),
        .I2(Q[4]),
        .O(\count_value_i[8]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count_value_i[9]_i_1__2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(\count_value_i[10]_i_2__1_n_0 ),
        .I3(Q[5]),
        .O(\count_value_i[9]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[10]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(\count_value_i_reg_n_0_[3] ),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(\count_value_i_reg_n_0_[4] ),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(\count_value_i_reg_n_0_[5] ),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[8]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[9]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_pf_ic_rc.ram_empty_i_i_10 
       (.I0(\count_value_i_reg_n_0_[4] ),
        .I1(\gen_pf_ic_rc.ram_empty_i_i_4 [1]),
        .I2(\count_value_i_reg_n_0_[5] ),
        .I3(\gen_pf_ic_rc.ram_empty_i_i_4 [2]),
        .I4(\gen_pf_ic_rc.ram_empty_i_i_4 [0]),
        .I5(\count_value_i_reg_n_0_[3] ),
        .O(\count_value_i_reg[4]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_38d0_vb1_0_xpm_counter_updn__parameterized1_3
   (Q,
    wr_pntr_plus1_pf_carry,
    wrst_busy,
    wr_clk);
  output [10:0]Q;
  input wr_pntr_plus1_pf_carry;
  input wrst_busy;
  input wr_clk;

  wire [10:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[10]_i_1__0_n_0 ;
  wire \count_value_i[10]_i_2_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[7]_i_2__0_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_1__0_n_0 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__0 
       (.I0(Q[8]),
        .I1(\count_value_i[10]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \count_value_i[10]_i_2 
       (.I0(Q[6]),
        .I1(\count_value_i[7]_i_2__0_n_0 ),
        .I2(Q[5]),
        .O(\count_value_i[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[5]_i_1__0 
       (.I0(\count_value_i[7]_i_2__0_n_0 ),
        .I1(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[6]_i_1__0 
       (.I0(\count_value_i[7]_i_2__0_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[8]_i_1__0 
       (.I0(\count_value_i[10]_i_2_n_0 ),
        .I1(Q[7]),
        .I2(Q[8]),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[9]_i_1__0 
       (.I0(Q[7]),
        .I1(\count_value_i[10]_i_2_n_0 ),
        .I2(Q[8]),
        .I3(Q[9]),
        .O(\count_value_i[9]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[10]_i_1__0_n_0 ),
        .Q(Q[10]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(Q[9]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module bd_38d0_vb1_0_xpm_counter_updn__parameterized2
   (Q,
    wr_pntr_plus1_pf_carry,
    wrst_busy,
    wr_clk);
  output [10:0]Q;
  input wr_pntr_plus1_pf_carry;
  input wrst_busy;
  input wr_clk;

  wire [10:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[10]_i_1__1_n_0 ;
  wire \count_value_i[10]_i_2__0_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1__3_n_0 ;
  wire \count_value_i[4]_i_1__3_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[7]_i_2__1_n_0 ;
  wire \count_value_i[8]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_1__1_n_0 ;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__1 
       (.I0(Q[8]),
        .I1(\count_value_i[10]_i_2__0_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \count_value_i[10]_i_2__0 
       (.I0(Q[6]),
        .I1(\count_value_i[7]_i_2__1_n_0 ),
        .I2(Q[5]),
        .O(\count_value_i[10]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[3]_i_1__3 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\count_value_i[3]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[4]_i_1__3 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\count_value_i[4]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[5]_i_1__1 
       (.I0(\count_value_i[7]_i_2__1_n_0 ),
        .I1(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[6]_i_1__1 
       (.I0(\count_value_i[7]_i_2__1_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2__1_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2__1 
       (.I0(Q[1]),
        .I1(wr_pntr_plus1_pf_carry),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2__1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[8]_i_1__1 
       (.I0(\count_value_i[10]_i_2__0_n_0 ),
        .I1(Q[7]),
        .I2(Q[8]),
        .O(\count_value_i[8]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[9]_i_1__1 
       (.I0(Q[7]),
        .I1(\count_value_i[10]_i_2__0_n_0 ),
        .I2(Q[8]),
        .I3(Q[9]),
        .O(\count_value_i[9]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[10]_i_1__1_n_0 ),
        .Q(Q[10]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[3]_i_1__3_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[4]_i_1__3_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[8]_i_1__1_n_0 ),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(wr_pntr_plus1_pf_carry),
        .D(\count_value_i[9]_i_1__1_n_0 ),
        .Q(Q[9]),
        .R(wrst_busy));
endmodule

(* CASCADE_HEIGHT = "1" *) (* CDC_SYNC_STAGES = "4" *) (* DOUT_RESET_VALUE = "0" *) 
(* ECC_MODE = "no_ecc" *) (* EN_ADV_FEATURE_ASYNC = "16'b0000011100000111" *) (* FIFO_MEMORY_TYPE = "auto" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_WRITE_DEPTH = "2048" *) (* FULL_RESET_VALUE = "1" *) 
(* ORIG_REF_NAME = "xpm_fifo_async" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* P_COMMON_CLOCK = "0" *) (* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "0" *) 
(* P_READ_MODE = "1" *) (* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "12" *) 
(* READ_DATA_WIDTH = "195" *) (* READ_MODE = "fwft" *) (* RELATED_CLOCKS = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH = "195" *) (* WR_DATA_COUNT_WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) 
(* dont_touch = "true" *) 
module bd_38d0_vb1_0_xpm_fifo_async
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [194:0]din;
  output full;
  output prog_full;
  output [11:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [194:0]dout;
  output empty;
  output prog_empty;
  output [11:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [194:0]din;
  wire [193:0]\^dout ;
  wire empty;
  wire full;
  wire overflow;
  wire prog_empty;
  wire prog_full;
  wire rd_clk;
  wire [11:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire sleep;
  wire underflow;
  wire wr_clk;
  wire [11:0]wr_data_count;
  wire wr_en;
  wire wr_rst_busy;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_empty_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_full_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_data_valid_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_ack_UNCONNECTED ;
  wire [194:120]\NLW_gnuram_async_fifo.xpm_fifo_base_inst_dout_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign dout[194] = \<const0> ;
  assign dout[193:192] = \^dout [193:192];
  assign dout[191] = \<const0> ;
  assign dout[190] = \<const0> ;
  assign dout[189] = \<const0> ;
  assign dout[188] = \<const0> ;
  assign dout[187] = \<const0> ;
  assign dout[186] = \<const0> ;
  assign dout[185] = \<const0> ;
  assign dout[184] = \<const0> ;
  assign dout[183] = \<const0> ;
  assign dout[182] = \<const0> ;
  assign dout[181] = \<const0> ;
  assign dout[180] = \<const0> ;
  assign dout[179] = \<const0> ;
  assign dout[178] = \<const0> ;
  assign dout[177] = \<const0> ;
  assign dout[176] = \<const0> ;
  assign dout[175] = \<const0> ;
  assign dout[174] = \<const0> ;
  assign dout[173] = \<const0> ;
  assign dout[172] = \<const0> ;
  assign dout[171] = \<const0> ;
  assign dout[170] = \<const0> ;
  assign dout[169] = \<const0> ;
  assign dout[168] = \<const0> ;
  assign dout[167] = \<const0> ;
  assign dout[166] = \<const0> ;
  assign dout[165] = \<const0> ;
  assign dout[164] = \<const0> ;
  assign dout[163] = \<const0> ;
  assign dout[162] = \<const0> ;
  assign dout[161] = \<const0> ;
  assign dout[160] = \<const0> ;
  assign dout[159] = \<const0> ;
  assign dout[158] = \<const0> ;
  assign dout[157] = \<const0> ;
  assign dout[156] = \<const0> ;
  assign dout[155] = \<const0> ;
  assign dout[154] = \<const0> ;
  assign dout[153] = \<const0> ;
  assign dout[152] = \<const0> ;
  assign dout[151] = \<const0> ;
  assign dout[150] = \<const0> ;
  assign dout[149] = \<const0> ;
  assign dout[148] = \<const0> ;
  assign dout[147] = \<const0> ;
  assign dout[146] = \<const0> ;
  assign dout[145] = \<const0> ;
  assign dout[144] = \<const0> ;
  assign dout[143] = \<const0> ;
  assign dout[142] = \<const0> ;
  assign dout[141] = \<const0> ;
  assign dout[140] = \<const0> ;
  assign dout[139] = \<const0> ;
  assign dout[138] = \<const0> ;
  assign dout[137] = \<const0> ;
  assign dout[136] = \<const0> ;
  assign dout[135] = \<const0> ;
  assign dout[134] = \<const0> ;
  assign dout[133] = \<const0> ;
  assign dout[132] = \<const0> ;
  assign dout[131] = \<const0> ;
  assign dout[130] = \<const0> ;
  assign dout[129] = \<const0> ;
  assign dout[128] = \<const0> ;
  assign dout[127] = \<const0> ;
  assign dout[126] = \<const0> ;
  assign dout[125] = \<const0> ;
  assign dout[124] = \<const0> ;
  assign dout[123] = \<const0> ;
  assign dout[122] = \<const0> ;
  assign dout[121] = \<const0> ;
  assign dout[120] = \<const0> ;
  assign dout[119:0] = \^dout [119:0];
  assign sbiterr = \<const0> ;
  assign wr_ack = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "1" *) 
  (* CDC_DEST_SYNC_FF = "4" *) 
  (* COMMON_CLOCK = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0000011100000111" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b0" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "2048" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "399360" *) 
  (* FIFO_WRITE_DEPTH = "2048" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "2043" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "2043" *) 
  (* PF_THRESH_MIN = "9" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "12" *) 
  (* RD_DC_WIDTH_EXT = "12" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "11" *) 
  (* READ_DATA_WIDTH = "195" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "195" *) 
  (* WR_DATA_COUNT_WIDTH = "12" *) 
  (* WR_DC_WIDTH_EXT = "12" *) 
  (* WR_DEPTH_LOG = "11" *) 
  (* WR_PNTR_WIDTH = "11" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "8" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  bd_38d0_vb1_0_xpm_fifo_base \gnuram_async_fifo.xpm_fifo_base_inst 
       (.almost_empty(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_empty_UNCONNECTED ),
        .almost_full(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_full_UNCONNECTED ),
        .data_valid(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_data_valid_UNCONNECTED ),
        .dbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ),
        .din({1'b0,din[193:192],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[119:0]}),
        .dout({\NLW_gnuram_async_fifo.xpm_fifo_base_inst_dout_UNCONNECTED [194],\^dout }),
        .empty(empty),
        .full(full),
        .full_n(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(prog_empty),
        .prog_full(prog_full),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .sbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ),
        .sleep(sleep),
        .underflow(underflow),
        .wr_ack(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_ack_UNCONNECTED ),
        .wr_clk(wr_clk),
        .wr_data_count(wr_data_count),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* CASCADE_HEIGHT = "1" *) (* CDC_DEST_SYNC_FF = "4" *) (* COMMON_CLOCK = "0" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0000011100000111" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b0" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "2048" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "399360" *) (* FIFO_WRITE_DEPTH = "2048" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) 
(* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "2043" *) (* PE_THRESH_MIN = "5" *) 
(* PF_THRESH_ADJ = "8" *) (* PF_THRESH_MAX = "2043" *) (* PF_THRESH_MIN = "9" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) (* RD_DATA_COUNT_WIDTH = "12" *) 
(* RD_DC_WIDTH_EXT = "12" *) (* RD_LATENCY = "2" *) (* RD_MODE = "1" *) 
(* RD_PNTR_WIDTH = "11" *) (* READ_DATA_WIDTH = "195" *) (* READ_MODE = "1" *) 
(* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "195" *) 
(* WR_DATA_COUNT_WIDTH = "12" *) (* WR_DC_WIDTH_EXT = "12" *) (* WR_DEPTH_LOG = "11" *) 
(* WR_PNTR_WIDTH = "11" *) (* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "8" *) 
(* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) (* invalid = "0" *) 
(* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module bd_38d0_vb1_0_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [194:0]din;
  output full;
  output full_n;
  output prog_full;
  output [11:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [194:0]dout;
  output empty;
  output prog_empty;
  output [11:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [1:0]count_value_i;
  wire [1:0]curr_fwft_state;
  wire [10:0]diff_pntr_pe;
  wire [11:4]diff_pntr_pf_q;
  wire [11:4]diff_pntr_pf_q0;
  wire [194:0]din;
  wire [193:0]\^dout ;
  wire empty;
  wire empty_fwft_i0;
  wire full;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_0 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_10 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_11 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_6 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_7 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_8 ;
  wire \gen_cdc_pntr.rpw_gray_reg_dc_n_9 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_11 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_0 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_10 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_11 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_12 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_6 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_7 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_8 ;
  wire \gen_cdc_pntr.wpr_gray_reg_dc_n_9 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_0 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_1 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_10 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_11 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_12 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_2 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_3 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_4 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_5 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_6 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_7 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_8 ;
  wire \gen_cdc_pntr.wpr_gray_reg_n_9 ;
  wire \gen_fwft.count_rst ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[10] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[8] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[9] ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0 ;
  wire [11:0]\grdc.diff_wr_rd_pntr_rdc ;
  wire \grdc.rd_data_count_i0 ;
  wire [11:0]\gwdc.diff_wr_rd_pntr1_out ;
  wire [1:0]next_fwft_state__0;
  wire overflow;
  wire overflow_i0;
  wire p_1_in;
  wire prog_empty;
  wire prog_full;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_rd_en_i;
  wire rd_clk;
  wire [11:0]rd_data_count;
  wire rd_en;
  wire [10:0]rd_pntr_ext;
  wire [10:0]rd_pntr_wr;
  wire [10:0]rd_pntr_wr_cdc;
  wire [11:0]rd_pntr_wr_cdc_dc;
  wire rd_rst_busy;
  wire rdp_inst_n_15;
  wire rdp_inst_n_16;
  wire rdp_inst_n_17;
  wire rdp_inst_n_18;
  wire rdp_inst_n_19;
  wire rdp_inst_n_20;
  wire rdp_inst_n_21;
  wire rdp_inst_n_22;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rdpp1_inst_n_7;
  wire rdpp1_inst_n_8;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_1;
  wire sleep;
  wire [11:0]src_in_bin00_out;
  wire underflow;
  wire underflow_i0;
  wire wr_clk;
  wire [11:0]wr_data_count;
  wire wr_en;
  wire [11:0]wr_pntr_ext;
  wire [11:1]wr_pntr_plus1_pf;
  wire wr_pntr_plus1_pf_carry;
  wire [10:0]wr_pntr_rd_cdc;
  wire [11:0]wr_pntr_rd_cdc_dc;
  wire wr_rst_busy;
  wire wrpp2_inst_n_0;
  wire wrpp2_inst_n_1;
  wire wrpp2_inst_n_10;
  wire wrpp2_inst_n_2;
  wire wrpp2_inst_n_3;
  wire wrpp2_inst_n_4;
  wire wrpp2_inst_n_5;
  wire wrpp2_inst_n_6;
  wire wrpp2_inst_n_7;
  wire wrpp2_inst_n_8;
  wire wrpp2_inst_n_9;
  wire wrst_busy;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [194:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;
  wire [194:120]\NLW_gen_sdpram.xpm_memory_base_inst_doutb_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign dout[194] = \<const0> ;
  assign dout[193:192] = \^dout [193:192];
  assign dout[191] = \<const0> ;
  assign dout[190] = \<const0> ;
  assign dout[189] = \<const0> ;
  assign dout[188] = \<const0> ;
  assign dout[187] = \<const0> ;
  assign dout[186] = \<const0> ;
  assign dout[185] = \<const0> ;
  assign dout[184] = \<const0> ;
  assign dout[183] = \<const0> ;
  assign dout[182] = \<const0> ;
  assign dout[181] = \<const0> ;
  assign dout[180] = \<const0> ;
  assign dout[179] = \<const0> ;
  assign dout[178] = \<const0> ;
  assign dout[177] = \<const0> ;
  assign dout[176] = \<const0> ;
  assign dout[175] = \<const0> ;
  assign dout[174] = \<const0> ;
  assign dout[173] = \<const0> ;
  assign dout[172] = \<const0> ;
  assign dout[171] = \<const0> ;
  assign dout[170] = \<const0> ;
  assign dout[169] = \<const0> ;
  assign dout[168] = \<const0> ;
  assign dout[167] = \<const0> ;
  assign dout[166] = \<const0> ;
  assign dout[165] = \<const0> ;
  assign dout[164] = \<const0> ;
  assign dout[163] = \<const0> ;
  assign dout[162] = \<const0> ;
  assign dout[161] = \<const0> ;
  assign dout[160] = \<const0> ;
  assign dout[159] = \<const0> ;
  assign dout[158] = \<const0> ;
  assign dout[157] = \<const0> ;
  assign dout[156] = \<const0> ;
  assign dout[155] = \<const0> ;
  assign dout[154] = \<const0> ;
  assign dout[153] = \<const0> ;
  assign dout[152] = \<const0> ;
  assign dout[151] = \<const0> ;
  assign dout[150] = \<const0> ;
  assign dout[149] = \<const0> ;
  assign dout[148] = \<const0> ;
  assign dout[147] = \<const0> ;
  assign dout[146] = \<const0> ;
  assign dout[145] = \<const0> ;
  assign dout[144] = \<const0> ;
  assign dout[143] = \<const0> ;
  assign dout[142] = \<const0> ;
  assign dout[141] = \<const0> ;
  assign dout[140] = \<const0> ;
  assign dout[139] = \<const0> ;
  assign dout[138] = \<const0> ;
  assign dout[137] = \<const0> ;
  assign dout[136] = \<const0> ;
  assign dout[135] = \<const0> ;
  assign dout[134] = \<const0> ;
  assign dout[133] = \<const0> ;
  assign dout[132] = \<const0> ;
  assign dout[131] = \<const0> ;
  assign dout[130] = \<const0> ;
  assign dout[129] = \<const0> ;
  assign dout[128] = \<const0> ;
  assign dout[127] = \<const0> ;
  assign dout[126] = \<const0> ;
  assign dout[125] = \<const0> ;
  assign dout[124] = \<const0> ;
  assign dout[123] = \<const0> ;
  assign dout[122] = \<const0> ;
  assign dout[121] = \<const0> ;
  assign dout[120] = \<const0> ;
  assign dout[119:0] = \^dout [119:0];
  assign full_n = \<const0> ;
  assign sbiterr = \<const0> ;
  assign wr_ack = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  LUT3 #(
    .INIT(8'h7A)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(rd_rst_busy));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(rd_rst_busy));
  GND GND
       (.G(\<const0> ));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "12" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_38d0_vb1_0_xpm_cdc_gray__parameterized1 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc_dc),
        .src_clk(rd_clk),
        .src_in_bin({src_in_bin00_out[11:10],rdp_inst_n_15,rdp_inst_n_16,rdp_inst_n_17,rdp_inst_n_18,rdp_inst_n_19,rdp_inst_n_20,rdp_inst_n_21,rdp_inst_n_22,src_in_bin00_out[1:0]}));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "11" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_38d0_vb1_0_xpm_cdc_gray \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  bd_38d0_vb1_0_xpm_fifo_reg_vec \gen_cdc_pntr.rpw_gray_reg 
       (.D(rd_pntr_wr_cdc),
        .Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6,wrpp2_inst_n_7,wrpp2_inst_n_8,wrpp2_inst_n_9,wrpp2_inst_n_10}),
        .d_out_int_reg(\gen_cdc_pntr.rpw_gray_reg_n_11 ),
        .\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_0 (wr_pntr_plus1_pf),
        .\reg_out_i_reg[10]_0 (rd_pntr_wr),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  bd_38d0_vb1_0_xpm_fifo_reg_vec__parameterized0 \gen_cdc_pntr.rpw_gray_reg_dc 
       (.D(rd_pntr_wr_cdc_dc),
        .Q({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_7 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_8 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_9 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_10 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_11 }),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  bd_38d0_vb1_0_xpm_fifo_reg_vec_0 \gen_cdc_pntr.wpr_gray_reg 
       (.D(diff_pntr_pe),
        .Q(curr_fwft_state),
        .\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10] (rd_pntr_ext),
        .\gen_pf_ic_rc.ram_empty_i_reg ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7}),
        .\gen_pf_ic_rc.ram_empty_i_reg_0 (rdpp1_inst_n_8),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\reg_out_i_reg[0]_0 (rd_rst_busy),
        .\reg_out_i_reg[10]_0 ({\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 ,\gen_cdc_pntr.wpr_gray_reg_n_6 ,\gen_cdc_pntr.wpr_gray_reg_n_7 ,\gen_cdc_pntr.wpr_gray_reg_n_8 ,\gen_cdc_pntr.wpr_gray_reg_n_9 ,\gen_cdc_pntr.wpr_gray_reg_n_10 ,\gen_cdc_pntr.wpr_gray_reg_n_11 }),
        .\reg_out_i_reg[10]_1 (\gen_cdc_pntr.wpr_gray_reg_n_12 ),
        .\reg_out_i_reg[10]_2 (wr_pntr_rd_cdc),
        .\reg_out_i_reg[6]_0 (\gen_cdc_pntr.wpr_gray_reg_n_0 ));
  bd_38d0_vb1_0_xpm_fifo_reg_vec__parameterized0_1 \gen_cdc_pntr.wpr_gray_reg_dc 
       (.D(wr_pntr_rd_cdc_dc),
        .Q({\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_7 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_8 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_9 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_10 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_11 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_12 }),
        .\grdc.rd_data_count_i_reg[2] (count_value_i[1]),
        .\grdc.rd_data_count_i_reg[2]_0 (rd_pntr_ext[1]),
        .rd_clk(rd_clk),
        .\reg_out_i_reg[11]_0 (rd_rst_busy),
        .\reg_out_i_reg[1]_0 (\gen_cdc_pntr.wpr_gray_reg_dc_n_0 ));
  (* DEST_SYNC_FF = "6" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "12" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_38d0_vb1_0_xpm_cdc_gray__parameterized0 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc_dc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "11" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_38d0_vb1_0_xpm_cdc_gray__2 \gen_cdc_pntr.wr_pntr_cdc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext[10:0]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'hAF80)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .I3(empty),
        .O(empty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .Q(empty),
        .S(rd_rst_busy));
  bd_38d0_vb1_0_xpm_counter_updn \gen_fwft.rdpp1_inst 
       (.Q(count_value_i),
        .SR(\gen_fwft.count_rst ),
        .\count_value_i_reg[0]_0 (\gen_fwft.rdpp1_inst_n_3 ),
        .\count_value_i_reg[0]_1 (curr_fwft_state),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .\src_gray_ff_reg[0] (rd_pntr_ext[0]),
        .src_in_bin(src_in_bin00_out[0]));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_cdc_pntr.rpw_gray_reg_n_11 ),
        .Q(full),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[0]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[10]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[10] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[1]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[2]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[3]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[4]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[5]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[6]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[7]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[8]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[8] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[9]),
        .Q(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[9] ),
        .R(rd_rst_busy));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1 
       (.I0(prog_empty),
        .I1(empty),
        .I2(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[9] ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7] ),
        .I2(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0 ),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4] ),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[8] ),
        .I5(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[10] ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000015555)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3 
       (.I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5] ),
        .I1(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0] ),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2] ),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1] ),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3] ),
        .I5(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6] ),
        .O(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpe_ic.prog_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0 ),
        .Q(prog_empty),
        .S(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[10]),
        .Q(diff_pntr_pf_q[10]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[11]),
        .Q(diff_pntr_pf_q[11]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf_q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[5]),
        .Q(diff_pntr_pf_q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[6]),
        .Q(diff_pntr_pf_q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[7]),
        .Q(diff_pntr_pf_q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[8]),
        .Q(diff_pntr_pf_q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[9]),
        .Q(diff_pntr_pf_q[9]),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_1),
        .Q(prog_full),
        .S(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(rd_rst_busy));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "11" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "195" *) 
  (* BYTE_WRITE_WIDTH_B = "195" *) 
  (* CASCADE_HEIGHT = "1" *) 
  (* CLOCKING_MODE = "1" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "121" *) 
  (* \MEM.ADDRESS_SPACE_END  = "2047" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "122" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "399360" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "2048" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "195" *) 
  (* P_MIN_WIDTH_DATA_A = "195" *) 
  (* P_MIN_WIDTH_DATA_B = "195" *) 
  (* P_MIN_WIDTH_DATA_ECC = "195" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "195" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "11" *) 
  (* P_WIDTH_ADDR_READ_B = "11" *) 
  (* P_WIDTH_ADDR_WRITE_A = "11" *) 
  (* P_WIDTH_ADDR_WRITE_B = "11" *) 
  (* P_WIDTH_COL_WRITE_A = "195" *) 
  (* P_WIDTH_COL_WRITE_B = "195" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "195" *) 
  (* READ_DATA_WIDTH_B = "195" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "195" *) 
  (* WRITE_DATA_WIDTH_B = "195" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "196" *) 
  (* rstb_loop_iter = "196" *) 
  bd_38d0_vb1_0_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext[10:0]),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(rd_clk),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina({1'b0,din[193:192],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[119:0]}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [194:0]),
        .doutb({\NLW_gen_sdpram.xpm_memory_base_inst_doutb_UNCONNECTED [194],\^dout }),
        .ena(1'b0),
        .enb(ram_rd_en_i),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(rd_rst_busy),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(wr_pntr_plus1_pf_carry),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'h4A)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .O(\gen_fwft.ram_regout_en ));
  FDRE #(
    .INIT(1'b0)) 
    \gof.overflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(overflow_i0),
        .Q(overflow),
        .R(1'b0));
  FDRE \grdc.rd_data_count_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [0]),
        .Q(rd_data_count[0]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [10]),
        .Q(rd_data_count[10]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[11] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [11]),
        .Q(rd_data_count[11]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(rd_data_count[1]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(rd_data_count[2]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(rd_data_count[3]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(rd_data_count[4]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(rd_data_count[5]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [6]),
        .Q(rd_data_count[6]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [7]),
        .Q(rd_data_count[7]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [8]),
        .Q(rd_data_count[8]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [9]),
        .Q(rd_data_count[9]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE #(
    .INIT(1'b0)) 
    \guf.underflow_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(underflow_i0),
        .Q(underflow),
        .R(1'b0));
  FDRE \gwdc.wr_data_count_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [0]),
        .Q(wr_data_count[0]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [10]),
        .Q(wr_data_count[10]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[11] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [11]),
        .Q(wr_data_count[11]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [1]),
        .Q(wr_data_count[1]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [2]),
        .Q(wr_data_count[2]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [3]),
        .Q(wr_data_count[3]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [4]),
        .Q(wr_data_count[4]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [5]),
        .Q(wr_data_count[5]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [6]),
        .Q(wr_data_count[6]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [7]),
        .Q(wr_data_count[7]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [8]),
        .Q(wr_data_count[8]),
        .R(wrst_busy));
  FDRE \gwdc.wr_data_count_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gwdc.diff_wr_rd_pntr1_out [9]),
        .Q(wr_data_count[9]),
        .R(wrst_busy));
  bd_38d0_vb1_0_xpm_counter_updn__parameterized0 rdp_inst
       (.D(\grdc.diff_wr_rd_pntr_rdc ),
        .E(ram_rd_en_i),
        .Q(rd_pntr_ext),
        .\count_value_i_reg[11]_0 (curr_fwft_state),
        .\count_value_i_reg[11]_1 (rd_rst_busy),
        .\gen_pf_ic_rc.ram_empty_i_reg (\gen_cdc_pntr.wpr_gray_reg_n_12 ),
        .\gen_pf_ic_rc.ram_empty_i_reg_0 (\gen_cdc_pntr.wpr_gray_reg_n_0 ),
        .\gen_pf_ic_rc.ram_empty_i_reg_1 ({\gen_cdc_pntr.wpr_gray_reg_n_1 ,\gen_cdc_pntr.wpr_gray_reg_n_2 ,\gen_cdc_pntr.wpr_gray_reg_n_3 ,\gen_cdc_pntr.wpr_gray_reg_n_4 ,\gen_cdc_pntr.wpr_gray_reg_n_5 ,\gen_cdc_pntr.wpr_gray_reg_n_6 ,\gen_cdc_pntr.wpr_gray_reg_n_7 ,\gen_cdc_pntr.wpr_gray_reg_n_8 ,\gen_cdc_pntr.wpr_gray_reg_n_9 ,\gen_cdc_pntr.wpr_gray_reg_n_10 ,\gen_cdc_pntr.wpr_gray_reg_n_11 }),
        .\grdc.rd_data_count_i_reg[11] ({\gen_cdc_pntr.wpr_gray_reg_dc_n_1 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_2 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_3 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_4 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_5 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_6 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_7 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_8 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_9 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_10 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_11 ,\gen_cdc_pntr.wpr_gray_reg_dc_n_12 }),
        .\grdc.rd_data_count_i_reg[1] (count_value_i),
        .\grdc.rd_data_count_i_reg[1]_0 (\gen_fwft.rdpp1_inst_n_3 ),
        .\grdc.rd_data_count_i_reg[2] (\gen_cdc_pntr.wpr_gray_reg_dc_n_0 ),
        .p_1_in(p_1_in),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .src_in_bin({src_in_bin00_out[11:10],rdp_inst_n_15,rdp_inst_n_16,rdp_inst_n_17,rdp_inst_n_18,rdp_inst_n_19,rdp_inst_n_20,rdp_inst_n_21,rdp_inst_n_22,src_in_bin00_out[1]}));
  bd_38d0_vb1_0_xpm_counter_updn__parameterized1 rdpp1_inst
       (.E(ram_rd_en_i),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7}),
        .\count_value_i_reg[0]_0 (rd_rst_busy),
        .\count_value_i_reg[4]_0 (rdpp1_inst_n_8),
        .\gen_pf_ic_rc.ram_empty_i_i_4 ({\gen_cdc_pntr.wpr_gray_reg_n_6 ,\gen_cdc_pntr.wpr_gray_reg_n_7 ,\gen_cdc_pntr.wpr_gray_reg_n_8 }),
        .p_1_in(p_1_in),
        .rd_clk(rd_clk));
  bd_38d0_vb1_0_xpm_fifo_reg_bit rst_d1_inst
       (.Q(diff_pntr_pf_q),
        .d_out_int_reg_0(rst_d1_inst_n_1),
        .\gen_pf_ic_rc.gpf_ic.prog_full_i_reg (full),
        .prog_full(prog_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  bd_38d0_vb1_0_xpm_counter_updn__parameterized0_2 wrp_inst
       (.D(\gwdc.diff_wr_rd_pntr1_out ),
        .Q(wr_pntr_ext),
        .\gwdc.wr_data_count_i_reg[11] ({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_7 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_8 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_9 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_10 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_11 }),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  bd_38d0_vb1_0_xpm_counter_updn__parameterized1_3 wrpp1_inst
       (.Q(wr_pntr_plus1_pf),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  bd_38d0_vb1_0_xpm_counter_updn__parameterized2 wrpp2_inst
       (.Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6,wrpp2_inst_n_7,wrpp2_inst_n_8,wrpp2_inst_n_9,wrpp2_inst_n_10}),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  bd_38d0_vb1_0_xpm_fifo_rst xpm_fifo_rst_inst
       (.D(diff_pntr_pf_q0),
        .Q(wr_pntr_plus1_pf),
        .SR(\grdc.rd_data_count_i0 ),
        .\count_value_i_reg[10] (full),
        .\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11] (rd_pntr_wr),
        .\gen_rst_ic.fifo_rd_rst_ic_reg_0 (rd_rst_busy),
        .\gen_rst_ic.fifo_rd_rst_ic_reg_1 (\gen_fwft.count_rst ),
        .\grdc.rd_data_count_i_reg[0] (curr_fwft_state),
        .\guf.underflow_i_reg (empty),
        .overflow_i0(overflow_i0),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wr_rst_busy(wr_rst_busy),
        .wrst_busy(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module bd_38d0_vb1_0_xpm_fifo_reg_bit
   (rst_d1,
    d_out_int_reg_0,
    wrst_busy,
    wr_clk,
    rst,
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ,
    prog_full,
    Q);
  output rst_d1;
  output d_out_int_reg_0;
  input wrst_busy;
  input wr_clk;
  input rst;
  input \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  input prog_full;
  input [7:0]Q;

  wire [7:0]Q;
  wire d_out_int_reg_0;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.prog_full_i_reg ;
  wire prog_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    d_out_int_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(wrst_busy),
        .Q(rst_d1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF3A200A2)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_1 
       (.I0(\gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ),
        .I1(rst_d1),
        .I2(rst),
        .I3(\gen_pf_ic_rc.gpf_ic.prog_full_i_reg ),
        .I4(prog_full),
        .O(d_out_int_reg_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\gen_pf_ic_rc.gpf_ic.prog_full_i_i_3_n_0 ),
        .O(\gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_pf_ic_rc.gpf_ic.prog_full_i_i_3 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[0]),
        .I3(Q[7]),
        .O(\gen_pf_ic_rc.gpf_ic.prog_full_i_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module bd_38d0_vb1_0_xpm_fifo_reg_vec
   (\reg_out_i_reg[10]_0 ,
    d_out_int_reg,
    wr_pntr_plus1_pf_carry,
    Q,
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_0 ,
    rst_d1,
    rst,
    wrst_busy,
    D,
    wr_clk);
  output [10:0]\reg_out_i_reg[10]_0 ;
  output d_out_int_reg;
  input wr_pntr_plus1_pf_carry;
  input [10:0]Q;
  input [10:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_0 ;
  input rst_d1;
  input rst;
  input wrst_busy;
  input [10:0]D;
  input wr_clk;

  wire [10:0]D;
  wire [10:0]Q;
  wire d_out_int_reg;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_10_n_0 ;
  wire [10:0]\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0 ;
  wire \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_9_n_0 ;
  wire ram_full_i0;
  wire [10:0]\reg_out_i_reg[10]_0 ;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_pntr_plus1_pf_carry;
  wire wrst_busy;

  LUT3 #(
    .INIT(8'hA2)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(ram_full_i0),
        .I1(rst_d1),
        .I2(rst),
        .O(d_out_int_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_10 
       (.I0(\reg_out_i_reg[10]_0 [0]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_0 [0]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_0 [2]),
        .I3(\reg_out_i_reg[10]_0 [2]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_0 [1]),
        .I5(\reg_out_i_reg[10]_0 [1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(wr_pntr_plus1_pf_carry),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3_n_0 ),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_n_0 ),
        .I3(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0 ),
        .O(ram_full_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(\reg_out_i_reg[10]_0 [6]),
        .I1(Q[6]),
        .I2(Q[8]),
        .I3(\reg_out_i_reg[10]_0 [8]),
        .I4(Q[7]),
        .I5(\reg_out_i_reg[10]_0 [7]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(Q[10]),
        .I1(\reg_out_i_reg[10]_0 [10]),
        .I2(Q[9]),
        .I3(\reg_out_i_reg[10]_0 [9]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0 ),
        .I5(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0 ),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_0 [10]),
        .I1(\reg_out_i_reg[10]_0 [10]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_0 [9]),
        .I3(\reg_out_i_reg[10]_0 [9]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_9_n_0 ),
        .I5(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_10_n_0 ),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6 
       (.I0(\reg_out_i_reg[10]_0 [6]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_0 [6]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_0 [8]),
        .I3(\reg_out_i_reg[10]_0 [8]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_0 [7]),
        .I5(\reg_out_i_reg[10]_0 [7]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7 
       (.I0(\reg_out_i_reg[10]_0 [3]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(\reg_out_i_reg[10]_0 [5]),
        .I4(Q[4]),
        .I5(\reg_out_i_reg[10]_0 [4]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8 
       (.I0(\reg_out_i_reg[10]_0 [0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\reg_out_i_reg[10]_0 [2]),
        .I4(Q[1]),
        .I5(\reg_out_i_reg[10]_0 [1]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_9 
       (.I0(\reg_out_i_reg[10]_0 [3]),
        .I1(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_0 [3]),
        .I2(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_0 [5]),
        .I3(\reg_out_i_reg[10]_0 [5]),
        .I4(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2_0 [4]),
        .I5(\reg_out_i_reg[10]_0 [4]),
        .O(\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\reg_out_i_reg[10]_0 [0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[10]),
        .Q(\reg_out_i_reg[10]_0 [10]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\reg_out_i_reg[10]_0 [1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\reg_out_i_reg[10]_0 [2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\reg_out_i_reg[10]_0 [3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\reg_out_i_reg[10]_0 [4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\reg_out_i_reg[10]_0 [5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\reg_out_i_reg[10]_0 [6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\reg_out_i_reg[10]_0 [7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\reg_out_i_reg[10]_0 [8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(\reg_out_i_reg[10]_0 [9]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module bd_38d0_vb1_0_xpm_fifo_reg_vec_0
   (\reg_out_i_reg[6]_0 ,
    \reg_out_i_reg[10]_0 ,
    \reg_out_i_reg[10]_1 ,
    D,
    Q,
    ram_empty_i,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    \gen_pf_ic_rc.ram_empty_i_reg_0 ,
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10] ,
    rd_en,
    \reg_out_i_reg[0]_0 ,
    \reg_out_i_reg[10]_2 ,
    rd_clk);
  output \reg_out_i_reg[6]_0 ;
  output [10:0]\reg_out_i_reg[10]_0 ;
  output \reg_out_i_reg[10]_1 ;
  output [10:0]D;
  input [1:0]Q;
  input ram_empty_i;
  input [7:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  input \gen_pf_ic_rc.ram_empty_i_reg_0 ;
  input [10:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10] ;
  input rd_en;
  input \reg_out_i_reg[0]_0 ;
  input [10:0]\reg_out_i_reg[10]_2 ;
  input rd_clk;

  wire [10:0]D;
  wire [1:0]Q;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[0]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_1_n_3 ;
  wire [10:0]\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10] ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_n_1 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_3_n_1 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_3_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_3_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2_n_1 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2_n_3 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_1_n_3 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_9_n_0 ;
  wire [7:0]\gen_pf_ic_rc.ram_empty_i_reg ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_0 ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire \reg_out_i_reg[0]_0 ;
  wire [10:0]\reg_out_i_reg[10]_0 ;
  wire \reg_out_i_reg[10]_1 ;
  wire [10:0]\reg_out_i_reg[10]_2 ;
  wire \reg_out_i_reg[6]_0 ;
  wire \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_COUTF_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_COUTH_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_CYE_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_CYF_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_CYG_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_CYH_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_GEE_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_GEF_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_GEG_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_GEH_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_PROPE_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_PROPF_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_PROPG_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_PROPH_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h31)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[0]_i_2 
       (.I0(Q[1]),
        .I1(ram_empty_i),
        .I2(Q[0]),
        .O(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[0]_i_2_n_0 ));
  LUT6CY #(
    .INIT(64'h45FF0045BA4545BA)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_1 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_1_n_0 ),
        .I0(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[0]_i_2_n_0 ),
        .I1(ram_empty_i),
        .I2(rd_en),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10] [0]),
        .I4(\reg_out_i_reg[10]_0 [0]),
        .O51(D[0]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF00FF00F0FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_1 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\reg_out_i_reg[10]_0 [10]),
        .I3(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10] [10]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_n_0 ),
        .O51(D[10]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_1_n_3 ));
  (* KEEP = "yes" *) 
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("FALSE"),
    .LOOKH("FALSE")) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2 
       (.CIN(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2_n_3 ),
        .COUTB(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_n_0 ),
        .COUTD(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_n_1 ),
        .COUTF(\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_COUTF_UNCONNECTED ),
        .COUTH(\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_COUTH_UNCONNECTED ),
        .CYA(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_1_n_2 ),
        .CYB(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_1_n_2 ),
        .CYC(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_1_n_2 ),
        .CYD(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_3_n_2 ),
        .CYE(\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_CYE_UNCONNECTED ),
        .CYF(\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_CYF_UNCONNECTED ),
        .CYG(\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_CYG_UNCONNECTED ),
        .CYH(\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_CYH_UNCONNECTED ),
        .GEA(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_1_n_0 ),
        .GEB(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_1_n_0 ),
        .GEC(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_1_n_0 ),
        .GED(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_3_n_0 ),
        .GEE(\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_GEE_UNCONNECTED ),
        .GEF(\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_GEF_UNCONNECTED ),
        .GEG(\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_GEG_UNCONNECTED ),
        .GEH(\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_GEH_UNCONNECTED ),
        .PROPA(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_1_n_3 ),
        .PROPB(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_1_n_3 ),
        .PROPC(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_1_n_3 ),
        .PROPD(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_3_n_3 ),
        .PROPE(\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_PROPE_UNCONNECTED ),
        .PROPF(\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_PROPF_UNCONNECTED ),
        .PROPG(\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_PROPG_UNCONNECTED ),
        .PROPH(\NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_2_PROPH_UNCONNECTED ));
  LUT6CY #(
    .INIT(64'h00000000FF000000)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_3 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_3_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(1'b0),
        .I4(1'b0),
        .O51(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_3_n_1 ),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_3_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10]_i_3_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_1 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10] [1]),
        .I3(\reg_out_i_reg[10]_0 [1]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_1_n_2 ),
        .O51(D[1]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_1 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10] [2]),
        .I3(\reg_out_i_reg[10]_0 [2]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2_n_0 ),
        .O51(D[2]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10] [3]),
        .I3(\reg_out_i_reg[10]_0 [3]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_1_n_2 ),
        .O51(D[3]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_1 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10] [4]),
        .I3(\reg_out_i_reg[10]_0 [4]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2_n_1 ),
        .O51(D[4]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10] [5]),
        .I3(\reg_out_i_reg[10]_0 [5]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_1_n_2 ),
        .O51(D[5]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10] [6]),
        .I3(\reg_out_i_reg[10]_0 [6]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2_n_2 ),
        .O51(D[6]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10] [7]),
        .I3(\reg_out_i_reg[10]_0 [7]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_n_2 ),
        .O51(D[7]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_1 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10] [8]),
        .I3(\reg_out_i_reg[10]_0 [8]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2_n_3 ),
        .O51(D[8]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2 
       (.CIN(\reg_out_i_reg[10]_0 [0]),
        .COUTB(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2_n_0 ),
        .COUTD(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2_n_1 ),
        .COUTF(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2_n_2 ),
        .COUTH(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_2_n_3 ),
        .CYA(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_1_n_2 ),
        .CYB(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_1_n_2 ),
        .CYC(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_1_n_2 ),
        .CYD(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_2 ),
        .CYE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_1_n_2 ),
        .CYF(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_n_2 ),
        .CYG(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_n_2 ),
        .CYH(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_2 ),
        .GEA(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_1_n_0 ),
        .GEB(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_1_n_0 ),
        .GEC(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_1_n_0 ),
        .GED(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0 ),
        .GEE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_1_n_0 ),
        .GEF(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_n_0 ),
        .GEG(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_n_0 ),
        .GEH(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_0 ),
        .PROPA(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]_i_1_n_3 ),
        .PROPB(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]_i_1_n_3 ),
        .PROPC(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]_i_1_n_3 ),
        .PROPD(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_3 ),
        .PROPE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]_i_1_n_3 ),
        .PROPF(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]_i_1_n_3 ),
        .PROPG(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]_i_1_n_3 ),
        .PROPH(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hFF0F0F000FF0F00F)) 
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_1 
       (.GE(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[10] [9]),
        .I3(\reg_out_i_reg[10]_0 [9]),
        .I4(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[8]_i_1_n_2 ),
        .O51(D[9]),
        .O52(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[9]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hEFFEFFFFFFFFEFFE)) 
    \gen_pf_ic_rc.ram_empty_i_i_4 
       (.I0(\gen_pf_ic_rc.ram_empty_i_i_9_n_0 ),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_0 ),
        .I2(\reg_out_i_reg[10]_0 [10]),
        .I3(\gen_pf_ic_rc.ram_empty_i_reg [7]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg [6]),
        .I5(\reg_out_i_reg[10]_0 [9]),
        .O(\reg_out_i_reg[10]_1 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_pf_ic_rc.ram_empty_i_i_5 
       (.I0(\reg_out_i_reg[10]_0 [6]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [3]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg [4]),
        .I3(\reg_out_i_reg[10]_0 [7]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg [5]),
        .I5(\reg_out_i_reg[10]_0 [8]),
        .O(\reg_out_i_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_pf_ic_rc.ram_empty_i_i_9 
       (.I0(\reg_out_i_reg[10]_0 [0]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg [0]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg [2]),
        .I3(\reg_out_i_reg[10]_0 [2]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg [1]),
        .I5(\reg_out_i_reg[10]_0 [1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[10]_2 [0]),
        .Q(\reg_out_i_reg[10]_0 [0]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[10]_2 [10]),
        .Q(\reg_out_i_reg[10]_0 [10]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[10]_2 [1]),
        .Q(\reg_out_i_reg[10]_0 [1]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[10]_2 [2]),
        .Q(\reg_out_i_reg[10]_0 [2]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[10]_2 [3]),
        .Q(\reg_out_i_reg[10]_0 [3]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[10]_2 [4]),
        .Q(\reg_out_i_reg[10]_0 [4]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[10]_2 [5]),
        .Q(\reg_out_i_reg[10]_0 [5]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[10]_2 [6]),
        .Q(\reg_out_i_reg[10]_0 [6]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[10]_2 [7]),
        .Q(\reg_out_i_reg[10]_0 [7]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[10]_2 [8]),
        .Q(\reg_out_i_reg[10]_0 [8]),
        .R(\reg_out_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\reg_out_i_reg[10]_2 [9]),
        .Q(\reg_out_i_reg[10]_0 [9]),
        .R(\reg_out_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module bd_38d0_vb1_0_xpm_fifo_reg_vec__parameterized0
   (Q,
    wrst_busy,
    D,
    wr_clk);
  output [11:0]Q;
  input wrst_busy;
  input [11:0]D;
  input wr_clk;

  wire [11:0]D;
  wire [11:0]Q;
  wire wr_clk;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[11] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[11]),
        .Q(Q[11]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module bd_38d0_vb1_0_xpm_fifo_reg_vec__parameterized0_1
   (\reg_out_i_reg[1]_0 ,
    Q,
    \grdc.rd_data_count_i_reg[2] ,
    \grdc.rd_data_count_i_reg[2]_0 ,
    \reg_out_i_reg[11]_0 ,
    D,
    rd_clk);
  output \reg_out_i_reg[1]_0 ;
  output [11:0]Q;
  input [0:0]\grdc.rd_data_count_i_reg[2] ;
  input [0:0]\grdc.rd_data_count_i_reg[2]_0 ;
  input \reg_out_i_reg[11]_0 ;
  input [11:0]D;
  input rd_clk;

  wire [11:0]D;
  wire [11:0]Q;
  wire [0:0]\grdc.rd_data_count_i_reg[2] ;
  wire [0:0]\grdc.rd_data_count_i_reg[2]_0 ;
  wire rd_clk;
  wire \reg_out_i_reg[11]_0 ;
  wire \reg_out_i_reg[1]_0 ;

  LUT3 #(
    .INIT(8'h8E)) 
    \grdc.rd_data_count_i[2]_i_2 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[2] ),
        .I2(\grdc.rd_data_count_i_reg[2]_0 ),
        .O(\reg_out_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(\reg_out_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(\reg_out_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[11] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[11]),
        .Q(Q[11]),
        .R(\reg_out_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(\reg_out_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(\reg_out_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(\reg_out_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(\reg_out_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(\reg_out_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(\reg_out_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(\reg_out_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(\reg_out_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(\reg_out_i_reg[11]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module bd_38d0_vb1_0_xpm_fifo_rst
   (\gen_rst_ic.fifo_rd_rst_ic_reg_0 ,
    wrst_busy,
    wr_rst_busy,
    wr_pntr_plus1_pf_carry,
    D,
    SR,
    underflow_i0,
    overflow_i0,
    \gen_rst_ic.fifo_rd_rst_ic_reg_1 ,
    rd_clk,
    wr_clk,
    rst,
    rst_d1,
    Q,
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11] ,
    \grdc.rd_data_count_i_reg[0] ,
    rd_en,
    \guf.underflow_i_reg ,
    wr_en,
    \count_value_i_reg[10] ,
    ram_empty_i);
  output \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  output wrst_busy;
  output wr_rst_busy;
  output wr_pntr_plus1_pf_carry;
  output [7:0]D;
  output [0:0]SR;
  output underflow_i0;
  output overflow_i0;
  output [0:0]\gen_rst_ic.fifo_rd_rst_ic_reg_1 ;
  input rd_clk;
  input wr_clk;
  input rst;
  input rst_d1;
  input [10:0]Q;
  input [10:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11] ;
  input [1:0]\grdc.rd_data_count_i_reg[0] ;
  input rd_en;
  input \guf.underflow_i_reg ;
  input wr_en;
  input \count_value_i_reg[10] ;
  input ram_empty_i;

  wire \/i__n_0 ;
  wire [7:0]D;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ;
  wire [10:0]Q;
  wire [0:0]SR;
  wire \count_value_i_reg[10] ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_3 ;
  wire [10:0]\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11] ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_n_1 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_3_n_1 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_3_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_3_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_1 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_1 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_1 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_3 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4_n_0 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4_n_1 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4_n_2 ;
  wire \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4_n_3 ;
  (* RTL_KEEP = "yes" *) wire [1:0]\gen_rst_ic.curr_rrst_state ;
  wire \gen_rst_ic.fifo_rd_rst_i ;
  wire \gen_rst_ic.fifo_rd_rst_ic_reg_0 ;
  wire [0:0]\gen_rst_ic.fifo_rd_rst_ic_reg_1 ;
  wire \gen_rst_ic.fifo_rd_rst_wr_i ;
  wire \gen_rst_ic.fifo_wr_rst_ic ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_rd ;
  wire [1:0]\gen_rst_ic.next_rrst_state ;
  wire \gen_rst_ic.rst_seq_reentered_i_1_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_i_2_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_reg_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ;
  wire [1:0]\grdc.rd_data_count_i_reg[0] ;
  wire \guf.underflow_i_reg ;
  wire overflow_i0;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire rst_d1;
  wire rst_i__0;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire wr_pntr_plus1_pf_carry;
  wire wr_rst_busy;
  wire wrst_busy;
  wire \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_COUTF_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_COUTH_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_CYE_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_CYF_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_CYG_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_CYH_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_GEE_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_GEF_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_GEG_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_GEH_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_PROPE_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_PROPF_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_PROPG_UNCONNECTED ;
  wire \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_PROPH_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h00010116)) 
    \/i_ 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\/i__n_0 ));
  LUT6 #(
    .INIT(64'h33332020FFFFFFFF)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(rst_i__0),
        .I2(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I3(rst),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I5(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_2 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i__0));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I3(rst_i__0),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0E0FFE0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(rst_i__0),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I4(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0C08)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I1(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I2(rst_i__0),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00004F4400004444)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I3(rst),
        .I4(rst_i__0),
        .I5(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1 
       (.I0(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(rst_i__0),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1 
       (.I0(\gen_rst_ic.curr_rrst_state [0]),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .O(\gen_rst_ic.next_rrst_state [1]));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [0]),
        .Q(\gen_rst_ic.curr_rrst_state [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [1]),
        .Q(\gen_rst_ic.curr_rrst_state [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h06)) 
    \__0/i_ 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.next_rrst_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \count_value_i[1]_i_1__4 
       (.I0(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .I1(\grdc.rd_data_count_i_reg[0] [0]),
        .I2(\grdc.rd_data_count_i_reg[0] [1]),
        .I3(ram_empty_i),
        .O(\gen_rst_ic.fifo_rd_rst_ic_reg_1 ));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1 
       (.GE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[9]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11] [9]),
        .I4(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_n_2 ),
        .O51(D[6]),
        .O52(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF00FF00F0FF0F00F)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_1 
       (.GE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[10]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11] [10]),
        .I4(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_n_0 ),
        .O51(D[7]),
        .O52(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_1_n_3 ));
  (* KEEP = "yes" *) 
  LOOKAHEAD8 #(
    .LOOKB("TRUE"),
    .LOOKD("TRUE"),
    .LOOKF("FALSE"),
    .LOOKH("FALSE")) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2 
       (.CIN(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_3 ),
        .COUTB(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_n_0 ),
        .COUTD(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_n_1 ),
        .COUTF(\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_COUTF_UNCONNECTED ),
        .COUTH(\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_COUTH_UNCONNECTED ),
        .CYA(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_n_2 ),
        .CYB(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_2 ),
        .CYC(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_1_n_2 ),
        .CYD(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_3_n_2 ),
        .CYE(\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_CYE_UNCONNECTED ),
        .CYF(\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_CYF_UNCONNECTED ),
        .CYG(\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_CYG_UNCONNECTED ),
        .CYH(\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_CYH_UNCONNECTED ),
        .GEA(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_n_0 ),
        .GEB(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_0 ),
        .GEC(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_1_n_0 ),
        .GED(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_3_n_0 ),
        .GEE(\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_GEE_UNCONNECTED ),
        .GEF(\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_GEF_UNCONNECTED ),
        .GEG(\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_GEG_UNCONNECTED ),
        .GEH(\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_GEH_UNCONNECTED ),
        .PROPA(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_n_3 ),
        .PROPB(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[10]_i_1_n_3 ),
        .PROPC(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_1_n_3 ),
        .PROPD(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_3_n_3 ),
        .PROPE(\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_PROPE_UNCONNECTED ),
        .PROPF(\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_PROPF_UNCONNECTED ),
        .PROPG(\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_PROPG_UNCONNECTED ),
        .PROPH(\NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_2_PROPH_UNCONNECTED ));
  LUT6CY #(
    .INIT(64'h00000000FF000000)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_3 
       (.GE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_3_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(1'b1),
        .I3(1'b0),
        .I4(1'b0),
        .O51(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_3_n_1 ),
        .O52(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_3_n_2 ),
        .PROP(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11]_i_3_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1 
       (.GE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[3]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11] [3]),
        .I4(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_2 ),
        .O51(D[0]),
        .O52(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F0F00FF00F)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2 
       (.GE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[2]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11] [2]),
        .I4(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_0 ),
        .O51(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_1 ),
        .O52(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_2 ),
        .PROP(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]_i_1 
       (.GE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[4]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11] [4]),
        .I4(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_1 ),
        .O51(D[1]),
        .O52(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1 
       (.GE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[5]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11] [5]),
        .I4(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]_i_1_n_2 ),
        .O51(D[2]),
        .O52(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1 
       (.GE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[6]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11] [6]),
        .I4(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_2 ),
        .O51(D[3]),
        .O52(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1 
       (.GE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[7]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11] [7]),
        .I4(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_2 ),
        .O51(D[4]),
        .O52(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F00FF0F00F)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1 
       (.GE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[8]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11] [8]),
        .I4(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_3 ),
        .O51(D[5]),
        .O52(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_n_2 ),
        .PROP(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_1_n_3 ));
  LOOKAHEAD8 #(
    .LOOKB("FALSE"),
    .LOOKD("TRUE"),
    .LOOKF("TRUE"),
    .LOOKH("TRUE")) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2 
       (.CIN(wr_pntr_plus1_pf_carry),
        .COUTB(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_0 ),
        .COUTD(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_1 ),
        .COUTF(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_2 ),
        .COUTH(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_2_n_3 ),
        .CYA(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_2 ),
        .CYB(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4_n_2 ),
        .CYC(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_2 ),
        .CYD(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2 ),
        .CYE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]_i_1_n_2 ),
        .CYF(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_2 ),
        .CYG(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_2 ),
        .CYH(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2 ),
        .GEA(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_0 ),
        .GEB(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4_n_0 ),
        .GEC(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_0 ),
        .GED(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0 ),
        .GEE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]_i_1_n_0 ),
        .GEF(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_0 ),
        .GEG(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_0 ),
        .GEH(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_0 ),
        .PROPA(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_3 ),
        .PROPB(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4_n_3 ),
        .PROPC(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_2_n_3 ),
        .PROPD(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3 ),
        .PROPE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]_i_1_n_3 ),
        .PROPF(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]_i_1_n_3 ),
        .PROPG(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]_i_1_n_3 ),
        .PROPH(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F0F00FF00F)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3 
       (.GE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[0]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11] [0]),
        .I4(wr_pntr_plus1_pf_carry),
        .O51(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_1 ),
        .O52(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_2 ),
        .PROP(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_3 ));
  LUT6CY #(
    .INIT(64'hF0FF00F0F00FF00F)) 
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4 
       (.GE(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4_n_0 ),
        .I0(1'b1),
        .I1(1'b1),
        .I2(Q[1]),
        .I3(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[11] [1]),
        .I4(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_3_n_2 ),
        .O51(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4_n_1 ),
        .O52(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4_n_2 ),
        .PROP(\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[9]_i_4_n_3 ));
  LUT3 #(
    .INIT(8'h76)) 
    \gen_rst_ic.fifo_rd_rst_ic_i_1 
       (.I0(\gen_rst_ic.curr_rrst_state [0]),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.fifo_wr_rst_rd ),
        .O(\gen_rst_ic.fifo_rd_rst_i ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_rd_rst_i ),
        .Q(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst_i__0),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I4(\gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ),
        .I5(\gen_rst_ic.fifo_wr_rst_ic ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010116)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ),
        .Q(\gen_rst_ic.fifo_wr_rst_ic ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_38d0_vb1_0_xpm_cdc_sync_rst \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .src_rst(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_rst_ic.rst_seq_reentered_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ),
        .I1(rst_i__0),
        .O(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \gen_rst_ic.rst_seq_reentered_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I5(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.rst_seq_reentered_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBFB0)) 
    \gen_rst_ic.wr_rst_busy_ic_i_1 
       (.I0(rst_i__0),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ),
        .I3(wrst_busy),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000116)) 
    \gen_rst_ic.wr_rst_busy_ic_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.wr_rst_busy_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ),
        .Q(wrst_busy),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  bd_38d0_vb1_0_xpm_cdc_sync_rst__2 \gen_rst_ic.wrst_rd_inst 
       (.dest_clk(rd_clk),
        .dest_rst(\gen_rst_ic.fifo_wr_rst_rd ),
        .src_rst(\gen_rst_ic.fifo_wr_rst_ic ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wrst_busy),
        .I1(rst_d1),
        .I2(wr_en),
        .I3(\count_value_i_reg[10] ),
        .O(wr_pntr_plus1_pf_carry));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \gof.overflow_i_i_1 
       (.I0(wrst_busy),
        .I1(rst_d1),
        .I2(\count_value_i_reg[10] ),
        .I3(wr_en),
        .O(overflow_i0));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \grdc.rd_data_count_i[11]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .I1(\grdc.rd_data_count_i_reg[0] [0]),
        .I2(\grdc.rd_data_count_i_reg[0] [1]),
        .O(SR));
  LUT3 #(
    .INIT(8'hA8)) 
    \guf.underflow_i_i_1 
       (.I0(rd_en),
        .I1(\guf.underflow_i_reg ),
        .I2(\gen_rst_ic.fifo_rd_rst_ic_reg_0 ),
        .O(underflow_i0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    wr_rst_busy_INST_0
       (.I0(wrst_busy),
        .I1(rst_d1),
        .O(wr_rst_busy));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "11" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "195" *) (* BYTE_WRITE_WIDTH_B = "195" *) (* CASCADE_HEIGHT = "1" *) 
(* CLOCKING_MODE = "1" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "399360" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "0" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "2048" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) 
(* P_MIN_WIDTH_DATA = "195" *) (* P_MIN_WIDTH_DATA_A = "195" *) (* P_MIN_WIDTH_DATA_B = "195" *) 
(* P_MIN_WIDTH_DATA_ECC = "195" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "195" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "11" *) 
(* P_WIDTH_ADDR_READ_B = "11" *) (* P_WIDTH_ADDR_WRITE_A = "11" *) (* P_WIDTH_ADDR_WRITE_B = "11" *) 
(* P_WIDTH_COL_WRITE_A = "195" *) (* P_WIDTH_COL_WRITE_B = "195" *) (* RAM_DECOMP = "auto" *) 
(* READ_DATA_WIDTH_A = "195" *) (* READ_DATA_WIDTH_B = "195" *) (* READ_LATENCY_A = "2" *) 
(* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) 
(* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "195" *) 
(* WRITE_DATA_WIDTH_B = "195" *) (* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) 
(* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
(* rsta_loop_iter = "196" *) (* rstb_loop_iter = "196" *) 
module bd_38d0_vb1_0_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [194:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [194:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [10:0]addrb;
  input [194:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [194:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [194:0]dina;
  wire [193:0]\^doutb ;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED ;
  wire [31:16]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED ;
  wire [3:2]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED ;
  wire [31:16]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED ;
  wire [3:2]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPBDOUTP_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTADOUT_UNCONNECTED ;
  wire [31:16]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPADOUTP_UNCONNECTED ;
  wire [3:2]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPBDOUTP_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_DOUTADOUT_UNCONNECTED ;
  wire [31:16]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_DOUTPADOUTP_UNCONNECTED ;
  wire [3:2]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_DOUTPBDOUTP_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_DOUTADOUT_UNCONNECTED ;
  wire [31:16]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_DOUTPADOUTP_UNCONNECTED ;
  wire [3:2]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_DOUTPBDOUTP_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DOUTADOUT_UNCONNECTED ;
  wire [31:16]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DOUTPADOUTP_UNCONNECTED ;
  wire [3:2]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DOUTPBDOUTP_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_DOUTADOUT_UNCONNECTED ;
  wire [31:14]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_DOUTPBDOUTP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[194] = \<const0> ;
  assign douta[193] = \<const0> ;
  assign douta[192] = \<const0> ;
  assign douta[191] = \<const0> ;
  assign douta[190] = \<const0> ;
  assign douta[189] = \<const0> ;
  assign douta[188] = \<const0> ;
  assign douta[187] = \<const0> ;
  assign douta[186] = \<const0> ;
  assign douta[185] = \<const0> ;
  assign douta[184] = \<const0> ;
  assign douta[183] = \<const0> ;
  assign douta[182] = \<const0> ;
  assign douta[181] = \<const0> ;
  assign douta[180] = \<const0> ;
  assign douta[179] = \<const0> ;
  assign douta[178] = \<const0> ;
  assign douta[177] = \<const0> ;
  assign douta[176] = \<const0> ;
  assign douta[175] = \<const0> ;
  assign douta[174] = \<const0> ;
  assign douta[173] = \<const0> ;
  assign douta[172] = \<const0> ;
  assign douta[171] = \<const0> ;
  assign douta[170] = \<const0> ;
  assign douta[169] = \<const0> ;
  assign douta[168] = \<const0> ;
  assign douta[167] = \<const0> ;
  assign douta[166] = \<const0> ;
  assign douta[165] = \<const0> ;
  assign douta[164] = \<const0> ;
  assign douta[163] = \<const0> ;
  assign douta[162] = \<const0> ;
  assign douta[161] = \<const0> ;
  assign douta[160] = \<const0> ;
  assign douta[159] = \<const0> ;
  assign douta[158] = \<const0> ;
  assign douta[157] = \<const0> ;
  assign douta[156] = \<const0> ;
  assign douta[155] = \<const0> ;
  assign douta[154] = \<const0> ;
  assign douta[153] = \<const0> ;
  assign douta[152] = \<const0> ;
  assign douta[151] = \<const0> ;
  assign douta[150] = \<const0> ;
  assign douta[149] = \<const0> ;
  assign douta[148] = \<const0> ;
  assign douta[147] = \<const0> ;
  assign douta[146] = \<const0> ;
  assign douta[145] = \<const0> ;
  assign douta[144] = \<const0> ;
  assign douta[143] = \<const0> ;
  assign douta[142] = \<const0> ;
  assign douta[141] = \<const0> ;
  assign douta[140] = \<const0> ;
  assign douta[139] = \<const0> ;
  assign douta[138] = \<const0> ;
  assign douta[137] = \<const0> ;
  assign douta[136] = \<const0> ;
  assign douta[135] = \<const0> ;
  assign douta[134] = \<const0> ;
  assign douta[133] = \<const0> ;
  assign douta[132] = \<const0> ;
  assign douta[131] = \<const0> ;
  assign douta[130] = \<const0> ;
  assign douta[129] = \<const0> ;
  assign douta[128] = \<const0> ;
  assign douta[127] = \<const0> ;
  assign douta[126] = \<const0> ;
  assign douta[125] = \<const0> ;
  assign douta[124] = \<const0> ;
  assign douta[123] = \<const0> ;
  assign douta[122] = \<const0> ;
  assign douta[121] = \<const0> ;
  assign douta[120] = \<const0> ;
  assign douta[119] = \<const0> ;
  assign douta[118] = \<const0> ;
  assign douta[117] = \<const0> ;
  assign douta[116] = \<const0> ;
  assign douta[115] = \<const0> ;
  assign douta[114] = \<const0> ;
  assign douta[113] = \<const0> ;
  assign douta[112] = \<const0> ;
  assign douta[111] = \<const0> ;
  assign douta[110] = \<const0> ;
  assign douta[109] = \<const0> ;
  assign douta[108] = \<const0> ;
  assign douta[107] = \<const0> ;
  assign douta[106] = \<const0> ;
  assign douta[105] = \<const0> ;
  assign douta[104] = \<const0> ;
  assign douta[103] = \<const0> ;
  assign douta[102] = \<const0> ;
  assign douta[101] = \<const0> ;
  assign douta[100] = \<const0> ;
  assign douta[99] = \<const0> ;
  assign douta[98] = \<const0> ;
  assign douta[97] = \<const0> ;
  assign douta[96] = \<const0> ;
  assign douta[95] = \<const0> ;
  assign douta[94] = \<const0> ;
  assign douta[93] = \<const0> ;
  assign douta[92] = \<const0> ;
  assign douta[91] = \<const0> ;
  assign douta[90] = \<const0> ;
  assign douta[89] = \<const0> ;
  assign douta[88] = \<const0> ;
  assign douta[87] = \<const0> ;
  assign douta[86] = \<const0> ;
  assign douta[85] = \<const0> ;
  assign douta[84] = \<const0> ;
  assign douta[83] = \<const0> ;
  assign douta[82] = \<const0> ;
  assign douta[81] = \<const0> ;
  assign douta[80] = \<const0> ;
  assign douta[79] = \<const0> ;
  assign douta[78] = \<const0> ;
  assign douta[77] = \<const0> ;
  assign douta[76] = \<const0> ;
  assign douta[75] = \<const0> ;
  assign douta[74] = \<const0> ;
  assign douta[73] = \<const0> ;
  assign douta[72] = \<const0> ;
  assign douta[71] = \<const0> ;
  assign douta[70] = \<const0> ;
  assign douta[69] = \<const0> ;
  assign douta[68] = \<const0> ;
  assign douta[67] = \<const0> ;
  assign douta[66] = \<const0> ;
  assign douta[65] = \<const0> ;
  assign douta[64] = \<const0> ;
  assign douta[63] = \<const0> ;
  assign douta[62] = \<const0> ;
  assign douta[61] = \<const0> ;
  assign douta[60] = \<const0> ;
  assign douta[59] = \<const0> ;
  assign douta[58] = \<const0> ;
  assign douta[57] = \<const0> ;
  assign douta[56] = \<const0> ;
  assign douta[55] = \<const0> ;
  assign douta[54] = \<const0> ;
  assign douta[53] = \<const0> ;
  assign douta[52] = \<const0> ;
  assign douta[51] = \<const0> ;
  assign douta[50] = \<const0> ;
  assign douta[49] = \<const0> ;
  assign douta[48] = \<const0> ;
  assign douta[47] = \<const0> ;
  assign douta[46] = \<const0> ;
  assign douta[45] = \<const0> ;
  assign douta[44] = \<const0> ;
  assign douta[43] = \<const0> ;
  assign douta[42] = \<const0> ;
  assign douta[41] = \<const0> ;
  assign douta[40] = \<const0> ;
  assign douta[39] = \<const0> ;
  assign douta[38] = \<const0> ;
  assign douta[37] = \<const0> ;
  assign douta[36] = \<const0> ;
  assign douta[35] = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign doutb[194] = \<const0> ;
  assign doutb[193:192] = \^doutb [193:192];
  assign doutb[191] = \<const0> ;
  assign doutb[190] = \<const0> ;
  assign doutb[189] = \<const0> ;
  assign doutb[188] = \<const0> ;
  assign doutb[187] = \<const0> ;
  assign doutb[186] = \<const0> ;
  assign doutb[185] = \<const0> ;
  assign doutb[184] = \<const0> ;
  assign doutb[183] = \<const0> ;
  assign doutb[182] = \<const0> ;
  assign doutb[181] = \<const0> ;
  assign doutb[180] = \<const0> ;
  assign doutb[179] = \<const0> ;
  assign doutb[178] = \<const0> ;
  assign doutb[177] = \<const0> ;
  assign doutb[176] = \<const0> ;
  assign doutb[175] = \<const0> ;
  assign doutb[174] = \<const0> ;
  assign doutb[173] = \<const0> ;
  assign doutb[172] = \<const0> ;
  assign doutb[171] = \<const0> ;
  assign doutb[170] = \<const0> ;
  assign doutb[169] = \<const0> ;
  assign doutb[168] = \<const0> ;
  assign doutb[167] = \<const0> ;
  assign doutb[166] = \<const0> ;
  assign doutb[165] = \<const0> ;
  assign doutb[164] = \<const0> ;
  assign doutb[163] = \<const0> ;
  assign doutb[162] = \<const0> ;
  assign doutb[161] = \<const0> ;
  assign doutb[160] = \<const0> ;
  assign doutb[159] = \<const0> ;
  assign doutb[158] = \<const0> ;
  assign doutb[157] = \<const0> ;
  assign doutb[156] = \<const0> ;
  assign doutb[155] = \<const0> ;
  assign doutb[154] = \<const0> ;
  assign doutb[153] = \<const0> ;
  assign doutb[152] = \<const0> ;
  assign doutb[151] = \<const0> ;
  assign doutb[150] = \<const0> ;
  assign doutb[149] = \<const0> ;
  assign doutb[148] = \<const0> ;
  assign doutb[147] = \<const0> ;
  assign doutb[146] = \<const0> ;
  assign doutb[145] = \<const0> ;
  assign doutb[144] = \<const0> ;
  assign doutb[143] = \<const0> ;
  assign doutb[142] = \<const0> ;
  assign doutb[141] = \<const0> ;
  assign doutb[140] = \<const0> ;
  assign doutb[139] = \<const0> ;
  assign doutb[138] = \<const0> ;
  assign doutb[137] = \<const0> ;
  assign doutb[136] = \<const0> ;
  assign doutb[135] = \<const0> ;
  assign doutb[134] = \<const0> ;
  assign doutb[133] = \<const0> ;
  assign doutb[132] = \<const0> ;
  assign doutb[131] = \<const0> ;
  assign doutb[130] = \<const0> ;
  assign doutb[129] = \<const0> ;
  assign doutb[128] = \<const0> ;
  assign doutb[127] = \<const0> ;
  assign doutb[126] = \<const0> ;
  assign doutb[125] = \<const0> ;
  assign doutb[124] = \<const0> ;
  assign doutb[123] = \<const0> ;
  assign doutb[122] = \<const0> ;
  assign doutb[121] = \<const0> ;
  assign doutb[120] = \<const0> ;
  assign doutb[119:0] = \^doutb [119:0];
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* INIT_B = "36'h0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "17" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "17" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "399360" *) 
  (* RTL_RAM_NAME = "inst/inst/COUPLER_INST/generate_async_fifo.FIFO_INST/XPM_FIFO_ASYNC_INST/gnuram_async_fifo.xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_LEGACY_PRIM = "RAMB36E5" *) 
  (* XILINX_TRANSFORM_PINMAP = "ADDRARDADDR[0]:ADDRARDADDRU[0],ADDRARDADDRL[0] ADDRARDADDR[10]:ADDRARDADDRU[10],ADDRARDADDRL[10] ADDRARDADDR[11]:ADDRARDADDRU[11],ADDRARDADDRL[11] ADDRARDADDR[1]:ADDRARDADDRU[1],ADDRARDADDRL[1] ADDRARDADDR[2]:ADDRARDADDRU[2],ADDRARDADDRL[2] ADDRARDADDR[3]:ADDRARDADDRU[3],ADDRARDADDRL[3] ADDRARDADDR[4]:ADDRARDADDRU[4],ADDRARDADDRL[4] ADDRARDADDR[5]:ADDRARDADDRU[5],ADDRARDADDRL[5] ADDRARDADDR[6]:ADDRARDADDRU[6],ADDRARDADDRL[6] ADDRARDADDR[7]:ADDRARDADDRU[7],ADDRARDADDRL[7] ADDRARDADDR[8]:ADDRARDADDRU[8],ADDRARDADDRL[8] ADDRARDADDR[9]:ADDRARDADDRU[9],ADDRARDADDRL[9] ADDRBWRADDR[0]:ADDRBWRADDRU[0],ADDRBWRADDRL[0] ADDRBWRADDR[10]:ADDRBWRADDRU[10],ADDRBWRADDRL[10] ADDRBWRADDR[11]:ADDRBWRADDRU[11],ADDRBWRADDRL[11] ADDRBWRADDR[1]:ADDRBWRADDRU[1],ADDRBWRADDRL[1] ADDRBWRADDR[2]:ADDRBWRADDRU[2],ADDRBWRADDRL[2] ADDRBWRADDR[3]:ADDRBWRADDRU[3],ADDRBWRADDRL[3] ADDRBWRADDR[4]:ADDRBWRADDRU[4],ADDRBWRADDRL[4] ADDRBWRADDR[5]:ADDRBWRADDRU[5],ADDRBWRADDRL[5] ADDRBWRADDR[6]:ADDRBWRADDRU[6],ADDRBWRADDRL[6] ADDRBWRADDR[7]:ADDRBWRADDRU[7],ADDRBWRADDRL[7] ADDRBWRADDR[8]:ADDRBWRADDRU[8],ADDRBWRADDRL[8] ADDRBWRADDR[9]:ADDRBWRADDRU[9],ADDRBWRADDRL[9] ARST_A:ARST_A_U,ARST_A_L ARST_B:ARST_B_U,ARST_B_L CLKARDCLK:CLKARDCLKU,CLKARDCLKL CLKBWRCLK:CLKBWRCLKU,CLKBWRCLKL ECCPIPECE:ECCPIPECEL ENARDEN:ENARDENU,ENARDENL ENBWREN:ENBWRENU,ENBWRENL REGCEAREGCE:REGCEAREGCEU,REGCEAREGCEL REGCEB:REGCEBU,REGCEBL RSTRAMARSTRAM:RSTRAMARSTRAMU,RSTRAMARSTRAML RSTRAMB:RSTRAMBU,RSTRAMBL RSTREGARSTREG:RSTREGARSTREGU,RSTREGARSTREGL SLEEP:SLEEPU,SLEEPL CASDOMUXA:CASDOMUXAU,CASDOMUXAL CASDOMUXB:CASDOMUXBU,CASDOMUXBL CASOREGIMUXA:CASOREGIMUXAU,CASOREGIMUXAL CASOREGIMUXB:CASOREGIMUXBU,CASOREGIMUXBL CASDOMUXEN_A:CASDOMUXEN_AU,CASDOMUXEN_AL CASDOMUXEN_B:CASDOMUXEN_BU,CASDOMUXEN_BL CASOREGIMUXEN_A:CASOREGIMUXEN_AU,CASOREGIMUXEN_AL CASOREGIMUXEN_B:CASOREGIMUXEN_BU,CASOREGIMUXEN_BL RSTREGB:RSTREGBU,RSTREGBL WEA[0]:WEAU[2],WEAL[2],WEAU[0],WEAL[0] WEA[1]:WEAU[3],WEAL[3],WEAU[1],WEAL[1] WEBWE[0]:WEBWEU[2],WEBWEL[2],WEBWEU[0],WEBWEL[0] WEBWE[1]:WEBWEU[3],WEBWEL[3],WEBWEU[1],WEBWEL[1]" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E5_INT #(
    .BWE_MODE_B("PARITY_INTERLEAVED"),
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_FILE("NONE"),
    .PR_SAVE_DATA("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0 
       (.ADDRARDADDRL({addra,1'b0}),
        .ADDRARDADDRU({addra,1'b0}),
        .ADDRBWRADDRL({addrb,1'b0}),
        .ADDRBWRADDRU({addrb,1'b0}),
        .ARST_A_L(1'b0),
        .ARST_A_U(1'b0),
        .ARST_B_L(1'b0),
        .ARST_B_U(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXAL(1'b0),
        .CASDOMUXAU(1'b0),
        .CASDOMUXBL(1'b0),
        .CASDOMUXBU(1'b0),
        .CASDOMUXEN_AL(1'b1),
        .CASDOMUXEN_AU(1'b1),
        .CASDOMUXEN_BL(1'b1),
        .CASDOMUXEN_BU(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXAL(1'b0),
        .CASOREGIMUXAU(1'b0),
        .CASOREGIMUXBL(1'b0),
        .CASOREGIMUXBU(1'b0),
        .CASOREGIMUXEN_AL(1'b1),
        .CASOREGIMUXEN_AU(1'b1),
        .CASOREGIMUXEN_BL(1'b1),
        .CASOREGIMUXEN_BU(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLKL(clka),
        .CLKARDCLKU(clka),
        .CLKBWRCLKL(clkb),
        .CLKBWRCLKU(clkb),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[15:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,dina[17:16]}),
        .DINPBDINP({1'b0,1'b0,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTBDOUT_UNCONNECTED [31:16],\^doutb [15:0]}),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED [3:2],\^doutb [17:16]}),
        .ECCPIPECEL(1'b1),
        .ENARDENL(1'b1),
        .ENARDENU(1'b1),
        .ENBWRENL(enb),
        .ENBWRENU(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .REGCEAREGCEL(1'b1),
        .REGCEAREGCEU(1'b1),
        .REGCEBL(regceb),
        .REGCEBU(regceb),
        .RSTRAMARSTRAML(1'b0),
        .RSTRAMARSTRAMU(1'b0),
        .RSTRAMBL(1'b0),
        .RSTRAMBU(1'b0),
        .RSTREGARSTREGL(1'b0),
        .RSTREGARSTREGU(1'b0),
        .RSTREGBL(rstb),
        .RSTREGBU(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ),
        .SLEEPL(1'b0),
        .SLEEPU(1'b0),
        .WEAL({wea,wea,wea,wea}),
        .WEAU({wea,wea,wea,wea}),
        .WEBWEL({1'b0,1'b0,1'b0,1'b0}),
        .WEBWEU({1'b0,1'b0,1'b0,1'b0}),
        .WE_IND_PARITY(1'b1));
  (* INIT_B = "36'h0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTA.DATA_LSB  = "18" *) 
  (* \MEM.PORTA.DATA_MSB  = "35" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "18" *) 
  (* \MEM.PORTB.DATA_MSB  = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "399360" *) 
  (* RTL_RAM_NAME = "inst/inst/COUPLER_INST/generate_async_fifo.FIFO_INST/XPM_FIFO_ASYNC_INST/gnuram_async_fifo.xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_1" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_LEGACY_PRIM = "RAMB36E5" *) 
  (* XILINX_TRANSFORM_PINMAP = "ADDRARDADDR[0]:ADDRARDADDRU[0],ADDRARDADDRL[0] ADDRARDADDR[10]:ADDRARDADDRU[10],ADDRARDADDRL[10] ADDRARDADDR[11]:ADDRARDADDRU[11],ADDRARDADDRL[11] ADDRARDADDR[1]:ADDRARDADDRU[1],ADDRARDADDRL[1] ADDRARDADDR[2]:ADDRARDADDRU[2],ADDRARDADDRL[2] ADDRARDADDR[3]:ADDRARDADDRU[3],ADDRARDADDRL[3] ADDRARDADDR[4]:ADDRARDADDRU[4],ADDRARDADDRL[4] ADDRARDADDR[5]:ADDRARDADDRU[5],ADDRARDADDRL[5] ADDRARDADDR[6]:ADDRARDADDRU[6],ADDRARDADDRL[6] ADDRARDADDR[7]:ADDRARDADDRU[7],ADDRARDADDRL[7] ADDRARDADDR[8]:ADDRARDADDRU[8],ADDRARDADDRL[8] ADDRARDADDR[9]:ADDRARDADDRU[9],ADDRARDADDRL[9] ADDRBWRADDR[0]:ADDRBWRADDRU[0],ADDRBWRADDRL[0] ADDRBWRADDR[10]:ADDRBWRADDRU[10],ADDRBWRADDRL[10] ADDRBWRADDR[11]:ADDRBWRADDRU[11],ADDRBWRADDRL[11] ADDRBWRADDR[1]:ADDRBWRADDRU[1],ADDRBWRADDRL[1] ADDRBWRADDR[2]:ADDRBWRADDRU[2],ADDRBWRADDRL[2] ADDRBWRADDR[3]:ADDRBWRADDRU[3],ADDRBWRADDRL[3] ADDRBWRADDR[4]:ADDRBWRADDRU[4],ADDRBWRADDRL[4] ADDRBWRADDR[5]:ADDRBWRADDRU[5],ADDRBWRADDRL[5] ADDRBWRADDR[6]:ADDRBWRADDRU[6],ADDRBWRADDRL[6] ADDRBWRADDR[7]:ADDRBWRADDRU[7],ADDRBWRADDRL[7] ADDRBWRADDR[8]:ADDRBWRADDRU[8],ADDRBWRADDRL[8] ADDRBWRADDR[9]:ADDRBWRADDRU[9],ADDRBWRADDRL[9] ARST_A:ARST_A_U,ARST_A_L ARST_B:ARST_B_U,ARST_B_L CLKARDCLK:CLKARDCLKU,CLKARDCLKL CLKBWRCLK:CLKBWRCLKU,CLKBWRCLKL ECCPIPECE:ECCPIPECEL ENARDEN:ENARDENU,ENARDENL ENBWREN:ENBWRENU,ENBWRENL REGCEAREGCE:REGCEAREGCEU,REGCEAREGCEL REGCEB:REGCEBU,REGCEBL RSTRAMARSTRAM:RSTRAMARSTRAMU,RSTRAMARSTRAML RSTRAMB:RSTRAMBU,RSTRAMBL RSTREGARSTREG:RSTREGARSTREGU,RSTREGARSTREGL SLEEP:SLEEPU,SLEEPL CASDOMUXA:CASDOMUXAU,CASDOMUXAL CASDOMUXB:CASDOMUXBU,CASDOMUXBL CASOREGIMUXA:CASOREGIMUXAU,CASOREGIMUXAL CASOREGIMUXB:CASOREGIMUXBU,CASOREGIMUXBL CASDOMUXEN_A:CASDOMUXEN_AU,CASDOMUXEN_AL CASDOMUXEN_B:CASDOMUXEN_BU,CASDOMUXEN_BL CASOREGIMUXEN_A:CASOREGIMUXEN_AU,CASOREGIMUXEN_AL CASOREGIMUXEN_B:CASOREGIMUXEN_BU,CASOREGIMUXEN_BL RSTREGB:RSTREGBU,RSTREGBL WEA[0]:WEAU[2],WEAL[2],WEAU[0],WEAL[0] WEA[1]:WEAU[3],WEAL[3],WEAU[1],WEAL[1] WEBWE[0]:WEBWEU[2],WEBWEL[2],WEBWEU[0],WEBWEL[0] WEBWE[1]:WEBWEU[3],WEBWEL[3],WEBWEU[1],WEBWEL[1]" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "35" *) 
  RAMB36E5_INT #(
    .BWE_MODE_B("PARITY_INTERLEAVED"),
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_FILE("NONE"),
    .PR_SAVE_DATA("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1 
       (.ADDRARDADDRL({addra,1'b0}),
        .ADDRARDADDRU({addra,1'b0}),
        .ADDRBWRADDRL({addrb,1'b0}),
        .ADDRBWRADDRU({addrb,1'b0}),
        .ARST_A_L(1'b0),
        .ARST_A_U(1'b0),
        .ARST_B_L(1'b0),
        .ARST_B_U(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXAL(1'b0),
        .CASDOMUXAU(1'b0),
        .CASDOMUXBL(1'b0),
        .CASDOMUXBU(1'b0),
        .CASDOMUXEN_AL(1'b1),
        .CASDOMUXEN_AU(1'b1),
        .CASDOMUXEN_BL(1'b1),
        .CASDOMUXEN_BU(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXAL(1'b0),
        .CASOREGIMUXAU(1'b0),
        .CASOREGIMUXBL(1'b0),
        .CASOREGIMUXBU(1'b0),
        .CASOREGIMUXEN_AL(1'b1),
        .CASOREGIMUXEN_AU(1'b1),
        .CASOREGIMUXEN_BL(1'b1),
        .CASOREGIMUXEN_BU(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLKL(clka),
        .CLKARDCLKU(clka),
        .CLKBWRCLKL(clkb),
        .CLKBWRCLKU(clkb),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[33:18]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,dina[35:34]}),
        .DINPBDINP({1'b0,1'b0,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTBDOUT_UNCONNECTED [31:16],\^doutb [33:18]}),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPBDOUTP_UNCONNECTED [3:2],\^doutb [35:34]}),
        .ECCPIPECEL(1'b1),
        .ENARDENL(1'b1),
        .ENARDENU(1'b1),
        .ENBWRENL(enb),
        .ENBWRENU(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .REGCEAREGCEL(1'b1),
        .REGCEAREGCEU(1'b1),
        .REGCEBL(regceb),
        .REGCEBU(regceb),
        .RSTRAMARSTRAML(1'b0),
        .RSTRAMARSTRAMU(1'b0),
        .RSTRAMBL(1'b0),
        .RSTRAMBU(1'b0),
        .RSTREGARSTREGL(1'b0),
        .RSTREGARSTREGU(1'b0),
        .RSTREGBL(rstb),
        .RSTREGBU(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_SBITERR_UNCONNECTED ),
        .SLEEPL(1'b0),
        .SLEEPU(1'b0),
        .WEAL({wea,wea,wea,wea}),
        .WEAU({wea,wea,wea,wea}),
        .WEBWEL({1'b0,1'b0,1'b0,1'b0}),
        .WEBWEU({1'b0,1'b0,1'b0,1'b0}),
        .WE_IND_PARITY(1'b1));
  (* INIT_B = "36'h0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTA.DATA_LSB  = "36" *) 
  (* \MEM.PORTA.DATA_MSB  = "53" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "36" *) 
  (* \MEM.PORTB.DATA_MSB  = "53" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "399360" *) 
  (* RTL_RAM_NAME = "inst/inst/COUPLER_INST/generate_async_fifo.FIFO_INST/XPM_FIFO_ASYNC_INST/gnuram_async_fifo.xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_LEGACY_PRIM = "RAMB36E5" *) 
  (* XILINX_TRANSFORM_PINMAP = "ADDRARDADDR[0]:ADDRARDADDRU[0],ADDRARDADDRL[0] ADDRARDADDR[10]:ADDRARDADDRU[10],ADDRARDADDRL[10] ADDRARDADDR[11]:ADDRARDADDRU[11],ADDRARDADDRL[11] ADDRARDADDR[1]:ADDRARDADDRU[1],ADDRARDADDRL[1] ADDRARDADDR[2]:ADDRARDADDRU[2],ADDRARDADDRL[2] ADDRARDADDR[3]:ADDRARDADDRU[3],ADDRARDADDRL[3] ADDRARDADDR[4]:ADDRARDADDRU[4],ADDRARDADDRL[4] ADDRARDADDR[5]:ADDRARDADDRU[5],ADDRARDADDRL[5] ADDRARDADDR[6]:ADDRARDADDRU[6],ADDRARDADDRL[6] ADDRARDADDR[7]:ADDRARDADDRU[7],ADDRARDADDRL[7] ADDRARDADDR[8]:ADDRARDADDRU[8],ADDRARDADDRL[8] ADDRARDADDR[9]:ADDRARDADDRU[9],ADDRARDADDRL[9] ADDRBWRADDR[0]:ADDRBWRADDRU[0],ADDRBWRADDRL[0] ADDRBWRADDR[10]:ADDRBWRADDRU[10],ADDRBWRADDRL[10] ADDRBWRADDR[11]:ADDRBWRADDRU[11],ADDRBWRADDRL[11] ADDRBWRADDR[1]:ADDRBWRADDRU[1],ADDRBWRADDRL[1] ADDRBWRADDR[2]:ADDRBWRADDRU[2],ADDRBWRADDRL[2] ADDRBWRADDR[3]:ADDRBWRADDRU[3],ADDRBWRADDRL[3] ADDRBWRADDR[4]:ADDRBWRADDRU[4],ADDRBWRADDRL[4] ADDRBWRADDR[5]:ADDRBWRADDRU[5],ADDRBWRADDRL[5] ADDRBWRADDR[6]:ADDRBWRADDRU[6],ADDRBWRADDRL[6] ADDRBWRADDR[7]:ADDRBWRADDRU[7],ADDRBWRADDRL[7] ADDRBWRADDR[8]:ADDRBWRADDRU[8],ADDRBWRADDRL[8] ADDRBWRADDR[9]:ADDRBWRADDRU[9],ADDRBWRADDRL[9] ARST_A:ARST_A_U,ARST_A_L ARST_B:ARST_B_U,ARST_B_L CLKARDCLK:CLKARDCLKU,CLKARDCLKL CLKBWRCLK:CLKBWRCLKU,CLKBWRCLKL ECCPIPECE:ECCPIPECEL ENARDEN:ENARDENU,ENARDENL ENBWREN:ENBWRENU,ENBWRENL REGCEAREGCE:REGCEAREGCEU,REGCEAREGCEL REGCEB:REGCEBU,REGCEBL RSTRAMARSTRAM:RSTRAMARSTRAMU,RSTRAMARSTRAML RSTRAMB:RSTRAMBU,RSTRAMBL RSTREGARSTREG:RSTREGARSTREGU,RSTREGARSTREGL SLEEP:SLEEPU,SLEEPL CASDOMUXA:CASDOMUXAU,CASDOMUXAL CASDOMUXB:CASDOMUXBU,CASDOMUXBL CASOREGIMUXA:CASOREGIMUXAU,CASOREGIMUXAL CASOREGIMUXB:CASOREGIMUXBU,CASOREGIMUXBL CASDOMUXEN_A:CASDOMUXEN_AU,CASDOMUXEN_AL CASDOMUXEN_B:CASDOMUXEN_BU,CASDOMUXEN_BL CASOREGIMUXEN_A:CASOREGIMUXEN_AU,CASOREGIMUXEN_AL CASOREGIMUXEN_B:CASOREGIMUXEN_BU,CASOREGIMUXEN_BL RSTREGB:RSTREGBU,RSTREGBL WEA[0]:WEAU[2],WEAL[2],WEAU[0],WEAL[0] WEA[1]:WEAU[3],WEAL[3],WEAU[1],WEAL[1] WEBWE[0]:WEBWEU[2],WEBWEL[2],WEBWEU[0],WEBWEL[0] WEBWE[1]:WEBWEU[3],WEBWEL[3],WEBWEU[1],WEBWEL[1]" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "53" *) 
  RAMB36E5_INT #(
    .BWE_MODE_B("PARITY_INTERLEAVED"),
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_FILE("NONE"),
    .PR_SAVE_DATA("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_2 
       (.ADDRARDADDRL({addra,1'b0}),
        .ADDRARDADDRU({addra,1'b0}),
        .ADDRBWRADDRL({addrb,1'b0}),
        .ADDRBWRADDRU({addrb,1'b0}),
        .ARST_A_L(1'b0),
        .ARST_A_U(1'b0),
        .ARST_B_L(1'b0),
        .ARST_B_U(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXAL(1'b0),
        .CASDOMUXAU(1'b0),
        .CASDOMUXBL(1'b0),
        .CASDOMUXBU(1'b0),
        .CASDOMUXEN_AL(1'b1),
        .CASDOMUXEN_AU(1'b1),
        .CASDOMUXEN_BL(1'b1),
        .CASDOMUXEN_BU(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXAL(1'b0),
        .CASOREGIMUXAU(1'b0),
        .CASOREGIMUXBL(1'b0),
        .CASOREGIMUXBU(1'b0),
        .CASOREGIMUXEN_AL(1'b1),
        .CASOREGIMUXEN_AU(1'b1),
        .CASOREGIMUXEN_BL(1'b1),
        .CASOREGIMUXEN_BU(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLKL(clka),
        .CLKARDCLKU(clka),
        .CLKBWRCLKL(clkb),
        .CLKBWRCLKU(clkb),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[51:36]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,dina[53:52]}),
        .DINPBDINP({1'b0,1'b0,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTBDOUT_UNCONNECTED [31:16],\^doutb [51:36]}),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_DOUTPBDOUTP_UNCONNECTED [3:2],\^doutb [53:52]}),
        .ECCPIPECEL(1'b1),
        .ENARDENL(1'b1),
        .ENARDENU(1'b1),
        .ENBWRENL(enb),
        .ENBWRENU(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .REGCEAREGCEL(1'b1),
        .REGCEAREGCEU(1'b1),
        .REGCEBL(regceb),
        .REGCEBU(regceb),
        .RSTRAMARSTRAML(1'b0),
        .RSTRAMARSTRAMU(1'b0),
        .RSTRAMBL(1'b0),
        .RSTRAMBU(1'b0),
        .RSTREGARSTREGL(1'b0),
        .RSTREGARSTREGU(1'b0),
        .RSTREGBL(rstb),
        .RSTREGBU(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_2_SBITERR_UNCONNECTED ),
        .SLEEPL(1'b0),
        .SLEEPU(1'b0),
        .WEAL({wea,wea,wea,wea}),
        .WEAU({wea,wea,wea,wea}),
        .WEBWEL({1'b0,1'b0,1'b0,1'b0}),
        .WEBWEU({1'b0,1'b0,1'b0,1'b0}),
        .WE_IND_PARITY(1'b1));
  (* INIT_B = "36'h0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTA.DATA_LSB  = "54" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "54" *) 
  (* \MEM.PORTB.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "399360" *) 
  (* RTL_RAM_NAME = "inst/inst/COUPLER_INST/generate_async_fifo.FIFO_INST/XPM_FIFO_ASYNC_INST/gnuram_async_fifo.xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_3" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_LEGACY_PRIM = "RAMB36E5" *) 
  (* XILINX_TRANSFORM_PINMAP = "ADDRARDADDR[0]:ADDRARDADDRU[0],ADDRARDADDRL[0] ADDRARDADDR[10]:ADDRARDADDRU[10],ADDRARDADDRL[10] ADDRARDADDR[11]:ADDRARDADDRU[11],ADDRARDADDRL[11] ADDRARDADDR[1]:ADDRARDADDRU[1],ADDRARDADDRL[1] ADDRARDADDR[2]:ADDRARDADDRU[2],ADDRARDADDRL[2] ADDRARDADDR[3]:ADDRARDADDRU[3],ADDRARDADDRL[3] ADDRARDADDR[4]:ADDRARDADDRU[4],ADDRARDADDRL[4] ADDRARDADDR[5]:ADDRARDADDRU[5],ADDRARDADDRL[5] ADDRARDADDR[6]:ADDRARDADDRU[6],ADDRARDADDRL[6] ADDRARDADDR[7]:ADDRARDADDRU[7],ADDRARDADDRL[7] ADDRARDADDR[8]:ADDRARDADDRU[8],ADDRARDADDRL[8] ADDRARDADDR[9]:ADDRARDADDRU[9],ADDRARDADDRL[9] ADDRBWRADDR[0]:ADDRBWRADDRU[0],ADDRBWRADDRL[0] ADDRBWRADDR[10]:ADDRBWRADDRU[10],ADDRBWRADDRL[10] ADDRBWRADDR[11]:ADDRBWRADDRU[11],ADDRBWRADDRL[11] ADDRBWRADDR[1]:ADDRBWRADDRU[1],ADDRBWRADDRL[1] ADDRBWRADDR[2]:ADDRBWRADDRU[2],ADDRBWRADDRL[2] ADDRBWRADDR[3]:ADDRBWRADDRU[3],ADDRBWRADDRL[3] ADDRBWRADDR[4]:ADDRBWRADDRU[4],ADDRBWRADDRL[4] ADDRBWRADDR[5]:ADDRBWRADDRU[5],ADDRBWRADDRL[5] ADDRBWRADDR[6]:ADDRBWRADDRU[6],ADDRBWRADDRL[6] ADDRBWRADDR[7]:ADDRBWRADDRU[7],ADDRBWRADDRL[7] ADDRBWRADDR[8]:ADDRBWRADDRU[8],ADDRBWRADDRL[8] ADDRBWRADDR[9]:ADDRBWRADDRU[9],ADDRBWRADDRL[9] ARST_A:ARST_A_U,ARST_A_L ARST_B:ARST_B_U,ARST_B_L CLKARDCLK:CLKARDCLKU,CLKARDCLKL CLKBWRCLK:CLKBWRCLKU,CLKBWRCLKL ECCPIPECE:ECCPIPECEL ENARDEN:ENARDENU,ENARDENL ENBWREN:ENBWRENU,ENBWRENL REGCEAREGCE:REGCEAREGCEU,REGCEAREGCEL REGCEB:REGCEBU,REGCEBL RSTRAMARSTRAM:RSTRAMARSTRAMU,RSTRAMARSTRAML RSTRAMB:RSTRAMBU,RSTRAMBL RSTREGARSTREG:RSTREGARSTREGU,RSTREGARSTREGL SLEEP:SLEEPU,SLEEPL CASDOMUXA:CASDOMUXAU,CASDOMUXAL CASDOMUXB:CASDOMUXBU,CASDOMUXBL CASOREGIMUXA:CASOREGIMUXAU,CASOREGIMUXAL CASOREGIMUXB:CASOREGIMUXBU,CASOREGIMUXBL CASDOMUXEN_A:CASDOMUXEN_AU,CASDOMUXEN_AL CASDOMUXEN_B:CASDOMUXEN_BU,CASDOMUXEN_BL CASOREGIMUXEN_A:CASOREGIMUXEN_AU,CASOREGIMUXEN_AL CASOREGIMUXEN_B:CASOREGIMUXEN_BU,CASOREGIMUXEN_BL RSTREGB:RSTREGBU,RSTREGBL WEA[0]:WEAU[2],WEAL[2],WEAU[0],WEAL[0] WEA[1]:WEAU[3],WEAL[3],WEAU[1],WEAL[1] WEBWE[0]:WEBWEU[2],WEBWEL[2],WEBWEU[0],WEBWEL[0] WEBWE[1]:WEBWEU[3],WEBWEL[3],WEBWEU[1],WEBWEL[1]" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "54" *) 
  (* ram_slice_end = "71" *) 
  RAMB36E5_INT #(
    .BWE_MODE_B("PARITY_INTERLEAVED"),
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_FILE("NONE"),
    .PR_SAVE_DATA("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_3 
       (.ADDRARDADDRL({addra,1'b0}),
        .ADDRARDADDRU({addra,1'b0}),
        .ADDRBWRADDRL({addrb,1'b0}),
        .ADDRBWRADDRU({addrb,1'b0}),
        .ARST_A_L(1'b0),
        .ARST_A_U(1'b0),
        .ARST_B_L(1'b0),
        .ARST_B_U(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXAL(1'b0),
        .CASDOMUXAU(1'b0),
        .CASDOMUXBL(1'b0),
        .CASDOMUXBU(1'b0),
        .CASDOMUXEN_AL(1'b1),
        .CASDOMUXEN_AU(1'b1),
        .CASDOMUXEN_BL(1'b1),
        .CASDOMUXEN_BU(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXAL(1'b0),
        .CASOREGIMUXAU(1'b0),
        .CASOREGIMUXBL(1'b0),
        .CASOREGIMUXBU(1'b0),
        .CASOREGIMUXEN_AL(1'b1),
        .CASOREGIMUXEN_AU(1'b1),
        .CASOREGIMUXEN_BL(1'b1),
        .CASOREGIMUXEN_BU(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLKL(clka),
        .CLKARDCLKU(clka),
        .CLKBWRCLKL(clkb),
        .CLKBWRCLKU(clkb),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[69:54]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,dina[71:70]}),
        .DINPBDINP({1'b0,1'b0,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_DOUTBDOUT_UNCONNECTED [31:16],\^doutb [69:54]}),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_DOUTPBDOUTP_UNCONNECTED [3:2],\^doutb [71:70]}),
        .ECCPIPECEL(1'b1),
        .ENARDENL(1'b1),
        .ENARDENU(1'b1),
        .ENBWRENL(enb),
        .ENBWRENU(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .REGCEAREGCEL(1'b1),
        .REGCEAREGCEU(1'b1),
        .REGCEBL(regceb),
        .REGCEBU(regceb),
        .RSTRAMARSTRAML(1'b0),
        .RSTRAMARSTRAMU(1'b0),
        .RSTRAMBL(1'b0),
        .RSTRAMBU(1'b0),
        .RSTREGARSTREGL(1'b0),
        .RSTREGARSTREGU(1'b0),
        .RSTREGBL(rstb),
        .RSTREGBU(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_3_SBITERR_UNCONNECTED ),
        .SLEEPL(1'b0),
        .SLEEPU(1'b0),
        .WEAL({wea,wea,wea,wea}),
        .WEAU({wea,wea,wea,wea}),
        .WEBWEL({1'b0,1'b0,1'b0,1'b0}),
        .WEBWEU({1'b0,1'b0,1'b0,1'b0}),
        .WE_IND_PARITY(1'b1));
  (* INIT_B = "36'h0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTA.DATA_LSB  = "72" *) 
  (* \MEM.PORTA.DATA_MSB  = "89" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "72" *) 
  (* \MEM.PORTB.DATA_MSB  = "89" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "399360" *) 
  (* RTL_RAM_NAME = "inst/inst/COUPLER_INST/generate_async_fifo.FIFO_INST/XPM_FIFO_ASYNC_INST/gnuram_async_fifo.xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_4" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_LEGACY_PRIM = "RAMB36E5" *) 
  (* XILINX_TRANSFORM_PINMAP = "ADDRARDADDR[0]:ADDRARDADDRU[0],ADDRARDADDRL[0] ADDRARDADDR[10]:ADDRARDADDRU[10],ADDRARDADDRL[10] ADDRARDADDR[11]:ADDRARDADDRU[11],ADDRARDADDRL[11] ADDRARDADDR[1]:ADDRARDADDRU[1],ADDRARDADDRL[1] ADDRARDADDR[2]:ADDRARDADDRU[2],ADDRARDADDRL[2] ADDRARDADDR[3]:ADDRARDADDRU[3],ADDRARDADDRL[3] ADDRARDADDR[4]:ADDRARDADDRU[4],ADDRARDADDRL[4] ADDRARDADDR[5]:ADDRARDADDRU[5],ADDRARDADDRL[5] ADDRARDADDR[6]:ADDRARDADDRU[6],ADDRARDADDRL[6] ADDRARDADDR[7]:ADDRARDADDRU[7],ADDRARDADDRL[7] ADDRARDADDR[8]:ADDRARDADDRU[8],ADDRARDADDRL[8] ADDRARDADDR[9]:ADDRARDADDRU[9],ADDRARDADDRL[9] ADDRBWRADDR[0]:ADDRBWRADDRU[0],ADDRBWRADDRL[0] ADDRBWRADDR[10]:ADDRBWRADDRU[10],ADDRBWRADDRL[10] ADDRBWRADDR[11]:ADDRBWRADDRU[11],ADDRBWRADDRL[11] ADDRBWRADDR[1]:ADDRBWRADDRU[1],ADDRBWRADDRL[1] ADDRBWRADDR[2]:ADDRBWRADDRU[2],ADDRBWRADDRL[2] ADDRBWRADDR[3]:ADDRBWRADDRU[3],ADDRBWRADDRL[3] ADDRBWRADDR[4]:ADDRBWRADDRU[4],ADDRBWRADDRL[4] ADDRBWRADDR[5]:ADDRBWRADDRU[5],ADDRBWRADDRL[5] ADDRBWRADDR[6]:ADDRBWRADDRU[6],ADDRBWRADDRL[6] ADDRBWRADDR[7]:ADDRBWRADDRU[7],ADDRBWRADDRL[7] ADDRBWRADDR[8]:ADDRBWRADDRU[8],ADDRBWRADDRL[8] ADDRBWRADDR[9]:ADDRBWRADDRU[9],ADDRBWRADDRL[9] ARST_A:ARST_A_U,ARST_A_L ARST_B:ARST_B_U,ARST_B_L CLKARDCLK:CLKARDCLKU,CLKARDCLKL CLKBWRCLK:CLKBWRCLKU,CLKBWRCLKL ECCPIPECE:ECCPIPECEL ENARDEN:ENARDENU,ENARDENL ENBWREN:ENBWRENU,ENBWRENL REGCEAREGCE:REGCEAREGCEU,REGCEAREGCEL REGCEB:REGCEBU,REGCEBL RSTRAMARSTRAM:RSTRAMARSTRAMU,RSTRAMARSTRAML RSTRAMB:RSTRAMBU,RSTRAMBL RSTREGARSTREG:RSTREGARSTREGU,RSTREGARSTREGL SLEEP:SLEEPU,SLEEPL CASDOMUXA:CASDOMUXAU,CASDOMUXAL CASDOMUXB:CASDOMUXBU,CASDOMUXBL CASOREGIMUXA:CASOREGIMUXAU,CASOREGIMUXAL CASOREGIMUXB:CASOREGIMUXBU,CASOREGIMUXBL CASDOMUXEN_A:CASDOMUXEN_AU,CASDOMUXEN_AL CASDOMUXEN_B:CASDOMUXEN_BU,CASDOMUXEN_BL CASOREGIMUXEN_A:CASOREGIMUXEN_AU,CASOREGIMUXEN_AL CASOREGIMUXEN_B:CASOREGIMUXEN_BU,CASOREGIMUXEN_BL RSTREGB:RSTREGBU,RSTREGBL WEA[0]:WEAU[2],WEAL[2],WEAU[0],WEAL[0] WEA[1]:WEAU[3],WEAL[3],WEAU[1],WEAL[1] WEBWE[0]:WEBWEU[2],WEBWEL[2],WEBWEU[0],WEBWEL[0] WEBWE[1]:WEBWEU[3],WEBWEL[3],WEBWEU[1],WEBWEL[1]" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "72" *) 
  (* ram_slice_end = "89" *) 
  RAMB36E5_INT #(
    .BWE_MODE_B("PARITY_INTERLEAVED"),
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_FILE("NONE"),
    .PR_SAVE_DATA("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_4 
       (.ADDRARDADDRL({addra,1'b0}),
        .ADDRARDADDRU({addra,1'b0}),
        .ADDRBWRADDRL({addrb,1'b0}),
        .ADDRBWRADDRU({addrb,1'b0}),
        .ARST_A_L(1'b0),
        .ARST_A_U(1'b0),
        .ARST_B_L(1'b0),
        .ARST_B_U(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXAL(1'b0),
        .CASDOMUXAU(1'b0),
        .CASDOMUXBL(1'b0),
        .CASDOMUXBU(1'b0),
        .CASDOMUXEN_AL(1'b1),
        .CASDOMUXEN_AU(1'b1),
        .CASDOMUXEN_BL(1'b1),
        .CASDOMUXEN_BU(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXAL(1'b0),
        .CASOREGIMUXAU(1'b0),
        .CASOREGIMUXBL(1'b0),
        .CASOREGIMUXBU(1'b0),
        .CASOREGIMUXEN_AL(1'b1),
        .CASOREGIMUXEN_AU(1'b1),
        .CASOREGIMUXEN_BL(1'b1),
        .CASOREGIMUXEN_BU(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLKL(clka),
        .CLKARDCLKU(clka),
        .CLKBWRCLKL(clkb),
        .CLKBWRCLKU(clkb),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[87:72]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,dina[89:88]}),
        .DINPBDINP({1'b0,1'b0,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_DOUTBDOUT_UNCONNECTED [31:16],\^doutb [87:72]}),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_DOUTPBDOUTP_UNCONNECTED [3:2],\^doutb [89:88]}),
        .ECCPIPECEL(1'b1),
        .ENARDENL(1'b1),
        .ENARDENU(1'b1),
        .ENBWRENL(enb),
        .ENBWRENU(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .REGCEAREGCEL(1'b1),
        .REGCEAREGCEU(1'b1),
        .REGCEBL(regceb),
        .REGCEBU(regceb),
        .RSTRAMARSTRAML(1'b0),
        .RSTRAMARSTRAMU(1'b0),
        .RSTRAMBL(1'b0),
        .RSTRAMBU(1'b0),
        .RSTREGARSTREGL(1'b0),
        .RSTREGARSTREGU(1'b0),
        .RSTREGBL(rstb),
        .RSTREGBU(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_4_SBITERR_UNCONNECTED ),
        .SLEEPL(1'b0),
        .SLEEPU(1'b0),
        .WEAL({wea,wea,wea,wea}),
        .WEAU({wea,wea,wea,wea}),
        .WEBWEL({1'b0,1'b0,1'b0,1'b0}),
        .WEBWEU({1'b0,1'b0,1'b0,1'b0}),
        .WE_IND_PARITY(1'b1));
  (* INIT_B = "36'h0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTA.DATA_LSB  = "90" *) 
  (* \MEM.PORTA.DATA_MSB  = "107" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "90" *) 
  (* \MEM.PORTB.DATA_MSB  = "107" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "399360" *) 
  (* RTL_RAM_NAME = "inst/inst/COUPLER_INST/generate_async_fifo.FIFO_INST/XPM_FIFO_ASYNC_INST/gnuram_async_fifo.xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_LEGACY_PRIM = "RAMB36E5" *) 
  (* XILINX_TRANSFORM_PINMAP = "ADDRARDADDR[0]:ADDRARDADDRU[0],ADDRARDADDRL[0] ADDRARDADDR[10]:ADDRARDADDRU[10],ADDRARDADDRL[10] ADDRARDADDR[11]:ADDRARDADDRU[11],ADDRARDADDRL[11] ADDRARDADDR[1]:ADDRARDADDRU[1],ADDRARDADDRL[1] ADDRARDADDR[2]:ADDRARDADDRU[2],ADDRARDADDRL[2] ADDRARDADDR[3]:ADDRARDADDRU[3],ADDRARDADDRL[3] ADDRARDADDR[4]:ADDRARDADDRU[4],ADDRARDADDRL[4] ADDRARDADDR[5]:ADDRARDADDRU[5],ADDRARDADDRL[5] ADDRARDADDR[6]:ADDRARDADDRU[6],ADDRARDADDRL[6] ADDRARDADDR[7]:ADDRARDADDRU[7],ADDRARDADDRL[7] ADDRARDADDR[8]:ADDRARDADDRU[8],ADDRARDADDRL[8] ADDRARDADDR[9]:ADDRARDADDRU[9],ADDRARDADDRL[9] ADDRBWRADDR[0]:ADDRBWRADDRU[0],ADDRBWRADDRL[0] ADDRBWRADDR[10]:ADDRBWRADDRU[10],ADDRBWRADDRL[10] ADDRBWRADDR[11]:ADDRBWRADDRU[11],ADDRBWRADDRL[11] ADDRBWRADDR[1]:ADDRBWRADDRU[1],ADDRBWRADDRL[1] ADDRBWRADDR[2]:ADDRBWRADDRU[2],ADDRBWRADDRL[2] ADDRBWRADDR[3]:ADDRBWRADDRU[3],ADDRBWRADDRL[3] ADDRBWRADDR[4]:ADDRBWRADDRU[4],ADDRBWRADDRL[4] ADDRBWRADDR[5]:ADDRBWRADDRU[5],ADDRBWRADDRL[5] ADDRBWRADDR[6]:ADDRBWRADDRU[6],ADDRBWRADDRL[6] ADDRBWRADDR[7]:ADDRBWRADDRU[7],ADDRBWRADDRL[7] ADDRBWRADDR[8]:ADDRBWRADDRU[8],ADDRBWRADDRL[8] ADDRBWRADDR[9]:ADDRBWRADDRU[9],ADDRBWRADDRL[9] ARST_A:ARST_A_U,ARST_A_L ARST_B:ARST_B_U,ARST_B_L CLKARDCLK:CLKARDCLKU,CLKARDCLKL CLKBWRCLK:CLKBWRCLKU,CLKBWRCLKL ECCPIPECE:ECCPIPECEL ENARDEN:ENARDENU,ENARDENL ENBWREN:ENBWRENU,ENBWRENL REGCEAREGCE:REGCEAREGCEU,REGCEAREGCEL REGCEB:REGCEBU,REGCEBL RSTRAMARSTRAM:RSTRAMARSTRAMU,RSTRAMARSTRAML RSTRAMB:RSTRAMBU,RSTRAMBL RSTREGARSTREG:RSTREGARSTREGU,RSTREGARSTREGL SLEEP:SLEEPU,SLEEPL CASDOMUXA:CASDOMUXAU,CASDOMUXAL CASDOMUXB:CASDOMUXBU,CASDOMUXBL CASOREGIMUXA:CASOREGIMUXAU,CASOREGIMUXAL CASOREGIMUXB:CASOREGIMUXBU,CASOREGIMUXBL CASDOMUXEN_A:CASDOMUXEN_AU,CASDOMUXEN_AL CASDOMUXEN_B:CASDOMUXEN_BU,CASDOMUXEN_BL CASOREGIMUXEN_A:CASOREGIMUXEN_AU,CASOREGIMUXEN_AL CASOREGIMUXEN_B:CASOREGIMUXEN_BU,CASOREGIMUXEN_BL RSTREGB:RSTREGBU,RSTREGBL WEA[0]:WEAU[2],WEAL[2],WEAU[0],WEAL[0] WEA[1]:WEAU[3],WEAL[3],WEAU[1],WEAL[1] WEBWE[0]:WEBWEU[2],WEBWEL[2],WEBWEU[0],WEBWEL[0] WEBWE[1]:WEBWEU[3],WEBWEL[3],WEBWEU[1],WEBWEL[1]" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "90" *) 
  (* ram_slice_end = "107" *) 
  RAMB36E5_INT #(
    .BWE_MODE_B("PARITY_INTERLEAVED"),
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_FILE("NONE"),
    .PR_SAVE_DATA("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_5 
       (.ADDRARDADDRL({addra,1'b0}),
        .ADDRARDADDRU({addra,1'b0}),
        .ADDRBWRADDRL({addrb,1'b0}),
        .ADDRBWRADDRU({addrb,1'b0}),
        .ARST_A_L(1'b0),
        .ARST_A_U(1'b0),
        .ARST_B_L(1'b0),
        .ARST_B_U(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXAL(1'b0),
        .CASDOMUXAU(1'b0),
        .CASDOMUXBL(1'b0),
        .CASDOMUXBU(1'b0),
        .CASDOMUXEN_AL(1'b1),
        .CASDOMUXEN_AU(1'b1),
        .CASDOMUXEN_BL(1'b1),
        .CASDOMUXEN_BU(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXAL(1'b0),
        .CASOREGIMUXAU(1'b0),
        .CASOREGIMUXBL(1'b0),
        .CASOREGIMUXBU(1'b0),
        .CASOREGIMUXEN_AL(1'b1),
        .CASOREGIMUXEN_AU(1'b1),
        .CASOREGIMUXEN_BL(1'b1),
        .CASOREGIMUXEN_BU(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLKL(clka),
        .CLKARDCLKU(clka),
        .CLKBWRCLKL(clkb),
        .CLKBWRCLKU(clkb),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[105:90]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,dina[107:106]}),
        .DINPBDINP({1'b0,1'b0,1'b1,1'b1}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DOUTBDOUT_UNCONNECTED [31:16],\^doutb [105:90]}),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_DOUTPBDOUTP_UNCONNECTED [3:2],\^doutb [107:106]}),
        .ECCPIPECEL(1'b1),
        .ENARDENL(1'b1),
        .ENARDENU(1'b1),
        .ENBWRENL(enb),
        .ENBWRENU(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .REGCEAREGCEL(1'b1),
        .REGCEAREGCEU(1'b1),
        .REGCEBL(regceb),
        .REGCEBU(regceb),
        .RSTRAMARSTRAML(1'b0),
        .RSTRAMARSTRAMU(1'b0),
        .RSTRAMBL(1'b0),
        .RSTRAMBU(1'b0),
        .RSTREGARSTREGL(1'b0),
        .RSTREGARSTREGU(1'b0),
        .RSTREGBL(rstb),
        .RSTREGBU(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_5_SBITERR_UNCONNECTED ),
        .SLEEPL(1'b0),
        .SLEEPU(1'b0),
        .WEAL({wea,wea,wea,wea}),
        .WEAU({wea,wea,wea,wea}),
        .WEBWEL({1'b0,1'b0,1'b0,1'b0}),
        .WEBWEU({1'b0,1'b0,1'b0,1'b0}),
        .WE_IND_PARITY(1'b1));
  (* INIT_B = "36'h0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d14" *) 
  (* \MEM.PORTA.DATA_LSB  = "108" *) 
  (* \MEM.PORTA.DATA_MSB  = "121" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d14" *) 
  (* \MEM.PORTB.DATA_LSB  = "108" *) 
  (* \MEM.PORTB.DATA_MSB  = "121" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "399360" *) 
  (* RTL_RAM_NAME = "inst/inst/COUPLER_INST/generate_async_fifo.FIFO_INST/XPM_FIFO_ASYNC_INST/gnuram_async_fifo.xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg_bram_6" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_LEGACY_PRIM = "RAMB36E5" *) 
  (* XILINX_TRANSFORM_PINMAP = "ADDRARDADDR[0]:ADDRARDADDRU[0],ADDRARDADDRL[0] ADDRARDADDR[10]:ADDRARDADDRU[10],ADDRARDADDRL[10] ADDRARDADDR[11]:ADDRARDADDRU[11],ADDRARDADDRL[11] ADDRARDADDR[1]:ADDRARDADDRU[1],ADDRARDADDRL[1] ADDRARDADDR[2]:ADDRARDADDRU[2],ADDRARDADDRL[2] ADDRARDADDR[3]:ADDRARDADDRU[3],ADDRARDADDRL[3] ADDRARDADDR[4]:ADDRARDADDRU[4],ADDRARDADDRL[4] ADDRARDADDR[5]:ADDRARDADDRU[5],ADDRARDADDRL[5] ADDRARDADDR[6]:ADDRARDADDRU[6],ADDRARDADDRL[6] ADDRARDADDR[7]:ADDRARDADDRU[7],ADDRARDADDRL[7] ADDRARDADDR[8]:ADDRARDADDRU[8],ADDRARDADDRL[8] ADDRARDADDR[9]:ADDRARDADDRU[9],ADDRARDADDRL[9] ADDRBWRADDR[0]:ADDRBWRADDRU[0],ADDRBWRADDRL[0] ADDRBWRADDR[10]:ADDRBWRADDRU[10],ADDRBWRADDRL[10] ADDRBWRADDR[11]:ADDRBWRADDRU[11],ADDRBWRADDRL[11] ADDRBWRADDR[1]:ADDRBWRADDRU[1],ADDRBWRADDRL[1] ADDRBWRADDR[2]:ADDRBWRADDRU[2],ADDRBWRADDRL[2] ADDRBWRADDR[3]:ADDRBWRADDRU[3],ADDRBWRADDRL[3] ADDRBWRADDR[4]:ADDRBWRADDRU[4],ADDRBWRADDRL[4] ADDRBWRADDR[5]:ADDRBWRADDRU[5],ADDRBWRADDRL[5] ADDRBWRADDR[6]:ADDRBWRADDRU[6],ADDRBWRADDRL[6] ADDRBWRADDR[7]:ADDRBWRADDRU[7],ADDRBWRADDRL[7] ADDRBWRADDR[8]:ADDRBWRADDRU[8],ADDRBWRADDRL[8] ADDRBWRADDR[9]:ADDRBWRADDRU[9],ADDRBWRADDRL[9] ARST_A:ARST_A_U,ARST_A_L ARST_B:ARST_B_U,ARST_B_L CLKARDCLK:CLKARDCLKU,CLKARDCLKL CLKBWRCLK:CLKBWRCLKU,CLKBWRCLKL ECCPIPECE:ECCPIPECEL ENARDEN:ENARDENU,ENARDENL ENBWREN:ENBWRENU,ENBWRENL REGCEAREGCE:REGCEAREGCEU,REGCEAREGCEL REGCEB:REGCEBU,REGCEBL RSTRAMARSTRAM:RSTRAMARSTRAMU,RSTRAMARSTRAML RSTRAMB:RSTRAMBU,RSTRAMBL RSTREGARSTREG:RSTREGARSTREGU,RSTREGARSTREGL SLEEP:SLEEPU,SLEEPL CASDOMUXA:CASDOMUXAU,CASDOMUXAL CASDOMUXB:CASDOMUXBU,CASDOMUXBL CASOREGIMUXA:CASOREGIMUXAU,CASOREGIMUXAL CASOREGIMUXB:CASOREGIMUXBU,CASOREGIMUXBL CASDOMUXEN_A:CASDOMUXEN_AU,CASDOMUXEN_AL CASDOMUXEN_B:CASDOMUXEN_BU,CASDOMUXEN_BL CASOREGIMUXEN_A:CASOREGIMUXEN_AU,CASOREGIMUXEN_AL CASOREGIMUXEN_B:CASOREGIMUXEN_BU,CASOREGIMUXEN_BL RSTREGB:RSTREGBU,RSTREGBL WEA[0]:WEAU[2],WEAL[2],WEAU[0],WEAL[0] WEA[1]:WEAU[3],WEAL[3],WEAU[1],WEAL[1] WEBWE[0]:WEBWEU[2],WEBWEL[2],WEBWEU[0],WEBWEL[0] WEBWE[1]:WEBWEU[3],WEBWEL[3],WEBWEU[1],WEBWEL[1]" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "108" *) 
  (* ram_slice_end = "121" *) 
  RAMB36E5_INT #(
    .BWE_MODE_B("PARITY_INTERLEAVED"),
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_FILE("NONE"),
    .PR_SAVE_DATA("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_6 
       (.ADDRARDADDRL({addra,1'b0}),
        .ADDRARDADDRU({addra,1'b0}),
        .ADDRBWRADDRL({addrb,1'b0}),
        .ADDRBWRADDRU({addrb,1'b0}),
        .ARST_A_L(1'b0),
        .ARST_A_U(1'b0),
        .ARST_B_L(1'b0),
        .ARST_B_U(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXAL(1'b0),
        .CASDOMUXAU(1'b0),
        .CASDOMUXBL(1'b0),
        .CASDOMUXBU(1'b0),
        .CASDOMUXEN_AL(1'b1),
        .CASDOMUXEN_AU(1'b1),
        .CASDOMUXEN_BL(1'b1),
        .CASDOMUXEN_BU(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXAL(1'b0),
        .CASOREGIMUXAU(1'b0),
        .CASOREGIMUXBL(1'b0),
        .CASOREGIMUXBU(1'b0),
        .CASOREGIMUXEN_AL(1'b1),
        .CASOREGIMUXEN_AU(1'b1),
        .CASOREGIMUXEN_BL(1'b1),
        .CASOREGIMUXEN_BU(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLKL(clka),
        .CLKARDCLKU(clka),
        .CLKBWRCLKL(clkb),
        .CLKBWRCLKU(clkb),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[193:192],dina[119:108]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_DOUTBDOUT_UNCONNECTED [31:14],\^doutb [193:192],\^doutb [119:108]}),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPIPECEL(1'b1),
        .ENARDENL(1'b1),
        .ENARDENU(1'b1),
        .ENBWRENL(enb),
        .ENBWRENU(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .REGCEAREGCEL(1'b1),
        .REGCEAREGCEU(1'b1),
        .REGCEBL(regceb),
        .REGCEBU(regceb),
        .RSTRAMARSTRAML(1'b0),
        .RSTRAMARSTRAMU(1'b0),
        .RSTRAMBL(1'b0),
        .RSTRAMBU(1'b0),
        .RSTREGARSTREGL(1'b0),
        .RSTREGARSTREGU(1'b0),
        .RSTREGBL(rstb),
        .RSTREGBU(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_6_SBITERR_UNCONNECTED ),
        .SLEEPL(1'b0),
        .SLEEPU(1'b0),
        .WEAL({wea,wea,wea,wea}),
        .WEAU({wea,wea,wea,wea}),
        .WEBWEL({1'b0,1'b0,1'b0,1'b0}),
        .WEBWEU({1'b0,1'b0,1'b0,1'b0}),
        .WE_IND_PARITY(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
joPfWLY2azYS0C43u0l4bKaHoCAT1GKSb8qWJWa5TFUb67U1+FOIQEqeiiRGPSK0yQGOWvJGXGvZ
jfL+BPFLheJH1ym7AAVoGQe/SqeWQOTABKNGs+EvrG3Xw6jeO5c4OCSH7/Ax8wzIzs+1n0rCZmb8
87A/zDRv8lNgIxUy2hs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jotwgRsIrDgwap3DW0R+DhGQt6+oUs10hF6Drh+LAUciN9K8zyLRPiVjmC/juZKr0sOMAOkEs2KP
KUWlqe2qKsGzit6+GhFQeslkSWusQ3tEyNzSlFK4hgYkjp7elUTrUpA+w5KSsybrHt6pJTxuQ+6o
TUxhIm/CEKkSBNyETnBFP+oNBxocMRM5EaqnX98NHSddYQl/p3tKPhVQOibrqfIyI9/kaiHCE74Z
hZkxrVUl1zHHrQty+X/gGkQtfWti2rsjZjwB/jW3CRyhy/sFxV/+/w9BVrNniD3lV/ej72BpwRIN
hhpkc8atocW1KJY/KXL8RoK6rzZXEj7s70F0Sw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
kGIy/NqJRpw/hsisHT47ytIjrjj1B11OH2f5/IhLrV2toerKGDKoQF0zwHZY3o8x9BUHDLO8sWyF
ZPRpFGWjoCrjkZ8UctrwWF++YB7FlkIee+u4l0JWDQadL0muNZmdTlD4GoNgyl7MYJIESuFs9EgG
4aYWPBc8ak1FZx7l7ds=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SZH8GN61vxJerN5qEHtPOKar9O0Lx/uB/pTQw0i91bw+/BaTs1dfcxylrZzwr1cpTjr3vlUsCseK
Wmwb6gbhMoHmrzQYaMdt+XKy4kvtVIHQ9BpH5uunugac/NDLKgjO46i07vmjZ1nAE09rToqqVu+F
F92D/9AHOKwS4hLCQPITb7Tq3J0ui4CYQ4U1G7XukNeyL9YwsLF+IRPLlxVVtPQtyNKs/RspRR2B
IEyrlvsaiGa+w6xAb7KbEmNKUyW7z9tZV0Vps/fZvNIR/TXYRJC68BWnV0Czeq/jAPzyJc+ydHIT
uPOGynHxILsRSm3QRtEBs2m2bp7y15KZRt+hXw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
grd1JbZQzuPnVPdSDy4tgR6U9T8HKZT7KtV+MBG6mcyVHqgQ1CCSyV9dQIV5DOorpg9Vdffe6JeF
eELzWc/KgrWk7z+AG/jPobtk+3wFZD23GcOE1NrfNbUC1TEWBWhGQQ4LYi9vWcxjzL9KjY/5r+p7
H65D/FpqXYTwy0fcjyMmwwRAg9j31ICltmtc7ZBsOSXns3nrL5MaE1FNZi4JYTn+/CNmI885JSwG
R/xypa2D4AMdOv5seY/ksiQrrmR34ZkgwKKz6FQXSiGRVwxqKP6BRh6ysZxnTJZQWaemTEFqPhWH
5+3vonpYXjyaNi3CRCeVPeu+blq/NYiHoEQ1uA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pNuM02/WxEY+V+dQa/Wr2I8ZZvSdgo2o8aqUxYA28U8CVc4DZMAFtiwl1+WGEWV6R8pruAwxxpS+
7XmLgq8C/cDYJzIyvhx+TrfNWce97TzRsLEPxi5R6Yg+SV03z/ahpiJFBDBeZVWFayqwT8+2XNgk
qhAaLirGBFZnyTOg44Ue3HzB9SIxWiyX/NFbUnaJ6nHI+xvfXWT6US/mIqmOgZwFSUfPZYBLY7tD
qA3B5Dkj/E+CL7iPr1AOPdtn5CaDDxPHIAa0j/r3gmHS6yhdfJPHWehkgkzlpyypWhsjEHTJVHoN
nqGNf5g6tnxlGwEbdmL03tlA7U94qEFu0UniqA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
r3f1CHthyIspk2yupnqt39mMQt1qzZIWY4JM5eutKp/yQZeAx0HNRV6mI0hCoDwETc0jWOIzp1Yq
5t3iHrSzgQaT0llNH1RhZpcDXNwt93HbwoLl5w5om/9Ieal2QrSDuyv5gWbNnW1SVHarRRwgrQu4
dOH/+EeooMk6fsMTbau9VLI0M1ZQuxbmxAgvpZXscFoaamGxEvIPP0D5BuLDfsw2aOehywPp+Gia
g60aFj5VhZ1r4DqYpWMO6diyB5GNIL2zxrvyGrcXQu9+H/KsN2atoFrQcYRyHdqyoaV4UzK47zXK
JV5/Jg2dUnr8XC4k77WW503cRke78/A7OeyK2Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
fgHzpw/4uFPwuhnAfaRnb1H6gTgFBa1WAg5NYHpAyWuphrBOHwjFFKahFvajdjvYMvCu1eMHzKXn
wE5i3k3p4OFIHdSLv3MqiiwgyWz8PRQZXJJEmqfWFV70pwPH3M6EVI1rr8p2iGqdAnjGb3Ae8YsF
Uo9+X3NaLxVaGFXdpbyyLzLHqiU015ATpqp2xIHg5mFO1X2y+bok9vGcWq6B/RFj8gsigxLfB9hE
7T6VaOp6pO5PhDX9F9bO+qDKyGPkDGG1yRn2qw5KMfNATyojN+dYQlr2fFimN2jBijRD1JLVgNUZ
n95HP+/36AusanKApq7bAj+jk4TU5oG+voDegvQHbjJ1puMZyvFk0U645OMgB/dNh4OlOqg2KPRY
ZQJOjVkk+P47NbkDs5sTiQFTia/Rjwp/R2xvQmiACfVyqyYBulrVJqCkPkl1i7721nwP16aiY6Px
Ts4gLaI4zGzzjWq/Eq6oT521SvtpgRyV16jMc1BDRnPaFOtkcblE5ajX

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WAeguXYr0IElVZPF57wrxT4HtyEA+cS+aAcsxzqQbj6Ud2cLIXrTF61XBxZATTNZICIKv7Viikyx
jgCLYEF72858C3Brp/1LKY051y/vjuRrkrs+IVqOdPXWC4dEESE6P+EZbaI1hOzt3PmT0Ar4ciBC
NczDsewlt5yM3vxn4GrK8JoEHaAEml2W9tBCLV0qi2v3/w5gvCRAPcCK7OolHLMo9YjWg+QhA1Y8
XI2BZtYVzNq+pc9c15Uw2j3GYDS8o+E/HVAzueNxdjAQ+UOJZkNtHIs2GkIaUXVQlRT3DLOUBTT5
2be3TOeZlwib44S7NYeRib0Rj64I6ytuOobF9Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 170656)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
