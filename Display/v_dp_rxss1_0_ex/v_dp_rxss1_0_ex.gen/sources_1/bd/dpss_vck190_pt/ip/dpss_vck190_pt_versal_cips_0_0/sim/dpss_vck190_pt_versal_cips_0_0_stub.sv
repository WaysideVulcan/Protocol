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


//------------------------------------------------------------------------------------
// Filename:    dpss_vck190_pt_versal_cips_0_0_stub.sv
// Description: This HDL file is intended to be used with following simulators only:
//
//   Vivado Simulator (XSim)
//   Cadence Xcelium Simulator
//
//------------------------------------------------------------------------------------
`timescale 1ps/1ps

`ifdef XILINX_SIMULATOR

`ifndef XILINX_SIMULATOR_BITASBOOL
`define XILINX_SIMULATOR_BITASBOOL
typedef bit bit_as_bool;
`endif

(* SC_MODULE_EXPORT *)
module dpss_vck190_pt_versal_cips_0_0 (
  output bit_as_bool pl0_ref_clk,
  output bit_as_bool pl1_ref_clk,
  output bit_as_bool pl0_resetn,
  input bit_as_bool m_axi_fpd_aclk,
  input bit_as_bool m_axi_lpd_aclk,
  output bit_as_bool fpd_cci_noc_axi0_clk,
  output bit_as_bool fpd_cci_noc_axi1_clk,
  output bit_as_bool fpd_cci_noc_axi2_clk,
  output bit_as_bool fpd_cci_noc_axi3_clk,
  input bit_as_bool pl_ps_irq0,
  input bit_as_bool pl_ps_irq1,
  input bit_as_bool pl_ps_irq2,
  input bit_as_bool pl_ps_irq3,
  input bit_as_bool pl_ps_irq4,
  input bit_as_bool pl_ps_irq5,
  output bit [15 : 0] M_AXI_FPD_awid,
  output bit [43 : 0] M_AXI_FPD_awaddr,
  output bit [7 : 0] M_AXI_FPD_awlen,
  output bit [2 : 0] M_AXI_FPD_awsize,
  output bit [1 : 0] M_AXI_FPD_awburst,
  output bit_as_bool M_AXI_FPD_awlock,
  output bit [3 : 0] M_AXI_FPD_awcache,
  output bit [2 : 0] M_AXI_FPD_awprot,
  output bit_as_bool M_AXI_FPD_awvalid,
  output bit [15 : 0] M_AXI_FPD_awuser,
  input bit_as_bool M_AXI_FPD_awready,
  output bit_as_bool M_AXI_FPD_wlast,
  output bit_as_bool M_AXI_FPD_wvalid,
  input bit_as_bool M_AXI_FPD_wready,
  input bit [15 : 0] M_AXI_FPD_bid,
  input bit [1 : 0] M_AXI_FPD_bresp,
  input bit_as_bool M_AXI_FPD_bvalid,
  output bit_as_bool M_AXI_FPD_bready,
  output bit [15 : 0] M_AXI_FPD_arid,
  output bit [43 : 0] M_AXI_FPD_araddr,
  output bit [7 : 0] M_AXI_FPD_arlen,
  output bit [2 : 0] M_AXI_FPD_arsize,
  output bit [1 : 0] M_AXI_FPD_arburst,
  output bit_as_bool M_AXI_FPD_arlock,
  output bit [3 : 0] M_AXI_FPD_arcache,
  output bit [2 : 0] M_AXI_FPD_arprot,
  output bit_as_bool M_AXI_FPD_arvalid,
  output bit [15 : 0] M_AXI_FPD_aruser,
  input bit_as_bool M_AXI_FPD_arready,
  input bit [15 : 0] M_AXI_FPD_rid,
  input bit [1 : 0] M_AXI_FPD_rresp,
  input bit_as_bool M_AXI_FPD_rlast,
  input bit_as_bool M_AXI_FPD_rvalid,
  output bit_as_bool M_AXI_FPD_rready,
  output bit [3 : 0] M_AXI_FPD_awqos,
  output bit [3 : 0] M_AXI_FPD_arqos,
  output bit [127 : 0] M_AXI_FPD_wdata,
  output bit [15 : 0] M_AXI_FPD_wstrb,
  input bit [127 : 0] M_AXI_FPD_rdata,
  output bit [15 : 0] M_AXI_LPD_awid,
  output bit [43 : 0] M_AXI_LPD_awaddr,
  output bit [7 : 0] M_AXI_LPD_awlen,
  output bit [2 : 0] M_AXI_LPD_awsize,
  output bit [1 : 0] M_AXI_LPD_awburst,
  output bit_as_bool M_AXI_LPD_awlock,
  output bit [3 : 0] M_AXI_LPD_awcache,
  output bit [2 : 0] M_AXI_LPD_awprot,
  output bit_as_bool M_AXI_LPD_awvalid,
  output bit [15 : 0] M_AXI_LPD_awuser,
  input bit_as_bool M_AXI_LPD_awready,
  output bit_as_bool M_AXI_LPD_wlast,
  output bit_as_bool M_AXI_LPD_wvalid,
  input bit_as_bool M_AXI_LPD_wready,
  input bit [15 : 0] M_AXI_LPD_bid,
  input bit [1 : 0] M_AXI_LPD_bresp,
  input bit_as_bool M_AXI_LPD_bvalid,
  output bit_as_bool M_AXI_LPD_bready,
  output bit [15 : 0] M_AXI_LPD_arid,
  output bit [43 : 0] M_AXI_LPD_araddr,
  output bit [7 : 0] M_AXI_LPD_arlen,
  output bit [2 : 0] M_AXI_LPD_arsize,
  output bit [1 : 0] M_AXI_LPD_arburst,
  output bit_as_bool M_AXI_LPD_arlock,
  output bit [3 : 0] M_AXI_LPD_arcache,
  output bit [2 : 0] M_AXI_LPD_arprot,
  output bit_as_bool M_AXI_LPD_arvalid,
  output bit [15 : 0] M_AXI_LPD_aruser,
  input bit_as_bool M_AXI_LPD_arready,
  input bit [15 : 0] M_AXI_LPD_rid,
  input bit [1 : 0] M_AXI_LPD_rresp,
  input bit_as_bool M_AXI_LPD_rlast,
  input bit_as_bool M_AXI_LPD_rvalid,
  output bit_as_bool M_AXI_LPD_rready,
  output bit [3 : 0] M_AXI_LPD_awqos,
  output bit [3 : 0] M_AXI_LPD_arqos,
  output bit [127 : 0] M_AXI_LPD_wdata,
  output bit [15 : 0] M_AXI_LPD_wstrb,
  input bit [127 : 0] M_AXI_LPD_rdata,
  output bit [15 : 0] FPD_CCI_NOC_0_awid,
  output bit [63 : 0] FPD_CCI_NOC_0_awaddr,
  output bit [7 : 0] FPD_CCI_NOC_0_awlen,
  output bit [2 : 0] FPD_CCI_NOC_0_awsize,
  output bit [1 : 0] FPD_CCI_NOC_0_awburst,
  output bit_as_bool FPD_CCI_NOC_0_awlock,
  output bit [3 : 0] FPD_CCI_NOC_0_awcache,
  output bit [2 : 0] FPD_CCI_NOC_0_awprot,
  output bit_as_bool FPD_CCI_NOC_0_awvalid,
  output bit [17 : 0] FPD_CCI_NOC_0_awuser,
  input bit_as_bool FPD_CCI_NOC_0_awready,
  output bit [127 : 0] FPD_CCI_NOC_0_wdata,
  output bit [15 : 0] FPD_CCI_NOC_0_wstrb,
  output bit [16 : 0] FPD_CCI_NOC_0_wuser,
  output bit_as_bool FPD_CCI_NOC_0_wlast,
  output bit_as_bool FPD_CCI_NOC_0_wvalid,
  input bit_as_bool FPD_CCI_NOC_0_wready,
  input bit [15 : 0] FPD_CCI_NOC_0_bid,
  input bit [1 : 0] FPD_CCI_NOC_0_bresp,
  input bit_as_bool FPD_CCI_NOC_0_bvalid,
  output bit_as_bool FPD_CCI_NOC_0_bready,
  output bit [15 : 0] FPD_CCI_NOC_0_arid,
  output bit [63 : 0] FPD_CCI_NOC_0_araddr,
  output bit [7 : 0] FPD_CCI_NOC_0_arlen,
  output bit [2 : 0] FPD_CCI_NOC_0_arsize,
  output bit [1 : 0] FPD_CCI_NOC_0_arburst,
  output bit_as_bool FPD_CCI_NOC_0_arlock,
  output bit [3 : 0] FPD_CCI_NOC_0_arcache,
  output bit [2 : 0] FPD_CCI_NOC_0_arprot,
  output bit_as_bool FPD_CCI_NOC_0_arvalid,
  output bit [17 : 0] FPD_CCI_NOC_0_aruser,
  input bit_as_bool FPD_CCI_NOC_0_arready,
  input bit [15 : 0] FPD_CCI_NOC_0_rid,
  input bit [127 : 0] FPD_CCI_NOC_0_rdata,
  input bit [1 : 0] FPD_CCI_NOC_0_rresp,
  input bit_as_bool FPD_CCI_NOC_0_rlast,
  input bit_as_bool FPD_CCI_NOC_0_rvalid,
  output bit_as_bool FPD_CCI_NOC_0_rready,
  output bit [3 : 0] FPD_CCI_NOC_0_awqos,
  output bit [3 : 0] FPD_CCI_NOC_0_arqos,
  output bit [15 : 0] FPD_CCI_NOC_1_awid,
  output bit [63 : 0] FPD_CCI_NOC_1_awaddr,
  output bit [7 : 0] FPD_CCI_NOC_1_awlen,
  output bit [2 : 0] FPD_CCI_NOC_1_awsize,
  output bit [1 : 0] FPD_CCI_NOC_1_awburst,
  output bit_as_bool FPD_CCI_NOC_1_awlock,
  output bit [3 : 0] FPD_CCI_NOC_1_awcache,
  output bit [2 : 0] FPD_CCI_NOC_1_awprot,
  output bit_as_bool FPD_CCI_NOC_1_awvalid,
  output bit [17 : 0] FPD_CCI_NOC_1_awuser,
  input bit_as_bool FPD_CCI_NOC_1_awready,
  output bit [127 : 0] FPD_CCI_NOC_1_wdata,
  output bit [15 : 0] FPD_CCI_NOC_1_wstrb,
  output bit [16 : 0] FPD_CCI_NOC_1_wuser,
  output bit_as_bool FPD_CCI_NOC_1_wlast,
  output bit_as_bool FPD_CCI_NOC_1_wvalid,
  input bit_as_bool FPD_CCI_NOC_1_wready,
  input bit [15 : 0] FPD_CCI_NOC_1_bid,
  input bit [1 : 0] FPD_CCI_NOC_1_bresp,
  input bit_as_bool FPD_CCI_NOC_1_bvalid,
  output bit_as_bool FPD_CCI_NOC_1_bready,
  output bit [15 : 0] FPD_CCI_NOC_1_arid,
  output bit [63 : 0] FPD_CCI_NOC_1_araddr,
  output bit [7 : 0] FPD_CCI_NOC_1_arlen,
  output bit [2 : 0] FPD_CCI_NOC_1_arsize,
  output bit [1 : 0] FPD_CCI_NOC_1_arburst,
  output bit_as_bool FPD_CCI_NOC_1_arlock,
  output bit [3 : 0] FPD_CCI_NOC_1_arcache,
  output bit [2 : 0] FPD_CCI_NOC_1_arprot,
  output bit_as_bool FPD_CCI_NOC_1_arvalid,
  output bit [17 : 0] FPD_CCI_NOC_1_aruser,
  input bit_as_bool FPD_CCI_NOC_1_arready,
  input bit [15 : 0] FPD_CCI_NOC_1_rid,
  input bit [127 : 0] FPD_CCI_NOC_1_rdata,
  input bit [1 : 0] FPD_CCI_NOC_1_rresp,
  input bit_as_bool FPD_CCI_NOC_1_rlast,
  input bit_as_bool FPD_CCI_NOC_1_rvalid,
  output bit_as_bool FPD_CCI_NOC_1_rready,
  output bit [3 : 0] FPD_CCI_NOC_1_awqos,
  output bit [3 : 0] FPD_CCI_NOC_1_arqos,
  output bit [15 : 0] FPD_CCI_NOC_2_awid,
  output bit [63 : 0] FPD_CCI_NOC_2_awaddr,
  output bit [7 : 0] FPD_CCI_NOC_2_awlen,
  output bit [2 : 0] FPD_CCI_NOC_2_awsize,
  output bit [1 : 0] FPD_CCI_NOC_2_awburst,
  output bit_as_bool FPD_CCI_NOC_2_awlock,
  output bit [3 : 0] FPD_CCI_NOC_2_awcache,
  output bit [2 : 0] FPD_CCI_NOC_2_awprot,
  output bit_as_bool FPD_CCI_NOC_2_awvalid,
  output bit [17 : 0] FPD_CCI_NOC_2_awuser,
  input bit_as_bool FPD_CCI_NOC_2_awready,
  output bit [127 : 0] FPD_CCI_NOC_2_wdata,
  output bit [15 : 0] FPD_CCI_NOC_2_wstrb,
  output bit [16 : 0] FPD_CCI_NOC_2_wuser,
  output bit_as_bool FPD_CCI_NOC_2_wlast,
  output bit_as_bool FPD_CCI_NOC_2_wvalid,
  input bit_as_bool FPD_CCI_NOC_2_wready,
  input bit [15 : 0] FPD_CCI_NOC_2_bid,
  input bit [1 : 0] FPD_CCI_NOC_2_bresp,
  input bit_as_bool FPD_CCI_NOC_2_bvalid,
  output bit_as_bool FPD_CCI_NOC_2_bready,
  output bit [15 : 0] FPD_CCI_NOC_2_arid,
  output bit [63 : 0] FPD_CCI_NOC_2_araddr,
  output bit [7 : 0] FPD_CCI_NOC_2_arlen,
  output bit [2 : 0] FPD_CCI_NOC_2_arsize,
  output bit [1 : 0] FPD_CCI_NOC_2_arburst,
  output bit_as_bool FPD_CCI_NOC_2_arlock,
  output bit [3 : 0] FPD_CCI_NOC_2_arcache,
  output bit [2 : 0] FPD_CCI_NOC_2_arprot,
  output bit_as_bool FPD_CCI_NOC_2_arvalid,
  output bit [17 : 0] FPD_CCI_NOC_2_aruser,
  input bit_as_bool FPD_CCI_NOC_2_arready,
  input bit [15 : 0] FPD_CCI_NOC_2_rid,
  input bit [127 : 0] FPD_CCI_NOC_2_rdata,
  input bit [1 : 0] FPD_CCI_NOC_2_rresp,
  input bit_as_bool FPD_CCI_NOC_2_rlast,
  input bit_as_bool FPD_CCI_NOC_2_rvalid,
  output bit_as_bool FPD_CCI_NOC_2_rready,
  output bit [3 : 0] FPD_CCI_NOC_2_awqos,
  output bit [3 : 0] FPD_CCI_NOC_2_arqos,
  output bit [15 : 0] FPD_CCI_NOC_3_awid,
  output bit [63 : 0] FPD_CCI_NOC_3_awaddr,
  output bit [7 : 0] FPD_CCI_NOC_3_awlen,
  output bit [2 : 0] FPD_CCI_NOC_3_awsize,
  output bit [1 : 0] FPD_CCI_NOC_3_awburst,
  output bit_as_bool FPD_CCI_NOC_3_awlock,
  output bit [3 : 0] FPD_CCI_NOC_3_awcache,
  output bit [2 : 0] FPD_CCI_NOC_3_awprot,
  output bit_as_bool FPD_CCI_NOC_3_awvalid,
  output bit [17 : 0] FPD_CCI_NOC_3_awuser,
  input bit_as_bool FPD_CCI_NOC_3_awready,
  output bit [127 : 0] FPD_CCI_NOC_3_wdata,
  output bit [15 : 0] FPD_CCI_NOC_3_wstrb,
  output bit [16 : 0] FPD_CCI_NOC_3_wuser,
  output bit_as_bool FPD_CCI_NOC_3_wlast,
  output bit_as_bool FPD_CCI_NOC_3_wvalid,
  input bit_as_bool FPD_CCI_NOC_3_wready,
  input bit [15 : 0] FPD_CCI_NOC_3_bid,
  input bit [1 : 0] FPD_CCI_NOC_3_bresp,
  input bit_as_bool FPD_CCI_NOC_3_bvalid,
  output bit_as_bool FPD_CCI_NOC_3_bready,
  output bit [15 : 0] FPD_CCI_NOC_3_arid,
  output bit [63 : 0] FPD_CCI_NOC_3_araddr,
  output bit [7 : 0] FPD_CCI_NOC_3_arlen,
  output bit [2 : 0] FPD_CCI_NOC_3_arsize,
  output bit [1 : 0] FPD_CCI_NOC_3_arburst,
  output bit_as_bool FPD_CCI_NOC_3_arlock,
  output bit [3 : 0] FPD_CCI_NOC_3_arcache,
  output bit [2 : 0] FPD_CCI_NOC_3_arprot,
  output bit_as_bool FPD_CCI_NOC_3_arvalid,
  output bit [17 : 0] FPD_CCI_NOC_3_aruser,
  input bit_as_bool FPD_CCI_NOC_3_arready,
  input bit [15 : 0] FPD_CCI_NOC_3_rid,
  input bit [127 : 0] FPD_CCI_NOC_3_rdata,
  input bit [1 : 0] FPD_CCI_NOC_3_rresp,
  input bit_as_bool FPD_CCI_NOC_3_rlast,
  input bit_as_bool FPD_CCI_NOC_3_rvalid,
  output bit_as_bool FPD_CCI_NOC_3_rready,
  output bit [3 : 0] FPD_CCI_NOC_3_awqos,
  output bit [3 : 0] FPD_CCI_NOC_3_arqos
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module dpss_vck190_pt_versal_cips_0_0 (pl0_ref_clk,pl1_ref_clk,pl0_resetn,m_axi_fpd_aclk,m_axi_lpd_aclk,fpd_cci_noc_axi0_clk,fpd_cci_noc_axi1_clk,fpd_cci_noc_axi2_clk,fpd_cci_noc_axi3_clk,pl_ps_irq0,pl_ps_irq1,pl_ps_irq2,pl_ps_irq3,pl_ps_irq4,pl_ps_irq5,M_AXI_FPD_awid,M_AXI_FPD_awaddr,M_AXI_FPD_awlen,M_AXI_FPD_awsize,M_AXI_FPD_awburst,M_AXI_FPD_awlock,M_AXI_FPD_awcache,M_AXI_FPD_awprot,M_AXI_FPD_awvalid,M_AXI_FPD_awuser,M_AXI_FPD_awready,M_AXI_FPD_wlast,M_AXI_FPD_wvalid,M_AXI_FPD_wready,M_AXI_FPD_bid,M_AXI_FPD_bresp,M_AXI_FPD_bvalid,M_AXI_FPD_bready,M_AXI_FPD_arid,M_AXI_FPD_araddr,M_AXI_FPD_arlen,M_AXI_FPD_arsize,M_AXI_FPD_arburst,M_AXI_FPD_arlock,M_AXI_FPD_arcache,M_AXI_FPD_arprot,M_AXI_FPD_arvalid,M_AXI_FPD_aruser,M_AXI_FPD_arready,M_AXI_FPD_rid,M_AXI_FPD_rresp,M_AXI_FPD_rlast,M_AXI_FPD_rvalid,M_AXI_FPD_rready,M_AXI_FPD_awqos,M_AXI_FPD_arqos,M_AXI_FPD_wdata,M_AXI_FPD_wstrb,M_AXI_FPD_rdata,M_AXI_LPD_awid,M_AXI_LPD_awaddr,M_AXI_LPD_awlen,M_AXI_LPD_awsize,M_AXI_LPD_awburst,M_AXI_LPD_awlock,M_AXI_LPD_awcache,M_AXI_LPD_awprot,M_AXI_LPD_awvalid,M_AXI_LPD_awuser,M_AXI_LPD_awready,M_AXI_LPD_wlast,M_AXI_LPD_wvalid,M_AXI_LPD_wready,M_AXI_LPD_bid,M_AXI_LPD_bresp,M_AXI_LPD_bvalid,M_AXI_LPD_bready,M_AXI_LPD_arid,M_AXI_LPD_araddr,M_AXI_LPD_arlen,M_AXI_LPD_arsize,M_AXI_LPD_arburst,M_AXI_LPD_arlock,M_AXI_LPD_arcache,M_AXI_LPD_arprot,M_AXI_LPD_arvalid,M_AXI_LPD_aruser,M_AXI_LPD_arready,M_AXI_LPD_rid,M_AXI_LPD_rresp,M_AXI_LPD_rlast,M_AXI_LPD_rvalid,M_AXI_LPD_rready,M_AXI_LPD_awqos,M_AXI_LPD_arqos,M_AXI_LPD_wdata,M_AXI_LPD_wstrb,M_AXI_LPD_rdata,FPD_CCI_NOC_0_awid,FPD_CCI_NOC_0_awaddr,FPD_CCI_NOC_0_awlen,FPD_CCI_NOC_0_awsize,FPD_CCI_NOC_0_awburst,FPD_CCI_NOC_0_awlock,FPD_CCI_NOC_0_awcache,FPD_CCI_NOC_0_awprot,FPD_CCI_NOC_0_awvalid,FPD_CCI_NOC_0_awuser,FPD_CCI_NOC_0_awready,FPD_CCI_NOC_0_wdata,FPD_CCI_NOC_0_wstrb,FPD_CCI_NOC_0_wuser,FPD_CCI_NOC_0_wlast,FPD_CCI_NOC_0_wvalid,FPD_CCI_NOC_0_wready,FPD_CCI_NOC_0_bid,FPD_CCI_NOC_0_bresp,FPD_CCI_NOC_0_bvalid,FPD_CCI_NOC_0_bready,FPD_CCI_NOC_0_arid,FPD_CCI_NOC_0_araddr,FPD_CCI_NOC_0_arlen,FPD_CCI_NOC_0_arsize,FPD_CCI_NOC_0_arburst,FPD_CCI_NOC_0_arlock,FPD_CCI_NOC_0_arcache,FPD_CCI_NOC_0_arprot,FPD_CCI_NOC_0_arvalid,FPD_CCI_NOC_0_aruser,FPD_CCI_NOC_0_arready,FPD_CCI_NOC_0_rid,FPD_CCI_NOC_0_rdata,FPD_CCI_NOC_0_rresp,FPD_CCI_NOC_0_rlast,FPD_CCI_NOC_0_rvalid,FPD_CCI_NOC_0_rready,FPD_CCI_NOC_0_awqos,FPD_CCI_NOC_0_arqos,FPD_CCI_NOC_1_awid,FPD_CCI_NOC_1_awaddr,FPD_CCI_NOC_1_awlen,FPD_CCI_NOC_1_awsize,FPD_CCI_NOC_1_awburst,FPD_CCI_NOC_1_awlock,FPD_CCI_NOC_1_awcache,FPD_CCI_NOC_1_awprot,FPD_CCI_NOC_1_awvalid,FPD_CCI_NOC_1_awuser,FPD_CCI_NOC_1_awready,FPD_CCI_NOC_1_wdata,FPD_CCI_NOC_1_wstrb,FPD_CCI_NOC_1_wuser,FPD_CCI_NOC_1_wlast,FPD_CCI_NOC_1_wvalid,FPD_CCI_NOC_1_wready,FPD_CCI_NOC_1_bid,FPD_CCI_NOC_1_bresp,FPD_CCI_NOC_1_bvalid,FPD_CCI_NOC_1_bready,FPD_CCI_NOC_1_arid,FPD_CCI_NOC_1_araddr,FPD_CCI_NOC_1_arlen,FPD_CCI_NOC_1_arsize,FPD_CCI_NOC_1_arburst,FPD_CCI_NOC_1_arlock,FPD_CCI_NOC_1_arcache,FPD_CCI_NOC_1_arprot,FPD_CCI_NOC_1_arvalid,FPD_CCI_NOC_1_aruser,FPD_CCI_NOC_1_arready,FPD_CCI_NOC_1_rid,FPD_CCI_NOC_1_rdata,FPD_CCI_NOC_1_rresp,FPD_CCI_NOC_1_rlast,FPD_CCI_NOC_1_rvalid,FPD_CCI_NOC_1_rready,FPD_CCI_NOC_1_awqos,FPD_CCI_NOC_1_arqos,FPD_CCI_NOC_2_awid,FPD_CCI_NOC_2_awaddr,FPD_CCI_NOC_2_awlen,FPD_CCI_NOC_2_awsize,FPD_CCI_NOC_2_awburst,FPD_CCI_NOC_2_awlock,FPD_CCI_NOC_2_awcache,FPD_CCI_NOC_2_awprot,FPD_CCI_NOC_2_awvalid,FPD_CCI_NOC_2_awuser,FPD_CCI_NOC_2_awready,FPD_CCI_NOC_2_wdata,FPD_CCI_NOC_2_wstrb,FPD_CCI_NOC_2_wuser,FPD_CCI_NOC_2_wlast,FPD_CCI_NOC_2_wvalid,FPD_CCI_NOC_2_wready,FPD_CCI_NOC_2_bid,FPD_CCI_NOC_2_bresp,FPD_CCI_NOC_2_bvalid,FPD_CCI_NOC_2_bready,FPD_CCI_NOC_2_arid,FPD_CCI_NOC_2_araddr,FPD_CCI_NOC_2_arlen,FPD_CCI_NOC_2_arsize,FPD_CCI_NOC_2_arburst,FPD_CCI_NOC_2_arlock,FPD_CCI_NOC_2_arcache,FPD_CCI_NOC_2_arprot,FPD_CCI_NOC_2_arvalid,FPD_CCI_NOC_2_aruser,FPD_CCI_NOC_2_arready,FPD_CCI_NOC_2_rid,FPD_CCI_NOC_2_rdata,FPD_CCI_NOC_2_rresp,FPD_CCI_NOC_2_rlast,FPD_CCI_NOC_2_rvalid,FPD_CCI_NOC_2_rready,FPD_CCI_NOC_2_awqos,FPD_CCI_NOC_2_arqos,FPD_CCI_NOC_3_awid,FPD_CCI_NOC_3_awaddr,FPD_CCI_NOC_3_awlen,FPD_CCI_NOC_3_awsize,FPD_CCI_NOC_3_awburst,FPD_CCI_NOC_3_awlock,FPD_CCI_NOC_3_awcache,FPD_CCI_NOC_3_awprot,FPD_CCI_NOC_3_awvalid,FPD_CCI_NOC_3_awuser,FPD_CCI_NOC_3_awready,FPD_CCI_NOC_3_wdata,FPD_CCI_NOC_3_wstrb,FPD_CCI_NOC_3_wuser,FPD_CCI_NOC_3_wlast,FPD_CCI_NOC_3_wvalid,FPD_CCI_NOC_3_wready,FPD_CCI_NOC_3_bid,FPD_CCI_NOC_3_bresp,FPD_CCI_NOC_3_bvalid,FPD_CCI_NOC_3_bready,FPD_CCI_NOC_3_arid,FPD_CCI_NOC_3_araddr,FPD_CCI_NOC_3_arlen,FPD_CCI_NOC_3_arsize,FPD_CCI_NOC_3_arburst,FPD_CCI_NOC_3_arlock,FPD_CCI_NOC_3_arcache,FPD_CCI_NOC_3_arprot,FPD_CCI_NOC_3_arvalid,FPD_CCI_NOC_3_aruser,FPD_CCI_NOC_3_arready,FPD_CCI_NOC_3_rid,FPD_CCI_NOC_3_rdata,FPD_CCI_NOC_3_rresp,FPD_CCI_NOC_3_rlast,FPD_CCI_NOC_3_rvalid,FPD_CCI_NOC_3_rready,FPD_CCI_NOC_3_awqos,FPD_CCI_NOC_3_arqos)
(* integer foreign = "SystemC";
*);
  output wire pl0_ref_clk;
  output wire pl1_ref_clk;
  output wire pl0_resetn;
  input bit m_axi_fpd_aclk;
  input bit m_axi_lpd_aclk;
  output wire fpd_cci_noc_axi0_clk;
  output wire fpd_cci_noc_axi1_clk;
  output wire fpd_cci_noc_axi2_clk;
  output wire fpd_cci_noc_axi3_clk;
  input bit pl_ps_irq0;
  input bit pl_ps_irq1;
  input bit pl_ps_irq2;
  input bit pl_ps_irq3;
  input bit pl_ps_irq4;
  input bit pl_ps_irq5;
  output wire [15 : 0] M_AXI_FPD_awid;
  output wire [43 : 0] M_AXI_FPD_awaddr;
  output wire [7 : 0] M_AXI_FPD_awlen;
  output wire [2 : 0] M_AXI_FPD_awsize;
  output wire [1 : 0] M_AXI_FPD_awburst;
  output wire M_AXI_FPD_awlock;
  output wire [3 : 0] M_AXI_FPD_awcache;
  output wire [2 : 0] M_AXI_FPD_awprot;
  output wire M_AXI_FPD_awvalid;
  output wire [15 : 0] M_AXI_FPD_awuser;
  input bit M_AXI_FPD_awready;
  output wire M_AXI_FPD_wlast;
  output wire M_AXI_FPD_wvalid;
  input bit M_AXI_FPD_wready;
  input bit [15 : 0] M_AXI_FPD_bid;
  input bit [1 : 0] M_AXI_FPD_bresp;
  input bit M_AXI_FPD_bvalid;
  output wire M_AXI_FPD_bready;
  output wire [15 : 0] M_AXI_FPD_arid;
  output wire [43 : 0] M_AXI_FPD_araddr;
  output wire [7 : 0] M_AXI_FPD_arlen;
  output wire [2 : 0] M_AXI_FPD_arsize;
  output wire [1 : 0] M_AXI_FPD_arburst;
  output wire M_AXI_FPD_arlock;
  output wire [3 : 0] M_AXI_FPD_arcache;
  output wire [2 : 0] M_AXI_FPD_arprot;
  output wire M_AXI_FPD_arvalid;
  output wire [15 : 0] M_AXI_FPD_aruser;
  input bit M_AXI_FPD_arready;
  input bit [15 : 0] M_AXI_FPD_rid;
  input bit [1 : 0] M_AXI_FPD_rresp;
  input bit M_AXI_FPD_rlast;
  input bit M_AXI_FPD_rvalid;
  output wire M_AXI_FPD_rready;
  output wire [3 : 0] M_AXI_FPD_awqos;
  output wire [3 : 0] M_AXI_FPD_arqos;
  output wire [127 : 0] M_AXI_FPD_wdata;
  output wire [15 : 0] M_AXI_FPD_wstrb;
  input bit [127 : 0] M_AXI_FPD_rdata;
  output wire [15 : 0] M_AXI_LPD_awid;
  output wire [43 : 0] M_AXI_LPD_awaddr;
  output wire [7 : 0] M_AXI_LPD_awlen;
  output wire [2 : 0] M_AXI_LPD_awsize;
  output wire [1 : 0] M_AXI_LPD_awburst;
  output wire M_AXI_LPD_awlock;
  output wire [3 : 0] M_AXI_LPD_awcache;
  output wire [2 : 0] M_AXI_LPD_awprot;
  output wire M_AXI_LPD_awvalid;
  output wire [15 : 0] M_AXI_LPD_awuser;
  input bit M_AXI_LPD_awready;
  output wire M_AXI_LPD_wlast;
  output wire M_AXI_LPD_wvalid;
  input bit M_AXI_LPD_wready;
  input bit [15 : 0] M_AXI_LPD_bid;
  input bit [1 : 0] M_AXI_LPD_bresp;
  input bit M_AXI_LPD_bvalid;
  output wire M_AXI_LPD_bready;
  output wire [15 : 0] M_AXI_LPD_arid;
  output wire [43 : 0] M_AXI_LPD_araddr;
  output wire [7 : 0] M_AXI_LPD_arlen;
  output wire [2 : 0] M_AXI_LPD_arsize;
  output wire [1 : 0] M_AXI_LPD_arburst;
  output wire M_AXI_LPD_arlock;
  output wire [3 : 0] M_AXI_LPD_arcache;
  output wire [2 : 0] M_AXI_LPD_arprot;
  output wire M_AXI_LPD_arvalid;
  output wire [15 : 0] M_AXI_LPD_aruser;
  input bit M_AXI_LPD_arready;
  input bit [15 : 0] M_AXI_LPD_rid;
  input bit [1 : 0] M_AXI_LPD_rresp;
  input bit M_AXI_LPD_rlast;
  input bit M_AXI_LPD_rvalid;
  output wire M_AXI_LPD_rready;
  output wire [3 : 0] M_AXI_LPD_awqos;
  output wire [3 : 0] M_AXI_LPD_arqos;
  output wire [127 : 0] M_AXI_LPD_wdata;
  output wire [15 : 0] M_AXI_LPD_wstrb;
  input bit [127 : 0] M_AXI_LPD_rdata;
  output wire [15 : 0] FPD_CCI_NOC_0_awid;
  output wire [63 : 0] FPD_CCI_NOC_0_awaddr;
  output wire [7 : 0] FPD_CCI_NOC_0_awlen;
  output wire [2 : 0] FPD_CCI_NOC_0_awsize;
  output wire [1 : 0] FPD_CCI_NOC_0_awburst;
  output wire FPD_CCI_NOC_0_awlock;
  output wire [3 : 0] FPD_CCI_NOC_0_awcache;
  output wire [2 : 0] FPD_CCI_NOC_0_awprot;
  output wire FPD_CCI_NOC_0_awvalid;
  output wire [17 : 0] FPD_CCI_NOC_0_awuser;
  input bit FPD_CCI_NOC_0_awready;
  output wire [127 : 0] FPD_CCI_NOC_0_wdata;
  output wire [15 : 0] FPD_CCI_NOC_0_wstrb;
  output wire [16 : 0] FPD_CCI_NOC_0_wuser;
  output wire FPD_CCI_NOC_0_wlast;
  output wire FPD_CCI_NOC_0_wvalid;
  input bit FPD_CCI_NOC_0_wready;
  input bit [15 : 0] FPD_CCI_NOC_0_bid;
  input bit [1 : 0] FPD_CCI_NOC_0_bresp;
  input bit FPD_CCI_NOC_0_bvalid;
  output wire FPD_CCI_NOC_0_bready;
  output wire [15 : 0] FPD_CCI_NOC_0_arid;
  output wire [63 : 0] FPD_CCI_NOC_0_araddr;
  output wire [7 : 0] FPD_CCI_NOC_0_arlen;
  output wire [2 : 0] FPD_CCI_NOC_0_arsize;
  output wire [1 : 0] FPD_CCI_NOC_0_arburst;
  output wire FPD_CCI_NOC_0_arlock;
  output wire [3 : 0] FPD_CCI_NOC_0_arcache;
  output wire [2 : 0] FPD_CCI_NOC_0_arprot;
  output wire FPD_CCI_NOC_0_arvalid;
  output wire [17 : 0] FPD_CCI_NOC_0_aruser;
  input bit FPD_CCI_NOC_0_arready;
  input bit [15 : 0] FPD_CCI_NOC_0_rid;
  input bit [127 : 0] FPD_CCI_NOC_0_rdata;
  input bit [1 : 0] FPD_CCI_NOC_0_rresp;
  input bit FPD_CCI_NOC_0_rlast;
  input bit FPD_CCI_NOC_0_rvalid;
  output wire FPD_CCI_NOC_0_rready;
  output wire [3 : 0] FPD_CCI_NOC_0_awqos;
  output wire [3 : 0] FPD_CCI_NOC_0_arqos;
  output wire [15 : 0] FPD_CCI_NOC_1_awid;
  output wire [63 : 0] FPD_CCI_NOC_1_awaddr;
  output wire [7 : 0] FPD_CCI_NOC_1_awlen;
  output wire [2 : 0] FPD_CCI_NOC_1_awsize;
  output wire [1 : 0] FPD_CCI_NOC_1_awburst;
  output wire FPD_CCI_NOC_1_awlock;
  output wire [3 : 0] FPD_CCI_NOC_1_awcache;
  output wire [2 : 0] FPD_CCI_NOC_1_awprot;
  output wire FPD_CCI_NOC_1_awvalid;
  output wire [17 : 0] FPD_CCI_NOC_1_awuser;
  input bit FPD_CCI_NOC_1_awready;
  output wire [127 : 0] FPD_CCI_NOC_1_wdata;
  output wire [15 : 0] FPD_CCI_NOC_1_wstrb;
  output wire [16 : 0] FPD_CCI_NOC_1_wuser;
  output wire FPD_CCI_NOC_1_wlast;
  output wire FPD_CCI_NOC_1_wvalid;
  input bit FPD_CCI_NOC_1_wready;
  input bit [15 : 0] FPD_CCI_NOC_1_bid;
  input bit [1 : 0] FPD_CCI_NOC_1_bresp;
  input bit FPD_CCI_NOC_1_bvalid;
  output wire FPD_CCI_NOC_1_bready;
  output wire [15 : 0] FPD_CCI_NOC_1_arid;
  output wire [63 : 0] FPD_CCI_NOC_1_araddr;
  output wire [7 : 0] FPD_CCI_NOC_1_arlen;
  output wire [2 : 0] FPD_CCI_NOC_1_arsize;
  output wire [1 : 0] FPD_CCI_NOC_1_arburst;
  output wire FPD_CCI_NOC_1_arlock;
  output wire [3 : 0] FPD_CCI_NOC_1_arcache;
  output wire [2 : 0] FPD_CCI_NOC_1_arprot;
  output wire FPD_CCI_NOC_1_arvalid;
  output wire [17 : 0] FPD_CCI_NOC_1_aruser;
  input bit FPD_CCI_NOC_1_arready;
  input bit [15 : 0] FPD_CCI_NOC_1_rid;
  input bit [127 : 0] FPD_CCI_NOC_1_rdata;
  input bit [1 : 0] FPD_CCI_NOC_1_rresp;
  input bit FPD_CCI_NOC_1_rlast;
  input bit FPD_CCI_NOC_1_rvalid;
  output wire FPD_CCI_NOC_1_rready;
  output wire [3 : 0] FPD_CCI_NOC_1_awqos;
  output wire [3 : 0] FPD_CCI_NOC_1_arqos;
  output wire [15 : 0] FPD_CCI_NOC_2_awid;
  output wire [63 : 0] FPD_CCI_NOC_2_awaddr;
  output wire [7 : 0] FPD_CCI_NOC_2_awlen;
  output wire [2 : 0] FPD_CCI_NOC_2_awsize;
  output wire [1 : 0] FPD_CCI_NOC_2_awburst;
  output wire FPD_CCI_NOC_2_awlock;
  output wire [3 : 0] FPD_CCI_NOC_2_awcache;
  output wire [2 : 0] FPD_CCI_NOC_2_awprot;
  output wire FPD_CCI_NOC_2_awvalid;
  output wire [17 : 0] FPD_CCI_NOC_2_awuser;
  input bit FPD_CCI_NOC_2_awready;
  output wire [127 : 0] FPD_CCI_NOC_2_wdata;
  output wire [15 : 0] FPD_CCI_NOC_2_wstrb;
  output wire [16 : 0] FPD_CCI_NOC_2_wuser;
  output wire FPD_CCI_NOC_2_wlast;
  output wire FPD_CCI_NOC_2_wvalid;
  input bit FPD_CCI_NOC_2_wready;
  input bit [15 : 0] FPD_CCI_NOC_2_bid;
  input bit [1 : 0] FPD_CCI_NOC_2_bresp;
  input bit FPD_CCI_NOC_2_bvalid;
  output wire FPD_CCI_NOC_2_bready;
  output wire [15 : 0] FPD_CCI_NOC_2_arid;
  output wire [63 : 0] FPD_CCI_NOC_2_araddr;
  output wire [7 : 0] FPD_CCI_NOC_2_arlen;
  output wire [2 : 0] FPD_CCI_NOC_2_arsize;
  output wire [1 : 0] FPD_CCI_NOC_2_arburst;
  output wire FPD_CCI_NOC_2_arlock;
  output wire [3 : 0] FPD_CCI_NOC_2_arcache;
  output wire [2 : 0] FPD_CCI_NOC_2_arprot;
  output wire FPD_CCI_NOC_2_arvalid;
  output wire [17 : 0] FPD_CCI_NOC_2_aruser;
  input bit FPD_CCI_NOC_2_arready;
  input bit [15 : 0] FPD_CCI_NOC_2_rid;
  input bit [127 : 0] FPD_CCI_NOC_2_rdata;
  input bit [1 : 0] FPD_CCI_NOC_2_rresp;
  input bit FPD_CCI_NOC_2_rlast;
  input bit FPD_CCI_NOC_2_rvalid;
  output wire FPD_CCI_NOC_2_rready;
  output wire [3 : 0] FPD_CCI_NOC_2_awqos;
  output wire [3 : 0] FPD_CCI_NOC_2_arqos;
  output wire [15 : 0] FPD_CCI_NOC_3_awid;
  output wire [63 : 0] FPD_CCI_NOC_3_awaddr;
  output wire [7 : 0] FPD_CCI_NOC_3_awlen;
  output wire [2 : 0] FPD_CCI_NOC_3_awsize;
  output wire [1 : 0] FPD_CCI_NOC_3_awburst;
  output wire FPD_CCI_NOC_3_awlock;
  output wire [3 : 0] FPD_CCI_NOC_3_awcache;
  output wire [2 : 0] FPD_CCI_NOC_3_awprot;
  output wire FPD_CCI_NOC_3_awvalid;
  output wire [17 : 0] FPD_CCI_NOC_3_awuser;
  input bit FPD_CCI_NOC_3_awready;
  output wire [127 : 0] FPD_CCI_NOC_3_wdata;
  output wire [15 : 0] FPD_CCI_NOC_3_wstrb;
  output wire [16 : 0] FPD_CCI_NOC_3_wuser;
  output wire FPD_CCI_NOC_3_wlast;
  output wire FPD_CCI_NOC_3_wvalid;
  input bit FPD_CCI_NOC_3_wready;
  input bit [15 : 0] FPD_CCI_NOC_3_bid;
  input bit [1 : 0] FPD_CCI_NOC_3_bresp;
  input bit FPD_CCI_NOC_3_bvalid;
  output wire FPD_CCI_NOC_3_bready;
  output wire [15 : 0] FPD_CCI_NOC_3_arid;
  output wire [63 : 0] FPD_CCI_NOC_3_araddr;
  output wire [7 : 0] FPD_CCI_NOC_3_arlen;
  output wire [2 : 0] FPD_CCI_NOC_3_arsize;
  output wire [1 : 0] FPD_CCI_NOC_3_arburst;
  output wire FPD_CCI_NOC_3_arlock;
  output wire [3 : 0] FPD_CCI_NOC_3_arcache;
  output wire [2 : 0] FPD_CCI_NOC_3_arprot;
  output wire FPD_CCI_NOC_3_arvalid;
  output wire [17 : 0] FPD_CCI_NOC_3_aruser;
  input bit FPD_CCI_NOC_3_arready;
  input bit [15 : 0] FPD_CCI_NOC_3_rid;
  input bit [127 : 0] FPD_CCI_NOC_3_rdata;
  input bit [1 : 0] FPD_CCI_NOC_3_rresp;
  input bit FPD_CCI_NOC_3_rlast;
  input bit FPD_CCI_NOC_3_rvalid;
  output wire FPD_CCI_NOC_3_rready;
  output wire [3 : 0] FPD_CCI_NOC_3_awqos;
  output wire [3 : 0] FPD_CCI_NOC_3_arqos;
endmodule
`endif
