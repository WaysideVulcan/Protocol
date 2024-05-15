// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu May  9 19:11:11 2024
// Host        : Vulcan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_38d0_vb1_0_sim_netlist.v
// Design      : bd_38d0_vb1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvc1902-vsva2197-2MP-e-S
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_FAMILY = "versal" *) (* RGB = "2'b00" *) (* YUV422 = "2'b10" *) 
(* YUV444 = "2'b01" *) (* Y_ONLY = "2'b11" *) (* pARB_RES_EN = "0" *) 
(* pBPC = "10" *) (* pCOLOROMETRY = "3" *) (* pENABLE_420 = "0" *) 
(* pENABLE_DSC = "1'b0" *) (* pINPUT_PIXELS_PER_CLOCK = "4" *) (* pPIXELS_PER_CLOCK = "4" *) 
(* pPPC_CONVERT_EN = "1" *) (* pSTART_DSC_BYTE_FROM_LSB = "1'b1" *) (* pTCQ = "100" *) 
(* pTDATA_NUM_BYTES = "120" *) (* pUG934_COMPLIANCE = "1'b1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4svideo_bridge_v1_0_17
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_17 inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_remapper_tx_v1_0_1_top remapper_inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4svideo_bridge_v1_0_17_sync_cell__xdcDup__1 sync_cell_aresetn_inst
       (.ARESETN(i_sync_aresetn),
        .aclk(aclk),
        .aresetn(aresetn),
        .dest_out(i_sync_soft_reset_aclk),
        .rst(sync_cell_aresetn_inst_n_1),
        .soft_reset(soft_reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4svideo_bridge_v1_0_17_sync_cell__parameterized0 sync_cell_ppc_aclk
       (.aclk(aclk),
        .dest_out(ppc_aclk),
        .ppc(ppc));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4svideo_bridge_v1_0_17_sync_cell__parameterized0__xdcDup__1 sync_cell_vid_format_aclk
       (.aclk(aclk),
        .dest_out(vid_format_aclk),
        .vid_format(vid_format));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4svideo_bridge_v1_0_17_sync_cell__parameterized0__xdcDup__2 sync_cell_vid_format_vid_clk
       (.D(f_pixel00_out[31:22]),
        .Q(in_data_mux[9:0]),
        .dest_out(vid_format_vid_clk),
        .vid_format(vid_format),
        .vid_io_out_clk(vid_io_out_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4svideo_bridge_v1_0_17_sync_cell sync_cell_vid_rst_inst
       (.dest_out(i_sync_soft_reset_vidclk),
        .i_sync_rst(i_sync_rst),
        .rst(rst),
        .soft_reset(soft_reset),
        .vid_io_out_clk(vid_io_out_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4svideo_bridge_v1_0_17_sync_cell
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single xpm_cdc_array_single_inst
       (.dest_clk(vid_io_out_clk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(soft_reset));
endmodule

(* ORIG_REF_NAME = "axi4svideo_bridge_v1_0_17_sync_cell" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4svideo_bridge_v1_0_17_sync_cell__parameterized0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0 xpm_cdc_array_single_inst
       (.dest_clk(aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(ppc));
endmodule

(* ORIG_REF_NAME = "axi4svideo_bridge_v1_0_17_sync_cell" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4svideo_bridge_v1_0_17_sync_cell__parameterized0__xdcDup__1
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__3 xpm_cdc_array_single_inst
       (.dest_clk(aclk),
        .dest_out({NLW_xpm_cdc_array_single_inst_dest_out_UNCONNECTED[2],dest_out}),
        .src_clk(1'b0),
        .src_in(vid_format));
endmodule

(* ORIG_REF_NAME = "axi4svideo_bridge_v1_0_17_sync_cell" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4svideo_bridge_v1_0_17_sync_cell__parameterized0__xdcDup__2
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__4 xpm_cdc_array_single_inst
       (.dest_clk(vid_io_out_clk),
        .dest_out({NLW_xpm_cdc_array_single_inst_dest_out_UNCONNECTED[2],dest_out}),
        .src_clk(1'b0),
        .src_in(vid_format));
endmodule

(* ORIG_REF_NAME = "axi4svideo_bridge_v1_0_17_sync_cell" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4svideo_bridge_v1_0_17_sync_cell__xdcDup__1
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__2 xpm_cdc_array_single_inst
       (.dest_clk(aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(soft_reset));
endmodule

(* CHECK_LICENSE_TYPE = "bd_38d0_vb1_0,axi4svideo_bridge_v1_0_17,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi4svideo_bridge_v1_0_17,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4svideo_bridge_v1_0_17 inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_17
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_17_cdc_single CDC_SINGLE_LOCKED_INST
       (.aclk(aclk),
        .dest_out(locked_from_sync),
        .src_in(src_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_17_cdc_single__xdcDup__1 CDC_SINGLE_REMAP_UNDERFLOW_INST
       (.vid_io_out_clk(vid_io_out_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_17_coupler COUPLER_INST
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_17_formatter FORMATTER_INST
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_17_sync SYNC_INST
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_17_cdc_single
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__4 xpm_cdc_single_inst
       (.dest_clk(aclk),
        .dest_out(dest_out),
        .src_clk(1'b0),
        .src_in(src_in));
endmodule

(* ORIG_REF_NAME = "v_axi4s_vid_out_v4_0_17_cdc_single" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_17_cdc_single__xdcDup__1
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__3 xpm_cdc_single_inst
       (.dest_clk(vid_io_out_clk),
        .dest_out(NLW_xpm_cdc_single_inst_dest_out_UNCONNECTED),
        .src_clk(1'b0),
        .src_in(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_17_coupler
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_17_fifo_async \generate_async_fifo.FIFO_INST 
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_17_fifo_async
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async XPM_FIFO_ASYNC_INST
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_17_formatter
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_17_sync
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

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* WIDTH = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__2
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__3
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single__parameterized0__4
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

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* REG_OUTPUT = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1
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

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__3
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__4
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
(* INIT_SYNC_FF = "1" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_2
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_3
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2
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
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) (* P_COMMON_CLOCK = "0" *) 
(* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "0" *) (* P_READ_MODE = "1" *) 
(* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "12" *) (* READ_DATA_WIDTH = "195" *) 
(* READ_MODE = "fwft" *) (* RELATED_CLOCKS = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_ADV_FEATURES = "0707" *) (* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "195" *) 
(* WR_DATA_COUNT_WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) (* dont_touch = "true" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base \gnuram_async_fifo.xpm_fifo_base_inst 
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
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* PE_THRESH_ADJ = "8" *) 
(* PE_THRESH_MAX = "2043" *) (* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) 
(* PF_THRESH_MAX = "2043" *) (* PF_THRESH_MIN = "9" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "10" *) (* RD_DATA_COUNT_WIDTH = "12" *) (* RD_DC_WIDTH_EXT = "12" *) 
(* RD_LATENCY = "2" *) (* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "11" *) 
(* READ_DATA_WIDTH = "195" *) (* READ_MODE = "1" *) (* READ_MODE_LL = "1" *) 
(* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_ADV_FEATURES = "0707" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "195" *) (* WR_DATA_COUNT_WIDTH = "12" *) 
(* WR_DC_WIDTH_EXT = "12" *) (* WR_DEPTH_LOG = "11" *) (* WR_PNTR_WIDTH = "11" *) 
(* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "8" *) (* XPM_MODULE = "TRUE" *) 
(* both_stages_valid = "3" *) (* invalid = "0" *) (* keep_hierarchy = "soft" *) 
(* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec \gen_cdc_pntr.rpw_gray_reg 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0 \gen_cdc_pntr.rpw_gray_reg_dc 
       (.D(rd_pntr_wr_cdc_dc),
        .Q({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_7 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_8 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_9 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_10 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_11 }),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_0 \gen_cdc_pntr.wpr_gray_reg 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_1 \gen_cdc_pntr.wpr_gray_reg_dc 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2 \gen_cdc_pntr.wr_pntr_cdc_inst 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn \gen_fwft.rdpp1_inst 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0 rdp_inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1 rdpp1_inst
       (.E(ram_rd_en_i),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7}),
        .\count_value_i_reg[0]_0 (rd_rst_busy),
        .\count_value_i_reg[4]_0 (rdpp1_inst_n_8),
        .\gen_pf_ic_rc.ram_empty_i_i_4 ({\gen_cdc_pntr.wpr_gray_reg_n_6 ,\gen_cdc_pntr.wpr_gray_reg_n_7 ,\gen_cdc_pntr.wpr_gray_reg_n_8 }),
        .p_1_in(p_1_in),
        .rd_clk(rd_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit rst_d1_inst
       (.Q(diff_pntr_pf_q),
        .d_out_int_reg_0(rst_d1_inst_n_1),
        .\gen_pf_ic_rc.gpf_ic.prog_full_i_reg (full),
        .prog_full(prog_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_2 wrp_inst
       (.D(\gwdc.diff_wr_rd_pntr1_out ),
        .Q(wr_pntr_ext),
        .\gwdc.wr_data_count_i_reg[11] ({\gen_cdc_pntr.rpw_gray_reg_dc_n_0 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_1 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_2 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_3 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_4 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_5 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_6 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_7 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_8 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_9 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_10 ,\gen_cdc_pntr.rpw_gray_reg_dc_n_11 }),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_3 wrpp1_inst
       (.Q(wr_pntr_plus1_pf),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2 wrpp2_inst
       (.Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5,wrpp2_inst_n_6,wrpp2_inst_n_7,wrpp2_inst_n_8,wrpp2_inst_n_9,wrpp2_inst_n_10}),
        .wr_clk(wr_clk),
        .wr_pntr_plus1_pf_carry(wr_pntr_plus1_pf_carry),
        .wrst_busy(wrst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst xpm_fifo_rst_inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_1
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst \gen_rst_ic.rrst_wr_inst 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2 \gen_rst_ic.wrst_rd_inst 
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
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "0" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "2048" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) (* P_MIN_WIDTH_DATA = "195" *) 
(* P_MIN_WIDTH_DATA_A = "195" *) (* P_MIN_WIDTH_DATA_B = "195" *) (* P_MIN_WIDTH_DATA_ECC = "195" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "195" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "11" *) (* P_WIDTH_ADDR_READ_B = "11" *) 
(* P_WIDTH_ADDR_WRITE_A = "11" *) (* P_WIDTH_ADDR_WRITE_B = "11" *) (* P_WIDTH_COL_WRITE_A = "195" *) 
(* P_WIDTH_COL_WRITE_B = "195" *) (* RAM_DECOMP = "auto" *) (* READ_DATA_WIDTH_A = "195" *) 
(* READ_DATA_WIDTH_B = "195" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "195" *) (* WRITE_DATA_WIDTH_B = "195" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "196" *) 
(* rstb_loop_iter = "196" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
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
