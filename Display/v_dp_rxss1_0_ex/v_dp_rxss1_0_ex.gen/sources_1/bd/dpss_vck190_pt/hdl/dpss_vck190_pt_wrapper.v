//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Thu May  9 18:53:00 2024
//Host        : Vulcan running 64-bit major release  (build 9200)
//Command     : generate_target dpss_vck190_pt_wrapper.bd
//Design      : dpss_vck190_pt_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dpss_vck190_pt_wrapper
   (CH0_DDR4_0_0_act_n,
    CH0_DDR4_0_0_adr,
    CH0_DDR4_0_0_ba,
    CH0_DDR4_0_0_bg,
    CH0_DDR4_0_0_ck_c,
    CH0_DDR4_0_0_ck_t,
    CH0_DDR4_0_0_cke,
    CH0_DDR4_0_0_cs_n,
    CH0_DDR4_0_0_dm_n,
    CH0_DDR4_0_0_dq,
    CH0_DDR4_0_0_dqs_c,
    CH0_DDR4_0_0_dqs_t,
    CH0_DDR4_0_0_odt,
    CH0_DDR4_0_0_reset_n,
    GT_Serial_grx_n,
    GT_Serial_grx_p,
    GT_Serial_gtx_n,
    GT_Serial_gtx_p,
    IIC_0_scl_io,
    IIC_0_sda_io,
    OBUF_DS_P_0,
    aud_mclk_in_clk_n,
    aud_mclk_in_clk_p,
    aux_rx_data_en_out_n,
    aux_rx_data_in,
    aux_rx_data_out,
    aux_tx_data_en_out_n,
    aux_tx_data_in,
    aux_tx_data_out,
    lrclk_rx,
    lrclk_tx,
    mclk_out_rx,
    mclk_out_tx,
    pwd,
    refclk_clk_n,
    refclk_clk_p,
    reset,
    rx_hpd,
    sclk_rx,
    sclk_tx,
    sdata_rx,
    sdata_tx,
    sys_clk0_0_clk_n,
    sys_clk0_0_clk_p,
    tx_hpd);
  output CH0_DDR4_0_0_act_n;
  output [16:0]CH0_DDR4_0_0_adr;
  output [1:0]CH0_DDR4_0_0_ba;
  output [1:0]CH0_DDR4_0_0_bg;
  output CH0_DDR4_0_0_ck_c;
  output CH0_DDR4_0_0_ck_t;
  output CH0_DDR4_0_0_cke;
  output CH0_DDR4_0_0_cs_n;
  inout [7:0]CH0_DDR4_0_0_dm_n;
  inout [63:0]CH0_DDR4_0_0_dq;
  inout [7:0]CH0_DDR4_0_0_dqs_c;
  inout [7:0]CH0_DDR4_0_0_dqs_t;
  output CH0_DDR4_0_0_odt;
  output CH0_DDR4_0_0_reset_n;
  input [3:0]GT_Serial_grx_n;
  input [3:0]GT_Serial_grx_p;
  output [3:0]GT_Serial_gtx_n;
  output [3:0]GT_Serial_gtx_p;
  inout IIC_0_scl_io;
  inout IIC_0_sda_io;
  output [0:0]OBUF_DS_P_0;
  input [0:0]aud_mclk_in_clk_n;
  input [0:0]aud_mclk_in_clk_p;
  output [0:0]aux_rx_data_en_out_n;
  input aux_rx_data_in;
  output aux_rx_data_out;
  output [0:0]aux_tx_data_en_out_n;
  input aux_tx_data_in;
  output aux_tx_data_out;
  output lrclk_rx;
  output lrclk_tx;
  output mclk_out_rx;
  output mclk_out_tx;
  output [0:0]pwd;
  input [0:0]refclk_clk_n;
  input [0:0]refclk_clk_p;
  input reset;
  output rx_hpd;
  output sclk_rx;
  output sclk_tx;
  input sdata_rx;
  output sdata_tx;
  input sys_clk0_0_clk_n;
  input sys_clk0_0_clk_p;
  input tx_hpd;

  wire CH0_DDR4_0_0_act_n;
  wire [16:0]CH0_DDR4_0_0_adr;
  wire [1:0]CH0_DDR4_0_0_ba;
  wire [1:0]CH0_DDR4_0_0_bg;
  wire CH0_DDR4_0_0_ck_c;
  wire CH0_DDR4_0_0_ck_t;
  wire CH0_DDR4_0_0_cke;
  wire CH0_DDR4_0_0_cs_n;
  wire [7:0]CH0_DDR4_0_0_dm_n;
  wire [63:0]CH0_DDR4_0_0_dq;
  wire [7:0]CH0_DDR4_0_0_dqs_c;
  wire [7:0]CH0_DDR4_0_0_dqs_t;
  wire CH0_DDR4_0_0_odt;
  wire CH0_DDR4_0_0_reset_n;
  wire [3:0]GT_Serial_grx_n;
  wire [3:0]GT_Serial_grx_p;
  wire [3:0]GT_Serial_gtx_n;
  wire [3:0]GT_Serial_gtx_p;
  wire IIC_0_scl_i;
  wire IIC_0_scl_io;
  wire IIC_0_scl_o;
  wire IIC_0_scl_t;
  wire IIC_0_sda_i;
  wire IIC_0_sda_io;
  wire IIC_0_sda_o;
  wire IIC_0_sda_t;
  wire [0:0]OBUF_DS_P_0;
  wire [0:0]aud_mclk_in_clk_n;
  wire [0:0]aud_mclk_in_clk_p;
  wire [0:0]aux_rx_data_en_out_n;
  wire aux_rx_data_in;
  wire aux_rx_data_out;
  wire [0:0]aux_tx_data_en_out_n;
  wire aux_tx_data_in;
  wire aux_tx_data_out;
  wire lrclk_rx;
  wire lrclk_tx;
  wire mclk_out_rx;
  wire mclk_out_tx;
  wire [0:0]pwd;
  wire [0:0]refclk_clk_n;
  wire [0:0]refclk_clk_p;
  wire reset;
  wire rx_hpd;
  wire sclk_rx;
  wire sclk_tx;
  wire sdata_rx;
  wire sdata_tx;
  wire sys_clk0_0_clk_n;
  wire sys_clk0_0_clk_p;
  wire tx_hpd;

  IOBUF IIC_0_scl_iobuf
       (.I(IIC_0_scl_o),
        .IO(IIC_0_scl_io),
        .O(IIC_0_scl_i),
        .T(IIC_0_scl_t));
  IOBUF IIC_0_sda_iobuf
       (.I(IIC_0_sda_o),
        .IO(IIC_0_sda_io),
        .O(IIC_0_sda_i),
        .T(IIC_0_sda_t));
  dpss_vck190_pt dpss_vck190_pt_i
       (.CH0_DDR4_0_0_act_n(CH0_DDR4_0_0_act_n),
        .CH0_DDR4_0_0_adr(CH0_DDR4_0_0_adr),
        .CH0_DDR4_0_0_ba(CH0_DDR4_0_0_ba),
        .CH0_DDR4_0_0_bg(CH0_DDR4_0_0_bg),
        .CH0_DDR4_0_0_ck_c(CH0_DDR4_0_0_ck_c),
        .CH0_DDR4_0_0_ck_t(CH0_DDR4_0_0_ck_t),
        .CH0_DDR4_0_0_cke(CH0_DDR4_0_0_cke),
        .CH0_DDR4_0_0_cs_n(CH0_DDR4_0_0_cs_n),
        .CH0_DDR4_0_0_dm_n(CH0_DDR4_0_0_dm_n),
        .CH0_DDR4_0_0_dq(CH0_DDR4_0_0_dq),
        .CH0_DDR4_0_0_dqs_c(CH0_DDR4_0_0_dqs_c),
        .CH0_DDR4_0_0_dqs_t(CH0_DDR4_0_0_dqs_t),
        .CH0_DDR4_0_0_odt(CH0_DDR4_0_0_odt),
        .CH0_DDR4_0_0_reset_n(CH0_DDR4_0_0_reset_n),
        .GT_Serial_grx_n(GT_Serial_grx_n),
        .GT_Serial_grx_p(GT_Serial_grx_p),
        .GT_Serial_gtx_n(GT_Serial_gtx_n),
        .GT_Serial_gtx_p(GT_Serial_gtx_p),
        .IIC_0_scl_i(IIC_0_scl_i),
        .IIC_0_scl_o(IIC_0_scl_o),
        .IIC_0_scl_t(IIC_0_scl_t),
        .IIC_0_sda_i(IIC_0_sda_i),
        .IIC_0_sda_o(IIC_0_sda_o),
        .IIC_0_sda_t(IIC_0_sda_t),
        .OBUF_DS_P_0(OBUF_DS_P_0),
        .aud_mclk_in_clk_n(aud_mclk_in_clk_n),
        .aud_mclk_in_clk_p(aud_mclk_in_clk_p),
        .aux_rx_data_en_out_n(aux_rx_data_en_out_n),
        .aux_rx_data_in(aux_rx_data_in),
        .aux_rx_data_out(aux_rx_data_out),
        .aux_tx_data_en_out_n(aux_tx_data_en_out_n),
        .aux_tx_data_in(aux_tx_data_in),
        .aux_tx_data_out(aux_tx_data_out),
        .lrclk_rx(lrclk_rx),
        .lrclk_tx(lrclk_tx),
        .mclk_out_rx(mclk_out_rx),
        .mclk_out_tx(mclk_out_tx),
        .pwd(pwd),
        .refclk_clk_n(refclk_clk_n),
        .refclk_clk_p(refclk_clk_p),
        .reset(reset),
        .rx_hpd(rx_hpd),
        .sclk_rx(sclk_rx),
        .sclk_tx(sclk_tx),
        .sdata_rx(sdata_rx),
        .sdata_tx(sdata_tx),
        .sys_clk0_0_clk_n(sys_clk0_0_clk_n),
        .sys_clk0_0_clk_p(sys_clk0_0_clk_p),
        .tx_hpd(tx_hpd));
endmodule
