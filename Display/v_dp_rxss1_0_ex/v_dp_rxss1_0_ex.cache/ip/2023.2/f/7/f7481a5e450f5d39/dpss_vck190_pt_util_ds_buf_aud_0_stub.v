// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu May  9 19:11:01 2024
// Host        : Vulcan running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dpss_vck190_pt_util_ds_buf_aud_0_stub.v
// Design      : dpss_vck190_pt_util_ds_buf_aud_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1902-vsva2197-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "util_ds_buf,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(BUFG_GT_I, BUFG_GT_CE, BUFG_GT_CEMASK, 
  BUFG_GT_CLR, BUFG_GT_CLRMASK, BUFG_GT_DIV, BUFG_GT_O)
/* synthesis syn_black_box black_box_pad_pin="BUFG_GT_I[0:0],BUFG_GT_CE[0:0],BUFG_GT_CEMASK[0:0],BUFG_GT_CLR[0:0],BUFG_GT_CLRMASK[0:0],BUFG_GT_DIV[2:0],BUFG_GT_O[0:0]" */;
  input [0:0]BUFG_GT_I;
  input [0:0]BUFG_GT_CE;
  input [0:0]BUFG_GT_CEMASK;
  input [0:0]BUFG_GT_CLR;
  input [0:0]BUFG_GT_CLRMASK;
  input [2:0]BUFG_GT_DIV;
  output [0:0]BUFG_GT_O;
endmodule
