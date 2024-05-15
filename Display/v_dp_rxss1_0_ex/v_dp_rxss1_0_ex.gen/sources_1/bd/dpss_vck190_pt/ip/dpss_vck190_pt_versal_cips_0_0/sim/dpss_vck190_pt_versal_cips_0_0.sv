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


// IP VLNV: xilinx.com:ip:versal_cips:3.4
// IP Revision: 0

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
(* DONT_TOUCH = "true" *)
module dpss_vck190_pt_versal_cips_0_0 (
  pl0_ref_clk,
  pl1_ref_clk,
  pl0_resetn,
  m_axi_fpd_aclk,
  m_axi_lpd_aclk,
  fpd_cci_noc_axi0_clk,
  fpd_cci_noc_axi1_clk,
  fpd_cci_noc_axi2_clk,
  fpd_cci_noc_axi3_clk,
  pl_ps_irq0,
  pl_ps_irq1,
  pl_ps_irq2,
  pl_ps_irq3,
  pl_ps_irq4,
  pl_ps_irq5,
  M_AXI_FPD_awid,
  M_AXI_FPD_awaddr,
  M_AXI_FPD_awlen,
  M_AXI_FPD_awsize,
  M_AXI_FPD_awburst,
  M_AXI_FPD_awlock,
  M_AXI_FPD_awcache,
  M_AXI_FPD_awprot,
  M_AXI_FPD_awvalid,
  M_AXI_FPD_awuser,
  M_AXI_FPD_awready,
  M_AXI_FPD_wlast,
  M_AXI_FPD_wvalid,
  M_AXI_FPD_wready,
  M_AXI_FPD_bid,
  M_AXI_FPD_bresp,
  M_AXI_FPD_bvalid,
  M_AXI_FPD_bready,
  M_AXI_FPD_arid,
  M_AXI_FPD_araddr,
  M_AXI_FPD_arlen,
  M_AXI_FPD_arsize,
  M_AXI_FPD_arburst,
  M_AXI_FPD_arlock,
  M_AXI_FPD_arcache,
  M_AXI_FPD_arprot,
  M_AXI_FPD_arvalid,
  M_AXI_FPD_aruser,
  M_AXI_FPD_arready,
  M_AXI_FPD_rid,
  M_AXI_FPD_rresp,
  M_AXI_FPD_rlast,
  M_AXI_FPD_rvalid,
  M_AXI_FPD_rready,
  M_AXI_FPD_awqos,
  M_AXI_FPD_arqos,
  M_AXI_FPD_wdata,
  M_AXI_FPD_wstrb,
  M_AXI_FPD_rdata,
  M_AXI_LPD_awid,
  M_AXI_LPD_awaddr,
  M_AXI_LPD_awlen,
  M_AXI_LPD_awsize,
  M_AXI_LPD_awburst,
  M_AXI_LPD_awlock,
  M_AXI_LPD_awcache,
  M_AXI_LPD_awprot,
  M_AXI_LPD_awvalid,
  M_AXI_LPD_awuser,
  M_AXI_LPD_awready,
  M_AXI_LPD_wlast,
  M_AXI_LPD_wvalid,
  M_AXI_LPD_wready,
  M_AXI_LPD_bid,
  M_AXI_LPD_bresp,
  M_AXI_LPD_bvalid,
  M_AXI_LPD_bready,
  M_AXI_LPD_arid,
  M_AXI_LPD_araddr,
  M_AXI_LPD_arlen,
  M_AXI_LPD_arsize,
  M_AXI_LPD_arburst,
  M_AXI_LPD_arlock,
  M_AXI_LPD_arcache,
  M_AXI_LPD_arprot,
  M_AXI_LPD_arvalid,
  M_AXI_LPD_aruser,
  M_AXI_LPD_arready,
  M_AXI_LPD_rid,
  M_AXI_LPD_rresp,
  M_AXI_LPD_rlast,
  M_AXI_LPD_rvalid,
  M_AXI_LPD_rready,
  M_AXI_LPD_awqos,
  M_AXI_LPD_arqos,
  M_AXI_LPD_wdata,
  M_AXI_LPD_wstrb,
  M_AXI_LPD_rdata,
  FPD_CCI_NOC_0_awid,
  FPD_CCI_NOC_0_awaddr,
  FPD_CCI_NOC_0_awlen,
  FPD_CCI_NOC_0_awsize,
  FPD_CCI_NOC_0_awburst,
  FPD_CCI_NOC_0_awlock,
  FPD_CCI_NOC_0_awcache,
  FPD_CCI_NOC_0_awprot,
  FPD_CCI_NOC_0_awvalid,
  FPD_CCI_NOC_0_awuser,
  FPD_CCI_NOC_0_awready,
  FPD_CCI_NOC_0_wdata,
  FPD_CCI_NOC_0_wstrb,
  FPD_CCI_NOC_0_wuser,
  FPD_CCI_NOC_0_wlast,
  FPD_CCI_NOC_0_wvalid,
  FPD_CCI_NOC_0_wready,
  FPD_CCI_NOC_0_bid,
  FPD_CCI_NOC_0_bresp,
  FPD_CCI_NOC_0_bvalid,
  FPD_CCI_NOC_0_bready,
  FPD_CCI_NOC_0_arid,
  FPD_CCI_NOC_0_araddr,
  FPD_CCI_NOC_0_arlen,
  FPD_CCI_NOC_0_arsize,
  FPD_CCI_NOC_0_arburst,
  FPD_CCI_NOC_0_arlock,
  FPD_CCI_NOC_0_arcache,
  FPD_CCI_NOC_0_arprot,
  FPD_CCI_NOC_0_arvalid,
  FPD_CCI_NOC_0_aruser,
  FPD_CCI_NOC_0_arready,
  FPD_CCI_NOC_0_rid,
  FPD_CCI_NOC_0_rdata,
  FPD_CCI_NOC_0_rresp,
  FPD_CCI_NOC_0_rlast,
  FPD_CCI_NOC_0_rvalid,
  FPD_CCI_NOC_0_rready,
  FPD_CCI_NOC_0_awqos,
  FPD_CCI_NOC_0_arqos,
  FPD_CCI_NOC_1_awid,
  FPD_CCI_NOC_1_awaddr,
  FPD_CCI_NOC_1_awlen,
  FPD_CCI_NOC_1_awsize,
  FPD_CCI_NOC_1_awburst,
  FPD_CCI_NOC_1_awlock,
  FPD_CCI_NOC_1_awcache,
  FPD_CCI_NOC_1_awprot,
  FPD_CCI_NOC_1_awvalid,
  FPD_CCI_NOC_1_awuser,
  FPD_CCI_NOC_1_awready,
  FPD_CCI_NOC_1_wdata,
  FPD_CCI_NOC_1_wstrb,
  FPD_CCI_NOC_1_wuser,
  FPD_CCI_NOC_1_wlast,
  FPD_CCI_NOC_1_wvalid,
  FPD_CCI_NOC_1_wready,
  FPD_CCI_NOC_1_bid,
  FPD_CCI_NOC_1_bresp,
  FPD_CCI_NOC_1_bvalid,
  FPD_CCI_NOC_1_bready,
  FPD_CCI_NOC_1_arid,
  FPD_CCI_NOC_1_araddr,
  FPD_CCI_NOC_1_arlen,
  FPD_CCI_NOC_1_arsize,
  FPD_CCI_NOC_1_arburst,
  FPD_CCI_NOC_1_arlock,
  FPD_CCI_NOC_1_arcache,
  FPD_CCI_NOC_1_arprot,
  FPD_CCI_NOC_1_arvalid,
  FPD_CCI_NOC_1_aruser,
  FPD_CCI_NOC_1_arready,
  FPD_CCI_NOC_1_rid,
  FPD_CCI_NOC_1_rdata,
  FPD_CCI_NOC_1_rresp,
  FPD_CCI_NOC_1_rlast,
  FPD_CCI_NOC_1_rvalid,
  FPD_CCI_NOC_1_rready,
  FPD_CCI_NOC_1_awqos,
  FPD_CCI_NOC_1_arqos,
  FPD_CCI_NOC_2_awid,
  FPD_CCI_NOC_2_awaddr,
  FPD_CCI_NOC_2_awlen,
  FPD_CCI_NOC_2_awsize,
  FPD_CCI_NOC_2_awburst,
  FPD_CCI_NOC_2_awlock,
  FPD_CCI_NOC_2_awcache,
  FPD_CCI_NOC_2_awprot,
  FPD_CCI_NOC_2_awvalid,
  FPD_CCI_NOC_2_awuser,
  FPD_CCI_NOC_2_awready,
  FPD_CCI_NOC_2_wdata,
  FPD_CCI_NOC_2_wstrb,
  FPD_CCI_NOC_2_wuser,
  FPD_CCI_NOC_2_wlast,
  FPD_CCI_NOC_2_wvalid,
  FPD_CCI_NOC_2_wready,
  FPD_CCI_NOC_2_bid,
  FPD_CCI_NOC_2_bresp,
  FPD_CCI_NOC_2_bvalid,
  FPD_CCI_NOC_2_bready,
  FPD_CCI_NOC_2_arid,
  FPD_CCI_NOC_2_araddr,
  FPD_CCI_NOC_2_arlen,
  FPD_CCI_NOC_2_arsize,
  FPD_CCI_NOC_2_arburst,
  FPD_CCI_NOC_2_arlock,
  FPD_CCI_NOC_2_arcache,
  FPD_CCI_NOC_2_arprot,
  FPD_CCI_NOC_2_arvalid,
  FPD_CCI_NOC_2_aruser,
  FPD_CCI_NOC_2_arready,
  FPD_CCI_NOC_2_rid,
  FPD_CCI_NOC_2_rdata,
  FPD_CCI_NOC_2_rresp,
  FPD_CCI_NOC_2_rlast,
  FPD_CCI_NOC_2_rvalid,
  FPD_CCI_NOC_2_rready,
  FPD_CCI_NOC_2_awqos,
  FPD_CCI_NOC_2_arqos,
  FPD_CCI_NOC_3_awid,
  FPD_CCI_NOC_3_awaddr,
  FPD_CCI_NOC_3_awlen,
  FPD_CCI_NOC_3_awsize,
  FPD_CCI_NOC_3_awburst,
  FPD_CCI_NOC_3_awlock,
  FPD_CCI_NOC_3_awcache,
  FPD_CCI_NOC_3_awprot,
  FPD_CCI_NOC_3_awvalid,
  FPD_CCI_NOC_3_awuser,
  FPD_CCI_NOC_3_awready,
  FPD_CCI_NOC_3_wdata,
  FPD_CCI_NOC_3_wstrb,
  FPD_CCI_NOC_3_wuser,
  FPD_CCI_NOC_3_wlast,
  FPD_CCI_NOC_3_wvalid,
  FPD_CCI_NOC_3_wready,
  FPD_CCI_NOC_3_bid,
  FPD_CCI_NOC_3_bresp,
  FPD_CCI_NOC_3_bvalid,
  FPD_CCI_NOC_3_bready,
  FPD_CCI_NOC_3_arid,
  FPD_CCI_NOC_3_araddr,
  FPD_CCI_NOC_3_arlen,
  FPD_CCI_NOC_3_arsize,
  FPD_CCI_NOC_3_arburst,
  FPD_CCI_NOC_3_arlock,
  FPD_CCI_NOC_3_arcache,
  FPD_CCI_NOC_3_arprot,
  FPD_CCI_NOC_3_arvalid,
  FPD_CCI_NOC_3_aruser,
  FPD_CCI_NOC_3_arready,
  FPD_CCI_NOC_3_rid,
  FPD_CCI_NOC_3_rdata,
  FPD_CCI_NOC_3_rresp,
  FPD_CCI_NOC_3_rlast,
  FPD_CCI_NOC_3_rvalid,
  FPD_CCI_NOC_3_rready,
  FPD_CCI_NOC_3_awqos,
  FPD_CCI_NOC_3_arqos
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.pl0_ref_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.pl0_ref_clk CLK" *)
output wire pl0_ref_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.pl1_ref_clk, FREQ_HZ 299997009, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl1_ref_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.pl1_ref_clk CLK" *)
output wire pl1_ref_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.pl0_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.pl0_resetn RST" *)
output wire pl0_resetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.m_axi_fpd_aclk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, ASSOCIATED_BUSIF M_AXI_FPD, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.m_axi_fpd_aclk CLK" *)
input wire m_axi_fpd_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.m_axi_lpd_aclk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, ASSOCIATED_BUSIF M_AXI_LPD, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.m_axi_lpd_aclk CLK" *)
input wire m_axi_lpd_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.fpd_cci_noc_axi0_clk, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_fpd_cci_noc_axi0_clk, ASSOCIATED_BUSIF FPD_CCI_NOC_0, INSERT_VIP 0, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.fpd_cci_noc_axi0_clk CLK" *)
output wire fpd_cci_noc_axi0_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.fpd_cci_noc_axi1_clk, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_fpd_cci_noc_axi1_clk, ASSOCIATED_BUSIF FPD_CCI_NOC_1, INSERT_VIP 0, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.fpd_cci_noc_axi1_clk CLK" *)
output wire fpd_cci_noc_axi1_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.fpd_cci_noc_axi2_clk, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_fpd_cci_noc_axi2_clk, ASSOCIATED_BUSIF FPD_CCI_NOC_2, INSERT_VIP 0, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.fpd_cci_noc_axi2_clk CLK" *)
output wire fpd_cci_noc_axi2_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.fpd_cci_noc_axi3_clk, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_fpd_cci_noc_axi3_clk, ASSOCIATED_BUSIF FPD_CCI_NOC_3, INSERT_VIP 0, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.fpd_cci_noc_axi3_clk CLK" *)
output wire fpd_cci_noc_axi3_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.pl_ps_irq0, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.pl_ps_irq0 INTERRUPT" *)
input wire pl_ps_irq0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.pl_ps_irq1, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.pl_ps_irq1 INTERRUPT" *)
input wire pl_ps_irq1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.pl_ps_irq2, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.pl_ps_irq2 INTERRUPT" *)
input wire pl_ps_irq2;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.pl_ps_irq3, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.pl_ps_irq3 INTERRUPT" *)
input wire pl_ps_irq3;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.pl_ps_irq4, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.pl_ps_irq4 INTERRUPT" *)
input wire pl_ps_irq4;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.pl_ps_irq5, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.pl_ps_irq5 INTERRUPT" *)
input wire pl_ps_irq5;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWID" *)
output wire [15 : 0] M_AXI_FPD_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWADDR" *)
output wire [43 : 0] M_AXI_FPD_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWLEN" *)
output wire [7 : 0] M_AXI_FPD_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWSIZE" *)
output wire [2 : 0] M_AXI_FPD_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWBURST" *)
output wire [1 : 0] M_AXI_FPD_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWLOCK" *)
output wire M_AXI_FPD_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWCACHE" *)
output wire [3 : 0] M_AXI_FPD_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWPROT" *)
output wire [2 : 0] M_AXI_FPD_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWVALID" *)
output wire M_AXI_FPD_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWUSER" *)
output wire [15 : 0] M_AXI_FPD_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWREADY" *)
input wire M_AXI_FPD_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD WLAST" *)
output wire M_AXI_FPD_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD WVALID" *)
output wire M_AXI_FPD_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD WREADY" *)
input wire M_AXI_FPD_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD BID" *)
input wire [15 : 0] M_AXI_FPD_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD BRESP" *)
input wire [1 : 0] M_AXI_FPD_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD BVALID" *)
input wire M_AXI_FPD_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD BREADY" *)
output wire M_AXI_FPD_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARID" *)
output wire [15 : 0] M_AXI_FPD_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARADDR" *)
output wire [43 : 0] M_AXI_FPD_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARLEN" *)
output wire [7 : 0] M_AXI_FPD_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARSIZE" *)
output wire [2 : 0] M_AXI_FPD_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARBURST" *)
output wire [1 : 0] M_AXI_FPD_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARLOCK" *)
output wire M_AXI_FPD_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARCACHE" *)
output wire [3 : 0] M_AXI_FPD_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARPROT" *)
output wire [2 : 0] M_AXI_FPD_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARVALID" *)
output wire M_AXI_FPD_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARUSER" *)
output wire [15 : 0] M_AXI_FPD_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARREADY" *)
input wire M_AXI_FPD_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD RID" *)
input wire [15 : 0] M_AXI_FPD_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD RRESP" *)
input wire [1 : 0] M_AXI_FPD_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD RLAST" *)
input wire M_AXI_FPD_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD RVALID" *)
input wire M_AXI_FPD_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD RREADY" *)
output wire M_AXI_FPD_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWQOS" *)
output wire [3 : 0] M_AXI_FPD_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARQOS" *)
output wire [3 : 0] M_AXI_FPD_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD WDATA" *)
output wire [127 : 0] M_AXI_FPD_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD WSTRB" *)
output wire [15 : 0] M_AXI_FPD_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_FPD, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 99999001, ID_WIDTH 16, ADDR_WIDTH 44, AWUSER_WIDTH 16, ARUSER_WIDTH 16, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, CATEGORY pl, MY_CATEGORY ps" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD RDATA" *)
input wire [127 : 0] M_AXI_FPD_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWID" *)
output wire [15 : 0] M_AXI_LPD_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWADDR" *)
output wire [43 : 0] M_AXI_LPD_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWLEN" *)
output wire [7 : 0] M_AXI_LPD_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWSIZE" *)
output wire [2 : 0] M_AXI_LPD_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWBURST" *)
output wire [1 : 0] M_AXI_LPD_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWLOCK" *)
output wire M_AXI_LPD_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWCACHE" *)
output wire [3 : 0] M_AXI_LPD_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWPROT" *)
output wire [2 : 0] M_AXI_LPD_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWVALID" *)
output wire M_AXI_LPD_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWUSER" *)
output wire [15 : 0] M_AXI_LPD_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWREADY" *)
input wire M_AXI_LPD_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD WLAST" *)
output wire M_AXI_LPD_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD WVALID" *)
output wire M_AXI_LPD_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD WREADY" *)
input wire M_AXI_LPD_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD BID" *)
input wire [15 : 0] M_AXI_LPD_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD BRESP" *)
input wire [1 : 0] M_AXI_LPD_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD BVALID" *)
input wire M_AXI_LPD_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD BREADY" *)
output wire M_AXI_LPD_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARID" *)
output wire [15 : 0] M_AXI_LPD_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARADDR" *)
output wire [43 : 0] M_AXI_LPD_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARLEN" *)
output wire [7 : 0] M_AXI_LPD_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARSIZE" *)
output wire [2 : 0] M_AXI_LPD_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARBURST" *)
output wire [1 : 0] M_AXI_LPD_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARLOCK" *)
output wire M_AXI_LPD_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARCACHE" *)
output wire [3 : 0] M_AXI_LPD_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARPROT" *)
output wire [2 : 0] M_AXI_LPD_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARVALID" *)
output wire M_AXI_LPD_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARUSER" *)
output wire [15 : 0] M_AXI_LPD_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARREADY" *)
input wire M_AXI_LPD_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD RID" *)
input wire [15 : 0] M_AXI_LPD_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD RRESP" *)
input wire [1 : 0] M_AXI_LPD_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD RLAST" *)
input wire M_AXI_LPD_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD RVALID" *)
input wire M_AXI_LPD_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD RREADY" *)
output wire M_AXI_LPD_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWQOS" *)
output wire [3 : 0] M_AXI_LPD_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARQOS" *)
output wire [3 : 0] M_AXI_LPD_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD WDATA" *)
output wire [127 : 0] M_AXI_LPD_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD WSTRB" *)
output wire [15 : 0] M_AXI_LPD_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_LPD, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 99999001, ID_WIDTH 16, ADDR_WIDTH 44, AWUSER_WIDTH 16, ARUSER_WIDTH 16, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 1, NUM_\
WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, CATEGORY pl, MY_CATEGORY ps" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD RDATA" *)
input wire [127 : 0] M_AXI_LPD_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWID" *)
output wire [15 : 0] FPD_CCI_NOC_0_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWADDR" *)
output wire [63 : 0] FPD_CCI_NOC_0_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWLEN" *)
output wire [7 : 0] FPD_CCI_NOC_0_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWSIZE" *)
output wire [2 : 0] FPD_CCI_NOC_0_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWBURST" *)
output wire [1 : 0] FPD_CCI_NOC_0_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWLOCK" *)
output wire FPD_CCI_NOC_0_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWCACHE" *)
output wire [3 : 0] FPD_CCI_NOC_0_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWPROT" *)
output wire [2 : 0] FPD_CCI_NOC_0_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWVALID" *)
output wire FPD_CCI_NOC_0_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWUSER" *)
output wire [17 : 0] FPD_CCI_NOC_0_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWREADY" *)
input wire FPD_CCI_NOC_0_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WDATA" *)
output wire [127 : 0] FPD_CCI_NOC_0_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WSTRB" *)
output wire [15 : 0] FPD_CCI_NOC_0_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WUSER" *)
output wire [16 : 0] FPD_CCI_NOC_0_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WLAST" *)
output wire FPD_CCI_NOC_0_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WVALID" *)
output wire FPD_CCI_NOC_0_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WREADY" *)
input wire FPD_CCI_NOC_0_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 BID" *)
input wire [15 : 0] FPD_CCI_NOC_0_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 BRESP" *)
input wire [1 : 0] FPD_CCI_NOC_0_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 BVALID" *)
input wire FPD_CCI_NOC_0_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 BREADY" *)
output wire FPD_CCI_NOC_0_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARID" *)
output wire [15 : 0] FPD_CCI_NOC_0_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARADDR" *)
output wire [63 : 0] FPD_CCI_NOC_0_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARLEN" *)
output wire [7 : 0] FPD_CCI_NOC_0_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARSIZE" *)
output wire [2 : 0] FPD_CCI_NOC_0_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARBURST" *)
output wire [1 : 0] FPD_CCI_NOC_0_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARLOCK" *)
output wire FPD_CCI_NOC_0_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARCACHE" *)
output wire [3 : 0] FPD_CCI_NOC_0_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARPROT" *)
output wire [2 : 0] FPD_CCI_NOC_0_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARVALID" *)
output wire FPD_CCI_NOC_0_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARUSER" *)
output wire [17 : 0] FPD_CCI_NOC_0_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARREADY" *)
input wire FPD_CCI_NOC_0_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RID" *)
input wire [15 : 0] FPD_CCI_NOC_0_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RDATA" *)
input wire [127 : 0] FPD_CCI_NOC_0_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RRESP" *)
input wire [1 : 0] FPD_CCI_NOC_0_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RLAST" *)
input wire FPD_CCI_NOC_0_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RVALID" *)
input wire FPD_CCI_NOC_0_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RREADY" *)
output wire FPD_CCI_NOC_0_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWQOS" *)
output wire [3 : 0] FPD_CCI_NOC_0_awqos;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FPD_CCI_NOC_0, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 824991760, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 17, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_fpd_cci_noc_axi0_clk, NUM_REA\
D_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, CATEGORY noc, MY_CATEGORY ps_cci, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, INDEX 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARQOS" *)
output wire [3 : 0] FPD_CCI_NOC_0_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWID" *)
output wire [15 : 0] FPD_CCI_NOC_1_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWADDR" *)
output wire [63 : 0] FPD_CCI_NOC_1_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWLEN" *)
output wire [7 : 0] FPD_CCI_NOC_1_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWSIZE" *)
output wire [2 : 0] FPD_CCI_NOC_1_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWBURST" *)
output wire [1 : 0] FPD_CCI_NOC_1_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWLOCK" *)
output wire FPD_CCI_NOC_1_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWCACHE" *)
output wire [3 : 0] FPD_CCI_NOC_1_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWPROT" *)
output wire [2 : 0] FPD_CCI_NOC_1_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWVALID" *)
output wire FPD_CCI_NOC_1_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWUSER" *)
output wire [17 : 0] FPD_CCI_NOC_1_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWREADY" *)
input wire FPD_CCI_NOC_1_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WDATA" *)
output wire [127 : 0] FPD_CCI_NOC_1_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WSTRB" *)
output wire [15 : 0] FPD_CCI_NOC_1_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WUSER" *)
output wire [16 : 0] FPD_CCI_NOC_1_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WLAST" *)
output wire FPD_CCI_NOC_1_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WVALID" *)
output wire FPD_CCI_NOC_1_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WREADY" *)
input wire FPD_CCI_NOC_1_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 BID" *)
input wire [15 : 0] FPD_CCI_NOC_1_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 BRESP" *)
input wire [1 : 0] FPD_CCI_NOC_1_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 BVALID" *)
input wire FPD_CCI_NOC_1_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 BREADY" *)
output wire FPD_CCI_NOC_1_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARID" *)
output wire [15 : 0] FPD_CCI_NOC_1_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARADDR" *)
output wire [63 : 0] FPD_CCI_NOC_1_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARLEN" *)
output wire [7 : 0] FPD_CCI_NOC_1_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARSIZE" *)
output wire [2 : 0] FPD_CCI_NOC_1_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARBURST" *)
output wire [1 : 0] FPD_CCI_NOC_1_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARLOCK" *)
output wire FPD_CCI_NOC_1_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARCACHE" *)
output wire [3 : 0] FPD_CCI_NOC_1_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARPROT" *)
output wire [2 : 0] FPD_CCI_NOC_1_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARVALID" *)
output wire FPD_CCI_NOC_1_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARUSER" *)
output wire [17 : 0] FPD_CCI_NOC_1_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARREADY" *)
input wire FPD_CCI_NOC_1_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RID" *)
input wire [15 : 0] FPD_CCI_NOC_1_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RDATA" *)
input wire [127 : 0] FPD_CCI_NOC_1_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RRESP" *)
input wire [1 : 0] FPD_CCI_NOC_1_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RLAST" *)
input wire FPD_CCI_NOC_1_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RVALID" *)
input wire FPD_CCI_NOC_1_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RREADY" *)
output wire FPD_CCI_NOC_1_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWQOS" *)
output wire [3 : 0] FPD_CCI_NOC_1_awqos;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FPD_CCI_NOC_1, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 824991760, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 17, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_fpd_cci_noc_axi1_clk, NUM_REA\
D_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, CATEGORY noc, MY_CATEGORY ps_cci, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, INDEX 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARQOS" *)
output wire [3 : 0] FPD_CCI_NOC_1_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWID" *)
output wire [15 : 0] FPD_CCI_NOC_2_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWADDR" *)
output wire [63 : 0] FPD_CCI_NOC_2_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWLEN" *)
output wire [7 : 0] FPD_CCI_NOC_2_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWSIZE" *)
output wire [2 : 0] FPD_CCI_NOC_2_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWBURST" *)
output wire [1 : 0] FPD_CCI_NOC_2_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWLOCK" *)
output wire FPD_CCI_NOC_2_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWCACHE" *)
output wire [3 : 0] FPD_CCI_NOC_2_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWPROT" *)
output wire [2 : 0] FPD_CCI_NOC_2_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWVALID" *)
output wire FPD_CCI_NOC_2_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWUSER" *)
output wire [17 : 0] FPD_CCI_NOC_2_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWREADY" *)
input wire FPD_CCI_NOC_2_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WDATA" *)
output wire [127 : 0] FPD_CCI_NOC_2_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WSTRB" *)
output wire [15 : 0] FPD_CCI_NOC_2_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WUSER" *)
output wire [16 : 0] FPD_CCI_NOC_2_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WLAST" *)
output wire FPD_CCI_NOC_2_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WVALID" *)
output wire FPD_CCI_NOC_2_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WREADY" *)
input wire FPD_CCI_NOC_2_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 BID" *)
input wire [15 : 0] FPD_CCI_NOC_2_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 BRESP" *)
input wire [1 : 0] FPD_CCI_NOC_2_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 BVALID" *)
input wire FPD_CCI_NOC_2_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 BREADY" *)
output wire FPD_CCI_NOC_2_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARID" *)
output wire [15 : 0] FPD_CCI_NOC_2_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARADDR" *)
output wire [63 : 0] FPD_CCI_NOC_2_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARLEN" *)
output wire [7 : 0] FPD_CCI_NOC_2_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARSIZE" *)
output wire [2 : 0] FPD_CCI_NOC_2_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARBURST" *)
output wire [1 : 0] FPD_CCI_NOC_2_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARLOCK" *)
output wire FPD_CCI_NOC_2_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARCACHE" *)
output wire [3 : 0] FPD_CCI_NOC_2_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARPROT" *)
output wire [2 : 0] FPD_CCI_NOC_2_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARVALID" *)
output wire FPD_CCI_NOC_2_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARUSER" *)
output wire [17 : 0] FPD_CCI_NOC_2_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARREADY" *)
input wire FPD_CCI_NOC_2_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RID" *)
input wire [15 : 0] FPD_CCI_NOC_2_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RDATA" *)
input wire [127 : 0] FPD_CCI_NOC_2_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RRESP" *)
input wire [1 : 0] FPD_CCI_NOC_2_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RLAST" *)
input wire FPD_CCI_NOC_2_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RVALID" *)
input wire FPD_CCI_NOC_2_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RREADY" *)
output wire FPD_CCI_NOC_2_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWQOS" *)
output wire [3 : 0] FPD_CCI_NOC_2_awqos;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FPD_CCI_NOC_2, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 824991760, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 17, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_fpd_cci_noc_axi2_clk, NUM_REA\
D_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, CATEGORY noc, MY_CATEGORY ps_cci, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, INDEX 2" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARQOS" *)
output wire [3 : 0] FPD_CCI_NOC_2_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWID" *)
output wire [15 : 0] FPD_CCI_NOC_3_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWADDR" *)
output wire [63 : 0] FPD_CCI_NOC_3_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWLEN" *)
output wire [7 : 0] FPD_CCI_NOC_3_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWSIZE" *)
output wire [2 : 0] FPD_CCI_NOC_3_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWBURST" *)
output wire [1 : 0] FPD_CCI_NOC_3_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWLOCK" *)
output wire FPD_CCI_NOC_3_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWCACHE" *)
output wire [3 : 0] FPD_CCI_NOC_3_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWPROT" *)
output wire [2 : 0] FPD_CCI_NOC_3_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWVALID" *)
output wire FPD_CCI_NOC_3_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWUSER" *)
output wire [17 : 0] FPD_CCI_NOC_3_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWREADY" *)
input wire FPD_CCI_NOC_3_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WDATA" *)
output wire [127 : 0] FPD_CCI_NOC_3_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WSTRB" *)
output wire [15 : 0] FPD_CCI_NOC_3_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WUSER" *)
output wire [16 : 0] FPD_CCI_NOC_3_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WLAST" *)
output wire FPD_CCI_NOC_3_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WVALID" *)
output wire FPD_CCI_NOC_3_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WREADY" *)
input wire FPD_CCI_NOC_3_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 BID" *)
input wire [15 : 0] FPD_CCI_NOC_3_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 BRESP" *)
input wire [1 : 0] FPD_CCI_NOC_3_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 BVALID" *)
input wire FPD_CCI_NOC_3_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 BREADY" *)
output wire FPD_CCI_NOC_3_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARID" *)
output wire [15 : 0] FPD_CCI_NOC_3_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARADDR" *)
output wire [63 : 0] FPD_CCI_NOC_3_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARLEN" *)
output wire [7 : 0] FPD_CCI_NOC_3_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARSIZE" *)
output wire [2 : 0] FPD_CCI_NOC_3_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARBURST" *)
output wire [1 : 0] FPD_CCI_NOC_3_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARLOCK" *)
output wire FPD_CCI_NOC_3_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARCACHE" *)
output wire [3 : 0] FPD_CCI_NOC_3_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARPROT" *)
output wire [2 : 0] FPD_CCI_NOC_3_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARVALID" *)
output wire FPD_CCI_NOC_3_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARUSER" *)
output wire [17 : 0] FPD_CCI_NOC_3_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARREADY" *)
input wire FPD_CCI_NOC_3_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RID" *)
input wire [15 : 0] FPD_CCI_NOC_3_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RDATA" *)
input wire [127 : 0] FPD_CCI_NOC_3_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RRESP" *)
input wire [1 : 0] FPD_CCI_NOC_3_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RLAST" *)
input wire FPD_CCI_NOC_3_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RVALID" *)
input wire FPD_CCI_NOC_3_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RREADY" *)
output wire FPD_CCI_NOC_3_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWQOS" *)
output wire [3 : 0] FPD_CCI_NOC_3_awqos;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FPD_CCI_NOC_3, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 824991760, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 17, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_fpd_cci_noc_axi3_clk, NUM_REA\
D_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, CATEGORY noc, MY_CATEGORY ps_cci, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, INDEX 3" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARQOS" *)
output wire [3 : 0] FPD_CCI_NOC_3_arqos;

  bd_65e0 inst (
    .pl0_ref_clk(pl0_ref_clk),
    .pl1_ref_clk(pl1_ref_clk),
    .pl0_resetn(pl0_resetn),
    .m_axi_fpd_aclk(m_axi_fpd_aclk),
    .m_axi_lpd_aclk(m_axi_lpd_aclk),
    .fpd_cci_noc_axi0_clk(fpd_cci_noc_axi0_clk),
    .fpd_cci_noc_axi1_clk(fpd_cci_noc_axi1_clk),
    .fpd_cci_noc_axi2_clk(fpd_cci_noc_axi2_clk),
    .fpd_cci_noc_axi3_clk(fpd_cci_noc_axi3_clk),
    .pl_ps_irq0(pl_ps_irq0),
    .pl_ps_irq1(pl_ps_irq1),
    .pl_ps_irq2(pl_ps_irq2),
    .pl_ps_irq3(pl_ps_irq3),
    .pl_ps_irq4(pl_ps_irq4),
    .pl_ps_irq5(pl_ps_irq5),
    .M_AXI_FPD_awid(M_AXI_FPD_awid),
    .M_AXI_FPD_awaddr(M_AXI_FPD_awaddr),
    .M_AXI_FPD_awlen(M_AXI_FPD_awlen),
    .M_AXI_FPD_awsize(M_AXI_FPD_awsize),
    .M_AXI_FPD_awburst(M_AXI_FPD_awburst),
    .M_AXI_FPD_awlock(M_AXI_FPD_awlock),
    .M_AXI_FPD_awcache(M_AXI_FPD_awcache),
    .M_AXI_FPD_awprot(M_AXI_FPD_awprot),
    .M_AXI_FPD_awvalid(M_AXI_FPD_awvalid),
    .M_AXI_FPD_awuser(M_AXI_FPD_awuser),
    .M_AXI_FPD_awready(M_AXI_FPD_awready),
    .M_AXI_FPD_wlast(M_AXI_FPD_wlast),
    .M_AXI_FPD_wvalid(M_AXI_FPD_wvalid),
    .M_AXI_FPD_wready(M_AXI_FPD_wready),
    .M_AXI_FPD_bid(M_AXI_FPD_bid),
    .M_AXI_FPD_bresp(M_AXI_FPD_bresp),
    .M_AXI_FPD_bvalid(M_AXI_FPD_bvalid),
    .M_AXI_FPD_bready(M_AXI_FPD_bready),
    .M_AXI_FPD_arid(M_AXI_FPD_arid),
    .M_AXI_FPD_araddr(M_AXI_FPD_araddr),
    .M_AXI_FPD_arlen(M_AXI_FPD_arlen),
    .M_AXI_FPD_arsize(M_AXI_FPD_arsize),
    .M_AXI_FPD_arburst(M_AXI_FPD_arburst),
    .M_AXI_FPD_arlock(M_AXI_FPD_arlock),
    .M_AXI_FPD_arcache(M_AXI_FPD_arcache),
    .M_AXI_FPD_arprot(M_AXI_FPD_arprot),
    .M_AXI_FPD_arvalid(M_AXI_FPD_arvalid),
    .M_AXI_FPD_aruser(M_AXI_FPD_aruser),
    .M_AXI_FPD_arready(M_AXI_FPD_arready),
    .M_AXI_FPD_rid(M_AXI_FPD_rid),
    .M_AXI_FPD_rresp(M_AXI_FPD_rresp),
    .M_AXI_FPD_rlast(M_AXI_FPD_rlast),
    .M_AXI_FPD_rvalid(M_AXI_FPD_rvalid),
    .M_AXI_FPD_rready(M_AXI_FPD_rready),
    .M_AXI_FPD_awqos(M_AXI_FPD_awqos),
    .M_AXI_FPD_arqos(M_AXI_FPD_arqos),
    .M_AXI_FPD_wdata(M_AXI_FPD_wdata),
    .M_AXI_FPD_wstrb(M_AXI_FPD_wstrb),
    .M_AXI_FPD_rdata(M_AXI_FPD_rdata),
    .M_AXI_LPD_awid(M_AXI_LPD_awid),
    .M_AXI_LPD_awaddr(M_AXI_LPD_awaddr),
    .M_AXI_LPD_awlen(M_AXI_LPD_awlen),
    .M_AXI_LPD_awsize(M_AXI_LPD_awsize),
    .M_AXI_LPD_awburst(M_AXI_LPD_awburst),
    .M_AXI_LPD_awlock(M_AXI_LPD_awlock),
    .M_AXI_LPD_awcache(M_AXI_LPD_awcache),
    .M_AXI_LPD_awprot(M_AXI_LPD_awprot),
    .M_AXI_LPD_awvalid(M_AXI_LPD_awvalid),
    .M_AXI_LPD_awuser(M_AXI_LPD_awuser),
    .M_AXI_LPD_awready(M_AXI_LPD_awready),
    .M_AXI_LPD_wlast(M_AXI_LPD_wlast),
    .M_AXI_LPD_wvalid(M_AXI_LPD_wvalid),
    .M_AXI_LPD_wready(M_AXI_LPD_wready),
    .M_AXI_LPD_bid(M_AXI_LPD_bid),
    .M_AXI_LPD_bresp(M_AXI_LPD_bresp),
    .M_AXI_LPD_bvalid(M_AXI_LPD_bvalid),
    .M_AXI_LPD_bready(M_AXI_LPD_bready),
    .M_AXI_LPD_arid(M_AXI_LPD_arid),
    .M_AXI_LPD_araddr(M_AXI_LPD_araddr),
    .M_AXI_LPD_arlen(M_AXI_LPD_arlen),
    .M_AXI_LPD_arsize(M_AXI_LPD_arsize),
    .M_AXI_LPD_arburst(M_AXI_LPD_arburst),
    .M_AXI_LPD_arlock(M_AXI_LPD_arlock),
    .M_AXI_LPD_arcache(M_AXI_LPD_arcache),
    .M_AXI_LPD_arprot(M_AXI_LPD_arprot),
    .M_AXI_LPD_arvalid(M_AXI_LPD_arvalid),
    .M_AXI_LPD_aruser(M_AXI_LPD_aruser),
    .M_AXI_LPD_arready(M_AXI_LPD_arready),
    .M_AXI_LPD_rid(M_AXI_LPD_rid),
    .M_AXI_LPD_rresp(M_AXI_LPD_rresp),
    .M_AXI_LPD_rlast(M_AXI_LPD_rlast),
    .M_AXI_LPD_rvalid(M_AXI_LPD_rvalid),
    .M_AXI_LPD_rready(M_AXI_LPD_rready),
    .M_AXI_LPD_awqos(M_AXI_LPD_awqos),
    .M_AXI_LPD_arqos(M_AXI_LPD_arqos),
    .M_AXI_LPD_wdata(M_AXI_LPD_wdata),
    .M_AXI_LPD_wstrb(M_AXI_LPD_wstrb),
    .M_AXI_LPD_rdata(M_AXI_LPD_rdata),
    .FPD_CCI_NOC_0_awid(FPD_CCI_NOC_0_awid),
    .FPD_CCI_NOC_0_awaddr(FPD_CCI_NOC_0_awaddr),
    .FPD_CCI_NOC_0_awlen(FPD_CCI_NOC_0_awlen),
    .FPD_CCI_NOC_0_awsize(FPD_CCI_NOC_0_awsize),
    .FPD_CCI_NOC_0_awburst(FPD_CCI_NOC_0_awburst),
    .FPD_CCI_NOC_0_awlock(FPD_CCI_NOC_0_awlock),
    .FPD_CCI_NOC_0_awcache(FPD_CCI_NOC_0_awcache),
    .FPD_CCI_NOC_0_awprot(FPD_CCI_NOC_0_awprot),
    .FPD_CCI_NOC_0_awvalid(FPD_CCI_NOC_0_awvalid),
    .FPD_CCI_NOC_0_awuser(FPD_CCI_NOC_0_awuser),
    .FPD_CCI_NOC_0_awready(FPD_CCI_NOC_0_awready),
    .FPD_CCI_NOC_0_wdata(FPD_CCI_NOC_0_wdata),
    .FPD_CCI_NOC_0_wstrb(FPD_CCI_NOC_0_wstrb),
    .FPD_CCI_NOC_0_wuser(FPD_CCI_NOC_0_wuser),
    .FPD_CCI_NOC_0_wlast(FPD_CCI_NOC_0_wlast),
    .FPD_CCI_NOC_0_wvalid(FPD_CCI_NOC_0_wvalid),
    .FPD_CCI_NOC_0_wready(FPD_CCI_NOC_0_wready),
    .FPD_CCI_NOC_0_bid(FPD_CCI_NOC_0_bid),
    .FPD_CCI_NOC_0_bresp(FPD_CCI_NOC_0_bresp),
    .FPD_CCI_NOC_0_bvalid(FPD_CCI_NOC_0_bvalid),
    .FPD_CCI_NOC_0_bready(FPD_CCI_NOC_0_bready),
    .FPD_CCI_NOC_0_arid(FPD_CCI_NOC_0_arid),
    .FPD_CCI_NOC_0_araddr(FPD_CCI_NOC_0_araddr),
    .FPD_CCI_NOC_0_arlen(FPD_CCI_NOC_0_arlen),
    .FPD_CCI_NOC_0_arsize(FPD_CCI_NOC_0_arsize),
    .FPD_CCI_NOC_0_arburst(FPD_CCI_NOC_0_arburst),
    .FPD_CCI_NOC_0_arlock(FPD_CCI_NOC_0_arlock),
    .FPD_CCI_NOC_0_arcache(FPD_CCI_NOC_0_arcache),
    .FPD_CCI_NOC_0_arprot(FPD_CCI_NOC_0_arprot),
    .FPD_CCI_NOC_0_arvalid(FPD_CCI_NOC_0_arvalid),
    .FPD_CCI_NOC_0_aruser(FPD_CCI_NOC_0_aruser),
    .FPD_CCI_NOC_0_arready(FPD_CCI_NOC_0_arready),
    .FPD_CCI_NOC_0_rid(FPD_CCI_NOC_0_rid),
    .FPD_CCI_NOC_0_rdata(FPD_CCI_NOC_0_rdata),
    .FPD_CCI_NOC_0_rresp(FPD_CCI_NOC_0_rresp),
    .FPD_CCI_NOC_0_rlast(FPD_CCI_NOC_0_rlast),
    .FPD_CCI_NOC_0_rvalid(FPD_CCI_NOC_0_rvalid),
    .FPD_CCI_NOC_0_rready(FPD_CCI_NOC_0_rready),
    .FPD_CCI_NOC_0_awqos(FPD_CCI_NOC_0_awqos),
    .FPD_CCI_NOC_0_arqos(FPD_CCI_NOC_0_arqos),
    .FPD_CCI_NOC_1_awid(FPD_CCI_NOC_1_awid),
    .FPD_CCI_NOC_1_awaddr(FPD_CCI_NOC_1_awaddr),
    .FPD_CCI_NOC_1_awlen(FPD_CCI_NOC_1_awlen),
    .FPD_CCI_NOC_1_awsize(FPD_CCI_NOC_1_awsize),
    .FPD_CCI_NOC_1_awburst(FPD_CCI_NOC_1_awburst),
    .FPD_CCI_NOC_1_awlock(FPD_CCI_NOC_1_awlock),
    .FPD_CCI_NOC_1_awcache(FPD_CCI_NOC_1_awcache),
    .FPD_CCI_NOC_1_awprot(FPD_CCI_NOC_1_awprot),
    .FPD_CCI_NOC_1_awvalid(FPD_CCI_NOC_1_awvalid),
    .FPD_CCI_NOC_1_awuser(FPD_CCI_NOC_1_awuser),
    .FPD_CCI_NOC_1_awready(FPD_CCI_NOC_1_awready),
    .FPD_CCI_NOC_1_wdata(FPD_CCI_NOC_1_wdata),
    .FPD_CCI_NOC_1_wstrb(FPD_CCI_NOC_1_wstrb),
    .FPD_CCI_NOC_1_wuser(FPD_CCI_NOC_1_wuser),
    .FPD_CCI_NOC_1_wlast(FPD_CCI_NOC_1_wlast),
    .FPD_CCI_NOC_1_wvalid(FPD_CCI_NOC_1_wvalid),
    .FPD_CCI_NOC_1_wready(FPD_CCI_NOC_1_wready),
    .FPD_CCI_NOC_1_bid(FPD_CCI_NOC_1_bid),
    .FPD_CCI_NOC_1_bresp(FPD_CCI_NOC_1_bresp),
    .FPD_CCI_NOC_1_bvalid(FPD_CCI_NOC_1_bvalid),
    .FPD_CCI_NOC_1_bready(FPD_CCI_NOC_1_bready),
    .FPD_CCI_NOC_1_arid(FPD_CCI_NOC_1_arid),
    .FPD_CCI_NOC_1_araddr(FPD_CCI_NOC_1_araddr),
    .FPD_CCI_NOC_1_arlen(FPD_CCI_NOC_1_arlen),
    .FPD_CCI_NOC_1_arsize(FPD_CCI_NOC_1_arsize),
    .FPD_CCI_NOC_1_arburst(FPD_CCI_NOC_1_arburst),
    .FPD_CCI_NOC_1_arlock(FPD_CCI_NOC_1_arlock),
    .FPD_CCI_NOC_1_arcache(FPD_CCI_NOC_1_arcache),
    .FPD_CCI_NOC_1_arprot(FPD_CCI_NOC_1_arprot),
    .FPD_CCI_NOC_1_arvalid(FPD_CCI_NOC_1_arvalid),
    .FPD_CCI_NOC_1_aruser(FPD_CCI_NOC_1_aruser),
    .FPD_CCI_NOC_1_arready(FPD_CCI_NOC_1_arready),
    .FPD_CCI_NOC_1_rid(FPD_CCI_NOC_1_rid),
    .FPD_CCI_NOC_1_rdata(FPD_CCI_NOC_1_rdata),
    .FPD_CCI_NOC_1_rresp(FPD_CCI_NOC_1_rresp),
    .FPD_CCI_NOC_1_rlast(FPD_CCI_NOC_1_rlast),
    .FPD_CCI_NOC_1_rvalid(FPD_CCI_NOC_1_rvalid),
    .FPD_CCI_NOC_1_rready(FPD_CCI_NOC_1_rready),
    .FPD_CCI_NOC_1_awqos(FPD_CCI_NOC_1_awqos),
    .FPD_CCI_NOC_1_arqos(FPD_CCI_NOC_1_arqos),
    .FPD_CCI_NOC_2_awid(FPD_CCI_NOC_2_awid),
    .FPD_CCI_NOC_2_awaddr(FPD_CCI_NOC_2_awaddr),
    .FPD_CCI_NOC_2_awlen(FPD_CCI_NOC_2_awlen),
    .FPD_CCI_NOC_2_awsize(FPD_CCI_NOC_2_awsize),
    .FPD_CCI_NOC_2_awburst(FPD_CCI_NOC_2_awburst),
    .FPD_CCI_NOC_2_awlock(FPD_CCI_NOC_2_awlock),
    .FPD_CCI_NOC_2_awcache(FPD_CCI_NOC_2_awcache),
    .FPD_CCI_NOC_2_awprot(FPD_CCI_NOC_2_awprot),
    .FPD_CCI_NOC_2_awvalid(FPD_CCI_NOC_2_awvalid),
    .FPD_CCI_NOC_2_awuser(FPD_CCI_NOC_2_awuser),
    .FPD_CCI_NOC_2_awready(FPD_CCI_NOC_2_awready),
    .FPD_CCI_NOC_2_wdata(FPD_CCI_NOC_2_wdata),
    .FPD_CCI_NOC_2_wstrb(FPD_CCI_NOC_2_wstrb),
    .FPD_CCI_NOC_2_wuser(FPD_CCI_NOC_2_wuser),
    .FPD_CCI_NOC_2_wlast(FPD_CCI_NOC_2_wlast),
    .FPD_CCI_NOC_2_wvalid(FPD_CCI_NOC_2_wvalid),
    .FPD_CCI_NOC_2_wready(FPD_CCI_NOC_2_wready),
    .FPD_CCI_NOC_2_bid(FPD_CCI_NOC_2_bid),
    .FPD_CCI_NOC_2_bresp(FPD_CCI_NOC_2_bresp),
    .FPD_CCI_NOC_2_bvalid(FPD_CCI_NOC_2_bvalid),
    .FPD_CCI_NOC_2_bready(FPD_CCI_NOC_2_bready),
    .FPD_CCI_NOC_2_arid(FPD_CCI_NOC_2_arid),
    .FPD_CCI_NOC_2_araddr(FPD_CCI_NOC_2_araddr),
    .FPD_CCI_NOC_2_arlen(FPD_CCI_NOC_2_arlen),
    .FPD_CCI_NOC_2_arsize(FPD_CCI_NOC_2_arsize),
    .FPD_CCI_NOC_2_arburst(FPD_CCI_NOC_2_arburst),
    .FPD_CCI_NOC_2_arlock(FPD_CCI_NOC_2_arlock),
    .FPD_CCI_NOC_2_arcache(FPD_CCI_NOC_2_arcache),
    .FPD_CCI_NOC_2_arprot(FPD_CCI_NOC_2_arprot),
    .FPD_CCI_NOC_2_arvalid(FPD_CCI_NOC_2_arvalid),
    .FPD_CCI_NOC_2_aruser(FPD_CCI_NOC_2_aruser),
    .FPD_CCI_NOC_2_arready(FPD_CCI_NOC_2_arready),
    .FPD_CCI_NOC_2_rid(FPD_CCI_NOC_2_rid),
    .FPD_CCI_NOC_2_rdata(FPD_CCI_NOC_2_rdata),
    .FPD_CCI_NOC_2_rresp(FPD_CCI_NOC_2_rresp),
    .FPD_CCI_NOC_2_rlast(FPD_CCI_NOC_2_rlast),
    .FPD_CCI_NOC_2_rvalid(FPD_CCI_NOC_2_rvalid),
    .FPD_CCI_NOC_2_rready(FPD_CCI_NOC_2_rready),
    .FPD_CCI_NOC_2_awqos(FPD_CCI_NOC_2_awqos),
    .FPD_CCI_NOC_2_arqos(FPD_CCI_NOC_2_arqos),
    .FPD_CCI_NOC_3_awid(FPD_CCI_NOC_3_awid),
    .FPD_CCI_NOC_3_awaddr(FPD_CCI_NOC_3_awaddr),
    .FPD_CCI_NOC_3_awlen(FPD_CCI_NOC_3_awlen),
    .FPD_CCI_NOC_3_awsize(FPD_CCI_NOC_3_awsize),
    .FPD_CCI_NOC_3_awburst(FPD_CCI_NOC_3_awburst),
    .FPD_CCI_NOC_3_awlock(FPD_CCI_NOC_3_awlock),
    .FPD_CCI_NOC_3_awcache(FPD_CCI_NOC_3_awcache),
    .FPD_CCI_NOC_3_awprot(FPD_CCI_NOC_3_awprot),
    .FPD_CCI_NOC_3_awvalid(FPD_CCI_NOC_3_awvalid),
    .FPD_CCI_NOC_3_awuser(FPD_CCI_NOC_3_awuser),
    .FPD_CCI_NOC_3_awready(FPD_CCI_NOC_3_awready),
    .FPD_CCI_NOC_3_wdata(FPD_CCI_NOC_3_wdata),
    .FPD_CCI_NOC_3_wstrb(FPD_CCI_NOC_3_wstrb),
    .FPD_CCI_NOC_3_wuser(FPD_CCI_NOC_3_wuser),
    .FPD_CCI_NOC_3_wlast(FPD_CCI_NOC_3_wlast),
    .FPD_CCI_NOC_3_wvalid(FPD_CCI_NOC_3_wvalid),
    .FPD_CCI_NOC_3_wready(FPD_CCI_NOC_3_wready),
    .FPD_CCI_NOC_3_bid(FPD_CCI_NOC_3_bid),
    .FPD_CCI_NOC_3_bresp(FPD_CCI_NOC_3_bresp),
    .FPD_CCI_NOC_3_bvalid(FPD_CCI_NOC_3_bvalid),
    .FPD_CCI_NOC_3_bready(FPD_CCI_NOC_3_bready),
    .FPD_CCI_NOC_3_arid(FPD_CCI_NOC_3_arid),
    .FPD_CCI_NOC_3_araddr(FPD_CCI_NOC_3_araddr),
    .FPD_CCI_NOC_3_arlen(FPD_CCI_NOC_3_arlen),
    .FPD_CCI_NOC_3_arsize(FPD_CCI_NOC_3_arsize),
    .FPD_CCI_NOC_3_arburst(FPD_CCI_NOC_3_arburst),
    .FPD_CCI_NOC_3_arlock(FPD_CCI_NOC_3_arlock),
    .FPD_CCI_NOC_3_arcache(FPD_CCI_NOC_3_arcache),
    .FPD_CCI_NOC_3_arprot(FPD_CCI_NOC_3_arprot),
    .FPD_CCI_NOC_3_arvalid(FPD_CCI_NOC_3_arvalid),
    .FPD_CCI_NOC_3_aruser(FPD_CCI_NOC_3_aruser),
    .FPD_CCI_NOC_3_arready(FPD_CCI_NOC_3_arready),
    .FPD_CCI_NOC_3_rid(FPD_CCI_NOC_3_rid),
    .FPD_CCI_NOC_3_rdata(FPD_CCI_NOC_3_rdata),
    .FPD_CCI_NOC_3_rresp(FPD_CCI_NOC_3_rresp),
    .FPD_CCI_NOC_3_rlast(FPD_CCI_NOC_3_rlast),
    .FPD_CCI_NOC_3_rvalid(FPD_CCI_NOC_3_rvalid),
    .FPD_CCI_NOC_3_rready(FPD_CCI_NOC_3_rready),
    .FPD_CCI_NOC_3_awqos(FPD_CCI_NOC_3_awqos),
    .FPD_CCI_NOC_3_arqos(FPD_CCI_NOC_3_arqos)
  );
endmodule
