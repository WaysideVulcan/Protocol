//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_65e0_wrapper.bd
//Design : bd_65e0_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_65e0_wrapper
   (FPD_CCI_NOC_0_araddr,
    FPD_CCI_NOC_0_arburst,
    FPD_CCI_NOC_0_arcache,
    FPD_CCI_NOC_0_arid,
    FPD_CCI_NOC_0_arlen,
    FPD_CCI_NOC_0_arlock,
    FPD_CCI_NOC_0_arprot,
    FPD_CCI_NOC_0_arqos,
    FPD_CCI_NOC_0_arready,
    FPD_CCI_NOC_0_arsize,
    FPD_CCI_NOC_0_aruser,
    FPD_CCI_NOC_0_arvalid,
    FPD_CCI_NOC_0_awaddr,
    FPD_CCI_NOC_0_awburst,
    FPD_CCI_NOC_0_awcache,
    FPD_CCI_NOC_0_awid,
    FPD_CCI_NOC_0_awlen,
    FPD_CCI_NOC_0_awlock,
    FPD_CCI_NOC_0_awprot,
    FPD_CCI_NOC_0_awqos,
    FPD_CCI_NOC_0_awready,
    FPD_CCI_NOC_0_awsize,
    FPD_CCI_NOC_0_awuser,
    FPD_CCI_NOC_0_awvalid,
    FPD_CCI_NOC_0_bid,
    FPD_CCI_NOC_0_bready,
    FPD_CCI_NOC_0_bresp,
    FPD_CCI_NOC_0_bvalid,
    FPD_CCI_NOC_0_rdata,
    FPD_CCI_NOC_0_rid,
    FPD_CCI_NOC_0_rlast,
    FPD_CCI_NOC_0_rready,
    FPD_CCI_NOC_0_rresp,
    FPD_CCI_NOC_0_rvalid,
    FPD_CCI_NOC_0_wdata,
    FPD_CCI_NOC_0_wlast,
    FPD_CCI_NOC_0_wready,
    FPD_CCI_NOC_0_wstrb,
    FPD_CCI_NOC_0_wuser,
    FPD_CCI_NOC_0_wvalid,
    FPD_CCI_NOC_1_araddr,
    FPD_CCI_NOC_1_arburst,
    FPD_CCI_NOC_1_arcache,
    FPD_CCI_NOC_1_arid,
    FPD_CCI_NOC_1_arlen,
    FPD_CCI_NOC_1_arlock,
    FPD_CCI_NOC_1_arprot,
    FPD_CCI_NOC_1_arqos,
    FPD_CCI_NOC_1_arready,
    FPD_CCI_NOC_1_arsize,
    FPD_CCI_NOC_1_aruser,
    FPD_CCI_NOC_1_arvalid,
    FPD_CCI_NOC_1_awaddr,
    FPD_CCI_NOC_1_awburst,
    FPD_CCI_NOC_1_awcache,
    FPD_CCI_NOC_1_awid,
    FPD_CCI_NOC_1_awlen,
    FPD_CCI_NOC_1_awlock,
    FPD_CCI_NOC_1_awprot,
    FPD_CCI_NOC_1_awqos,
    FPD_CCI_NOC_1_awready,
    FPD_CCI_NOC_1_awsize,
    FPD_CCI_NOC_1_awuser,
    FPD_CCI_NOC_1_awvalid,
    FPD_CCI_NOC_1_bid,
    FPD_CCI_NOC_1_bready,
    FPD_CCI_NOC_1_bresp,
    FPD_CCI_NOC_1_bvalid,
    FPD_CCI_NOC_1_rdata,
    FPD_CCI_NOC_1_rid,
    FPD_CCI_NOC_1_rlast,
    FPD_CCI_NOC_1_rready,
    FPD_CCI_NOC_1_rresp,
    FPD_CCI_NOC_1_rvalid,
    FPD_CCI_NOC_1_wdata,
    FPD_CCI_NOC_1_wlast,
    FPD_CCI_NOC_1_wready,
    FPD_CCI_NOC_1_wstrb,
    FPD_CCI_NOC_1_wuser,
    FPD_CCI_NOC_1_wvalid,
    FPD_CCI_NOC_2_araddr,
    FPD_CCI_NOC_2_arburst,
    FPD_CCI_NOC_2_arcache,
    FPD_CCI_NOC_2_arid,
    FPD_CCI_NOC_2_arlen,
    FPD_CCI_NOC_2_arlock,
    FPD_CCI_NOC_2_arprot,
    FPD_CCI_NOC_2_arqos,
    FPD_CCI_NOC_2_arready,
    FPD_CCI_NOC_2_arsize,
    FPD_CCI_NOC_2_aruser,
    FPD_CCI_NOC_2_arvalid,
    FPD_CCI_NOC_2_awaddr,
    FPD_CCI_NOC_2_awburst,
    FPD_CCI_NOC_2_awcache,
    FPD_CCI_NOC_2_awid,
    FPD_CCI_NOC_2_awlen,
    FPD_CCI_NOC_2_awlock,
    FPD_CCI_NOC_2_awprot,
    FPD_CCI_NOC_2_awqos,
    FPD_CCI_NOC_2_awready,
    FPD_CCI_NOC_2_awsize,
    FPD_CCI_NOC_2_awuser,
    FPD_CCI_NOC_2_awvalid,
    FPD_CCI_NOC_2_bid,
    FPD_CCI_NOC_2_bready,
    FPD_CCI_NOC_2_bresp,
    FPD_CCI_NOC_2_bvalid,
    FPD_CCI_NOC_2_rdata,
    FPD_CCI_NOC_2_rid,
    FPD_CCI_NOC_2_rlast,
    FPD_CCI_NOC_2_rready,
    FPD_CCI_NOC_2_rresp,
    FPD_CCI_NOC_2_rvalid,
    FPD_CCI_NOC_2_wdata,
    FPD_CCI_NOC_2_wlast,
    FPD_CCI_NOC_2_wready,
    FPD_CCI_NOC_2_wstrb,
    FPD_CCI_NOC_2_wuser,
    FPD_CCI_NOC_2_wvalid,
    FPD_CCI_NOC_3_araddr,
    FPD_CCI_NOC_3_arburst,
    FPD_CCI_NOC_3_arcache,
    FPD_CCI_NOC_3_arid,
    FPD_CCI_NOC_3_arlen,
    FPD_CCI_NOC_3_arlock,
    FPD_CCI_NOC_3_arprot,
    FPD_CCI_NOC_3_arqos,
    FPD_CCI_NOC_3_arready,
    FPD_CCI_NOC_3_arsize,
    FPD_CCI_NOC_3_aruser,
    FPD_CCI_NOC_3_arvalid,
    FPD_CCI_NOC_3_awaddr,
    FPD_CCI_NOC_3_awburst,
    FPD_CCI_NOC_3_awcache,
    FPD_CCI_NOC_3_awid,
    FPD_CCI_NOC_3_awlen,
    FPD_CCI_NOC_3_awlock,
    FPD_CCI_NOC_3_awprot,
    FPD_CCI_NOC_3_awqos,
    FPD_CCI_NOC_3_awready,
    FPD_CCI_NOC_3_awsize,
    FPD_CCI_NOC_3_awuser,
    FPD_CCI_NOC_3_awvalid,
    FPD_CCI_NOC_3_bid,
    FPD_CCI_NOC_3_bready,
    FPD_CCI_NOC_3_bresp,
    FPD_CCI_NOC_3_bvalid,
    FPD_CCI_NOC_3_rdata,
    FPD_CCI_NOC_3_rid,
    FPD_CCI_NOC_3_rlast,
    FPD_CCI_NOC_3_rready,
    FPD_CCI_NOC_3_rresp,
    FPD_CCI_NOC_3_rvalid,
    FPD_CCI_NOC_3_wdata,
    FPD_CCI_NOC_3_wlast,
    FPD_CCI_NOC_3_wready,
    FPD_CCI_NOC_3_wstrb,
    FPD_CCI_NOC_3_wuser,
    FPD_CCI_NOC_3_wvalid,
    M_AXI_FPD_araddr,
    M_AXI_FPD_arburst,
    M_AXI_FPD_arcache,
    M_AXI_FPD_arid,
    M_AXI_FPD_arlen,
    M_AXI_FPD_arlock,
    M_AXI_FPD_arprot,
    M_AXI_FPD_arqos,
    M_AXI_FPD_arready,
    M_AXI_FPD_arsize,
    M_AXI_FPD_aruser,
    M_AXI_FPD_arvalid,
    M_AXI_FPD_awaddr,
    M_AXI_FPD_awburst,
    M_AXI_FPD_awcache,
    M_AXI_FPD_awid,
    M_AXI_FPD_awlen,
    M_AXI_FPD_awlock,
    M_AXI_FPD_awprot,
    M_AXI_FPD_awqos,
    M_AXI_FPD_awready,
    M_AXI_FPD_awsize,
    M_AXI_FPD_awuser,
    M_AXI_FPD_awvalid,
    M_AXI_FPD_bid,
    M_AXI_FPD_bready,
    M_AXI_FPD_bresp,
    M_AXI_FPD_bvalid,
    M_AXI_FPD_rdata,
    M_AXI_FPD_rid,
    M_AXI_FPD_rlast,
    M_AXI_FPD_rready,
    M_AXI_FPD_rresp,
    M_AXI_FPD_rvalid,
    M_AXI_FPD_wdata,
    M_AXI_FPD_wlast,
    M_AXI_FPD_wready,
    M_AXI_FPD_wstrb,
    M_AXI_FPD_wvalid,
    M_AXI_LPD_araddr,
    M_AXI_LPD_arburst,
    M_AXI_LPD_arcache,
    M_AXI_LPD_arid,
    M_AXI_LPD_arlen,
    M_AXI_LPD_arlock,
    M_AXI_LPD_arprot,
    M_AXI_LPD_arqos,
    M_AXI_LPD_arready,
    M_AXI_LPD_arsize,
    M_AXI_LPD_aruser,
    M_AXI_LPD_arvalid,
    M_AXI_LPD_awaddr,
    M_AXI_LPD_awburst,
    M_AXI_LPD_awcache,
    M_AXI_LPD_awid,
    M_AXI_LPD_awlen,
    M_AXI_LPD_awlock,
    M_AXI_LPD_awprot,
    M_AXI_LPD_awqos,
    M_AXI_LPD_awready,
    M_AXI_LPD_awsize,
    M_AXI_LPD_awuser,
    M_AXI_LPD_awvalid,
    M_AXI_LPD_bid,
    M_AXI_LPD_bready,
    M_AXI_LPD_bresp,
    M_AXI_LPD_bvalid,
    M_AXI_LPD_rdata,
    M_AXI_LPD_rid,
    M_AXI_LPD_rlast,
    M_AXI_LPD_rready,
    M_AXI_LPD_rresp,
    M_AXI_LPD_rvalid,
    M_AXI_LPD_wdata,
    M_AXI_LPD_wlast,
    M_AXI_LPD_wready,
    M_AXI_LPD_wstrb,
    M_AXI_LPD_wvalid,
    fpd_cci_noc_axi0_clk,
    fpd_cci_noc_axi1_clk,
    fpd_cci_noc_axi2_clk,
    fpd_cci_noc_axi3_clk,
    m_axi_fpd_aclk,
    m_axi_lpd_aclk,
    pl0_ref_clk,
    pl0_resetn,
    pl1_ref_clk,
    pl_ps_irq0,
    pl_ps_irq1,
    pl_ps_irq2,
    pl_ps_irq3,
    pl_ps_irq4,
    pl_ps_irq5);
  output [63:0]FPD_CCI_NOC_0_araddr;
  output [1:0]FPD_CCI_NOC_0_arburst;
  output [3:0]FPD_CCI_NOC_0_arcache;
  output [15:0]FPD_CCI_NOC_0_arid;
  output [7:0]FPD_CCI_NOC_0_arlen;
  output FPD_CCI_NOC_0_arlock;
  output [2:0]FPD_CCI_NOC_0_arprot;
  output [3:0]FPD_CCI_NOC_0_arqos;
  input FPD_CCI_NOC_0_arready;
  output [2:0]FPD_CCI_NOC_0_arsize;
  output [17:0]FPD_CCI_NOC_0_aruser;
  output FPD_CCI_NOC_0_arvalid;
  output [63:0]FPD_CCI_NOC_0_awaddr;
  output [1:0]FPD_CCI_NOC_0_awburst;
  output [3:0]FPD_CCI_NOC_0_awcache;
  output [15:0]FPD_CCI_NOC_0_awid;
  output [7:0]FPD_CCI_NOC_0_awlen;
  output FPD_CCI_NOC_0_awlock;
  output [2:0]FPD_CCI_NOC_0_awprot;
  output [3:0]FPD_CCI_NOC_0_awqos;
  input FPD_CCI_NOC_0_awready;
  output [2:0]FPD_CCI_NOC_0_awsize;
  output [17:0]FPD_CCI_NOC_0_awuser;
  output FPD_CCI_NOC_0_awvalid;
  input [15:0]FPD_CCI_NOC_0_bid;
  output FPD_CCI_NOC_0_bready;
  input [1:0]FPD_CCI_NOC_0_bresp;
  input FPD_CCI_NOC_0_bvalid;
  input [127:0]FPD_CCI_NOC_0_rdata;
  input [15:0]FPD_CCI_NOC_0_rid;
  input FPD_CCI_NOC_0_rlast;
  output FPD_CCI_NOC_0_rready;
  input [1:0]FPD_CCI_NOC_0_rresp;
  input FPD_CCI_NOC_0_rvalid;
  output [127:0]FPD_CCI_NOC_0_wdata;
  output FPD_CCI_NOC_0_wlast;
  input FPD_CCI_NOC_0_wready;
  output [15:0]FPD_CCI_NOC_0_wstrb;
  output [16:0]FPD_CCI_NOC_0_wuser;
  output FPD_CCI_NOC_0_wvalid;
  output [63:0]FPD_CCI_NOC_1_araddr;
  output [1:0]FPD_CCI_NOC_1_arburst;
  output [3:0]FPD_CCI_NOC_1_arcache;
  output [15:0]FPD_CCI_NOC_1_arid;
  output [7:0]FPD_CCI_NOC_1_arlen;
  output FPD_CCI_NOC_1_arlock;
  output [2:0]FPD_CCI_NOC_1_arprot;
  output [3:0]FPD_CCI_NOC_1_arqos;
  input FPD_CCI_NOC_1_arready;
  output [2:0]FPD_CCI_NOC_1_arsize;
  output [17:0]FPD_CCI_NOC_1_aruser;
  output FPD_CCI_NOC_1_arvalid;
  output [63:0]FPD_CCI_NOC_1_awaddr;
  output [1:0]FPD_CCI_NOC_1_awburst;
  output [3:0]FPD_CCI_NOC_1_awcache;
  output [15:0]FPD_CCI_NOC_1_awid;
  output [7:0]FPD_CCI_NOC_1_awlen;
  output FPD_CCI_NOC_1_awlock;
  output [2:0]FPD_CCI_NOC_1_awprot;
  output [3:0]FPD_CCI_NOC_1_awqos;
  input FPD_CCI_NOC_1_awready;
  output [2:0]FPD_CCI_NOC_1_awsize;
  output [17:0]FPD_CCI_NOC_1_awuser;
  output FPD_CCI_NOC_1_awvalid;
  input [15:0]FPD_CCI_NOC_1_bid;
  output FPD_CCI_NOC_1_bready;
  input [1:0]FPD_CCI_NOC_1_bresp;
  input FPD_CCI_NOC_1_bvalid;
  input [127:0]FPD_CCI_NOC_1_rdata;
  input [15:0]FPD_CCI_NOC_1_rid;
  input FPD_CCI_NOC_1_rlast;
  output FPD_CCI_NOC_1_rready;
  input [1:0]FPD_CCI_NOC_1_rresp;
  input FPD_CCI_NOC_1_rvalid;
  output [127:0]FPD_CCI_NOC_1_wdata;
  output FPD_CCI_NOC_1_wlast;
  input FPD_CCI_NOC_1_wready;
  output [15:0]FPD_CCI_NOC_1_wstrb;
  output [16:0]FPD_CCI_NOC_1_wuser;
  output FPD_CCI_NOC_1_wvalid;
  output [63:0]FPD_CCI_NOC_2_araddr;
  output [1:0]FPD_CCI_NOC_2_arburst;
  output [3:0]FPD_CCI_NOC_2_arcache;
  output [15:0]FPD_CCI_NOC_2_arid;
  output [7:0]FPD_CCI_NOC_2_arlen;
  output FPD_CCI_NOC_2_arlock;
  output [2:0]FPD_CCI_NOC_2_arprot;
  output [3:0]FPD_CCI_NOC_2_arqos;
  input FPD_CCI_NOC_2_arready;
  output [2:0]FPD_CCI_NOC_2_arsize;
  output [17:0]FPD_CCI_NOC_2_aruser;
  output FPD_CCI_NOC_2_arvalid;
  output [63:0]FPD_CCI_NOC_2_awaddr;
  output [1:0]FPD_CCI_NOC_2_awburst;
  output [3:0]FPD_CCI_NOC_2_awcache;
  output [15:0]FPD_CCI_NOC_2_awid;
  output [7:0]FPD_CCI_NOC_2_awlen;
  output FPD_CCI_NOC_2_awlock;
  output [2:0]FPD_CCI_NOC_2_awprot;
  output [3:0]FPD_CCI_NOC_2_awqos;
  input FPD_CCI_NOC_2_awready;
  output [2:0]FPD_CCI_NOC_2_awsize;
  output [17:0]FPD_CCI_NOC_2_awuser;
  output FPD_CCI_NOC_2_awvalid;
  input [15:0]FPD_CCI_NOC_2_bid;
  output FPD_CCI_NOC_2_bready;
  input [1:0]FPD_CCI_NOC_2_bresp;
  input FPD_CCI_NOC_2_bvalid;
  input [127:0]FPD_CCI_NOC_2_rdata;
  input [15:0]FPD_CCI_NOC_2_rid;
  input FPD_CCI_NOC_2_rlast;
  output FPD_CCI_NOC_2_rready;
  input [1:0]FPD_CCI_NOC_2_rresp;
  input FPD_CCI_NOC_2_rvalid;
  output [127:0]FPD_CCI_NOC_2_wdata;
  output FPD_CCI_NOC_2_wlast;
  input FPD_CCI_NOC_2_wready;
  output [15:0]FPD_CCI_NOC_2_wstrb;
  output [16:0]FPD_CCI_NOC_2_wuser;
  output FPD_CCI_NOC_2_wvalid;
  output [63:0]FPD_CCI_NOC_3_araddr;
  output [1:0]FPD_CCI_NOC_3_arburst;
  output [3:0]FPD_CCI_NOC_3_arcache;
  output [15:0]FPD_CCI_NOC_3_arid;
  output [7:0]FPD_CCI_NOC_3_arlen;
  output FPD_CCI_NOC_3_arlock;
  output [2:0]FPD_CCI_NOC_3_arprot;
  output [3:0]FPD_CCI_NOC_3_arqos;
  input FPD_CCI_NOC_3_arready;
  output [2:0]FPD_CCI_NOC_3_arsize;
  output [17:0]FPD_CCI_NOC_3_aruser;
  output FPD_CCI_NOC_3_arvalid;
  output [63:0]FPD_CCI_NOC_3_awaddr;
  output [1:0]FPD_CCI_NOC_3_awburst;
  output [3:0]FPD_CCI_NOC_3_awcache;
  output [15:0]FPD_CCI_NOC_3_awid;
  output [7:0]FPD_CCI_NOC_3_awlen;
  output FPD_CCI_NOC_3_awlock;
  output [2:0]FPD_CCI_NOC_3_awprot;
  output [3:0]FPD_CCI_NOC_3_awqos;
  input FPD_CCI_NOC_3_awready;
  output [2:0]FPD_CCI_NOC_3_awsize;
  output [17:0]FPD_CCI_NOC_3_awuser;
  output FPD_CCI_NOC_3_awvalid;
  input [15:0]FPD_CCI_NOC_3_bid;
  output FPD_CCI_NOC_3_bready;
  input [1:0]FPD_CCI_NOC_3_bresp;
  input FPD_CCI_NOC_3_bvalid;
  input [127:0]FPD_CCI_NOC_3_rdata;
  input [15:0]FPD_CCI_NOC_3_rid;
  input FPD_CCI_NOC_3_rlast;
  output FPD_CCI_NOC_3_rready;
  input [1:0]FPD_CCI_NOC_3_rresp;
  input FPD_CCI_NOC_3_rvalid;
  output [127:0]FPD_CCI_NOC_3_wdata;
  output FPD_CCI_NOC_3_wlast;
  input FPD_CCI_NOC_3_wready;
  output [15:0]FPD_CCI_NOC_3_wstrb;
  output [16:0]FPD_CCI_NOC_3_wuser;
  output FPD_CCI_NOC_3_wvalid;
  output [43:0]M_AXI_FPD_araddr;
  output [1:0]M_AXI_FPD_arburst;
  output [3:0]M_AXI_FPD_arcache;
  output [15:0]M_AXI_FPD_arid;
  output [7:0]M_AXI_FPD_arlen;
  output M_AXI_FPD_arlock;
  output [2:0]M_AXI_FPD_arprot;
  output [3:0]M_AXI_FPD_arqos;
  input M_AXI_FPD_arready;
  output [2:0]M_AXI_FPD_arsize;
  output [15:0]M_AXI_FPD_aruser;
  output M_AXI_FPD_arvalid;
  output [43:0]M_AXI_FPD_awaddr;
  output [1:0]M_AXI_FPD_awburst;
  output [3:0]M_AXI_FPD_awcache;
  output [15:0]M_AXI_FPD_awid;
  output [7:0]M_AXI_FPD_awlen;
  output M_AXI_FPD_awlock;
  output [2:0]M_AXI_FPD_awprot;
  output [3:0]M_AXI_FPD_awqos;
  input M_AXI_FPD_awready;
  output [2:0]M_AXI_FPD_awsize;
  output [15:0]M_AXI_FPD_awuser;
  output M_AXI_FPD_awvalid;
  input [15:0]M_AXI_FPD_bid;
  output M_AXI_FPD_bready;
  input [1:0]M_AXI_FPD_bresp;
  input M_AXI_FPD_bvalid;
  input [127:0]M_AXI_FPD_rdata;
  input [15:0]M_AXI_FPD_rid;
  input M_AXI_FPD_rlast;
  output M_AXI_FPD_rready;
  input [1:0]M_AXI_FPD_rresp;
  input M_AXI_FPD_rvalid;
  output [127:0]M_AXI_FPD_wdata;
  output M_AXI_FPD_wlast;
  input M_AXI_FPD_wready;
  output [15:0]M_AXI_FPD_wstrb;
  output M_AXI_FPD_wvalid;
  output [43:0]M_AXI_LPD_araddr;
  output [1:0]M_AXI_LPD_arburst;
  output [3:0]M_AXI_LPD_arcache;
  output [15:0]M_AXI_LPD_arid;
  output [7:0]M_AXI_LPD_arlen;
  output M_AXI_LPD_arlock;
  output [2:0]M_AXI_LPD_arprot;
  output [3:0]M_AXI_LPD_arqos;
  input M_AXI_LPD_arready;
  output [2:0]M_AXI_LPD_arsize;
  output [15:0]M_AXI_LPD_aruser;
  output M_AXI_LPD_arvalid;
  output [43:0]M_AXI_LPD_awaddr;
  output [1:0]M_AXI_LPD_awburst;
  output [3:0]M_AXI_LPD_awcache;
  output [15:0]M_AXI_LPD_awid;
  output [7:0]M_AXI_LPD_awlen;
  output M_AXI_LPD_awlock;
  output [2:0]M_AXI_LPD_awprot;
  output [3:0]M_AXI_LPD_awqos;
  input M_AXI_LPD_awready;
  output [2:0]M_AXI_LPD_awsize;
  output [15:0]M_AXI_LPD_awuser;
  output M_AXI_LPD_awvalid;
  input [15:0]M_AXI_LPD_bid;
  output M_AXI_LPD_bready;
  input [1:0]M_AXI_LPD_bresp;
  input M_AXI_LPD_bvalid;
  input [127:0]M_AXI_LPD_rdata;
  input [15:0]M_AXI_LPD_rid;
  input M_AXI_LPD_rlast;
  output M_AXI_LPD_rready;
  input [1:0]M_AXI_LPD_rresp;
  input M_AXI_LPD_rvalid;
  output [127:0]M_AXI_LPD_wdata;
  output M_AXI_LPD_wlast;
  input M_AXI_LPD_wready;
  output [15:0]M_AXI_LPD_wstrb;
  output M_AXI_LPD_wvalid;
  output fpd_cci_noc_axi0_clk;
  output fpd_cci_noc_axi1_clk;
  output fpd_cci_noc_axi2_clk;
  output fpd_cci_noc_axi3_clk;
  input m_axi_fpd_aclk;
  input m_axi_lpd_aclk;
  output pl0_ref_clk;
  output pl0_resetn;
  output pl1_ref_clk;
  input pl_ps_irq0;
  input pl_ps_irq1;
  input pl_ps_irq2;
  input pl_ps_irq3;
  input pl_ps_irq4;
  input pl_ps_irq5;

  wire [63:0]FPD_CCI_NOC_0_araddr;
  wire [1:0]FPD_CCI_NOC_0_arburst;
  wire [3:0]FPD_CCI_NOC_0_arcache;
  wire [15:0]FPD_CCI_NOC_0_arid;
  wire [7:0]FPD_CCI_NOC_0_arlen;
  wire FPD_CCI_NOC_0_arlock;
  wire [2:0]FPD_CCI_NOC_0_arprot;
  wire [3:0]FPD_CCI_NOC_0_arqos;
  wire FPD_CCI_NOC_0_arready;
  wire [2:0]FPD_CCI_NOC_0_arsize;
  wire [17:0]FPD_CCI_NOC_0_aruser;
  wire FPD_CCI_NOC_0_arvalid;
  wire [63:0]FPD_CCI_NOC_0_awaddr;
  wire [1:0]FPD_CCI_NOC_0_awburst;
  wire [3:0]FPD_CCI_NOC_0_awcache;
  wire [15:0]FPD_CCI_NOC_0_awid;
  wire [7:0]FPD_CCI_NOC_0_awlen;
  wire FPD_CCI_NOC_0_awlock;
  wire [2:0]FPD_CCI_NOC_0_awprot;
  wire [3:0]FPD_CCI_NOC_0_awqos;
  wire FPD_CCI_NOC_0_awready;
  wire [2:0]FPD_CCI_NOC_0_awsize;
  wire [17:0]FPD_CCI_NOC_0_awuser;
  wire FPD_CCI_NOC_0_awvalid;
  wire [15:0]FPD_CCI_NOC_0_bid;
  wire FPD_CCI_NOC_0_bready;
  wire [1:0]FPD_CCI_NOC_0_bresp;
  wire FPD_CCI_NOC_0_bvalid;
  wire [127:0]FPD_CCI_NOC_0_rdata;
  wire [15:0]FPD_CCI_NOC_0_rid;
  wire FPD_CCI_NOC_0_rlast;
  wire FPD_CCI_NOC_0_rready;
  wire [1:0]FPD_CCI_NOC_0_rresp;
  wire FPD_CCI_NOC_0_rvalid;
  wire [127:0]FPD_CCI_NOC_0_wdata;
  wire FPD_CCI_NOC_0_wlast;
  wire FPD_CCI_NOC_0_wready;
  wire [15:0]FPD_CCI_NOC_0_wstrb;
  wire [16:0]FPD_CCI_NOC_0_wuser;
  wire FPD_CCI_NOC_0_wvalid;
  wire [63:0]FPD_CCI_NOC_1_araddr;
  wire [1:0]FPD_CCI_NOC_1_arburst;
  wire [3:0]FPD_CCI_NOC_1_arcache;
  wire [15:0]FPD_CCI_NOC_1_arid;
  wire [7:0]FPD_CCI_NOC_1_arlen;
  wire FPD_CCI_NOC_1_arlock;
  wire [2:0]FPD_CCI_NOC_1_arprot;
  wire [3:0]FPD_CCI_NOC_1_arqos;
  wire FPD_CCI_NOC_1_arready;
  wire [2:0]FPD_CCI_NOC_1_arsize;
  wire [17:0]FPD_CCI_NOC_1_aruser;
  wire FPD_CCI_NOC_1_arvalid;
  wire [63:0]FPD_CCI_NOC_1_awaddr;
  wire [1:0]FPD_CCI_NOC_1_awburst;
  wire [3:0]FPD_CCI_NOC_1_awcache;
  wire [15:0]FPD_CCI_NOC_1_awid;
  wire [7:0]FPD_CCI_NOC_1_awlen;
  wire FPD_CCI_NOC_1_awlock;
  wire [2:0]FPD_CCI_NOC_1_awprot;
  wire [3:0]FPD_CCI_NOC_1_awqos;
  wire FPD_CCI_NOC_1_awready;
  wire [2:0]FPD_CCI_NOC_1_awsize;
  wire [17:0]FPD_CCI_NOC_1_awuser;
  wire FPD_CCI_NOC_1_awvalid;
  wire [15:0]FPD_CCI_NOC_1_bid;
  wire FPD_CCI_NOC_1_bready;
  wire [1:0]FPD_CCI_NOC_1_bresp;
  wire FPD_CCI_NOC_1_bvalid;
  wire [127:0]FPD_CCI_NOC_1_rdata;
  wire [15:0]FPD_CCI_NOC_1_rid;
  wire FPD_CCI_NOC_1_rlast;
  wire FPD_CCI_NOC_1_rready;
  wire [1:0]FPD_CCI_NOC_1_rresp;
  wire FPD_CCI_NOC_1_rvalid;
  wire [127:0]FPD_CCI_NOC_1_wdata;
  wire FPD_CCI_NOC_1_wlast;
  wire FPD_CCI_NOC_1_wready;
  wire [15:0]FPD_CCI_NOC_1_wstrb;
  wire [16:0]FPD_CCI_NOC_1_wuser;
  wire FPD_CCI_NOC_1_wvalid;
  wire [63:0]FPD_CCI_NOC_2_araddr;
  wire [1:0]FPD_CCI_NOC_2_arburst;
  wire [3:0]FPD_CCI_NOC_2_arcache;
  wire [15:0]FPD_CCI_NOC_2_arid;
  wire [7:0]FPD_CCI_NOC_2_arlen;
  wire FPD_CCI_NOC_2_arlock;
  wire [2:0]FPD_CCI_NOC_2_arprot;
  wire [3:0]FPD_CCI_NOC_2_arqos;
  wire FPD_CCI_NOC_2_arready;
  wire [2:0]FPD_CCI_NOC_2_arsize;
  wire [17:0]FPD_CCI_NOC_2_aruser;
  wire FPD_CCI_NOC_2_arvalid;
  wire [63:0]FPD_CCI_NOC_2_awaddr;
  wire [1:0]FPD_CCI_NOC_2_awburst;
  wire [3:0]FPD_CCI_NOC_2_awcache;
  wire [15:0]FPD_CCI_NOC_2_awid;
  wire [7:0]FPD_CCI_NOC_2_awlen;
  wire FPD_CCI_NOC_2_awlock;
  wire [2:0]FPD_CCI_NOC_2_awprot;
  wire [3:0]FPD_CCI_NOC_2_awqos;
  wire FPD_CCI_NOC_2_awready;
  wire [2:0]FPD_CCI_NOC_2_awsize;
  wire [17:0]FPD_CCI_NOC_2_awuser;
  wire FPD_CCI_NOC_2_awvalid;
  wire [15:0]FPD_CCI_NOC_2_bid;
  wire FPD_CCI_NOC_2_bready;
  wire [1:0]FPD_CCI_NOC_2_bresp;
  wire FPD_CCI_NOC_2_bvalid;
  wire [127:0]FPD_CCI_NOC_2_rdata;
  wire [15:0]FPD_CCI_NOC_2_rid;
  wire FPD_CCI_NOC_2_rlast;
  wire FPD_CCI_NOC_2_rready;
  wire [1:0]FPD_CCI_NOC_2_rresp;
  wire FPD_CCI_NOC_2_rvalid;
  wire [127:0]FPD_CCI_NOC_2_wdata;
  wire FPD_CCI_NOC_2_wlast;
  wire FPD_CCI_NOC_2_wready;
  wire [15:0]FPD_CCI_NOC_2_wstrb;
  wire [16:0]FPD_CCI_NOC_2_wuser;
  wire FPD_CCI_NOC_2_wvalid;
  wire [63:0]FPD_CCI_NOC_3_araddr;
  wire [1:0]FPD_CCI_NOC_3_arburst;
  wire [3:0]FPD_CCI_NOC_3_arcache;
  wire [15:0]FPD_CCI_NOC_3_arid;
  wire [7:0]FPD_CCI_NOC_3_arlen;
  wire FPD_CCI_NOC_3_arlock;
  wire [2:0]FPD_CCI_NOC_3_arprot;
  wire [3:0]FPD_CCI_NOC_3_arqos;
  wire FPD_CCI_NOC_3_arready;
  wire [2:0]FPD_CCI_NOC_3_arsize;
  wire [17:0]FPD_CCI_NOC_3_aruser;
  wire FPD_CCI_NOC_3_arvalid;
  wire [63:0]FPD_CCI_NOC_3_awaddr;
  wire [1:0]FPD_CCI_NOC_3_awburst;
  wire [3:0]FPD_CCI_NOC_3_awcache;
  wire [15:0]FPD_CCI_NOC_3_awid;
  wire [7:0]FPD_CCI_NOC_3_awlen;
  wire FPD_CCI_NOC_3_awlock;
  wire [2:0]FPD_CCI_NOC_3_awprot;
  wire [3:0]FPD_CCI_NOC_3_awqos;
  wire FPD_CCI_NOC_3_awready;
  wire [2:0]FPD_CCI_NOC_3_awsize;
  wire [17:0]FPD_CCI_NOC_3_awuser;
  wire FPD_CCI_NOC_3_awvalid;
  wire [15:0]FPD_CCI_NOC_3_bid;
  wire FPD_CCI_NOC_3_bready;
  wire [1:0]FPD_CCI_NOC_3_bresp;
  wire FPD_CCI_NOC_3_bvalid;
  wire [127:0]FPD_CCI_NOC_3_rdata;
  wire [15:0]FPD_CCI_NOC_3_rid;
  wire FPD_CCI_NOC_3_rlast;
  wire FPD_CCI_NOC_3_rready;
  wire [1:0]FPD_CCI_NOC_3_rresp;
  wire FPD_CCI_NOC_3_rvalid;
  wire [127:0]FPD_CCI_NOC_3_wdata;
  wire FPD_CCI_NOC_3_wlast;
  wire FPD_CCI_NOC_3_wready;
  wire [15:0]FPD_CCI_NOC_3_wstrb;
  wire [16:0]FPD_CCI_NOC_3_wuser;
  wire FPD_CCI_NOC_3_wvalid;
  wire [43:0]M_AXI_FPD_araddr;
  wire [1:0]M_AXI_FPD_arburst;
  wire [3:0]M_AXI_FPD_arcache;
  wire [15:0]M_AXI_FPD_arid;
  wire [7:0]M_AXI_FPD_arlen;
  wire M_AXI_FPD_arlock;
  wire [2:0]M_AXI_FPD_arprot;
  wire [3:0]M_AXI_FPD_arqos;
  wire M_AXI_FPD_arready;
  wire [2:0]M_AXI_FPD_arsize;
  wire [15:0]M_AXI_FPD_aruser;
  wire M_AXI_FPD_arvalid;
  wire [43:0]M_AXI_FPD_awaddr;
  wire [1:0]M_AXI_FPD_awburst;
  wire [3:0]M_AXI_FPD_awcache;
  wire [15:0]M_AXI_FPD_awid;
  wire [7:0]M_AXI_FPD_awlen;
  wire M_AXI_FPD_awlock;
  wire [2:0]M_AXI_FPD_awprot;
  wire [3:0]M_AXI_FPD_awqos;
  wire M_AXI_FPD_awready;
  wire [2:0]M_AXI_FPD_awsize;
  wire [15:0]M_AXI_FPD_awuser;
  wire M_AXI_FPD_awvalid;
  wire [15:0]M_AXI_FPD_bid;
  wire M_AXI_FPD_bready;
  wire [1:0]M_AXI_FPD_bresp;
  wire M_AXI_FPD_bvalid;
  wire [127:0]M_AXI_FPD_rdata;
  wire [15:0]M_AXI_FPD_rid;
  wire M_AXI_FPD_rlast;
  wire M_AXI_FPD_rready;
  wire [1:0]M_AXI_FPD_rresp;
  wire M_AXI_FPD_rvalid;
  wire [127:0]M_AXI_FPD_wdata;
  wire M_AXI_FPD_wlast;
  wire M_AXI_FPD_wready;
  wire [15:0]M_AXI_FPD_wstrb;
  wire M_AXI_FPD_wvalid;
  wire [43:0]M_AXI_LPD_araddr;
  wire [1:0]M_AXI_LPD_arburst;
  wire [3:0]M_AXI_LPD_arcache;
  wire [15:0]M_AXI_LPD_arid;
  wire [7:0]M_AXI_LPD_arlen;
  wire M_AXI_LPD_arlock;
  wire [2:0]M_AXI_LPD_arprot;
  wire [3:0]M_AXI_LPD_arqos;
  wire M_AXI_LPD_arready;
  wire [2:0]M_AXI_LPD_arsize;
  wire [15:0]M_AXI_LPD_aruser;
  wire M_AXI_LPD_arvalid;
  wire [43:0]M_AXI_LPD_awaddr;
  wire [1:0]M_AXI_LPD_awburst;
  wire [3:0]M_AXI_LPD_awcache;
  wire [15:0]M_AXI_LPD_awid;
  wire [7:0]M_AXI_LPD_awlen;
  wire M_AXI_LPD_awlock;
  wire [2:0]M_AXI_LPD_awprot;
  wire [3:0]M_AXI_LPD_awqos;
  wire M_AXI_LPD_awready;
  wire [2:0]M_AXI_LPD_awsize;
  wire [15:0]M_AXI_LPD_awuser;
  wire M_AXI_LPD_awvalid;
  wire [15:0]M_AXI_LPD_bid;
  wire M_AXI_LPD_bready;
  wire [1:0]M_AXI_LPD_bresp;
  wire M_AXI_LPD_bvalid;
  wire [127:0]M_AXI_LPD_rdata;
  wire [15:0]M_AXI_LPD_rid;
  wire M_AXI_LPD_rlast;
  wire M_AXI_LPD_rready;
  wire [1:0]M_AXI_LPD_rresp;
  wire M_AXI_LPD_rvalid;
  wire [127:0]M_AXI_LPD_wdata;
  wire M_AXI_LPD_wlast;
  wire M_AXI_LPD_wready;
  wire [15:0]M_AXI_LPD_wstrb;
  wire M_AXI_LPD_wvalid;
  wire fpd_cci_noc_axi0_clk;
  wire fpd_cci_noc_axi1_clk;
  wire fpd_cci_noc_axi2_clk;
  wire fpd_cci_noc_axi3_clk;
  wire m_axi_fpd_aclk;
  wire m_axi_lpd_aclk;
  wire pl0_ref_clk;
  wire pl0_resetn;
  wire pl1_ref_clk;
  wire pl_ps_irq0;
  wire pl_ps_irq1;
  wire pl_ps_irq2;
  wire pl_ps_irq3;
  wire pl_ps_irq4;
  wire pl_ps_irq5;

  bd_65e0 bd_65e0_i
       (.FPD_CCI_NOC_0_araddr(FPD_CCI_NOC_0_araddr),
        .FPD_CCI_NOC_0_arburst(FPD_CCI_NOC_0_arburst),
        .FPD_CCI_NOC_0_arcache(FPD_CCI_NOC_0_arcache),
        .FPD_CCI_NOC_0_arid(FPD_CCI_NOC_0_arid),
        .FPD_CCI_NOC_0_arlen(FPD_CCI_NOC_0_arlen),
        .FPD_CCI_NOC_0_arlock(FPD_CCI_NOC_0_arlock),
        .FPD_CCI_NOC_0_arprot(FPD_CCI_NOC_0_arprot),
        .FPD_CCI_NOC_0_arqos(FPD_CCI_NOC_0_arqos),
        .FPD_CCI_NOC_0_arready(FPD_CCI_NOC_0_arready),
        .FPD_CCI_NOC_0_arsize(FPD_CCI_NOC_0_arsize),
        .FPD_CCI_NOC_0_aruser(FPD_CCI_NOC_0_aruser),
        .FPD_CCI_NOC_0_arvalid(FPD_CCI_NOC_0_arvalid),
        .FPD_CCI_NOC_0_awaddr(FPD_CCI_NOC_0_awaddr),
        .FPD_CCI_NOC_0_awburst(FPD_CCI_NOC_0_awburst),
        .FPD_CCI_NOC_0_awcache(FPD_CCI_NOC_0_awcache),
        .FPD_CCI_NOC_0_awid(FPD_CCI_NOC_0_awid),
        .FPD_CCI_NOC_0_awlen(FPD_CCI_NOC_0_awlen),
        .FPD_CCI_NOC_0_awlock(FPD_CCI_NOC_0_awlock),
        .FPD_CCI_NOC_0_awprot(FPD_CCI_NOC_0_awprot),
        .FPD_CCI_NOC_0_awqos(FPD_CCI_NOC_0_awqos),
        .FPD_CCI_NOC_0_awready(FPD_CCI_NOC_0_awready),
        .FPD_CCI_NOC_0_awsize(FPD_CCI_NOC_0_awsize),
        .FPD_CCI_NOC_0_awuser(FPD_CCI_NOC_0_awuser),
        .FPD_CCI_NOC_0_awvalid(FPD_CCI_NOC_0_awvalid),
        .FPD_CCI_NOC_0_bid(FPD_CCI_NOC_0_bid),
        .FPD_CCI_NOC_0_bready(FPD_CCI_NOC_0_bready),
        .FPD_CCI_NOC_0_bresp(FPD_CCI_NOC_0_bresp),
        .FPD_CCI_NOC_0_bvalid(FPD_CCI_NOC_0_bvalid),
        .FPD_CCI_NOC_0_rdata(FPD_CCI_NOC_0_rdata),
        .FPD_CCI_NOC_0_rid(FPD_CCI_NOC_0_rid),
        .FPD_CCI_NOC_0_rlast(FPD_CCI_NOC_0_rlast),
        .FPD_CCI_NOC_0_rready(FPD_CCI_NOC_0_rready),
        .FPD_CCI_NOC_0_rresp(FPD_CCI_NOC_0_rresp),
        .FPD_CCI_NOC_0_rvalid(FPD_CCI_NOC_0_rvalid),
        .FPD_CCI_NOC_0_wdata(FPD_CCI_NOC_0_wdata),
        .FPD_CCI_NOC_0_wlast(FPD_CCI_NOC_0_wlast),
        .FPD_CCI_NOC_0_wready(FPD_CCI_NOC_0_wready),
        .FPD_CCI_NOC_0_wstrb(FPD_CCI_NOC_0_wstrb),
        .FPD_CCI_NOC_0_wuser(FPD_CCI_NOC_0_wuser),
        .FPD_CCI_NOC_0_wvalid(FPD_CCI_NOC_0_wvalid),
        .FPD_CCI_NOC_1_araddr(FPD_CCI_NOC_1_araddr),
        .FPD_CCI_NOC_1_arburst(FPD_CCI_NOC_1_arburst),
        .FPD_CCI_NOC_1_arcache(FPD_CCI_NOC_1_arcache),
        .FPD_CCI_NOC_1_arid(FPD_CCI_NOC_1_arid),
        .FPD_CCI_NOC_1_arlen(FPD_CCI_NOC_1_arlen),
        .FPD_CCI_NOC_1_arlock(FPD_CCI_NOC_1_arlock),
        .FPD_CCI_NOC_1_arprot(FPD_CCI_NOC_1_arprot),
        .FPD_CCI_NOC_1_arqos(FPD_CCI_NOC_1_arqos),
        .FPD_CCI_NOC_1_arready(FPD_CCI_NOC_1_arready),
        .FPD_CCI_NOC_1_arsize(FPD_CCI_NOC_1_arsize),
        .FPD_CCI_NOC_1_aruser(FPD_CCI_NOC_1_aruser),
        .FPD_CCI_NOC_1_arvalid(FPD_CCI_NOC_1_arvalid),
        .FPD_CCI_NOC_1_awaddr(FPD_CCI_NOC_1_awaddr),
        .FPD_CCI_NOC_1_awburst(FPD_CCI_NOC_1_awburst),
        .FPD_CCI_NOC_1_awcache(FPD_CCI_NOC_1_awcache),
        .FPD_CCI_NOC_1_awid(FPD_CCI_NOC_1_awid),
        .FPD_CCI_NOC_1_awlen(FPD_CCI_NOC_1_awlen),
        .FPD_CCI_NOC_1_awlock(FPD_CCI_NOC_1_awlock),
        .FPD_CCI_NOC_1_awprot(FPD_CCI_NOC_1_awprot),
        .FPD_CCI_NOC_1_awqos(FPD_CCI_NOC_1_awqos),
        .FPD_CCI_NOC_1_awready(FPD_CCI_NOC_1_awready),
        .FPD_CCI_NOC_1_awsize(FPD_CCI_NOC_1_awsize),
        .FPD_CCI_NOC_1_awuser(FPD_CCI_NOC_1_awuser),
        .FPD_CCI_NOC_1_awvalid(FPD_CCI_NOC_1_awvalid),
        .FPD_CCI_NOC_1_bid(FPD_CCI_NOC_1_bid),
        .FPD_CCI_NOC_1_bready(FPD_CCI_NOC_1_bready),
        .FPD_CCI_NOC_1_bresp(FPD_CCI_NOC_1_bresp),
        .FPD_CCI_NOC_1_bvalid(FPD_CCI_NOC_1_bvalid),
        .FPD_CCI_NOC_1_rdata(FPD_CCI_NOC_1_rdata),
        .FPD_CCI_NOC_1_rid(FPD_CCI_NOC_1_rid),
        .FPD_CCI_NOC_1_rlast(FPD_CCI_NOC_1_rlast),
        .FPD_CCI_NOC_1_rready(FPD_CCI_NOC_1_rready),
        .FPD_CCI_NOC_1_rresp(FPD_CCI_NOC_1_rresp),
        .FPD_CCI_NOC_1_rvalid(FPD_CCI_NOC_1_rvalid),
        .FPD_CCI_NOC_1_wdata(FPD_CCI_NOC_1_wdata),
        .FPD_CCI_NOC_1_wlast(FPD_CCI_NOC_1_wlast),
        .FPD_CCI_NOC_1_wready(FPD_CCI_NOC_1_wready),
        .FPD_CCI_NOC_1_wstrb(FPD_CCI_NOC_1_wstrb),
        .FPD_CCI_NOC_1_wuser(FPD_CCI_NOC_1_wuser),
        .FPD_CCI_NOC_1_wvalid(FPD_CCI_NOC_1_wvalid),
        .FPD_CCI_NOC_2_araddr(FPD_CCI_NOC_2_araddr),
        .FPD_CCI_NOC_2_arburst(FPD_CCI_NOC_2_arburst),
        .FPD_CCI_NOC_2_arcache(FPD_CCI_NOC_2_arcache),
        .FPD_CCI_NOC_2_arid(FPD_CCI_NOC_2_arid),
        .FPD_CCI_NOC_2_arlen(FPD_CCI_NOC_2_arlen),
        .FPD_CCI_NOC_2_arlock(FPD_CCI_NOC_2_arlock),
        .FPD_CCI_NOC_2_arprot(FPD_CCI_NOC_2_arprot),
        .FPD_CCI_NOC_2_arqos(FPD_CCI_NOC_2_arqos),
        .FPD_CCI_NOC_2_arready(FPD_CCI_NOC_2_arready),
        .FPD_CCI_NOC_2_arsize(FPD_CCI_NOC_2_arsize),
        .FPD_CCI_NOC_2_aruser(FPD_CCI_NOC_2_aruser),
        .FPD_CCI_NOC_2_arvalid(FPD_CCI_NOC_2_arvalid),
        .FPD_CCI_NOC_2_awaddr(FPD_CCI_NOC_2_awaddr),
        .FPD_CCI_NOC_2_awburst(FPD_CCI_NOC_2_awburst),
        .FPD_CCI_NOC_2_awcache(FPD_CCI_NOC_2_awcache),
        .FPD_CCI_NOC_2_awid(FPD_CCI_NOC_2_awid),
        .FPD_CCI_NOC_2_awlen(FPD_CCI_NOC_2_awlen),
        .FPD_CCI_NOC_2_awlock(FPD_CCI_NOC_2_awlock),
        .FPD_CCI_NOC_2_awprot(FPD_CCI_NOC_2_awprot),
        .FPD_CCI_NOC_2_awqos(FPD_CCI_NOC_2_awqos),
        .FPD_CCI_NOC_2_awready(FPD_CCI_NOC_2_awready),
        .FPD_CCI_NOC_2_awsize(FPD_CCI_NOC_2_awsize),
        .FPD_CCI_NOC_2_awuser(FPD_CCI_NOC_2_awuser),
        .FPD_CCI_NOC_2_awvalid(FPD_CCI_NOC_2_awvalid),
        .FPD_CCI_NOC_2_bid(FPD_CCI_NOC_2_bid),
        .FPD_CCI_NOC_2_bready(FPD_CCI_NOC_2_bready),
        .FPD_CCI_NOC_2_bresp(FPD_CCI_NOC_2_bresp),
        .FPD_CCI_NOC_2_bvalid(FPD_CCI_NOC_2_bvalid),
        .FPD_CCI_NOC_2_rdata(FPD_CCI_NOC_2_rdata),
        .FPD_CCI_NOC_2_rid(FPD_CCI_NOC_2_rid),
        .FPD_CCI_NOC_2_rlast(FPD_CCI_NOC_2_rlast),
        .FPD_CCI_NOC_2_rready(FPD_CCI_NOC_2_rready),
        .FPD_CCI_NOC_2_rresp(FPD_CCI_NOC_2_rresp),
        .FPD_CCI_NOC_2_rvalid(FPD_CCI_NOC_2_rvalid),
        .FPD_CCI_NOC_2_wdata(FPD_CCI_NOC_2_wdata),
        .FPD_CCI_NOC_2_wlast(FPD_CCI_NOC_2_wlast),
        .FPD_CCI_NOC_2_wready(FPD_CCI_NOC_2_wready),
        .FPD_CCI_NOC_2_wstrb(FPD_CCI_NOC_2_wstrb),
        .FPD_CCI_NOC_2_wuser(FPD_CCI_NOC_2_wuser),
        .FPD_CCI_NOC_2_wvalid(FPD_CCI_NOC_2_wvalid),
        .FPD_CCI_NOC_3_araddr(FPD_CCI_NOC_3_araddr),
        .FPD_CCI_NOC_3_arburst(FPD_CCI_NOC_3_arburst),
        .FPD_CCI_NOC_3_arcache(FPD_CCI_NOC_3_arcache),
        .FPD_CCI_NOC_3_arid(FPD_CCI_NOC_3_arid),
        .FPD_CCI_NOC_3_arlen(FPD_CCI_NOC_3_arlen),
        .FPD_CCI_NOC_3_arlock(FPD_CCI_NOC_3_arlock),
        .FPD_CCI_NOC_3_arprot(FPD_CCI_NOC_3_arprot),
        .FPD_CCI_NOC_3_arqos(FPD_CCI_NOC_3_arqos),
        .FPD_CCI_NOC_3_arready(FPD_CCI_NOC_3_arready),
        .FPD_CCI_NOC_3_arsize(FPD_CCI_NOC_3_arsize),
        .FPD_CCI_NOC_3_aruser(FPD_CCI_NOC_3_aruser),
        .FPD_CCI_NOC_3_arvalid(FPD_CCI_NOC_3_arvalid),
        .FPD_CCI_NOC_3_awaddr(FPD_CCI_NOC_3_awaddr),
        .FPD_CCI_NOC_3_awburst(FPD_CCI_NOC_3_awburst),
        .FPD_CCI_NOC_3_awcache(FPD_CCI_NOC_3_awcache),
        .FPD_CCI_NOC_3_awid(FPD_CCI_NOC_3_awid),
        .FPD_CCI_NOC_3_awlen(FPD_CCI_NOC_3_awlen),
        .FPD_CCI_NOC_3_awlock(FPD_CCI_NOC_3_awlock),
        .FPD_CCI_NOC_3_awprot(FPD_CCI_NOC_3_awprot),
        .FPD_CCI_NOC_3_awqos(FPD_CCI_NOC_3_awqos),
        .FPD_CCI_NOC_3_awready(FPD_CCI_NOC_3_awready),
        .FPD_CCI_NOC_3_awsize(FPD_CCI_NOC_3_awsize),
        .FPD_CCI_NOC_3_awuser(FPD_CCI_NOC_3_awuser),
        .FPD_CCI_NOC_3_awvalid(FPD_CCI_NOC_3_awvalid),
        .FPD_CCI_NOC_3_bid(FPD_CCI_NOC_3_bid),
        .FPD_CCI_NOC_3_bready(FPD_CCI_NOC_3_bready),
        .FPD_CCI_NOC_3_bresp(FPD_CCI_NOC_3_bresp),
        .FPD_CCI_NOC_3_bvalid(FPD_CCI_NOC_3_bvalid),
        .FPD_CCI_NOC_3_rdata(FPD_CCI_NOC_3_rdata),
        .FPD_CCI_NOC_3_rid(FPD_CCI_NOC_3_rid),
        .FPD_CCI_NOC_3_rlast(FPD_CCI_NOC_3_rlast),
        .FPD_CCI_NOC_3_rready(FPD_CCI_NOC_3_rready),
        .FPD_CCI_NOC_3_rresp(FPD_CCI_NOC_3_rresp),
        .FPD_CCI_NOC_3_rvalid(FPD_CCI_NOC_3_rvalid),
        .FPD_CCI_NOC_3_wdata(FPD_CCI_NOC_3_wdata),
        .FPD_CCI_NOC_3_wlast(FPD_CCI_NOC_3_wlast),
        .FPD_CCI_NOC_3_wready(FPD_CCI_NOC_3_wready),
        .FPD_CCI_NOC_3_wstrb(FPD_CCI_NOC_3_wstrb),
        .FPD_CCI_NOC_3_wuser(FPD_CCI_NOC_3_wuser),
        .FPD_CCI_NOC_3_wvalid(FPD_CCI_NOC_3_wvalid),
        .M_AXI_FPD_araddr(M_AXI_FPD_araddr),
        .M_AXI_FPD_arburst(M_AXI_FPD_arburst),
        .M_AXI_FPD_arcache(M_AXI_FPD_arcache),
        .M_AXI_FPD_arid(M_AXI_FPD_arid),
        .M_AXI_FPD_arlen(M_AXI_FPD_arlen),
        .M_AXI_FPD_arlock(M_AXI_FPD_arlock),
        .M_AXI_FPD_arprot(M_AXI_FPD_arprot),
        .M_AXI_FPD_arqos(M_AXI_FPD_arqos),
        .M_AXI_FPD_arready(M_AXI_FPD_arready),
        .M_AXI_FPD_arsize(M_AXI_FPD_arsize),
        .M_AXI_FPD_aruser(M_AXI_FPD_aruser),
        .M_AXI_FPD_arvalid(M_AXI_FPD_arvalid),
        .M_AXI_FPD_awaddr(M_AXI_FPD_awaddr),
        .M_AXI_FPD_awburst(M_AXI_FPD_awburst),
        .M_AXI_FPD_awcache(M_AXI_FPD_awcache),
        .M_AXI_FPD_awid(M_AXI_FPD_awid),
        .M_AXI_FPD_awlen(M_AXI_FPD_awlen),
        .M_AXI_FPD_awlock(M_AXI_FPD_awlock),
        .M_AXI_FPD_awprot(M_AXI_FPD_awprot),
        .M_AXI_FPD_awqos(M_AXI_FPD_awqos),
        .M_AXI_FPD_awready(M_AXI_FPD_awready),
        .M_AXI_FPD_awsize(M_AXI_FPD_awsize),
        .M_AXI_FPD_awuser(M_AXI_FPD_awuser),
        .M_AXI_FPD_awvalid(M_AXI_FPD_awvalid),
        .M_AXI_FPD_bid(M_AXI_FPD_bid),
        .M_AXI_FPD_bready(M_AXI_FPD_bready),
        .M_AXI_FPD_bresp(M_AXI_FPD_bresp),
        .M_AXI_FPD_bvalid(M_AXI_FPD_bvalid),
        .M_AXI_FPD_rdata(M_AXI_FPD_rdata),
        .M_AXI_FPD_rid(M_AXI_FPD_rid),
        .M_AXI_FPD_rlast(M_AXI_FPD_rlast),
        .M_AXI_FPD_rready(M_AXI_FPD_rready),
        .M_AXI_FPD_rresp(M_AXI_FPD_rresp),
        .M_AXI_FPD_rvalid(M_AXI_FPD_rvalid),
        .M_AXI_FPD_wdata(M_AXI_FPD_wdata),
        .M_AXI_FPD_wlast(M_AXI_FPD_wlast),
        .M_AXI_FPD_wready(M_AXI_FPD_wready),
        .M_AXI_FPD_wstrb(M_AXI_FPD_wstrb),
        .M_AXI_FPD_wvalid(M_AXI_FPD_wvalid),
        .M_AXI_LPD_araddr(M_AXI_LPD_araddr),
        .M_AXI_LPD_arburst(M_AXI_LPD_arburst),
        .M_AXI_LPD_arcache(M_AXI_LPD_arcache),
        .M_AXI_LPD_arid(M_AXI_LPD_arid),
        .M_AXI_LPD_arlen(M_AXI_LPD_arlen),
        .M_AXI_LPD_arlock(M_AXI_LPD_arlock),
        .M_AXI_LPD_arprot(M_AXI_LPD_arprot),
        .M_AXI_LPD_arqos(M_AXI_LPD_arqos),
        .M_AXI_LPD_arready(M_AXI_LPD_arready),
        .M_AXI_LPD_arsize(M_AXI_LPD_arsize),
        .M_AXI_LPD_aruser(M_AXI_LPD_aruser),
        .M_AXI_LPD_arvalid(M_AXI_LPD_arvalid),
        .M_AXI_LPD_awaddr(M_AXI_LPD_awaddr),
        .M_AXI_LPD_awburst(M_AXI_LPD_awburst),
        .M_AXI_LPD_awcache(M_AXI_LPD_awcache),
        .M_AXI_LPD_awid(M_AXI_LPD_awid),
        .M_AXI_LPD_awlen(M_AXI_LPD_awlen),
        .M_AXI_LPD_awlock(M_AXI_LPD_awlock),
        .M_AXI_LPD_awprot(M_AXI_LPD_awprot),
        .M_AXI_LPD_awqos(M_AXI_LPD_awqos),
        .M_AXI_LPD_awready(M_AXI_LPD_awready),
        .M_AXI_LPD_awsize(M_AXI_LPD_awsize),
        .M_AXI_LPD_awuser(M_AXI_LPD_awuser),
        .M_AXI_LPD_awvalid(M_AXI_LPD_awvalid),
        .M_AXI_LPD_bid(M_AXI_LPD_bid),
        .M_AXI_LPD_bready(M_AXI_LPD_bready),
        .M_AXI_LPD_bresp(M_AXI_LPD_bresp),
        .M_AXI_LPD_bvalid(M_AXI_LPD_bvalid),
        .M_AXI_LPD_rdata(M_AXI_LPD_rdata),
        .M_AXI_LPD_rid(M_AXI_LPD_rid),
        .M_AXI_LPD_rlast(M_AXI_LPD_rlast),
        .M_AXI_LPD_rready(M_AXI_LPD_rready),
        .M_AXI_LPD_rresp(M_AXI_LPD_rresp),
        .M_AXI_LPD_rvalid(M_AXI_LPD_rvalid),
        .M_AXI_LPD_wdata(M_AXI_LPD_wdata),
        .M_AXI_LPD_wlast(M_AXI_LPD_wlast),
        .M_AXI_LPD_wready(M_AXI_LPD_wready),
        .M_AXI_LPD_wstrb(M_AXI_LPD_wstrb),
        .M_AXI_LPD_wvalid(M_AXI_LPD_wvalid),
        .fpd_cci_noc_axi0_clk(fpd_cci_noc_axi0_clk),
        .fpd_cci_noc_axi1_clk(fpd_cci_noc_axi1_clk),
        .fpd_cci_noc_axi2_clk(fpd_cci_noc_axi2_clk),
        .fpd_cci_noc_axi3_clk(fpd_cci_noc_axi3_clk),
        .m_axi_fpd_aclk(m_axi_fpd_aclk),
        .m_axi_lpd_aclk(m_axi_lpd_aclk),
        .pl0_ref_clk(pl0_ref_clk),
        .pl0_resetn(pl0_resetn),
        .pl1_ref_clk(pl1_ref_clk),
        .pl_ps_irq0(pl_ps_irq0),
        .pl_ps_irq1(pl_ps_irq1),
        .pl_ps_irq2(pl_ps_irq2),
        .pl_ps_irq3(pl_ps_irq3),
        .pl_ps_irq4(pl_ps_irq4),
        .pl_ps_irq5(pl_ps_irq5));
endmodule
