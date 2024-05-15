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


// IP VLNV: xilinx.com:ip:axi_noc:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module cpm_qdma_ep_part_axi_noc_0_0 (
  S00_AXI_awaddr,
  S00_AXI_awlen,
  S00_AXI_awsize,
  S00_AXI_awburst,
  S00_AXI_awlock,
  S00_AXI_awcache,
  S00_AXI_awprot,
  S00_AXI_awregion,
  S00_AXI_awqos,
  S00_AXI_awvalid,
  S00_AXI_awready,
  S00_AXI_wdata,
  S00_AXI_wstrb,
  S00_AXI_wlast,
  S00_AXI_wvalid,
  S00_AXI_wready,
  S00_AXI_bresp,
  S00_AXI_bvalid,
  S00_AXI_bready,
  S00_AXI_araddr,
  S00_AXI_arlen,
  S00_AXI_arsize,
  S00_AXI_arburst,
  S00_AXI_arlock,
  S00_AXI_arcache,
  S00_AXI_arprot,
  S00_AXI_arregion,
  S00_AXI_arqos,
  S00_AXI_arvalid,
  S00_AXI_arready,
  S00_AXI_rdata,
  S00_AXI_rresp,
  S00_AXI_rlast,
  S00_AXI_rvalid,
  S00_AXI_rready,
  S01_AXI_awaddr,
  S01_AXI_awlen,
  S01_AXI_awsize,
  S01_AXI_awburst,
  S01_AXI_awlock,
  S01_AXI_awcache,
  S01_AXI_awprot,
  S01_AXI_awregion,
  S01_AXI_awqos,
  S01_AXI_awvalid,
  S01_AXI_awready,
  S01_AXI_wdata,
  S01_AXI_wstrb,
  S01_AXI_wlast,
  S01_AXI_wvalid,
  S01_AXI_wready,
  S01_AXI_bresp,
  S01_AXI_bvalid,
  S01_AXI_bready,
  S01_AXI_araddr,
  S01_AXI_arlen,
  S01_AXI_arsize,
  S01_AXI_arburst,
  S01_AXI_arlock,
  S01_AXI_arcache,
  S01_AXI_arprot,
  S01_AXI_arregion,
  S01_AXI_arqos,
  S01_AXI_arvalid,
  S01_AXI_arready,
  S01_AXI_rdata,
  S01_AXI_rresp,
  S01_AXI_rlast,
  S01_AXI_rvalid,
  S01_AXI_rready,
  M00_AXI_awaddr,
  M00_AXI_awlen,
  M00_AXI_awsize,
  M00_AXI_awburst,
  M00_AXI_awlock,
  M00_AXI_awcache,
  M00_AXI_awprot,
  M00_AXI_awregion,
  M00_AXI_awqos,
  M00_AXI_awvalid,
  M00_AXI_awready,
  M00_AXI_wdata,
  M00_AXI_wstrb,
  M00_AXI_wlast,
  M00_AXI_wvalid,
  M00_AXI_wready,
  M00_AXI_bresp,
  M00_AXI_bvalid,
  M00_AXI_bready,
  M00_AXI_araddr,
  M00_AXI_arlen,
  M00_AXI_arsize,
  M00_AXI_arburst,
  M00_AXI_arlock,
  M00_AXI_arcache,
  M00_AXI_arprot,
  M00_AXI_arregion,
  M00_AXI_arqos,
  M00_AXI_arvalid,
  M00_AXI_arready,
  M00_AXI_rdata,
  M00_AXI_rresp,
  M00_AXI_rlast,
  M00_AXI_rvalid,
  M00_AXI_rready,
  M01_AXI_awaddr,
  M01_AXI_awlen,
  M01_AXI_awsize,
  M01_AXI_awburst,
  M01_AXI_awlock,
  M01_AXI_awcache,
  M01_AXI_awprot,
  M01_AXI_awregion,
  M01_AXI_awqos,
  M01_AXI_awvalid,
  M01_AXI_awready,
  M01_AXI_wdata,
  M01_AXI_wstrb,
  M01_AXI_wlast,
  M01_AXI_wvalid,
  M01_AXI_wready,
  M01_AXI_bresp,
  M01_AXI_bvalid,
  M01_AXI_bready,
  M01_AXI_araddr,
  M01_AXI_arlen,
  M01_AXI_arsize,
  M01_AXI_arburst,
  M01_AXI_arlock,
  M01_AXI_arcache,
  M01_AXI_arprot,
  M01_AXI_arregion,
  M01_AXI_arqos,
  M01_AXI_arvalid,
  M01_AXI_arready,
  M01_AXI_rdata,
  M01_AXI_rresp,
  M01_AXI_rlast,
  M01_AXI_rvalid,
  M01_AXI_rready,
  M02_AXI_awaddr,
  M02_AXI_awlen,
  M02_AXI_awsize,
  M02_AXI_awburst,
  M02_AXI_awlock,
  M02_AXI_awcache,
  M02_AXI_awprot,
  M02_AXI_awregion,
  M02_AXI_awqos,
  M02_AXI_awvalid,
  M02_AXI_awready,
  M02_AXI_wdata,
  M02_AXI_wstrb,
  M02_AXI_wlast,
  M02_AXI_wvalid,
  M02_AXI_wready,
  M02_AXI_bresp,
  M02_AXI_bvalid,
  M02_AXI_bready,
  M02_AXI_araddr,
  M02_AXI_arlen,
  M02_AXI_arsize,
  M02_AXI_arburst,
  M02_AXI_arlock,
  M02_AXI_arcache,
  M02_AXI_arprot,
  M02_AXI_arregion,
  M02_AXI_arqos,
  M02_AXI_arvalid,
  M02_AXI_arready,
  M02_AXI_rdata,
  M02_AXI_rresp,
  M02_AXI_rlast,
  M02_AXI_rvalid,
  M02_AXI_rready,
  aclk0,
  aclk1,
  aclk2,
  sys_clk0_clk_p,
  sys_clk0_clk_n,
  CH0_LPDDR4_0_dq_a,
  CH0_LPDDR4_0_dq_b,
  CH0_LPDDR4_0_dqs_t_a,
  CH0_LPDDR4_0_dqs_t_b,
  CH0_LPDDR4_0_dqs_c_a,
  CH0_LPDDR4_0_dqs_c_b,
  CH0_LPDDR4_0_ca_a,
  CH0_LPDDR4_0_ca_b,
  CH0_LPDDR4_0_cs_a,
  CH0_LPDDR4_0_cs_b,
  CH0_LPDDR4_0_ck_t_a,
  CH0_LPDDR4_0_ck_t_b,
  CH0_LPDDR4_0_ck_c_a,
  CH0_LPDDR4_0_ck_c_b,
  CH0_LPDDR4_0_cke_a,
  CH0_LPDDR4_0_cke_b,
  CH0_LPDDR4_0_dmi_a,
  CH0_LPDDR4_0_dmi_b,
  CH0_LPDDR4_0_reset_n,
  CH1_LPDDR4_0_dq_a,
  CH1_LPDDR4_0_dq_b,
  CH1_LPDDR4_0_dqs_t_a,
  CH1_LPDDR4_0_dqs_t_b,
  CH1_LPDDR4_0_dqs_c_a,
  CH1_LPDDR4_0_dqs_c_b,
  CH1_LPDDR4_0_ca_a,
  CH1_LPDDR4_0_ca_b,
  CH1_LPDDR4_0_cs_a,
  CH1_LPDDR4_0_cs_b,
  CH1_LPDDR4_0_ck_t_a,
  CH1_LPDDR4_0_ck_t_b,
  CH1_LPDDR4_0_ck_c_a,
  CH1_LPDDR4_0_ck_c_b,
  CH1_LPDDR4_0_cke_a,
  CH1_LPDDR4_0_cke_b,
  CH1_LPDDR4_0_dmi_a,
  CH1_LPDDR4_0_dmi_b,
  CH1_LPDDR4_0_reset_n,
  S00_AXI_arid,
  S00_AXI_aruser,
  S00_AXI_awid,
  S00_AXI_awuser,
  S00_AXI_bid,
  S00_AXI_rid,
  S00_AXI_ruser,
  S00_AXI_wuser,
  S01_AXI_arid,
  S01_AXI_aruser,
  S01_AXI_awid,
  S01_AXI_awuser,
  S01_AXI_bid,
  S01_AXI_rid,
  S01_AXI_ruser,
  S01_AXI_wuser,
  M01_AXI_arid,
  M01_AXI_aruser,
  M01_AXI_awid,
  M01_AXI_awuser,
  M01_AXI_bid,
  M01_AXI_rid,
  M02_AXI_arid,
  M02_AXI_aruser,
  M02_AXI_awid,
  M02_AXI_awuser,
  M02_AXI_bid,
  M02_AXI_rid,
  M00_AXI_arid,
  M00_AXI_aruser,
  M00_AXI_awid,
  M00_AXI_awuser,
  M00_AXI_bid,
  M00_AXI_rid
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *)
input wire [63 : 0] S00_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *)
input wire [7 : 0] S00_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE" *)
input wire [2 : 0] S00_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST" *)
input wire [1 : 0] S00_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK" *)
input wire [0 : 0] S00_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE" *)
input wire [3 : 0] S00_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *)
input wire [2 : 0] S00_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREGION" *)
input wire [3 : 0] S00_AXI_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS" *)
input wire [3 : 0] S00_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *)
input wire [0 : 0] S00_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *)
output wire [0 : 0] S00_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *)
input wire [127 : 0] S00_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *)
input wire [15 : 0] S00_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *)
input wire [0 : 0] S00_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *)
input wire [0 : 0] S00_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *)
output wire [0 : 0] S00_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *)
output wire [1 : 0] S00_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *)
output wire [0 : 0] S00_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *)
input wire [0 : 0] S00_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *)
input wire [63 : 0] S00_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *)
input wire [7 : 0] S00_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE" *)
input wire [2 : 0] S00_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST" *)
input wire [1 : 0] S00_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK" *)
input wire [0 : 0] S00_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE" *)
input wire [3 : 0] S00_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *)
input wire [2 : 0] S00_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREGION" *)
input wire [3 : 0] S00_AXI_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS" *)
input wire [3 : 0] S00_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *)
input wire [0 : 0] S00_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *)
output wire [0 : 0] S00_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *)
output wire [127 : 0] S00_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *)
output wire [1 : 0] S00_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *)
output wire [0 : 0] S00_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *)
output wire [0 : 0] S00_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *)
input wire [0 : 0] S00_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWADDR" *)
input wire [63 : 0] S01_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLEN" *)
input wire [7 : 0] S01_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE" *)
input wire [2 : 0] S01_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWBURST" *)
input wire [1 : 0] S01_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK" *)
input wire [0 : 0] S01_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE" *)
input wire [3 : 0] S01_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWPROT" *)
input wire [2 : 0] S01_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWREGION" *)
input wire [3 : 0] S01_AXI_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWQOS" *)
input wire [3 : 0] S01_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWVALID" *)
input wire [0 : 0] S01_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWREADY" *)
output wire [0 : 0] S01_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WDATA" *)
input wire [127 : 0] S01_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WSTRB" *)
input wire [15 : 0] S01_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WLAST" *)
input wire [0 : 0] S01_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WVALID" *)
input wire [0 : 0] S01_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WREADY" *)
output wire [0 : 0] S01_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BRESP" *)
output wire [1 : 0] S01_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BVALID" *)
output wire [0 : 0] S01_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BREADY" *)
input wire [0 : 0] S01_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARADDR" *)
input wire [63 : 0] S01_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLEN" *)
input wire [7 : 0] S01_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE" *)
input wire [2 : 0] S01_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARBURST" *)
input wire [1 : 0] S01_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK" *)
input wire [0 : 0] S01_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE" *)
input wire [3 : 0] S01_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARPROT" *)
input wire [2 : 0] S01_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARREGION" *)
input wire [3 : 0] S01_AXI_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARQOS" *)
input wire [3 : 0] S01_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARVALID" *)
input wire [0 : 0] S01_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARREADY" *)
output wire [0 : 0] S01_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RDATA" *)
output wire [127 : 0] S01_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RRESP" *)
output wire [1 : 0] S01_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RLAST" *)
output wire [0 : 0] S01_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RVALID" *)
output wire [0 : 0] S01_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RREADY" *)
input wire [0 : 0] S01_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *)
output wire [63 : 0] M00_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *)
output wire [7 : 0] M00_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *)
output wire [2 : 0] M00_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *)
output wire [1 : 0] M00_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *)
output wire [0 : 0] M00_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *)
output wire [3 : 0] M00_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *)
output wire [2 : 0] M00_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION" *)
output wire [3 : 0] M00_AXI_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *)
output wire [3 : 0] M00_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *)
output wire [0 : 0] M00_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *)
input wire [0 : 0] M00_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *)
output wire [511 : 0] M00_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *)
output wire [63 : 0] M00_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *)
output wire [0 : 0] M00_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *)
output wire [0 : 0] M00_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *)
input wire [0 : 0] M00_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *)
input wire [1 : 0] M00_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *)
input wire [0 : 0] M00_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *)
output wire [0 : 0] M00_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *)
output wire [63 : 0] M00_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *)
output wire [7 : 0] M00_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *)
output wire [2 : 0] M00_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *)
output wire [1 : 0] M00_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *)
output wire [0 : 0] M00_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *)
output wire [3 : 0] M00_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *)
output wire [2 : 0] M00_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION" *)
output wire [3 : 0] M00_AXI_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *)
output wire [3 : 0] M00_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *)
output wire [0 : 0] M00_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *)
input wire [0 : 0] M00_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *)
input wire [511 : 0] M00_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *)
input wire [1 : 0] M00_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *)
input wire [0 : 0] M00_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *)
input wire [0 : 0] M00_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *)
output wire [0 : 0] M00_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWADDR" *)
output wire [63 : 0] M01_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWLEN" *)
output wire [7 : 0] M01_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWSIZE" *)
output wire [2 : 0] M01_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWBURST" *)
output wire [1 : 0] M01_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWLOCK" *)
output wire [0 : 0] M01_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWCACHE" *)
output wire [3 : 0] M01_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWPROT" *)
output wire [2 : 0] M01_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWREGION" *)
output wire [3 : 0] M01_AXI_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWQOS" *)
output wire [3 : 0] M01_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWVALID" *)
output wire [0 : 0] M01_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWREADY" *)
input wire [0 : 0] M01_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WDATA" *)
output wire [31 : 0] M01_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WSTRB" *)
output wire [3 : 0] M01_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WLAST" *)
output wire [0 : 0] M01_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WVALID" *)
output wire [0 : 0] M01_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WREADY" *)
input wire [0 : 0] M01_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BRESP" *)
input wire [1 : 0] M01_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BVALID" *)
input wire [0 : 0] M01_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BREADY" *)
output wire [0 : 0] M01_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARADDR" *)
output wire [63 : 0] M01_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARLEN" *)
output wire [7 : 0] M01_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARSIZE" *)
output wire [2 : 0] M01_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARBURST" *)
output wire [1 : 0] M01_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARLOCK" *)
output wire [0 : 0] M01_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARCACHE" *)
output wire [3 : 0] M01_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARPROT" *)
output wire [2 : 0] M01_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARREGION" *)
output wire [3 : 0] M01_AXI_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARQOS" *)
output wire [3 : 0] M01_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARVALID" *)
output wire [0 : 0] M01_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARREADY" *)
input wire [0 : 0] M01_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RDATA" *)
input wire [31 : 0] M01_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RRESP" *)
input wire [1 : 0] M01_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RLAST" *)
input wire [0 : 0] M01_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RVALID" *)
input wire [0 : 0] M01_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RREADY" *)
output wire [0 : 0] M01_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWADDR" *)
output wire [63 : 0] M02_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWLEN" *)
output wire [7 : 0] M02_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWSIZE" *)
output wire [2 : 0] M02_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWBURST" *)
output wire [1 : 0] M02_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWLOCK" *)
output wire [0 : 0] M02_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWCACHE" *)
output wire [3 : 0] M02_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWPROT" *)
output wire [2 : 0] M02_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWREGION" *)
output wire [3 : 0] M02_AXI_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWQOS" *)
output wire [3 : 0] M02_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWVALID" *)
output wire [0 : 0] M02_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWREADY" *)
input wire [0 : 0] M02_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WDATA" *)
output wire [31 : 0] M02_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WSTRB" *)
output wire [3 : 0] M02_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WLAST" *)
output wire [0 : 0] M02_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WVALID" *)
output wire [0 : 0] M02_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WREADY" *)
input wire [0 : 0] M02_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BRESP" *)
input wire [1 : 0] M02_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BVALID" *)
input wire [0 : 0] M02_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BREADY" *)
output wire [0 : 0] M02_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARADDR" *)
output wire [63 : 0] M02_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARLEN" *)
output wire [7 : 0] M02_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARSIZE" *)
output wire [2 : 0] M02_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARBURST" *)
output wire [1 : 0] M02_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARLOCK" *)
output wire [0 : 0] M02_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARCACHE" *)
output wire [3 : 0] M02_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARPROT" *)
output wire [2 : 0] M02_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARREGION" *)
output wire [3 : 0] M02_AXI_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARQOS" *)
output wire [3 : 0] M02_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARVALID" *)
output wire [0 : 0] M02_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARREADY" *)
input wire [0 : 0] M02_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RDATA" *)
input wire [31 : 0] M02_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RRESP" *)
input wire [1 : 0] M02_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RLAST" *)
input wire [0 : 0] M02_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RVALID" *)
input wire [0 : 0] M02_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RREADY" *)
output wire [0 : 0] M02_AXI_rready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk0, FREQ_HZ 1000000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_a532_pspmc_0_0_cpm_pcie_noc_axi0_clk, ASSOCIATED_BUSIF S00_AXI, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk0 CLK" *)
input wire aclk0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk1, FREQ_HZ 1000000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_a532_pspmc_0_0_cpm_pcie_noc_axi1_clk, ASSOCIATED_BUSIF S01_AXI, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk1 CLK" *)
input wire aclk1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk2, FREQ_HZ 429162384, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_a532_pspmc_0_0_pl0_ref_clk, ASSOCIATED_BUSIF M00_AXI:M01_AXI:M02_AXI, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk2 CLK" *)
input wire aclk2;
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk0 CLK_P" *)
input wire [0 : 0] sys_clk0_clk_p;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk0, CAN_DEBUG false, FREQ_HZ 200000000, BOARD.ASSOCIATED_PARAM sys_clk0_BOARD_INTERFACE" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk0 CLK_N" *)
input wire [0 : 0] sys_clk0_clk_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0 DQ_A" *)
inout wire [15 : 0] CH0_LPDDR4_0_dq_a;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0 DQ_B" *)
inout wire [15 : 0] CH0_LPDDR4_0_dq_b;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0 DQS_T_A" *)
inout wire [1 : 0] CH0_LPDDR4_0_dqs_t_a;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0 DQS_T_B" *)
inout wire [1 : 0] CH0_LPDDR4_0_dqs_t_b;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0 DQS_C_A" *)
inout wire [1 : 0] CH0_LPDDR4_0_dqs_c_a;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0 DQS_C_B" *)
inout wire [1 : 0] CH0_LPDDR4_0_dqs_c_b;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0 CA_A" *)
output wire [5 : 0] CH0_LPDDR4_0_ca_a;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0 CA_B" *)
output wire [5 : 0] CH0_LPDDR4_0_ca_b;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0 CS_A" *)
output wire [0 : 0] CH0_LPDDR4_0_cs_a;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0 CS_B" *)
output wire [0 : 0] CH0_LPDDR4_0_cs_b;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0 CK_T_A" *)
output wire [0 : 0] CH0_LPDDR4_0_ck_t_a;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0 CK_T_B" *)
output wire [0 : 0] CH0_LPDDR4_0_ck_t_b;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0 CK_C_A" *)
output wire [0 : 0] CH0_LPDDR4_0_ck_c_a;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0 CK_C_B" *)
output wire [0 : 0] CH0_LPDDR4_0_ck_c_b;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0 CKE_A" *)
output wire [0 : 0] CH0_LPDDR4_0_cke_a;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0 CKE_B" *)
output wire [0 : 0] CH0_LPDDR4_0_cke_b;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0 DMI_A" *)
inout wire [1 : 0] CH0_LPDDR4_0_dmi_a;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0 DMI_B" *)
inout wire [1 : 0] CH0_LPDDR4_0_dmi_b;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CH0_LPDDR4_0, CAN_DEBUG false, WRITE_BUFFER_SIZE 80, NOC_ID -1, MY_CATEGORY pl, BOARD.ASSOCIATED_PARAM CH0_LPDDR4_0_BOARD_INTERFACE" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0 RESET_N" *)
output wire [0 : 0] CH0_LPDDR4_0_reset_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0 DQ_A" *)
inout wire [15 : 0] CH1_LPDDR4_0_dq_a;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0 DQ_B" *)
inout wire [15 : 0] CH1_LPDDR4_0_dq_b;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0 DQS_T_A" *)
inout wire [1 : 0] CH1_LPDDR4_0_dqs_t_a;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0 DQS_T_B" *)
inout wire [1 : 0] CH1_LPDDR4_0_dqs_t_b;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0 DQS_C_A" *)
inout wire [1 : 0] CH1_LPDDR4_0_dqs_c_a;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0 DQS_C_B" *)
inout wire [1 : 0] CH1_LPDDR4_0_dqs_c_b;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0 CA_A" *)
output wire [5 : 0] CH1_LPDDR4_0_ca_a;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0 CA_B" *)
output wire [5 : 0] CH1_LPDDR4_0_ca_b;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0 CS_A" *)
output wire [0 : 0] CH1_LPDDR4_0_cs_a;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0 CS_B" *)
output wire [0 : 0] CH1_LPDDR4_0_cs_b;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0 CK_T_A" *)
output wire [0 : 0] CH1_LPDDR4_0_ck_t_a;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0 CK_T_B" *)
output wire [0 : 0] CH1_LPDDR4_0_ck_t_b;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0 CK_C_A" *)
output wire [0 : 0] CH1_LPDDR4_0_ck_c_a;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0 CK_C_B" *)
output wire [0 : 0] CH1_LPDDR4_0_ck_c_b;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0 CKE_A" *)
output wire [0 : 0] CH1_LPDDR4_0_cke_a;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0 CKE_B" *)
output wire [0 : 0] CH1_LPDDR4_0_cke_b;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0 DMI_A" *)
inout wire [1 : 0] CH1_LPDDR4_0_dmi_a;
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0 DMI_B" *)
inout wire [1 : 0] CH1_LPDDR4_0_dmi_b;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CH1_LPDDR4_0, CAN_DEBUG false, WRITE_BUFFER_SIZE 80, NOC_ID -1, MY_CATEGORY pl, BOARD.ASSOCIATED_PARAM CH1_LPDDR4_0_BOARD_INTERFACE" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0 RESET_N" *)
output wire [0 : 0] CH1_LPDDR4_0_reset_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARID" *)
input wire [15 : 0] S00_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARUSER" *)
input wire [17 : 0] S00_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWID" *)
input wire [15 : 0] S00_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWUSER" *)
input wire [17 : 0] S00_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BID" *)
output wire [15 : 0] S00_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RID" *)
output wire [15 : 0] S00_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RUSER" *)
output wire [16 : 0] S00_AXI_ruser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 1000000000, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 17, RUSER_WIDTH 17, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_a532_pspmc_0_0_cpm_pcie_noc_axi0_clk, NUM_READ_T\
HREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS MC_0 {read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} M01_AXI {read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} M02_AXI {read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} M\
00_AXI {read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}}, DEST_IDS M01_AXI:0x0:M02_AXI:0x80:M00_AXI:0x40, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY ps_pcie" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WUSER" *)
input wire [16 : 0] S00_AXI_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARID" *)
input wire [15 : 0] S01_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARUSER" *)
input wire [17 : 0] S01_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWID" *)
input wire [15 : 0] S01_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWUSER" *)
input wire [17 : 0] S01_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BID" *)
output wire [15 : 0] S01_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RID" *)
output wire [15 : 0] S01_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RUSER" *)
output wire [16 : 0] S01_AXI_ruser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 1000000000, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 17, RUSER_WIDTH 17, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_a532_pspmc_0_0_cpm_pcie_noc_axi1_clk, NUM_READ_T\
HREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS MC_0 {read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} M01_AXI {read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} M02_AXI {read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} M\
00_AXI {read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}}, DEST_IDS M01_AXI:0x0:M02_AXI:0x80:M00_AXI:0x40, WRITE_BUFFER_SIZE 80, MY_CATEGORY noc, CATEGORY ps_pcie" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WUSER" *)
input wire [16 : 0] S01_AXI_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARID" *)
output wire [1 : 0] M01_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARUSER" *)
output wire [17 : 0] M01_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWID" *)
output wire [1 : 0] M01_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWUSER" *)
output wire [17 : 0] M01_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BID" *)
input wire [1 : 0] M01_AXI_bid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M01_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 429162384, ID_WIDTH 2, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_a532_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 4, NUM_W\
RITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, WRITE_BUFFER_SIZE 80, NOC_ID -1, APERTURES {0x201_8000_0000 1G}, MY_CATEGORY noc, CATEGORY pl" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RID" *)
input wire [1 : 0] M01_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARID" *)
output wire [1 : 0] M02_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARUSER" *)
output wire [17 : 0] M02_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWID" *)
output wire [1 : 0] M02_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWUSER" *)
output wire [17 : 0] M02_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BID" *)
input wire [1 : 0] M02_AXI_bid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M02_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 429162384, ID_WIDTH 2, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_a532_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 4, NUM_W\
RITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, WRITE_BUFFER_SIZE 80, NOC_ID -1, APERTURES {0x208_0000_0000 2G}, MY_CATEGORY noc, CATEGORY pl" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RID" *)
input wire [1 : 0] M02_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARID" *)
output wire [1 : 0] M00_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARUSER" *)
output wire [17 : 0] M00_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWID" *)
output wire [1 : 0] M00_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWUSER" *)
output wire [17 : 0] M00_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BID" *)
input wire [1 : 0] M00_AXI_bid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 429162384, ID_WIDTH 2, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_a532_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 4, NUM_\
WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, WRITE_BUFFER_SIZE 80, NOC_ID -1, APERTURES {0x201_0000_0000 1G}, MY_CATEGORY noc, CATEGORY pl" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RID" *)
input wire [1 : 0] M00_AXI_rid;

  bd_8dca inst (
    .S00_AXI_awaddr(S00_AXI_awaddr),
    .S00_AXI_awlen(S00_AXI_awlen),
    .S00_AXI_awsize(S00_AXI_awsize),
    .S00_AXI_awburst(S00_AXI_awburst),
    .S00_AXI_awlock(S00_AXI_awlock),
    .S00_AXI_awcache(S00_AXI_awcache),
    .S00_AXI_awprot(S00_AXI_awprot),
    .S00_AXI_awregion(S00_AXI_awregion),
    .S00_AXI_awqos(S00_AXI_awqos),
    .S00_AXI_awvalid(S00_AXI_awvalid),
    .S00_AXI_awready(S00_AXI_awready),
    .S00_AXI_wdata(S00_AXI_wdata),
    .S00_AXI_wstrb(S00_AXI_wstrb),
    .S00_AXI_wlast(S00_AXI_wlast),
    .S00_AXI_wvalid(S00_AXI_wvalid),
    .S00_AXI_wready(S00_AXI_wready),
    .S00_AXI_bresp(S00_AXI_bresp),
    .S00_AXI_bvalid(S00_AXI_bvalid),
    .S00_AXI_bready(S00_AXI_bready),
    .S00_AXI_araddr(S00_AXI_araddr),
    .S00_AXI_arlen(S00_AXI_arlen),
    .S00_AXI_arsize(S00_AXI_arsize),
    .S00_AXI_arburst(S00_AXI_arburst),
    .S00_AXI_arlock(S00_AXI_arlock),
    .S00_AXI_arcache(S00_AXI_arcache),
    .S00_AXI_arprot(S00_AXI_arprot),
    .S00_AXI_arregion(S00_AXI_arregion),
    .S00_AXI_arqos(S00_AXI_arqos),
    .S00_AXI_arvalid(S00_AXI_arvalid),
    .S00_AXI_arready(S00_AXI_arready),
    .S00_AXI_rdata(S00_AXI_rdata),
    .S00_AXI_rresp(S00_AXI_rresp),
    .S00_AXI_rlast(S00_AXI_rlast),
    .S00_AXI_rvalid(S00_AXI_rvalid),
    .S00_AXI_rready(S00_AXI_rready),
    .S01_AXI_awaddr(S01_AXI_awaddr),
    .S01_AXI_awlen(S01_AXI_awlen),
    .S01_AXI_awsize(S01_AXI_awsize),
    .S01_AXI_awburst(S01_AXI_awburst),
    .S01_AXI_awlock(S01_AXI_awlock),
    .S01_AXI_awcache(S01_AXI_awcache),
    .S01_AXI_awprot(S01_AXI_awprot),
    .S01_AXI_awregion(S01_AXI_awregion),
    .S01_AXI_awqos(S01_AXI_awqos),
    .S01_AXI_awvalid(S01_AXI_awvalid),
    .S01_AXI_awready(S01_AXI_awready),
    .S01_AXI_wdata(S01_AXI_wdata),
    .S01_AXI_wstrb(S01_AXI_wstrb),
    .S01_AXI_wlast(S01_AXI_wlast),
    .S01_AXI_wvalid(S01_AXI_wvalid),
    .S01_AXI_wready(S01_AXI_wready),
    .S01_AXI_bresp(S01_AXI_bresp),
    .S01_AXI_bvalid(S01_AXI_bvalid),
    .S01_AXI_bready(S01_AXI_bready),
    .S01_AXI_araddr(S01_AXI_araddr),
    .S01_AXI_arlen(S01_AXI_arlen),
    .S01_AXI_arsize(S01_AXI_arsize),
    .S01_AXI_arburst(S01_AXI_arburst),
    .S01_AXI_arlock(S01_AXI_arlock),
    .S01_AXI_arcache(S01_AXI_arcache),
    .S01_AXI_arprot(S01_AXI_arprot),
    .S01_AXI_arregion(S01_AXI_arregion),
    .S01_AXI_arqos(S01_AXI_arqos),
    .S01_AXI_arvalid(S01_AXI_arvalid),
    .S01_AXI_arready(S01_AXI_arready),
    .S01_AXI_rdata(S01_AXI_rdata),
    .S01_AXI_rresp(S01_AXI_rresp),
    .S01_AXI_rlast(S01_AXI_rlast),
    .S01_AXI_rvalid(S01_AXI_rvalid),
    .S01_AXI_rready(S01_AXI_rready),
    .M00_AXI_awaddr(M00_AXI_awaddr),
    .M00_AXI_awlen(M00_AXI_awlen),
    .M00_AXI_awsize(M00_AXI_awsize),
    .M00_AXI_awburst(M00_AXI_awburst),
    .M00_AXI_awlock(M00_AXI_awlock),
    .M00_AXI_awcache(M00_AXI_awcache),
    .M00_AXI_awprot(M00_AXI_awprot),
    .M00_AXI_awregion(M00_AXI_awregion),
    .M00_AXI_awqos(M00_AXI_awqos),
    .M00_AXI_awvalid(M00_AXI_awvalid),
    .M00_AXI_awready(M00_AXI_awready),
    .M00_AXI_wdata(M00_AXI_wdata),
    .M00_AXI_wstrb(M00_AXI_wstrb),
    .M00_AXI_wlast(M00_AXI_wlast),
    .M00_AXI_wvalid(M00_AXI_wvalid),
    .M00_AXI_wready(M00_AXI_wready),
    .M00_AXI_bresp(M00_AXI_bresp),
    .M00_AXI_bvalid(M00_AXI_bvalid),
    .M00_AXI_bready(M00_AXI_bready),
    .M00_AXI_araddr(M00_AXI_araddr),
    .M00_AXI_arlen(M00_AXI_arlen),
    .M00_AXI_arsize(M00_AXI_arsize),
    .M00_AXI_arburst(M00_AXI_arburst),
    .M00_AXI_arlock(M00_AXI_arlock),
    .M00_AXI_arcache(M00_AXI_arcache),
    .M00_AXI_arprot(M00_AXI_arprot),
    .M00_AXI_arregion(M00_AXI_arregion),
    .M00_AXI_arqos(M00_AXI_arqos),
    .M00_AXI_arvalid(M00_AXI_arvalid),
    .M00_AXI_arready(M00_AXI_arready),
    .M00_AXI_rdata(M00_AXI_rdata),
    .M00_AXI_rresp(M00_AXI_rresp),
    .M00_AXI_rlast(M00_AXI_rlast),
    .M00_AXI_rvalid(M00_AXI_rvalid),
    .M00_AXI_rready(M00_AXI_rready),
    .M01_AXI_awaddr(M01_AXI_awaddr),
    .M01_AXI_awlen(M01_AXI_awlen),
    .M01_AXI_awsize(M01_AXI_awsize),
    .M01_AXI_awburst(M01_AXI_awburst),
    .M01_AXI_awlock(M01_AXI_awlock),
    .M01_AXI_awcache(M01_AXI_awcache),
    .M01_AXI_awprot(M01_AXI_awprot),
    .M01_AXI_awregion(M01_AXI_awregion),
    .M01_AXI_awqos(M01_AXI_awqos),
    .M01_AXI_awvalid(M01_AXI_awvalid),
    .M01_AXI_awready(M01_AXI_awready),
    .M01_AXI_wdata(M01_AXI_wdata),
    .M01_AXI_wstrb(M01_AXI_wstrb),
    .M01_AXI_wlast(M01_AXI_wlast),
    .M01_AXI_wvalid(M01_AXI_wvalid),
    .M01_AXI_wready(M01_AXI_wready),
    .M01_AXI_bresp(M01_AXI_bresp),
    .M01_AXI_bvalid(M01_AXI_bvalid),
    .M01_AXI_bready(M01_AXI_bready),
    .M01_AXI_araddr(M01_AXI_araddr),
    .M01_AXI_arlen(M01_AXI_arlen),
    .M01_AXI_arsize(M01_AXI_arsize),
    .M01_AXI_arburst(M01_AXI_arburst),
    .M01_AXI_arlock(M01_AXI_arlock),
    .M01_AXI_arcache(M01_AXI_arcache),
    .M01_AXI_arprot(M01_AXI_arprot),
    .M01_AXI_arregion(M01_AXI_arregion),
    .M01_AXI_arqos(M01_AXI_arqos),
    .M01_AXI_arvalid(M01_AXI_arvalid),
    .M01_AXI_arready(M01_AXI_arready),
    .M01_AXI_rdata(M01_AXI_rdata),
    .M01_AXI_rresp(M01_AXI_rresp),
    .M01_AXI_rlast(M01_AXI_rlast),
    .M01_AXI_rvalid(M01_AXI_rvalid),
    .M01_AXI_rready(M01_AXI_rready),
    .M02_AXI_awaddr(M02_AXI_awaddr),
    .M02_AXI_awlen(M02_AXI_awlen),
    .M02_AXI_awsize(M02_AXI_awsize),
    .M02_AXI_awburst(M02_AXI_awburst),
    .M02_AXI_awlock(M02_AXI_awlock),
    .M02_AXI_awcache(M02_AXI_awcache),
    .M02_AXI_awprot(M02_AXI_awprot),
    .M02_AXI_awregion(M02_AXI_awregion),
    .M02_AXI_awqos(M02_AXI_awqos),
    .M02_AXI_awvalid(M02_AXI_awvalid),
    .M02_AXI_awready(M02_AXI_awready),
    .M02_AXI_wdata(M02_AXI_wdata),
    .M02_AXI_wstrb(M02_AXI_wstrb),
    .M02_AXI_wlast(M02_AXI_wlast),
    .M02_AXI_wvalid(M02_AXI_wvalid),
    .M02_AXI_wready(M02_AXI_wready),
    .M02_AXI_bresp(M02_AXI_bresp),
    .M02_AXI_bvalid(M02_AXI_bvalid),
    .M02_AXI_bready(M02_AXI_bready),
    .M02_AXI_araddr(M02_AXI_araddr),
    .M02_AXI_arlen(M02_AXI_arlen),
    .M02_AXI_arsize(M02_AXI_arsize),
    .M02_AXI_arburst(M02_AXI_arburst),
    .M02_AXI_arlock(M02_AXI_arlock),
    .M02_AXI_arcache(M02_AXI_arcache),
    .M02_AXI_arprot(M02_AXI_arprot),
    .M02_AXI_arregion(M02_AXI_arregion),
    .M02_AXI_arqos(M02_AXI_arqos),
    .M02_AXI_arvalid(M02_AXI_arvalid),
    .M02_AXI_arready(M02_AXI_arready),
    .M02_AXI_rdata(M02_AXI_rdata),
    .M02_AXI_rresp(M02_AXI_rresp),
    .M02_AXI_rlast(M02_AXI_rlast),
    .M02_AXI_rvalid(M02_AXI_rvalid),
    .M02_AXI_rready(M02_AXI_rready),
    .aclk0(aclk0),
    .aclk1(aclk1),
    .aclk2(aclk2),
    .sys_clk0_clk_p(sys_clk0_clk_p),
    .sys_clk0_clk_n(sys_clk0_clk_n),
    .CH0_LPDDR4_0_dq_a(CH0_LPDDR4_0_dq_a),
    .CH0_LPDDR4_0_dq_b(CH0_LPDDR4_0_dq_b),
    .CH0_LPDDR4_0_dqs_t_a(CH0_LPDDR4_0_dqs_t_a),
    .CH0_LPDDR4_0_dqs_t_b(CH0_LPDDR4_0_dqs_t_b),
    .CH0_LPDDR4_0_dqs_c_a(CH0_LPDDR4_0_dqs_c_a),
    .CH0_LPDDR4_0_dqs_c_b(CH0_LPDDR4_0_dqs_c_b),
    .CH0_LPDDR4_0_ca_a(CH0_LPDDR4_0_ca_a),
    .CH0_LPDDR4_0_ca_b(CH0_LPDDR4_0_ca_b),
    .CH0_LPDDR4_0_cs_a(CH0_LPDDR4_0_cs_a),
    .CH0_LPDDR4_0_cs_b(CH0_LPDDR4_0_cs_b),
    .CH0_LPDDR4_0_ck_t_a(CH0_LPDDR4_0_ck_t_a),
    .CH0_LPDDR4_0_ck_t_b(CH0_LPDDR4_0_ck_t_b),
    .CH0_LPDDR4_0_ck_c_a(CH0_LPDDR4_0_ck_c_a),
    .CH0_LPDDR4_0_ck_c_b(CH0_LPDDR4_0_ck_c_b),
    .CH0_LPDDR4_0_cke_a(CH0_LPDDR4_0_cke_a),
    .CH0_LPDDR4_0_cke_b(CH0_LPDDR4_0_cke_b),
    .CH0_LPDDR4_0_dmi_a(CH0_LPDDR4_0_dmi_a),
    .CH0_LPDDR4_0_dmi_b(CH0_LPDDR4_0_dmi_b),
    .CH0_LPDDR4_0_reset_n(CH0_LPDDR4_0_reset_n),
    .CH1_LPDDR4_0_dq_a(CH1_LPDDR4_0_dq_a),
    .CH1_LPDDR4_0_dq_b(CH1_LPDDR4_0_dq_b),
    .CH1_LPDDR4_0_dqs_t_a(CH1_LPDDR4_0_dqs_t_a),
    .CH1_LPDDR4_0_dqs_t_b(CH1_LPDDR4_0_dqs_t_b),
    .CH1_LPDDR4_0_dqs_c_a(CH1_LPDDR4_0_dqs_c_a),
    .CH1_LPDDR4_0_dqs_c_b(CH1_LPDDR4_0_dqs_c_b),
    .CH1_LPDDR4_0_ca_a(CH1_LPDDR4_0_ca_a),
    .CH1_LPDDR4_0_ca_b(CH1_LPDDR4_0_ca_b),
    .CH1_LPDDR4_0_cs_a(CH1_LPDDR4_0_cs_a),
    .CH1_LPDDR4_0_cs_b(CH1_LPDDR4_0_cs_b),
    .CH1_LPDDR4_0_ck_t_a(CH1_LPDDR4_0_ck_t_a),
    .CH1_LPDDR4_0_ck_t_b(CH1_LPDDR4_0_ck_t_b),
    .CH1_LPDDR4_0_ck_c_a(CH1_LPDDR4_0_ck_c_a),
    .CH1_LPDDR4_0_ck_c_b(CH1_LPDDR4_0_ck_c_b),
    .CH1_LPDDR4_0_cke_a(CH1_LPDDR4_0_cke_a),
    .CH1_LPDDR4_0_cke_b(CH1_LPDDR4_0_cke_b),
    .CH1_LPDDR4_0_dmi_a(CH1_LPDDR4_0_dmi_a),
    .CH1_LPDDR4_0_dmi_b(CH1_LPDDR4_0_dmi_b),
    .CH1_LPDDR4_0_reset_n(CH1_LPDDR4_0_reset_n),
    .S00_AXI_arid(S00_AXI_arid),
    .S00_AXI_aruser(S00_AXI_aruser),
    .S00_AXI_awid(S00_AXI_awid),
    .S00_AXI_awuser(S00_AXI_awuser),
    .S00_AXI_bid(S00_AXI_bid),
    .S00_AXI_rid(S00_AXI_rid),
    .S00_AXI_ruser(S00_AXI_ruser),
    .S00_AXI_wuser(S00_AXI_wuser),
    .S01_AXI_arid(S01_AXI_arid),
    .S01_AXI_aruser(S01_AXI_aruser),
    .S01_AXI_awid(S01_AXI_awid),
    .S01_AXI_awuser(S01_AXI_awuser),
    .S01_AXI_bid(S01_AXI_bid),
    .S01_AXI_rid(S01_AXI_rid),
    .S01_AXI_ruser(S01_AXI_ruser),
    .S01_AXI_wuser(S01_AXI_wuser),
    .M01_AXI_arid(M01_AXI_arid),
    .M01_AXI_aruser(M01_AXI_aruser),
    .M01_AXI_awid(M01_AXI_awid),
    .M01_AXI_awuser(M01_AXI_awuser),
    .M01_AXI_bid(M01_AXI_bid),
    .M01_AXI_rid(M01_AXI_rid),
    .M02_AXI_arid(M02_AXI_arid),
    .M02_AXI_aruser(M02_AXI_aruser),
    .M02_AXI_awid(M02_AXI_awid),
    .M02_AXI_awuser(M02_AXI_awuser),
    .M02_AXI_bid(M02_AXI_bid),
    .M02_AXI_rid(M02_AXI_rid),
    .M00_AXI_arid(M00_AXI_arid),
    .M00_AXI_aruser(M00_AXI_aruser),
    .M00_AXI_awid(M00_AXI_awid),
    .M00_AXI_awuser(M00_AXI_awuser),
    .M00_AXI_bid(M00_AXI_bid),
    .M00_AXI_rid(M00_AXI_rid)
  );
endmodule
