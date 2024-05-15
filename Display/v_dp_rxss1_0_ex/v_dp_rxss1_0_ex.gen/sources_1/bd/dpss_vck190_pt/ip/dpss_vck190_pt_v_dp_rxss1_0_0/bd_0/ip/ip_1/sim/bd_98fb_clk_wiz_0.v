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


// IP VLNV: xilinx.com:ip:clk_wizard:1.0
// IP Revision: 11

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_98fb_clk_wiz_0 (
  s_axi_aclk,
  s_axi_aresetn,
  s_axi_awaddr,
  s_axi_awvalid,
  s_axi_awready,
  s_axi_wdata,
  s_axi_wstrb,
  s_axi_wvalid,
  s_axi_wready,
  s_axi_bresp,
  s_axi_bvalid,
  s_axi_bready,
  s_axi_araddr,
  s_axi_arvalid,
  s_axi_arready,
  s_axi_rdata,
  s_axi_rresp,
  s_axi_rvalid,
  s_axi_rready,
  locked,
  clk_in1,
  clk_out1
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi_lite, ASSOCIATED_RESET aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *)
input wire s_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_resetn, ASSOCIATED_RESET aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_resetn RST" *)
input wire s_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWADDR" *)
input wire [10 : 0] s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWVALID" *)
input wire s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWREADY" *)
output wire s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WDATA" *)
input wire [31 : 0] s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WSTRB" *)
input wire [3 : 0] s_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WVALID" *)
input wire s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WREADY" *)
output wire s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite BRESP" *)
output wire [1 : 0] s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite BVALID" *)
output wire s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite BREADY" *)
input wire s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARADDR" *)
input wire [10 : 0] s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARVALID" *)
input wire s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARREADY" *)
output wire s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *)
output wire [31 : 0] s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RVALID" *)
output wire s_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 11, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 1, NUM_W\
RITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RREADY" *)
input wire s_axi_rready;
output wire locked;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock_CLK_IN1, FREQ_HZ 506250000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_rxoutclk, INSERT_VIP 0, BOARD.ASSOCIATED_PARAM CLK_IN1_BOARD_INTERFACE" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock_CLK_IN1 CLK_IN1" *)
input wire clk_in1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock_CLK_OUT1, FREQ_HZ 405000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_98fb_clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock_CLK_OUT1 CLK_OUT1" *)
output wire clk_out1;

  bd_98fb_clk_wiz_0_clk_wiz_top #(
    .C_USER_CLK_FREQ0(100),
    .C_USER_CLK_FREQ1(100),
    .C_USER_CLK_FREQ2(100),
    .C_USER_CLK_FREQ3(100),
    .C_CLKIN1_IBUF(0),
    .C_CLKIN1_BUFG(0),
    .C_CLKIN1_IBUFDS(0),
    .C_CLKIN2_IBUF(0),
    .C_CLKIN2_BUFG(0),
    .C_CLKIN2_IBUFDS(0),
    .C_CLKFB_BUFG(0),
    .C_CLKFBIN_IBUF(0),
    .C_CLKFBIN_IBUFDS(0),
    .C_CLKFBOUT_BUFG(0),
    .C_CLKFBOUT_ODDR(0),
    .C_CLKFBIN_OBUFDS(0),
    .C_CLKFBIN_OBUF(0),
    .C_ENABLE_CLOCK_MONITOR(0),
    .C_ENABLE_USER_CLOCK0(0),
    .C_ENABLE_USER_CLOCK1(0),
    .C_ENABLE_USER_CLOCK2(0),
    .C_ENABLE_USER_CLOCK3(0),
    .C_Enable_PLL0(0),
    .C_Enable_PLL1(0),
    .C_REF_CLK_FREQ(100),
    .C_PRECISION(1),
    .C_CLKOUT1_USED(1),
    .C_CLKOUT2_USED(0),
    .C_CLKOUT3_USED(0),
    .C_CLKOUT4_USED(0),
    .C_CLKOUT5_USED(0),
    .C_CLKOUT6_USED(0),
    .C_CLKOUT7_USED(0),
    .C_USE_FREQ_SYNTH(1),
    .C_USE_PHASE_ALIGNMENT(0),
    .C_JITTER_SEL("No_Jitter"),
    .C_USE_MIN_POWER(0),
    .C_USE_DYN_PHASE_SHIFT(0),
    .C_USE_INCLK_SWITCHOVER(0),
    .C_USE_DYN_RECONFIG(1),
    .C_CE_SYNC_EXT(0),
    .C_SIM_DEVICE("VERSAL_AI_CORE"),
    .C_USE_SPREAD_SPECTRUM("FALSE"),
    .C_PRIM_IN_FREQ(506.25),
    .C_SECONDARY_IN_FREQ(385.714),
    .C_FEEDBACK_SOURCE("FDBK_AUTO"),
    .C_PRIM_SOURCE("No_buffer"),
    .C_PHASESHIFT_MODE("LATENCY"),
    .C_CE_TYPE("SYNC"),
    .C_BUFGCE_DIV_CE_TYPE("SYNC"),
    .C_SAFECLOCK_STARTUP_MODE("DESKEW_MODE"),
    .C_SECONDARY_SOURCE("Single_ended_clock_capable_pin"),
    .C_CLKFB_IN_SIGNALING("SINGLE"),
    .C_USE_RESET(1),
    .C_RESET_TYPE("ACTIVE_HIGH"),
    .C_USE_LOCKED(1),
    .C_USE_LOCKED_FB(0),
    .C_USE_LOCKED_DESKEW1(0),
    .C_USE_LOCKED_DESKEW2(0),
    .C_USE_INCLK_STOPPED(0),
    .C_USE_CLKFB_STOPPED(0),
    .C_USE_POWER_DOWN(0),
    .C_NUM_OUT_CLKS(1),
    .C_CLKOUT1_DRIVES("BUFG"),
    .C_CLKOUT2_DRIVES("BUFG"),
    .C_CLKOUT3_DRIVES("BUFG"),
    .C_CLKOUT4_DRIVES("BUFG"),
    .C_CLKOUT5_DRIVES("BUFG"),
    .C_CLKOUT6_DRIVES("BUFG"),
    .C_CLKOUT7_DRIVES("BUFG"),
    .C_CLKOUT1_GROUPING("Auto"),
    .C_CLKOUT2_GROUPING("Auto"),
    .C_CLKOUT3_GROUPING("Auto"),
    .C_CLKOUT4_GROUPING("Auto"),
    .C_CLKOUT5_GROUPING("Auto"),
    .C_CLKOUT6_GROUPING("Auto"),
    .C_CLKOUT7_GROUPING("Auto"),
    .C_CLKOUT1_MBUFGCE_MODE("PERFORMANCE"),
    .C_CLKOUT2_MBUFGCE_MODE("PERFORMANCE"),
    .C_CLKOUT3_MBUFGCE_MODE("PERFORMANCE"),
    .C_CLKOUT4_MBUFGCE_MODE("PERFORMANCE"),
    .C_CLKOUT5_MBUFGCE_MODE("PERFORMANCE"),
    .C_CLKOUT6_MBUFGCE_MODE("PERFORMANCE"),
    .C_CLKOUT7_MBUFGCE_MODE("PERFORMANCE"),
    .C_CLKOUTFB_PHASE_CTRL("00"),
    .C_CLKOUT1_DYN_PS("00"),
    .C_CLKOUT2_DYN_PS("00"),
    .C_CLKOUT3_DYN_PS("00"),
    .C_CLKOUT4_DYN_PS("00"),
    .C_CLKOUT5_DYN_PS("00"),
    .C_CLKOUT6_DYN_PS("00"),
    .C_CLKOUT7_DYN_PS("00"),
    .C_INCLK_SUM_ROW0("Input Clock   Freq (MHz)    Input Jitter (UI)"),
    .C_INCLK_SUM_ROW1("primary       100.000        0.010"),
    .C_INCLK_SUM_ROW2("secondary      100.000        0.010"),
    .C_OUTCLK_SUM_ROW0A("Output    Output      Phase     Duty      Pk-to-Pk        Phase"),
    .C_OUTCLK_SUM_ROW0B("Clock    Freq (MHz) (degrees) Cycle () Jitter (ps)  Error (ps)"),
    .C_OUTCLK_SUM_ROW1("no clk_out1 output"),
    .C_OUTCLK_SUM_ROW2("no clk_out2 output"),
    .C_OUTCLK_SUM_ROW3("no clk_out3 output"),
    .C_OUTCLK_SUM_ROW4("no clk_out4 output"),
    .C_OUTCLK_SUM_ROW5("no clk_out5 output"),
    .C_OUTCLK_SUM_ROW6("no clk_out6 output"),
    .C_OUTCLK_SUM_ROW7("no clk_out7 output"),
    .C_CLKOUT1_REQUESTED_OUT_FREQ(100.000),
    .C_CLKOUT2_REQUESTED_OUT_FREQ(100.000),
    .C_CLKOUT3_REQUESTED_OUT_FREQ(100.000),
    .C_CLKOUT4_REQUESTED_OUT_FREQ(100.000),
    .C_CLKOUT5_REQUESTED_OUT_FREQ(100.000),
    .C_CLKOUT6_REQUESTED_OUT_FREQ(100.000),
    .C_CLKOUT7_REQUESTED_OUT_FREQ(100.000),
    .C_CLKOUT1_REQUESTED_PHASE(0.000),
    .C_CLKOUT2_REQUESTED_PHASE(0.000),
    .C_CLKOUT3_REQUESTED_PHASE(0.000),
    .C_CLKOUT4_REQUESTED_PHASE(0.000),
    .C_CLKOUT5_REQUESTED_PHASE(0.000),
    .C_CLKOUT6_REQUESTED_PHASE(0.000),
    .C_CLKOUT7_REQUESTED_PHASE(0.000),
    .C_CLKOUT1_REQUESTED_DUTY_CYCLE(50.000),
    .C_CLKOUT2_REQUESTED_DUTY_CYCLE(50.000),
    .C_CLKOUT3_REQUESTED_DUTY_CYCLE(50.000),
    .C_CLKOUT4_REQUESTED_DUTY_CYCLE(50.000),
    .C_CLKOUT5_REQUESTED_DUTY_CYCLE(50.000),
    .C_CLKOUT6_REQUESTED_DUTY_CYCLE(50.000),
    .C_CLKOUT7_REQUESTED_DUTY_CYCLE(50.000),
    .C_CLKOUT1_ACTUAL_OUT_FREQ(405.00000),
    .C_CLKOUT2_ACTUAL_OUT_FREQ(94.50000),
    .C_CLKOUT3_ACTUAL_OUT_FREQ(94.50000),
    .C_CLKOUT4_ACTUAL_OUT_FREQ(94.50000),
    .C_CLKOUT5_ACTUAL_OUT_FREQ(94.50000),
    .C_CLKOUT6_ACTUAL_OUT_FREQ(94.50000),
    .C_CLKOUT7_ACTUAL_OUT_FREQ(94.50000),
    .C_CLKFBOUT_PHASE(0.000),
    .C_CLKOUT1_ACTUAL_PHASE(0.000),
    .C_CLKOUT2_ACTUAL_PHASE(0.000),
    .C_CLKOUT3_ACTUAL_PHASE(0.000),
    .C_CLKOUT4_ACTUAL_PHASE(0.000),
    .C_CLKOUT5_ACTUAL_PHASE(0.000),
    .C_CLKOUT6_ACTUAL_PHASE(0.000),
    .C_CLKOUT7_ACTUAL_PHASE(0.000),
    .C_CLKOUT1_ACTUAL_DUTY_CYCLE(50.00),
    .C_CLKOUT2_ACTUAL_DUTY_CYCLE(50.00),
    .C_CLKOUT3_ACTUAL_DUTY_CYCLE(50.00),
    .C_CLKOUT4_ACTUAL_DUTY_CYCLE(50.00),
    .C_CLKOUT5_ACTUAL_DUTY_CYCLE(50.00),
    .C_CLKOUT6_ACTUAL_DUTY_CYCLE(50.00),
    .C_CLKOUT7_ACTUAL_DUTY_CYCLE(50.00),
    .C_USE_SAFE_CLOCK_STARTUP(0),
    .C_USE_CLOCK_SEQUENCING(0),
    .C_CLKOUT1_SEQUENCE_NUMBER(1),
    .C_CLKOUT2_SEQUENCE_NUMBER(1),
    .C_CLKOUT3_SEQUENCE_NUMBER(1),
    .C_CLKOUT4_SEQUENCE_NUMBER(1),
    .C_CLKOUT5_SEQUENCE_NUMBER(1),
    .C_CLKOUT6_SEQUENCE_NUMBER(1),
    .C_CLKOUT7_SEQUENCE_NUMBER(1),
    .C_BANDWIDTH("OPTIMIZED"),
    .C_CLKFBOUT_MULT(1),
    .C_CLKFBOUT_FRACT(0),
    .C_CLKIN1_PERIOD(1.97531),
    .C_CLKIN2_PERIOD(2.59259),
    .C_COMPENSATION("AUTO"),
    .C_DESKEW_DELAY1(0),
    .C_DESKEW_IN1(0),
    .C_DESKEW_FB1(1),
    .C_DESKEW_DELAY2(0),
    .C_DESKEW_IN2(0),
    .C_DESKEW_FB2(1),
    .C_DESKEW_LOCK_CIRCUIT_EN1(0),
    .C_DESKEW_LOCK_CIRCUIT_EN2(0),
    .C_DESKEW_DELAY_EN1("FALSE"),
    .C_DESKEW_DELAY_EN2("FALSE"),
    .C_DESKEW_DELAY_PATH1("FALSE"),
    .C_DESKEW_DELAY_PATH2("FALSE"),
    .C_ZHOLD("FALSE"),
    .C_DIVCLK_DIVIDE(5),
    .C_REF_JITTER1(0.010),
    .C_REF_JITTER2(0.010),
    .C_CLKOUT1_DIVIDE(7),
    .C_CLKOUT2_DIVIDE(12),
    .C_CLKOUT3_DIVIDE(12),
    .C_CLKOUT4_DIVIDE(12),
    .C_CLKOUT5_DIVIDE(12),
    .C_CLKOUT6_DIVIDE(12),
    .C_CLKOUT7_DIVIDE(12),
    .C_OVERRIDE_PRIMITIVE(0),
    .C_PRIMARY_PORT("clk_in1"),
    .C_SECONDARY_PORT("clk_in2"),
    .C_CLK_OUT1_PORT("clk_out1"),
    .C_CLK_OUT2_PORT("clk_out2"),
    .C_CLK_OUT3_PORT("clk_out3"),
    .C_CLK_OUT4_PORT("clk_out4"),
    .C_CLK_OUT5_PORT("clk_out5"),
    .C_CLK_OUT6_PORT("clk_out6"),
    .C_CLK_OUT7_PORT("clk_out7"),
    .C_RESET_PORT("reset"),
    .C_LOCKED_FB_PORT("locked_fb"),
    .C_CLKIN_DESKEW_PORT("clkin_deskew"),
    .C_CLKFB_DESKEW_PORT("clkfb_deskew"),
    .C_CLKIN1_DESKEW_PORT("clkin1_deskew"),
    .C_CLKFB1_DESKEW_PORT("clkfb1_deskew"),
    .C_CLKIN2_DESKEW_PORT("clkin2_deskew"),
    .C_CLKFB2_DESKEW_PORT("clkfb2_deskew"),
    .C_LOCKED_DESKEW1_PORT("locked_deskew1"),
    .C_LOCKED_DESKEW2_PORT("locked_deskew2"),
    .C_LOCKED_PORT("locked"),
    .C_CLKFB_IN_PORT("clkfb_in"),
    .C_CLKFB_OUT_PORT("clkfb_out"),
    .C_POWER_DOWN_PORT("power_down"),
    .C_DADDR_PORT("daddr"),
    .C_DCLK_PORT("dclk"),
    .C_DRDY_PORT("drdy"),
    .C_DWE_PORT("dwe"),
    .C_DIN_PORT("din"),
    .C_DOUT_PORT("dout"),
    .C_DEN_PORT("den"),
    .C_PSCLK_PORT("psclk"),
    .C_PSEN_PORT("psen"),
    .C_PSINCDEC_PORT("psincdec"),
    .C_PSDONE_PORT("psdone"),
    .C_CLK_IN_SEL_PORT("clk_in_sel"),
    .C_INPUT_CLK_STOPPED_PORT("input_clk_stopped"),
    .C_CLKFB_STOPPED_PORT("clkfb_stopped"),
    .C_CLKIN1_JITTER_PS(100.0),
    .C_CLKIN2_JITTER_PS(100.0),
    .C_PRIMITIVE("MMCM"),
    .C_SS_MODE("CENTER_HIGH"),
    .C_SS_MOD_PERIOD(4000),
    .C_SS_MOD_TIME(0.004),
    .C_CDDCDONE_PORT("cddcdone"),
    .C_CDDCREQ_PORT("cddcreq"),
    .C_INTERFACE_SELECTION(1),
    .C_S_AXI_ADDR_WIDTH(11),
    .C_S_AXI_DATA_WIDTH(32),
    .C_NUMMBUFGCE(0),
    .C_AUTO_NUMMBUFGCE(0),
    .C_NUMBUFG(1),
    .C_NUMBUFGCE(0),
    .C_DIVIDE1_AUTO(0.0),
    .C_DIVIDE2_AUTO(0.0),
    .C_DIVIDE3_AUTO(0.0),
    .C_DIVIDE4_AUTO(0.0),
    .C_DIVIDE5_AUTO(0.0),
    .C_DIVIDE6_AUTO(0.0),
    .C_DIVIDE7_AUTO(0.0),
    .C_CLK_TREE1(0),
    .C_CLK_TREE2(0),
    .C_CLK_TREE3(0),
    .C_CLK_TREE4(0),
    .C_CLK_TREE5(0),
    .C_CLK_TREE6(0),
    .C_CLK_TREE7(0),
    .C_PLLBUFGCEDIV(0),
    .C_MMCMBUFGCEDIV(0),
    .C_PLLBUFGCEDIV1(0),
    .C_PLLBUFGCEDIV2(0),
    .C_PLLBUFGCEDIV3(0),
    .C_PLLBUFGCEDIV4(0),
    .C_MMCMBUFGCEDIV1(0),
    .C_MMCMBUFGCEDIV2(0),
    .C_MMCMBUFGCEDIV3(0),
    .C_MMCMBUFGCEDIV4(0),
    .C_MMCMBUFGCEDIV5(0),
    .C_MMCMBUFGCEDIV6(0),
    .C_MMCMBUFGCEDIV7(0),
    .C_CLKOUT1_MATCHED_ROUTING(0),
    .C_CLKOUT2_MATCHED_ROUTING(0),
    .C_CLKOUT3_MATCHED_ROUTING(0),
    .C_CLKOUT4_MATCHED_ROUTING(0),
    .C_CLKOUT5_MATCHED_ROUTING(0),
    .C_CLKOUT6_MATCHED_ROUTING(0),
    .C_CLKOUT7_MATCHED_ROUTING(0),
    .C_AUTO_PRIMITIVE("MMCM"),
    .C_DRP_ADDR_SET1("00000328 0000032c 00000330 00000334 00000338 0000033c 00000340 00000344 00000348 0000034c 00000350 00000354 00000358 0000035c 00000360 00000364 00000368 0000036c 00000370 00000374 00000378 0000037c 00000380 00000384 00000388 0000038c 00000390 00000394 00000398 0000039c 000003a0 000003a4 000003a8 000003ac 000003b0 000003b4 000003b8 000003bc 000003c0 000003c4 000003c8 000003cc 000003d0 000003d4 000003d8 000003dc 000003e0 000003e4 000003e8 000003ec 000003f0 000003f4 000003f8 000003fc"),
    .C_DRP_DATA_SET1("4b06 0001 1600 0e0e bb00 0101 0a00 0303 0a00 0303 0a00 0303 f37c 7c4d d042 ebd8 ec5f edfb aacd 4428 002e 0000 0400 0202 000f 0006 0000 0000 0e80 420d 43e9 1188 0002 0001 0000 00c0 0dfd 0961 0001 0000 068b 0a00 0303 0a00 0303 0a00 0303 0000 0000 0000 0000 0000 0f00 0001"),
    .C_DRP_ADDR_SET2("00000328 0000032c 00000330 00000334 00000338 0000033c 00000340 00000344 00000348 0000034c 00000350 00000354 00000358 0000035c 00000360 00000364 00000368 0000036c 00000370 00000374 00000378 0000037c 00000380 00000384 00000388 0000038c 00000390 00000394 00000398 0000039c 000003a0 000003a4 000003a8 000003ac 000003b0 000003b4 000003b8 000003bc 000003c0 000003c4 000003c8 000003cc 000003d0 000003d4 000003d8 000003dc 000003e0 000003e4 000003e8 000003ec 000003f0 000003f4 000003f8 000003fc"),
    .C_DRP_DATA_SET2("4b06 0001 1600 0e0e 1a00 0202 0b00 0101 0a00 0000 0a00 0101 f37c 7c4d d042 ebd8 ec5f edfb aacd 4428 002e 0000 0400 0202 000f 0006 0000 0000 0e80 420d 43e9 1188 0002 0001 0000 00c0 0dfd 0961 0001 0000 068b 0a00 0303 0b00 0101 0a00 0202 0000 0000 0000 0000 0000 0f00 0001"),
    .C_DRP_ADDR_SET3("00000328 0000032c 00000330 00000334 00000338 0000033c 00000340 00000344 00000348 0000034c 00000350 00000354 00000358 0000035c 00000360 00000364 00000368 0000036c 00000370 00000374 00000378 0000037c 00000380 00000384 00000388 0000038c 00000390 00000394 00000398 0000039c 000003a0 000003a4 000003a8 000003ac 000003b0 000003b4 000003b8 000003bc 000003c0 000003c4 000003c8 000003cc 000003d0 000003d4 000003d8 000003dc 000003e0 000003e4 000003e8 000003ec 000003f0 000003f4 000003f8 000003fc"),
    .C_DRP_DATA_SET3("4b06 0001 1600 0e0e bb00 0101 0a00 0303 0a00 0303 0a00 0303 f37c 7c4d d042 ebd8 ec5f edfb aacd 4428 002e 0000 0400 0202 000f 0006 0000 0000 0e80 420d 43e9 1188 0002 0001 0000 00c0 0dfd 0961 0001 0000 068b 0a00 0303 0a00 0303 0a00 0303 0000 0000 0000 0000 0000 0f00 0001"),
    .C_M_MAX(432.000),
    .C_M_MIN(5.000),
    .C_D_MAX(107.000),
    .C_D_MIN(1.000),
    .C_O_MAX(432.000),
    .C_O_MIN(3.000),
    .C_VCO_MIN(2160.000),
    .C_VCO_MAX(4320.000),
    .C_ACTUAL_VCO(2835.00000),
    .C_ACTUAL_PFD(101.25000)
  ) inst (
    .s_axi_aclk(s_axi_aclk),
    .s_axi_aresetn(s_axi_aresetn),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_awready(s_axi_awready),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wstrb(s_axi_wstrb),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_wready(s_axi_wready),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_bready(s_axi_bready),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_arready(s_axi_arready),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_rready(s_axi_rready),
    .clk_in1_p(1'B0),
    .clk_in1_n(1'B0),
    .clk_in2_p(1'B0),
    .clk_in2_n(1'B0),
    .clkfb_in_p(1'B0),
    .clkfb_in_n(1'B0),
    .clkfb_out_p(),
    .clkfb_out_n(),
    .power_down(1'B0),
    .reset(1'B0),
    .resetn(1'B0),
    .locked(locked),
    .locked_fb(),
    .clkin1_deskew(1'B0),
    .clkfb1_deskew(1'B0),
    .clkin2_deskew(1'B0),
    .clkfb2_deskew(1'B0),
    .ref_clk(1'B0),
    .clk_stop(),
    .clk_glitch(),
    .interrupt(),
    .clk_oor(),
    .clk1_clr_n(1'B1),
    .clk2_clr_n(1'B1),
    .clk3_clr_n(1'B1),
    .clk4_clr_n(1'B1),
    .clk5_clr_n(1'B1),
    .clk6_clr_n(1'B1),
    .clk7_clr_n(1'B1),
    .clk1_ce(1'B1),
    .clk2_ce(1'B1),
    .clk3_ce(1'B1),
    .clk4_ce(1'B1),
    .clk5_ce(1'B1),
    .clk6_ce(1'B1),
    .clk7_ce(1'B1),
    .user_clk0(1'B0),
    .user_clk1(1'B0),
    .user_clk2(1'B0),
    .user_clk3(1'B0),
    .clk_in1(clk_in1),
    .clk_out1(clk_out1)
  );
endmodule
