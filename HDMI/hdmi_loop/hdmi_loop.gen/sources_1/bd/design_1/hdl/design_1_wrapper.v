//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Sat Apr 27 09:48:24 2024
//Host        : Vulcan running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk_clk_n,
    clk_clk_p,
    hdmi_in_hpd,
    hdmi_out_hpd,
    hdmi_out_oen,
    iic_main_scl_io,
    iic_main_sda_io,
    rst_n,
    tmds_in_clk_n,
    tmds_in_clk_p,
    tmds_in_data_n,
    tmds_in_data_p,
    tmds_out_clk_n,
    tmds_out_clk_p,
    tmds_out_data_n,
    tmds_out_data_p);
  input clk_clk_n;
  input clk_clk_p;
  output [0:0]hdmi_in_hpd;
  output [0:0]hdmi_out_hpd;
  output [0:0]hdmi_out_oen;
  inout iic_main_scl_io;
  inout iic_main_sda_io;
  input rst_n;
  input tmds_in_clk_n;
  input tmds_in_clk_p;
  input [2:0]tmds_in_data_n;
  input [2:0]tmds_in_data_p;
  output tmds_out_clk_n;
  output tmds_out_clk_p;
  output [2:0]tmds_out_data_n;
  output [2:0]tmds_out_data_p;

  wire clk_clk_n;
  wire clk_clk_p;
  wire [0:0]hdmi_in_hpd;
  wire [0:0]hdmi_out_hpd;
  wire [0:0]hdmi_out_oen;
  wire iic_main_scl_i;
  wire iic_main_scl_io;
  wire iic_main_scl_o;
  wire iic_main_scl_t;
  wire iic_main_sda_i;
  wire iic_main_sda_io;
  wire iic_main_sda_o;
  wire iic_main_sda_t;
  wire rst_n;
  wire tmds_in_clk_n;
  wire tmds_in_clk_p;
  wire [2:0]tmds_in_data_n;
  wire [2:0]tmds_in_data_p;
  wire tmds_out_clk_n;
  wire tmds_out_clk_p;
  wire [2:0]tmds_out_data_n;
  wire [2:0]tmds_out_data_p;

  design_1 design_1_i
       (.clk_clk_n(clk_clk_n),
        .clk_clk_p(clk_clk_p),
        .hdmi_in_hpd(hdmi_in_hpd),
        .hdmi_out_hpd(hdmi_out_hpd),
        .hdmi_out_oen(hdmi_out_oen),
        .iic_main_scl_i(iic_main_scl_i),
        .iic_main_scl_o(iic_main_scl_o),
        .iic_main_scl_t(iic_main_scl_t),
        .iic_main_sda_i(iic_main_sda_i),
        .iic_main_sda_o(iic_main_sda_o),
        .iic_main_sda_t(iic_main_sda_t),
        .rst_n(rst_n),
        .tmds_in_clk_n(tmds_in_clk_n),
        .tmds_in_clk_p(tmds_in_clk_p),
        .tmds_in_data_n(tmds_in_data_n),
        .tmds_in_data_p(tmds_in_data_p),
        .tmds_out_clk_n(tmds_out_clk_n),
        .tmds_out_clk_p(tmds_out_clk_p),
        .tmds_out_data_n(tmds_out_data_n),
        .tmds_out_data_p(tmds_out_data_p));
  IOBUF iic_main_scl_iobuf
       (.I(iic_main_scl_o),
        .IO(iic_main_scl_io),
        .O(iic_main_scl_i),
        .T(iic_main_scl_t));
  IOBUF iic_main_sda_iobuf
       (.I(iic_main_sda_o),
        .IO(iic_main_sda_io),
        .O(iic_main_sda_i),
        .T(iic_main_sda_t));
endmodule
