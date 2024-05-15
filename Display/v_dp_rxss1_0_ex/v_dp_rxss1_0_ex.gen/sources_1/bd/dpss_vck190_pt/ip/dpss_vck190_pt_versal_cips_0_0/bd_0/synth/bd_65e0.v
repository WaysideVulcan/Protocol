//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_65e0.bd
//Design : bd_65e0
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_65e0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_65e0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=None}" *) (* HW_HANDOFF = "dpss_vck190_pt_versal_cips_0_0.hwdef" *) 
module bd_65e0
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FPD_CCI_NOC_0, ADDR_WIDTH 64, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY noc, CLK_DOMAIN bd_65e0_pspmc_0_0_fpd_cci_noc_axi0_clk, DATA_WIDTH 128, FREQ_HZ 824991760, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INDEX 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY ps_cci, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 64, NUM_WRITE_THREADS 1, PHASE 0.0, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17" *) output [63:0]FPD_CCI_NOC_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARBURST" *) output [1:0]FPD_CCI_NOC_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARCACHE" *) output [3:0]FPD_CCI_NOC_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARID" *) output [15:0]FPD_CCI_NOC_0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARLEN" *) output [7:0]FPD_CCI_NOC_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARLOCK" *) output FPD_CCI_NOC_0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARPROT" *) output [2:0]FPD_CCI_NOC_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARQOS" *) output [3:0]FPD_CCI_NOC_0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARREADY" *) input FPD_CCI_NOC_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARSIZE" *) output [2:0]FPD_CCI_NOC_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARUSER" *) output [17:0]FPD_CCI_NOC_0_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARVALID" *) output FPD_CCI_NOC_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWADDR" *) output [63:0]FPD_CCI_NOC_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWBURST" *) output [1:0]FPD_CCI_NOC_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWCACHE" *) output [3:0]FPD_CCI_NOC_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWID" *) output [15:0]FPD_CCI_NOC_0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWLEN" *) output [7:0]FPD_CCI_NOC_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWLOCK" *) output FPD_CCI_NOC_0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWPROT" *) output [2:0]FPD_CCI_NOC_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWQOS" *) output [3:0]FPD_CCI_NOC_0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWREADY" *) input FPD_CCI_NOC_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWSIZE" *) output [2:0]FPD_CCI_NOC_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWUSER" *) output [17:0]FPD_CCI_NOC_0_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWVALID" *) output FPD_CCI_NOC_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 BID" *) input [15:0]FPD_CCI_NOC_0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 BREADY" *) output FPD_CCI_NOC_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 BRESP" *) input [1:0]FPD_CCI_NOC_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 BVALID" *) input FPD_CCI_NOC_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RDATA" *) input [127:0]FPD_CCI_NOC_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RID" *) input [15:0]FPD_CCI_NOC_0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RLAST" *) input FPD_CCI_NOC_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RREADY" *) output FPD_CCI_NOC_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RRESP" *) input [1:0]FPD_CCI_NOC_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RVALID" *) input FPD_CCI_NOC_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WDATA" *) output [127:0]FPD_CCI_NOC_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WLAST" *) output FPD_CCI_NOC_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WREADY" *) input FPD_CCI_NOC_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WSTRB" *) output [15:0]FPD_CCI_NOC_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WUSER" *) output [16:0]FPD_CCI_NOC_0_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WVALID" *) output FPD_CCI_NOC_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FPD_CCI_NOC_1, ADDR_WIDTH 64, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY noc, CLK_DOMAIN bd_65e0_pspmc_0_0_fpd_cci_noc_axi1_clk, DATA_WIDTH 128, FREQ_HZ 824991760, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INDEX 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY ps_cci, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 64, NUM_WRITE_THREADS 1, PHASE 0.0, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17" *) output [63:0]FPD_CCI_NOC_1_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARBURST" *) output [1:0]FPD_CCI_NOC_1_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARCACHE" *) output [3:0]FPD_CCI_NOC_1_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARID" *) output [15:0]FPD_CCI_NOC_1_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARLEN" *) output [7:0]FPD_CCI_NOC_1_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARLOCK" *) output FPD_CCI_NOC_1_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARPROT" *) output [2:0]FPD_CCI_NOC_1_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARQOS" *) output [3:0]FPD_CCI_NOC_1_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARREADY" *) input FPD_CCI_NOC_1_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARSIZE" *) output [2:0]FPD_CCI_NOC_1_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARUSER" *) output [17:0]FPD_CCI_NOC_1_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARVALID" *) output FPD_CCI_NOC_1_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWADDR" *) output [63:0]FPD_CCI_NOC_1_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWBURST" *) output [1:0]FPD_CCI_NOC_1_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWCACHE" *) output [3:0]FPD_CCI_NOC_1_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWID" *) output [15:0]FPD_CCI_NOC_1_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWLEN" *) output [7:0]FPD_CCI_NOC_1_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWLOCK" *) output FPD_CCI_NOC_1_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWPROT" *) output [2:0]FPD_CCI_NOC_1_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWQOS" *) output [3:0]FPD_CCI_NOC_1_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWREADY" *) input FPD_CCI_NOC_1_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWSIZE" *) output [2:0]FPD_CCI_NOC_1_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWUSER" *) output [17:0]FPD_CCI_NOC_1_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWVALID" *) output FPD_CCI_NOC_1_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 BID" *) input [15:0]FPD_CCI_NOC_1_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 BREADY" *) output FPD_CCI_NOC_1_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 BRESP" *) input [1:0]FPD_CCI_NOC_1_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 BVALID" *) input FPD_CCI_NOC_1_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RDATA" *) input [127:0]FPD_CCI_NOC_1_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RID" *) input [15:0]FPD_CCI_NOC_1_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RLAST" *) input FPD_CCI_NOC_1_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RREADY" *) output FPD_CCI_NOC_1_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RRESP" *) input [1:0]FPD_CCI_NOC_1_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RVALID" *) input FPD_CCI_NOC_1_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WDATA" *) output [127:0]FPD_CCI_NOC_1_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WLAST" *) output FPD_CCI_NOC_1_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WREADY" *) input FPD_CCI_NOC_1_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WSTRB" *) output [15:0]FPD_CCI_NOC_1_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WUSER" *) output [16:0]FPD_CCI_NOC_1_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WVALID" *) output FPD_CCI_NOC_1_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FPD_CCI_NOC_2, ADDR_WIDTH 64, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY noc, CLK_DOMAIN bd_65e0_pspmc_0_0_fpd_cci_noc_axi2_clk, DATA_WIDTH 128, FREQ_HZ 824991760, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INDEX 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY ps_cci, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 64, NUM_WRITE_THREADS 1, PHASE 0.0, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17" *) output [63:0]FPD_CCI_NOC_2_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARBURST" *) output [1:0]FPD_CCI_NOC_2_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARCACHE" *) output [3:0]FPD_CCI_NOC_2_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARID" *) output [15:0]FPD_CCI_NOC_2_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARLEN" *) output [7:0]FPD_CCI_NOC_2_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARLOCK" *) output FPD_CCI_NOC_2_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARPROT" *) output [2:0]FPD_CCI_NOC_2_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARQOS" *) output [3:0]FPD_CCI_NOC_2_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARREADY" *) input FPD_CCI_NOC_2_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARSIZE" *) output [2:0]FPD_CCI_NOC_2_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARUSER" *) output [17:0]FPD_CCI_NOC_2_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARVALID" *) output FPD_CCI_NOC_2_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWADDR" *) output [63:0]FPD_CCI_NOC_2_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWBURST" *) output [1:0]FPD_CCI_NOC_2_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWCACHE" *) output [3:0]FPD_CCI_NOC_2_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWID" *) output [15:0]FPD_CCI_NOC_2_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWLEN" *) output [7:0]FPD_CCI_NOC_2_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWLOCK" *) output FPD_CCI_NOC_2_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWPROT" *) output [2:0]FPD_CCI_NOC_2_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWQOS" *) output [3:0]FPD_CCI_NOC_2_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWREADY" *) input FPD_CCI_NOC_2_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWSIZE" *) output [2:0]FPD_CCI_NOC_2_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWUSER" *) output [17:0]FPD_CCI_NOC_2_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWVALID" *) output FPD_CCI_NOC_2_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 BID" *) input [15:0]FPD_CCI_NOC_2_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 BREADY" *) output FPD_CCI_NOC_2_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 BRESP" *) input [1:0]FPD_CCI_NOC_2_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 BVALID" *) input FPD_CCI_NOC_2_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RDATA" *) input [127:0]FPD_CCI_NOC_2_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RID" *) input [15:0]FPD_CCI_NOC_2_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RLAST" *) input FPD_CCI_NOC_2_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RREADY" *) output FPD_CCI_NOC_2_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RRESP" *) input [1:0]FPD_CCI_NOC_2_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RVALID" *) input FPD_CCI_NOC_2_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WDATA" *) output [127:0]FPD_CCI_NOC_2_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WLAST" *) output FPD_CCI_NOC_2_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WREADY" *) input FPD_CCI_NOC_2_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WSTRB" *) output [15:0]FPD_CCI_NOC_2_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WUSER" *) output [16:0]FPD_CCI_NOC_2_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WVALID" *) output FPD_CCI_NOC_2_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FPD_CCI_NOC_3, ADDR_WIDTH 64, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY noc, CLK_DOMAIN bd_65e0_pspmc_0_0_fpd_cci_noc_axi3_clk, DATA_WIDTH 128, FREQ_HZ 824991760, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INDEX 3, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY ps_cci, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 64, NUM_WRITE_THREADS 1, PHASE 0.0, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17" *) output [63:0]FPD_CCI_NOC_3_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARBURST" *) output [1:0]FPD_CCI_NOC_3_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARCACHE" *) output [3:0]FPD_CCI_NOC_3_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARID" *) output [15:0]FPD_CCI_NOC_3_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARLEN" *) output [7:0]FPD_CCI_NOC_3_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARLOCK" *) output FPD_CCI_NOC_3_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARPROT" *) output [2:0]FPD_CCI_NOC_3_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARQOS" *) output [3:0]FPD_CCI_NOC_3_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARREADY" *) input FPD_CCI_NOC_3_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARSIZE" *) output [2:0]FPD_CCI_NOC_3_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARUSER" *) output [17:0]FPD_CCI_NOC_3_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARVALID" *) output FPD_CCI_NOC_3_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWADDR" *) output [63:0]FPD_CCI_NOC_3_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWBURST" *) output [1:0]FPD_CCI_NOC_3_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWCACHE" *) output [3:0]FPD_CCI_NOC_3_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWID" *) output [15:0]FPD_CCI_NOC_3_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWLEN" *) output [7:0]FPD_CCI_NOC_3_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWLOCK" *) output FPD_CCI_NOC_3_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWPROT" *) output [2:0]FPD_CCI_NOC_3_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWQOS" *) output [3:0]FPD_CCI_NOC_3_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWREADY" *) input FPD_CCI_NOC_3_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWSIZE" *) output [2:0]FPD_CCI_NOC_3_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWUSER" *) output [17:0]FPD_CCI_NOC_3_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWVALID" *) output FPD_CCI_NOC_3_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 BID" *) input [15:0]FPD_CCI_NOC_3_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 BREADY" *) output FPD_CCI_NOC_3_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 BRESP" *) input [1:0]FPD_CCI_NOC_3_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 BVALID" *) input FPD_CCI_NOC_3_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RDATA" *) input [127:0]FPD_CCI_NOC_3_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RID" *) input [15:0]FPD_CCI_NOC_3_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RLAST" *) input FPD_CCI_NOC_3_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RREADY" *) output FPD_CCI_NOC_3_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RRESP" *) input [1:0]FPD_CCI_NOC_3_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RVALID" *) input FPD_CCI_NOC_3_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WDATA" *) output [127:0]FPD_CCI_NOC_3_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WLAST" *) output FPD_CCI_NOC_3_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WREADY" *) input FPD_CCI_NOC_3_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WSTRB" *) output [15:0]FPD_CCI_NOC_3_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WUSER" *) output [16:0]FPD_CCI_NOC_3_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WVALID" *) output FPD_CCI_NOC_3_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_FPD, ADDR_WIDTH 44, ARUSER_WIDTH 16, AWUSER_WIDTH 16, BUSER_WIDTH 0, CATEGORY pl, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, DATA_WIDTH 128, FREQ_HZ 99999001, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY ps, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [43:0]M_AXI_FPD_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARBURST" *) output [1:0]M_AXI_FPD_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARCACHE" *) output [3:0]M_AXI_FPD_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARID" *) output [15:0]M_AXI_FPD_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARLEN" *) output [7:0]M_AXI_FPD_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARLOCK" *) output M_AXI_FPD_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARPROT" *) output [2:0]M_AXI_FPD_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARQOS" *) output [3:0]M_AXI_FPD_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARREADY" *) input M_AXI_FPD_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARSIZE" *) output [2:0]M_AXI_FPD_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARUSER" *) output [15:0]M_AXI_FPD_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARVALID" *) output M_AXI_FPD_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWADDR" *) output [43:0]M_AXI_FPD_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWBURST" *) output [1:0]M_AXI_FPD_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWCACHE" *) output [3:0]M_AXI_FPD_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWID" *) output [15:0]M_AXI_FPD_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWLEN" *) output [7:0]M_AXI_FPD_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWLOCK" *) output M_AXI_FPD_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWPROT" *) output [2:0]M_AXI_FPD_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWQOS" *) output [3:0]M_AXI_FPD_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWREADY" *) input M_AXI_FPD_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWSIZE" *) output [2:0]M_AXI_FPD_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWUSER" *) output [15:0]M_AXI_FPD_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD AWVALID" *) output M_AXI_FPD_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD BID" *) input [15:0]M_AXI_FPD_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD BREADY" *) output M_AXI_FPD_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD BRESP" *) input [1:0]M_AXI_FPD_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD BVALID" *) input M_AXI_FPD_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD RDATA" *) input [127:0]M_AXI_FPD_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD RID" *) input [15:0]M_AXI_FPD_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD RLAST" *) input M_AXI_FPD_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD RREADY" *) output M_AXI_FPD_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD RRESP" *) input [1:0]M_AXI_FPD_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD RVALID" *) input M_AXI_FPD_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD WDATA" *) output [127:0]M_AXI_FPD_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD WLAST" *) output M_AXI_FPD_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD WREADY" *) input M_AXI_FPD_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD WSTRB" *) output [15:0]M_AXI_FPD_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD WVALID" *) output M_AXI_FPD_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_LPD, ADDR_WIDTH 44, ARUSER_WIDTH 16, AWUSER_WIDTH 16, BUSER_WIDTH 0, CATEGORY pl, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, DATA_WIDTH 128, FREQ_HZ 99999001, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY ps, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [43:0]M_AXI_LPD_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARBURST" *) output [1:0]M_AXI_LPD_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARCACHE" *) output [3:0]M_AXI_LPD_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARID" *) output [15:0]M_AXI_LPD_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARLEN" *) output [7:0]M_AXI_LPD_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARLOCK" *) output M_AXI_LPD_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARPROT" *) output [2:0]M_AXI_LPD_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARQOS" *) output [3:0]M_AXI_LPD_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARREADY" *) input M_AXI_LPD_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARSIZE" *) output [2:0]M_AXI_LPD_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARUSER" *) output [15:0]M_AXI_LPD_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD ARVALID" *) output M_AXI_LPD_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWADDR" *) output [43:0]M_AXI_LPD_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWBURST" *) output [1:0]M_AXI_LPD_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWCACHE" *) output [3:0]M_AXI_LPD_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWID" *) output [15:0]M_AXI_LPD_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWLEN" *) output [7:0]M_AXI_LPD_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWLOCK" *) output M_AXI_LPD_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWPROT" *) output [2:0]M_AXI_LPD_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWQOS" *) output [3:0]M_AXI_LPD_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWREADY" *) input M_AXI_LPD_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWSIZE" *) output [2:0]M_AXI_LPD_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWUSER" *) output [15:0]M_AXI_LPD_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD AWVALID" *) output M_AXI_LPD_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD BID" *) input [15:0]M_AXI_LPD_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD BREADY" *) output M_AXI_LPD_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD BRESP" *) input [1:0]M_AXI_LPD_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD BVALID" *) input M_AXI_LPD_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD RDATA" *) input [127:0]M_AXI_LPD_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD RID" *) input [15:0]M_AXI_LPD_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD RLAST" *) input M_AXI_LPD_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD RREADY" *) output M_AXI_LPD_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD RRESP" *) input [1:0]M_AXI_LPD_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD RVALID" *) input M_AXI_LPD_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD WDATA" *) output [127:0]M_AXI_LPD_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD WLAST" *) output M_AXI_LPD_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD WREADY" *) input M_AXI_LPD_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD WSTRB" *) output [15:0]M_AXI_LPD_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LPD WVALID" *) output M_AXI_LPD_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FPD_CCI_NOC_AXI0_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FPD_CCI_NOC_AXI0_CLK, ASSOCIATED_BUSIF FPD_CCI_NOC_0, CLK_DOMAIN bd_65e0_pspmc_0_0_fpd_cci_noc_axi0_clk, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU" *) output fpd_cci_noc_axi0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FPD_CCI_NOC_AXI1_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FPD_CCI_NOC_AXI1_CLK, ASSOCIATED_BUSIF FPD_CCI_NOC_1, CLK_DOMAIN bd_65e0_pspmc_0_0_fpd_cci_noc_axi1_clk, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU" *) output fpd_cci_noc_axi1_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FPD_CCI_NOC_AXI2_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FPD_CCI_NOC_AXI2_CLK, ASSOCIATED_BUSIF FPD_CCI_NOC_2, CLK_DOMAIN bd_65e0_pspmc_0_0_fpd_cci_noc_axi2_clk, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU" *) output fpd_cci_noc_axi2_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FPD_CCI_NOC_AXI3_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FPD_CCI_NOC_AXI3_CLK, ASSOCIATED_BUSIF FPD_CCI_NOC_3, CLK_DOMAIN bd_65e0_pspmc_0_0_fpd_cci_noc_axi3_clk, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU" *) output fpd_cci_noc_axi3_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.M_AXI_FPD_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.M_AXI_FPD_ACLK, ASSOCIATED_BUSIF M_AXI_FPD, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input m_axi_fpd_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.M_AXI_LPD_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.M_AXI_LPD_ACLK, ASSOCIATED_BUSIF M_AXI_LPD, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input m_axi_lpd_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL0_REF_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL0_REF_CLK, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output pl0_ref_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PL0_RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PL0_RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output pl0_resetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL1_REF_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL1_REF_CLK, CLK_DOMAIN bd_65e0_pspmc_0_0_pl1_ref_clk, FREQ_HZ 299997009, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output pl1_ref_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.PL_PS_IRQ0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.PL_PS_IRQ0, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) input pl_ps_irq0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.PL_PS_IRQ1 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.PL_PS_IRQ1, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) input pl_ps_irq1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.PL_PS_IRQ2 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.PL_PS_IRQ2, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) input pl_ps_irq2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.PL_PS_IRQ3 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.PL_PS_IRQ3, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) input pl_ps_irq3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.PL_PS_IRQ4 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.PL_PS_IRQ4, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) input pl_ps_irq4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.PL_PS_IRQ5 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.PL_PS_IRQ5, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) input pl_ps_irq5;

  wire m_axi_fpd_aclk_1;
  wire m_axi_lpd_aclk_1;
  wire pl_ps_irq0_1;
  wire pl_ps_irq1_1;
  wire pl_ps_irq2_1;
  wire pl_ps_irq3_1;
  wire pl_ps_irq4_1;
  wire pl_ps_irq5_1;
  (* HARD_CONN = "true" *) wire [63:0]pspmc_0_FPD_CCI_NOC_0_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_FPD_CCI_NOC_0_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_FPD_CCI_NOC_0_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_CCI_NOC_0_ARID;
  (* HARD_CONN = "true" *) wire [7:0]pspmc_0_FPD_CCI_NOC_0_ARLEN;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_0_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_FPD_CCI_NOC_0_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_FPD_CCI_NOC_0_ARQOS;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_0_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_FPD_CCI_NOC_0_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]pspmc_0_FPD_CCI_NOC_0_ARUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_0_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]pspmc_0_FPD_CCI_NOC_0_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_FPD_CCI_NOC_0_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_FPD_CCI_NOC_0_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_CCI_NOC_0_AWID;
  (* HARD_CONN = "true" *) wire [7:0]pspmc_0_FPD_CCI_NOC_0_AWLEN;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_0_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_FPD_CCI_NOC_0_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_FPD_CCI_NOC_0_AWQOS;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_0_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_FPD_CCI_NOC_0_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]pspmc_0_FPD_CCI_NOC_0_AWUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_0_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_CCI_NOC_0_BID;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_0_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_FPD_CCI_NOC_0_BRESP;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_0_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]pspmc_0_FPD_CCI_NOC_0_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_CCI_NOC_0_RID;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_0_RLAST;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_0_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_FPD_CCI_NOC_0_RRESP;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_0_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]pspmc_0_FPD_CCI_NOC_0_WDATA;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_0_WLAST;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_0_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_CCI_NOC_0_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]pspmc_0_FPD_CCI_NOC_0_WUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_0_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]pspmc_0_FPD_CCI_NOC_1_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_FPD_CCI_NOC_1_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_FPD_CCI_NOC_1_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_CCI_NOC_1_ARID;
  (* HARD_CONN = "true" *) wire [7:0]pspmc_0_FPD_CCI_NOC_1_ARLEN;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_1_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_FPD_CCI_NOC_1_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_FPD_CCI_NOC_1_ARQOS;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_1_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_FPD_CCI_NOC_1_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]pspmc_0_FPD_CCI_NOC_1_ARUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_1_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]pspmc_0_FPD_CCI_NOC_1_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_FPD_CCI_NOC_1_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_FPD_CCI_NOC_1_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_CCI_NOC_1_AWID;
  (* HARD_CONN = "true" *) wire [7:0]pspmc_0_FPD_CCI_NOC_1_AWLEN;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_1_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_FPD_CCI_NOC_1_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_FPD_CCI_NOC_1_AWQOS;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_1_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_FPD_CCI_NOC_1_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]pspmc_0_FPD_CCI_NOC_1_AWUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_1_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_CCI_NOC_1_BID;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_1_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_FPD_CCI_NOC_1_BRESP;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_1_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]pspmc_0_FPD_CCI_NOC_1_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_CCI_NOC_1_RID;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_1_RLAST;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_1_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_FPD_CCI_NOC_1_RRESP;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_1_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]pspmc_0_FPD_CCI_NOC_1_WDATA;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_1_WLAST;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_1_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_CCI_NOC_1_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]pspmc_0_FPD_CCI_NOC_1_WUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_1_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]pspmc_0_FPD_CCI_NOC_2_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_FPD_CCI_NOC_2_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_FPD_CCI_NOC_2_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_CCI_NOC_2_ARID;
  (* HARD_CONN = "true" *) wire [7:0]pspmc_0_FPD_CCI_NOC_2_ARLEN;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_2_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_FPD_CCI_NOC_2_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_FPD_CCI_NOC_2_ARQOS;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_2_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_FPD_CCI_NOC_2_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]pspmc_0_FPD_CCI_NOC_2_ARUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_2_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]pspmc_0_FPD_CCI_NOC_2_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_FPD_CCI_NOC_2_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_FPD_CCI_NOC_2_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_CCI_NOC_2_AWID;
  (* HARD_CONN = "true" *) wire [7:0]pspmc_0_FPD_CCI_NOC_2_AWLEN;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_2_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_FPD_CCI_NOC_2_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_FPD_CCI_NOC_2_AWQOS;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_2_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_FPD_CCI_NOC_2_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]pspmc_0_FPD_CCI_NOC_2_AWUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_2_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_CCI_NOC_2_BID;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_2_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_FPD_CCI_NOC_2_BRESP;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_2_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]pspmc_0_FPD_CCI_NOC_2_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_CCI_NOC_2_RID;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_2_RLAST;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_2_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_FPD_CCI_NOC_2_RRESP;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_2_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]pspmc_0_FPD_CCI_NOC_2_WDATA;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_2_WLAST;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_2_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_CCI_NOC_2_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]pspmc_0_FPD_CCI_NOC_2_WUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_2_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]pspmc_0_FPD_CCI_NOC_3_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_FPD_CCI_NOC_3_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_FPD_CCI_NOC_3_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_CCI_NOC_3_ARID;
  (* HARD_CONN = "true" *) wire [7:0]pspmc_0_FPD_CCI_NOC_3_ARLEN;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_3_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_FPD_CCI_NOC_3_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_FPD_CCI_NOC_3_ARQOS;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_3_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_FPD_CCI_NOC_3_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]pspmc_0_FPD_CCI_NOC_3_ARUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_3_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]pspmc_0_FPD_CCI_NOC_3_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_FPD_CCI_NOC_3_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_FPD_CCI_NOC_3_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_CCI_NOC_3_AWID;
  (* HARD_CONN = "true" *) wire [7:0]pspmc_0_FPD_CCI_NOC_3_AWLEN;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_3_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_FPD_CCI_NOC_3_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_FPD_CCI_NOC_3_AWQOS;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_3_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_FPD_CCI_NOC_3_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]pspmc_0_FPD_CCI_NOC_3_AWUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_3_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_CCI_NOC_3_BID;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_3_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_FPD_CCI_NOC_3_BRESP;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_3_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]pspmc_0_FPD_CCI_NOC_3_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_CCI_NOC_3_RID;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_3_RLAST;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_3_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_FPD_CCI_NOC_3_RRESP;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_3_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]pspmc_0_FPD_CCI_NOC_3_WDATA;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_3_WLAST;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_3_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_FPD_CCI_NOC_3_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]pspmc_0_FPD_CCI_NOC_3_WUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_FPD_CCI_NOC_3_WVALID;
  wire [43:0]pspmc_0_M_AXI_FPD_ARADDR;
  wire [1:0]pspmc_0_M_AXI_FPD_ARBURST;
  wire [3:0]pspmc_0_M_AXI_FPD_ARCACHE;
  wire [15:0]pspmc_0_M_AXI_FPD_ARID;
  wire [7:0]pspmc_0_M_AXI_FPD_ARLEN;
  wire pspmc_0_M_AXI_FPD_ARLOCK;
  wire [2:0]pspmc_0_M_AXI_FPD_ARPROT;
  wire [3:0]pspmc_0_M_AXI_FPD_ARQOS;
  wire pspmc_0_M_AXI_FPD_ARREADY;
  wire [2:0]pspmc_0_M_AXI_FPD_ARSIZE;
  wire [15:0]pspmc_0_M_AXI_FPD_ARUSER;
  wire pspmc_0_M_AXI_FPD_ARVALID;
  wire [43:0]pspmc_0_M_AXI_FPD_AWADDR;
  wire [1:0]pspmc_0_M_AXI_FPD_AWBURST;
  wire [3:0]pspmc_0_M_AXI_FPD_AWCACHE;
  wire [15:0]pspmc_0_M_AXI_FPD_AWID;
  wire [7:0]pspmc_0_M_AXI_FPD_AWLEN;
  wire pspmc_0_M_AXI_FPD_AWLOCK;
  wire [2:0]pspmc_0_M_AXI_FPD_AWPROT;
  wire [3:0]pspmc_0_M_AXI_FPD_AWQOS;
  wire pspmc_0_M_AXI_FPD_AWREADY;
  wire [2:0]pspmc_0_M_AXI_FPD_AWSIZE;
  wire [15:0]pspmc_0_M_AXI_FPD_AWUSER;
  wire pspmc_0_M_AXI_FPD_AWVALID;
  wire [15:0]pspmc_0_M_AXI_FPD_BID;
  wire pspmc_0_M_AXI_FPD_BREADY;
  wire [1:0]pspmc_0_M_AXI_FPD_BRESP;
  wire pspmc_0_M_AXI_FPD_BVALID;
  wire [127:0]pspmc_0_M_AXI_FPD_RDATA;
  wire [15:0]pspmc_0_M_AXI_FPD_RID;
  wire pspmc_0_M_AXI_FPD_RLAST;
  wire pspmc_0_M_AXI_FPD_RREADY;
  wire [1:0]pspmc_0_M_AXI_FPD_RRESP;
  wire pspmc_0_M_AXI_FPD_RVALID;
  wire [127:0]pspmc_0_M_AXI_FPD_WDATA;
  wire pspmc_0_M_AXI_FPD_WLAST;
  wire pspmc_0_M_AXI_FPD_WREADY;
  wire [15:0]pspmc_0_M_AXI_FPD_WSTRB;
  wire pspmc_0_M_AXI_FPD_WVALID;
  wire [43:0]pspmc_0_M_AXI_LPD_ARADDR;
  wire [1:0]pspmc_0_M_AXI_LPD_ARBURST;
  wire [3:0]pspmc_0_M_AXI_LPD_ARCACHE;
  wire [15:0]pspmc_0_M_AXI_LPD_ARID;
  wire [7:0]pspmc_0_M_AXI_LPD_ARLEN;
  wire pspmc_0_M_AXI_LPD_ARLOCK;
  wire [2:0]pspmc_0_M_AXI_LPD_ARPROT;
  wire [3:0]pspmc_0_M_AXI_LPD_ARQOS;
  wire pspmc_0_M_AXI_LPD_ARREADY;
  wire [2:0]pspmc_0_M_AXI_LPD_ARSIZE;
  wire [15:0]pspmc_0_M_AXI_LPD_ARUSER;
  wire pspmc_0_M_AXI_LPD_ARVALID;
  wire [43:0]pspmc_0_M_AXI_LPD_AWADDR;
  wire [1:0]pspmc_0_M_AXI_LPD_AWBURST;
  wire [3:0]pspmc_0_M_AXI_LPD_AWCACHE;
  wire [15:0]pspmc_0_M_AXI_LPD_AWID;
  wire [7:0]pspmc_0_M_AXI_LPD_AWLEN;
  wire pspmc_0_M_AXI_LPD_AWLOCK;
  wire [2:0]pspmc_0_M_AXI_LPD_AWPROT;
  wire [3:0]pspmc_0_M_AXI_LPD_AWQOS;
  wire pspmc_0_M_AXI_LPD_AWREADY;
  wire [2:0]pspmc_0_M_AXI_LPD_AWSIZE;
  wire [15:0]pspmc_0_M_AXI_LPD_AWUSER;
  wire pspmc_0_M_AXI_LPD_AWVALID;
  wire [15:0]pspmc_0_M_AXI_LPD_BID;
  wire pspmc_0_M_AXI_LPD_BREADY;
  wire [1:0]pspmc_0_M_AXI_LPD_BRESP;
  wire pspmc_0_M_AXI_LPD_BVALID;
  wire [127:0]pspmc_0_M_AXI_LPD_RDATA;
  wire [15:0]pspmc_0_M_AXI_LPD_RID;
  wire pspmc_0_M_AXI_LPD_RLAST;
  wire pspmc_0_M_AXI_LPD_RREADY;
  wire [1:0]pspmc_0_M_AXI_LPD_RRESP;
  wire pspmc_0_M_AXI_LPD_RVALID;
  wire [127:0]pspmc_0_M_AXI_LPD_WDATA;
  wire pspmc_0_M_AXI_LPD_WLAST;
  wire pspmc_0_M_AXI_LPD_WREADY;
  wire [15:0]pspmc_0_M_AXI_LPD_WSTRB;
  wire pspmc_0_M_AXI_LPD_WVALID;
  (* HARD_CONN = "true" *) wire pspmc_0_fpd_cci_noc_axi0_clk;
  (* HARD_CONN = "true" *) wire pspmc_0_fpd_cci_noc_axi1_clk;
  (* HARD_CONN = "true" *) wire pspmc_0_fpd_cci_noc_axi2_clk;
  (* HARD_CONN = "true" *) wire pspmc_0_fpd_cci_noc_axi3_clk;
  wire pspmc_0_pl0_ref_clk;
  wire pspmc_0_pl0_resetn;
  wire pspmc_0_pl1_ref_clk;

  assign FPD_CCI_NOC_0_araddr[63:0] = pspmc_0_FPD_CCI_NOC_0_ARADDR;
  assign FPD_CCI_NOC_0_arburst[1:0] = pspmc_0_FPD_CCI_NOC_0_ARBURST;
  assign FPD_CCI_NOC_0_arcache[3:0] = pspmc_0_FPD_CCI_NOC_0_ARCACHE;
  assign FPD_CCI_NOC_0_arid[15:0] = pspmc_0_FPD_CCI_NOC_0_ARID;
  assign FPD_CCI_NOC_0_arlen[7:0] = pspmc_0_FPD_CCI_NOC_0_ARLEN;
  assign FPD_CCI_NOC_0_arlock = pspmc_0_FPD_CCI_NOC_0_ARLOCK;
  assign FPD_CCI_NOC_0_arprot[2:0] = pspmc_0_FPD_CCI_NOC_0_ARPROT;
  assign FPD_CCI_NOC_0_arqos[3:0] = pspmc_0_FPD_CCI_NOC_0_ARQOS;
  assign FPD_CCI_NOC_0_arsize[2:0] = pspmc_0_FPD_CCI_NOC_0_ARSIZE;
  assign FPD_CCI_NOC_0_aruser[17:0] = pspmc_0_FPD_CCI_NOC_0_ARUSER;
  assign FPD_CCI_NOC_0_arvalid = pspmc_0_FPD_CCI_NOC_0_ARVALID;
  assign FPD_CCI_NOC_0_awaddr[63:0] = pspmc_0_FPD_CCI_NOC_0_AWADDR;
  assign FPD_CCI_NOC_0_awburst[1:0] = pspmc_0_FPD_CCI_NOC_0_AWBURST;
  assign FPD_CCI_NOC_0_awcache[3:0] = pspmc_0_FPD_CCI_NOC_0_AWCACHE;
  assign FPD_CCI_NOC_0_awid[15:0] = pspmc_0_FPD_CCI_NOC_0_AWID;
  assign FPD_CCI_NOC_0_awlen[7:0] = pspmc_0_FPD_CCI_NOC_0_AWLEN;
  assign FPD_CCI_NOC_0_awlock = pspmc_0_FPD_CCI_NOC_0_AWLOCK;
  assign FPD_CCI_NOC_0_awprot[2:0] = pspmc_0_FPD_CCI_NOC_0_AWPROT;
  assign FPD_CCI_NOC_0_awqos[3:0] = pspmc_0_FPD_CCI_NOC_0_AWQOS;
  assign FPD_CCI_NOC_0_awsize[2:0] = pspmc_0_FPD_CCI_NOC_0_AWSIZE;
  assign FPD_CCI_NOC_0_awuser[17:0] = pspmc_0_FPD_CCI_NOC_0_AWUSER;
  assign FPD_CCI_NOC_0_awvalid = pspmc_0_FPD_CCI_NOC_0_AWVALID;
  assign FPD_CCI_NOC_0_bready = pspmc_0_FPD_CCI_NOC_0_BREADY;
  assign FPD_CCI_NOC_0_rready = pspmc_0_FPD_CCI_NOC_0_RREADY;
  assign FPD_CCI_NOC_0_wdata[127:0] = pspmc_0_FPD_CCI_NOC_0_WDATA;
  assign FPD_CCI_NOC_0_wlast = pspmc_0_FPD_CCI_NOC_0_WLAST;
  assign FPD_CCI_NOC_0_wstrb[15:0] = pspmc_0_FPD_CCI_NOC_0_WSTRB;
  assign FPD_CCI_NOC_0_wuser[16:0] = pspmc_0_FPD_CCI_NOC_0_WUSER;
  assign FPD_CCI_NOC_0_wvalid = pspmc_0_FPD_CCI_NOC_0_WVALID;
  assign FPD_CCI_NOC_1_araddr[63:0] = pspmc_0_FPD_CCI_NOC_1_ARADDR;
  assign FPD_CCI_NOC_1_arburst[1:0] = pspmc_0_FPD_CCI_NOC_1_ARBURST;
  assign FPD_CCI_NOC_1_arcache[3:0] = pspmc_0_FPD_CCI_NOC_1_ARCACHE;
  assign FPD_CCI_NOC_1_arid[15:0] = pspmc_0_FPD_CCI_NOC_1_ARID;
  assign FPD_CCI_NOC_1_arlen[7:0] = pspmc_0_FPD_CCI_NOC_1_ARLEN;
  assign FPD_CCI_NOC_1_arlock = pspmc_0_FPD_CCI_NOC_1_ARLOCK;
  assign FPD_CCI_NOC_1_arprot[2:0] = pspmc_0_FPD_CCI_NOC_1_ARPROT;
  assign FPD_CCI_NOC_1_arqos[3:0] = pspmc_0_FPD_CCI_NOC_1_ARQOS;
  assign FPD_CCI_NOC_1_arsize[2:0] = pspmc_0_FPD_CCI_NOC_1_ARSIZE;
  assign FPD_CCI_NOC_1_aruser[17:0] = pspmc_0_FPD_CCI_NOC_1_ARUSER;
  assign FPD_CCI_NOC_1_arvalid = pspmc_0_FPD_CCI_NOC_1_ARVALID;
  assign FPD_CCI_NOC_1_awaddr[63:0] = pspmc_0_FPD_CCI_NOC_1_AWADDR;
  assign FPD_CCI_NOC_1_awburst[1:0] = pspmc_0_FPD_CCI_NOC_1_AWBURST;
  assign FPD_CCI_NOC_1_awcache[3:0] = pspmc_0_FPD_CCI_NOC_1_AWCACHE;
  assign FPD_CCI_NOC_1_awid[15:0] = pspmc_0_FPD_CCI_NOC_1_AWID;
  assign FPD_CCI_NOC_1_awlen[7:0] = pspmc_0_FPD_CCI_NOC_1_AWLEN;
  assign FPD_CCI_NOC_1_awlock = pspmc_0_FPD_CCI_NOC_1_AWLOCK;
  assign FPD_CCI_NOC_1_awprot[2:0] = pspmc_0_FPD_CCI_NOC_1_AWPROT;
  assign FPD_CCI_NOC_1_awqos[3:0] = pspmc_0_FPD_CCI_NOC_1_AWQOS;
  assign FPD_CCI_NOC_1_awsize[2:0] = pspmc_0_FPD_CCI_NOC_1_AWSIZE;
  assign FPD_CCI_NOC_1_awuser[17:0] = pspmc_0_FPD_CCI_NOC_1_AWUSER;
  assign FPD_CCI_NOC_1_awvalid = pspmc_0_FPD_CCI_NOC_1_AWVALID;
  assign FPD_CCI_NOC_1_bready = pspmc_0_FPD_CCI_NOC_1_BREADY;
  assign FPD_CCI_NOC_1_rready = pspmc_0_FPD_CCI_NOC_1_RREADY;
  assign FPD_CCI_NOC_1_wdata[127:0] = pspmc_0_FPD_CCI_NOC_1_WDATA;
  assign FPD_CCI_NOC_1_wlast = pspmc_0_FPD_CCI_NOC_1_WLAST;
  assign FPD_CCI_NOC_1_wstrb[15:0] = pspmc_0_FPD_CCI_NOC_1_WSTRB;
  assign FPD_CCI_NOC_1_wuser[16:0] = pspmc_0_FPD_CCI_NOC_1_WUSER;
  assign FPD_CCI_NOC_1_wvalid = pspmc_0_FPD_CCI_NOC_1_WVALID;
  assign FPD_CCI_NOC_2_araddr[63:0] = pspmc_0_FPD_CCI_NOC_2_ARADDR;
  assign FPD_CCI_NOC_2_arburst[1:0] = pspmc_0_FPD_CCI_NOC_2_ARBURST;
  assign FPD_CCI_NOC_2_arcache[3:0] = pspmc_0_FPD_CCI_NOC_2_ARCACHE;
  assign FPD_CCI_NOC_2_arid[15:0] = pspmc_0_FPD_CCI_NOC_2_ARID;
  assign FPD_CCI_NOC_2_arlen[7:0] = pspmc_0_FPD_CCI_NOC_2_ARLEN;
  assign FPD_CCI_NOC_2_arlock = pspmc_0_FPD_CCI_NOC_2_ARLOCK;
  assign FPD_CCI_NOC_2_arprot[2:0] = pspmc_0_FPD_CCI_NOC_2_ARPROT;
  assign FPD_CCI_NOC_2_arqos[3:0] = pspmc_0_FPD_CCI_NOC_2_ARQOS;
  assign FPD_CCI_NOC_2_arsize[2:0] = pspmc_0_FPD_CCI_NOC_2_ARSIZE;
  assign FPD_CCI_NOC_2_aruser[17:0] = pspmc_0_FPD_CCI_NOC_2_ARUSER;
  assign FPD_CCI_NOC_2_arvalid = pspmc_0_FPD_CCI_NOC_2_ARVALID;
  assign FPD_CCI_NOC_2_awaddr[63:0] = pspmc_0_FPD_CCI_NOC_2_AWADDR;
  assign FPD_CCI_NOC_2_awburst[1:0] = pspmc_0_FPD_CCI_NOC_2_AWBURST;
  assign FPD_CCI_NOC_2_awcache[3:0] = pspmc_0_FPD_CCI_NOC_2_AWCACHE;
  assign FPD_CCI_NOC_2_awid[15:0] = pspmc_0_FPD_CCI_NOC_2_AWID;
  assign FPD_CCI_NOC_2_awlen[7:0] = pspmc_0_FPD_CCI_NOC_2_AWLEN;
  assign FPD_CCI_NOC_2_awlock = pspmc_0_FPD_CCI_NOC_2_AWLOCK;
  assign FPD_CCI_NOC_2_awprot[2:0] = pspmc_0_FPD_CCI_NOC_2_AWPROT;
  assign FPD_CCI_NOC_2_awqos[3:0] = pspmc_0_FPD_CCI_NOC_2_AWQOS;
  assign FPD_CCI_NOC_2_awsize[2:0] = pspmc_0_FPD_CCI_NOC_2_AWSIZE;
  assign FPD_CCI_NOC_2_awuser[17:0] = pspmc_0_FPD_CCI_NOC_2_AWUSER;
  assign FPD_CCI_NOC_2_awvalid = pspmc_0_FPD_CCI_NOC_2_AWVALID;
  assign FPD_CCI_NOC_2_bready = pspmc_0_FPD_CCI_NOC_2_BREADY;
  assign FPD_CCI_NOC_2_rready = pspmc_0_FPD_CCI_NOC_2_RREADY;
  assign FPD_CCI_NOC_2_wdata[127:0] = pspmc_0_FPD_CCI_NOC_2_WDATA;
  assign FPD_CCI_NOC_2_wlast = pspmc_0_FPD_CCI_NOC_2_WLAST;
  assign FPD_CCI_NOC_2_wstrb[15:0] = pspmc_0_FPD_CCI_NOC_2_WSTRB;
  assign FPD_CCI_NOC_2_wuser[16:0] = pspmc_0_FPD_CCI_NOC_2_WUSER;
  assign FPD_CCI_NOC_2_wvalid = pspmc_0_FPD_CCI_NOC_2_WVALID;
  assign FPD_CCI_NOC_3_araddr[63:0] = pspmc_0_FPD_CCI_NOC_3_ARADDR;
  assign FPD_CCI_NOC_3_arburst[1:0] = pspmc_0_FPD_CCI_NOC_3_ARBURST;
  assign FPD_CCI_NOC_3_arcache[3:0] = pspmc_0_FPD_CCI_NOC_3_ARCACHE;
  assign FPD_CCI_NOC_3_arid[15:0] = pspmc_0_FPD_CCI_NOC_3_ARID;
  assign FPD_CCI_NOC_3_arlen[7:0] = pspmc_0_FPD_CCI_NOC_3_ARLEN;
  assign FPD_CCI_NOC_3_arlock = pspmc_0_FPD_CCI_NOC_3_ARLOCK;
  assign FPD_CCI_NOC_3_arprot[2:0] = pspmc_0_FPD_CCI_NOC_3_ARPROT;
  assign FPD_CCI_NOC_3_arqos[3:0] = pspmc_0_FPD_CCI_NOC_3_ARQOS;
  assign FPD_CCI_NOC_3_arsize[2:0] = pspmc_0_FPD_CCI_NOC_3_ARSIZE;
  assign FPD_CCI_NOC_3_aruser[17:0] = pspmc_0_FPD_CCI_NOC_3_ARUSER;
  assign FPD_CCI_NOC_3_arvalid = pspmc_0_FPD_CCI_NOC_3_ARVALID;
  assign FPD_CCI_NOC_3_awaddr[63:0] = pspmc_0_FPD_CCI_NOC_3_AWADDR;
  assign FPD_CCI_NOC_3_awburst[1:0] = pspmc_0_FPD_CCI_NOC_3_AWBURST;
  assign FPD_CCI_NOC_3_awcache[3:0] = pspmc_0_FPD_CCI_NOC_3_AWCACHE;
  assign FPD_CCI_NOC_3_awid[15:0] = pspmc_0_FPD_CCI_NOC_3_AWID;
  assign FPD_CCI_NOC_3_awlen[7:0] = pspmc_0_FPD_CCI_NOC_3_AWLEN;
  assign FPD_CCI_NOC_3_awlock = pspmc_0_FPD_CCI_NOC_3_AWLOCK;
  assign FPD_CCI_NOC_3_awprot[2:0] = pspmc_0_FPD_CCI_NOC_3_AWPROT;
  assign FPD_CCI_NOC_3_awqos[3:0] = pspmc_0_FPD_CCI_NOC_3_AWQOS;
  assign FPD_CCI_NOC_3_awsize[2:0] = pspmc_0_FPD_CCI_NOC_3_AWSIZE;
  assign FPD_CCI_NOC_3_awuser[17:0] = pspmc_0_FPD_CCI_NOC_3_AWUSER;
  assign FPD_CCI_NOC_3_awvalid = pspmc_0_FPD_CCI_NOC_3_AWVALID;
  assign FPD_CCI_NOC_3_bready = pspmc_0_FPD_CCI_NOC_3_BREADY;
  assign FPD_CCI_NOC_3_rready = pspmc_0_FPD_CCI_NOC_3_RREADY;
  assign FPD_CCI_NOC_3_wdata[127:0] = pspmc_0_FPD_CCI_NOC_3_WDATA;
  assign FPD_CCI_NOC_3_wlast = pspmc_0_FPD_CCI_NOC_3_WLAST;
  assign FPD_CCI_NOC_3_wstrb[15:0] = pspmc_0_FPD_CCI_NOC_3_WSTRB;
  assign FPD_CCI_NOC_3_wuser[16:0] = pspmc_0_FPD_CCI_NOC_3_WUSER;
  assign FPD_CCI_NOC_3_wvalid = pspmc_0_FPD_CCI_NOC_3_WVALID;
  assign M_AXI_FPD_araddr[43:0] = pspmc_0_M_AXI_FPD_ARADDR;
  assign M_AXI_FPD_arburst[1:0] = pspmc_0_M_AXI_FPD_ARBURST;
  assign M_AXI_FPD_arcache[3:0] = pspmc_0_M_AXI_FPD_ARCACHE;
  assign M_AXI_FPD_arid[15:0] = pspmc_0_M_AXI_FPD_ARID;
  assign M_AXI_FPD_arlen[7:0] = pspmc_0_M_AXI_FPD_ARLEN;
  assign M_AXI_FPD_arlock = pspmc_0_M_AXI_FPD_ARLOCK;
  assign M_AXI_FPD_arprot[2:0] = pspmc_0_M_AXI_FPD_ARPROT;
  assign M_AXI_FPD_arqos[3:0] = pspmc_0_M_AXI_FPD_ARQOS;
  assign M_AXI_FPD_arsize[2:0] = pspmc_0_M_AXI_FPD_ARSIZE;
  assign M_AXI_FPD_aruser[15:0] = pspmc_0_M_AXI_FPD_ARUSER;
  assign M_AXI_FPD_arvalid = pspmc_0_M_AXI_FPD_ARVALID;
  assign M_AXI_FPD_awaddr[43:0] = pspmc_0_M_AXI_FPD_AWADDR;
  assign M_AXI_FPD_awburst[1:0] = pspmc_0_M_AXI_FPD_AWBURST;
  assign M_AXI_FPD_awcache[3:0] = pspmc_0_M_AXI_FPD_AWCACHE;
  assign M_AXI_FPD_awid[15:0] = pspmc_0_M_AXI_FPD_AWID;
  assign M_AXI_FPD_awlen[7:0] = pspmc_0_M_AXI_FPD_AWLEN;
  assign M_AXI_FPD_awlock = pspmc_0_M_AXI_FPD_AWLOCK;
  assign M_AXI_FPD_awprot[2:0] = pspmc_0_M_AXI_FPD_AWPROT;
  assign M_AXI_FPD_awqos[3:0] = pspmc_0_M_AXI_FPD_AWQOS;
  assign M_AXI_FPD_awsize[2:0] = pspmc_0_M_AXI_FPD_AWSIZE;
  assign M_AXI_FPD_awuser[15:0] = pspmc_0_M_AXI_FPD_AWUSER;
  assign M_AXI_FPD_awvalid = pspmc_0_M_AXI_FPD_AWVALID;
  assign M_AXI_FPD_bready = pspmc_0_M_AXI_FPD_BREADY;
  assign M_AXI_FPD_rready = pspmc_0_M_AXI_FPD_RREADY;
  assign M_AXI_FPD_wdata[127:0] = pspmc_0_M_AXI_FPD_WDATA;
  assign M_AXI_FPD_wlast = pspmc_0_M_AXI_FPD_WLAST;
  assign M_AXI_FPD_wstrb[15:0] = pspmc_0_M_AXI_FPD_WSTRB;
  assign M_AXI_FPD_wvalid = pspmc_0_M_AXI_FPD_WVALID;
  assign M_AXI_LPD_araddr[43:0] = pspmc_0_M_AXI_LPD_ARADDR;
  assign M_AXI_LPD_arburst[1:0] = pspmc_0_M_AXI_LPD_ARBURST;
  assign M_AXI_LPD_arcache[3:0] = pspmc_0_M_AXI_LPD_ARCACHE;
  assign M_AXI_LPD_arid[15:0] = pspmc_0_M_AXI_LPD_ARID;
  assign M_AXI_LPD_arlen[7:0] = pspmc_0_M_AXI_LPD_ARLEN;
  assign M_AXI_LPD_arlock = pspmc_0_M_AXI_LPD_ARLOCK;
  assign M_AXI_LPD_arprot[2:0] = pspmc_0_M_AXI_LPD_ARPROT;
  assign M_AXI_LPD_arqos[3:0] = pspmc_0_M_AXI_LPD_ARQOS;
  assign M_AXI_LPD_arsize[2:0] = pspmc_0_M_AXI_LPD_ARSIZE;
  assign M_AXI_LPD_aruser[15:0] = pspmc_0_M_AXI_LPD_ARUSER;
  assign M_AXI_LPD_arvalid = pspmc_0_M_AXI_LPD_ARVALID;
  assign M_AXI_LPD_awaddr[43:0] = pspmc_0_M_AXI_LPD_AWADDR;
  assign M_AXI_LPD_awburst[1:0] = pspmc_0_M_AXI_LPD_AWBURST;
  assign M_AXI_LPD_awcache[3:0] = pspmc_0_M_AXI_LPD_AWCACHE;
  assign M_AXI_LPD_awid[15:0] = pspmc_0_M_AXI_LPD_AWID;
  assign M_AXI_LPD_awlen[7:0] = pspmc_0_M_AXI_LPD_AWLEN;
  assign M_AXI_LPD_awlock = pspmc_0_M_AXI_LPD_AWLOCK;
  assign M_AXI_LPD_awprot[2:0] = pspmc_0_M_AXI_LPD_AWPROT;
  assign M_AXI_LPD_awqos[3:0] = pspmc_0_M_AXI_LPD_AWQOS;
  assign M_AXI_LPD_awsize[2:0] = pspmc_0_M_AXI_LPD_AWSIZE;
  assign M_AXI_LPD_awuser[15:0] = pspmc_0_M_AXI_LPD_AWUSER;
  assign M_AXI_LPD_awvalid = pspmc_0_M_AXI_LPD_AWVALID;
  assign M_AXI_LPD_bready = pspmc_0_M_AXI_LPD_BREADY;
  assign M_AXI_LPD_rready = pspmc_0_M_AXI_LPD_RREADY;
  assign M_AXI_LPD_wdata[127:0] = pspmc_0_M_AXI_LPD_WDATA;
  assign M_AXI_LPD_wlast = pspmc_0_M_AXI_LPD_WLAST;
  assign M_AXI_LPD_wstrb[15:0] = pspmc_0_M_AXI_LPD_WSTRB;
  assign M_AXI_LPD_wvalid = pspmc_0_M_AXI_LPD_WVALID;
  assign fpd_cci_noc_axi0_clk = pspmc_0_fpd_cci_noc_axi0_clk;
  assign fpd_cci_noc_axi1_clk = pspmc_0_fpd_cci_noc_axi1_clk;
  assign fpd_cci_noc_axi2_clk = pspmc_0_fpd_cci_noc_axi2_clk;
  assign fpd_cci_noc_axi3_clk = pspmc_0_fpd_cci_noc_axi3_clk;
  assign m_axi_fpd_aclk_1 = m_axi_fpd_aclk;
  assign m_axi_lpd_aclk_1 = m_axi_lpd_aclk;
  assign pl0_ref_clk = pspmc_0_pl0_ref_clk;
  assign pl0_resetn = pspmc_0_pl0_resetn;
  assign pl1_ref_clk = pspmc_0_pl1_ref_clk;
  assign pl_ps_irq0_1 = pl_ps_irq0;
  assign pl_ps_irq1_1 = pl_ps_irq1;
  assign pl_ps_irq2_1 = pl_ps_irq2;
  assign pl_ps_irq3_1 = pl_ps_irq3;
  assign pl_ps_irq4_1 = pl_ps_irq4;
  assign pl_ps_irq5_1 = pl_ps_irq5;
  assign pspmc_0_FPD_CCI_NOC_0_ARREADY = FPD_CCI_NOC_0_arready;
  assign pspmc_0_FPD_CCI_NOC_0_AWREADY = FPD_CCI_NOC_0_awready;
  assign pspmc_0_FPD_CCI_NOC_0_BID = FPD_CCI_NOC_0_bid[15:0];
  assign pspmc_0_FPD_CCI_NOC_0_BRESP = FPD_CCI_NOC_0_bresp[1:0];
  assign pspmc_0_FPD_CCI_NOC_0_BVALID = FPD_CCI_NOC_0_bvalid;
  assign pspmc_0_FPD_CCI_NOC_0_RDATA = FPD_CCI_NOC_0_rdata[127:0];
  assign pspmc_0_FPD_CCI_NOC_0_RID = FPD_CCI_NOC_0_rid[15:0];
  assign pspmc_0_FPD_CCI_NOC_0_RLAST = FPD_CCI_NOC_0_rlast;
  assign pspmc_0_FPD_CCI_NOC_0_RRESP = FPD_CCI_NOC_0_rresp[1:0];
  assign pspmc_0_FPD_CCI_NOC_0_RVALID = FPD_CCI_NOC_0_rvalid;
  assign pspmc_0_FPD_CCI_NOC_0_WREADY = FPD_CCI_NOC_0_wready;
  assign pspmc_0_FPD_CCI_NOC_1_ARREADY = FPD_CCI_NOC_1_arready;
  assign pspmc_0_FPD_CCI_NOC_1_AWREADY = FPD_CCI_NOC_1_awready;
  assign pspmc_0_FPD_CCI_NOC_1_BID = FPD_CCI_NOC_1_bid[15:0];
  assign pspmc_0_FPD_CCI_NOC_1_BRESP = FPD_CCI_NOC_1_bresp[1:0];
  assign pspmc_0_FPD_CCI_NOC_1_BVALID = FPD_CCI_NOC_1_bvalid;
  assign pspmc_0_FPD_CCI_NOC_1_RDATA = FPD_CCI_NOC_1_rdata[127:0];
  assign pspmc_0_FPD_CCI_NOC_1_RID = FPD_CCI_NOC_1_rid[15:0];
  assign pspmc_0_FPD_CCI_NOC_1_RLAST = FPD_CCI_NOC_1_rlast;
  assign pspmc_0_FPD_CCI_NOC_1_RRESP = FPD_CCI_NOC_1_rresp[1:0];
  assign pspmc_0_FPD_CCI_NOC_1_RVALID = FPD_CCI_NOC_1_rvalid;
  assign pspmc_0_FPD_CCI_NOC_1_WREADY = FPD_CCI_NOC_1_wready;
  assign pspmc_0_FPD_CCI_NOC_2_ARREADY = FPD_CCI_NOC_2_arready;
  assign pspmc_0_FPD_CCI_NOC_2_AWREADY = FPD_CCI_NOC_2_awready;
  assign pspmc_0_FPD_CCI_NOC_2_BID = FPD_CCI_NOC_2_bid[15:0];
  assign pspmc_0_FPD_CCI_NOC_2_BRESP = FPD_CCI_NOC_2_bresp[1:0];
  assign pspmc_0_FPD_CCI_NOC_2_BVALID = FPD_CCI_NOC_2_bvalid;
  assign pspmc_0_FPD_CCI_NOC_2_RDATA = FPD_CCI_NOC_2_rdata[127:0];
  assign pspmc_0_FPD_CCI_NOC_2_RID = FPD_CCI_NOC_2_rid[15:0];
  assign pspmc_0_FPD_CCI_NOC_2_RLAST = FPD_CCI_NOC_2_rlast;
  assign pspmc_0_FPD_CCI_NOC_2_RRESP = FPD_CCI_NOC_2_rresp[1:0];
  assign pspmc_0_FPD_CCI_NOC_2_RVALID = FPD_CCI_NOC_2_rvalid;
  assign pspmc_0_FPD_CCI_NOC_2_WREADY = FPD_CCI_NOC_2_wready;
  assign pspmc_0_FPD_CCI_NOC_3_ARREADY = FPD_CCI_NOC_3_arready;
  assign pspmc_0_FPD_CCI_NOC_3_AWREADY = FPD_CCI_NOC_3_awready;
  assign pspmc_0_FPD_CCI_NOC_3_BID = FPD_CCI_NOC_3_bid[15:0];
  assign pspmc_0_FPD_CCI_NOC_3_BRESP = FPD_CCI_NOC_3_bresp[1:0];
  assign pspmc_0_FPD_CCI_NOC_3_BVALID = FPD_CCI_NOC_3_bvalid;
  assign pspmc_0_FPD_CCI_NOC_3_RDATA = FPD_CCI_NOC_3_rdata[127:0];
  assign pspmc_0_FPD_CCI_NOC_3_RID = FPD_CCI_NOC_3_rid[15:0];
  assign pspmc_0_FPD_CCI_NOC_3_RLAST = FPD_CCI_NOC_3_rlast;
  assign pspmc_0_FPD_CCI_NOC_3_RRESP = FPD_CCI_NOC_3_rresp[1:0];
  assign pspmc_0_FPD_CCI_NOC_3_RVALID = FPD_CCI_NOC_3_rvalid;
  assign pspmc_0_FPD_CCI_NOC_3_WREADY = FPD_CCI_NOC_3_wready;
  assign pspmc_0_M_AXI_FPD_ARREADY = M_AXI_FPD_arready;
  assign pspmc_0_M_AXI_FPD_AWREADY = M_AXI_FPD_awready;
  assign pspmc_0_M_AXI_FPD_BID = M_AXI_FPD_bid[15:0];
  assign pspmc_0_M_AXI_FPD_BRESP = M_AXI_FPD_bresp[1:0];
  assign pspmc_0_M_AXI_FPD_BVALID = M_AXI_FPD_bvalid;
  assign pspmc_0_M_AXI_FPD_RDATA = M_AXI_FPD_rdata[127:0];
  assign pspmc_0_M_AXI_FPD_RID = M_AXI_FPD_rid[15:0];
  assign pspmc_0_M_AXI_FPD_RLAST = M_AXI_FPD_rlast;
  assign pspmc_0_M_AXI_FPD_RRESP = M_AXI_FPD_rresp[1:0];
  assign pspmc_0_M_AXI_FPD_RVALID = M_AXI_FPD_rvalid;
  assign pspmc_0_M_AXI_FPD_WREADY = M_AXI_FPD_wready;
  assign pspmc_0_M_AXI_LPD_ARREADY = M_AXI_LPD_arready;
  assign pspmc_0_M_AXI_LPD_AWREADY = M_AXI_LPD_awready;
  assign pspmc_0_M_AXI_LPD_BID = M_AXI_LPD_bid[15:0];
  assign pspmc_0_M_AXI_LPD_BRESP = M_AXI_LPD_bresp[1:0];
  assign pspmc_0_M_AXI_LPD_BVALID = M_AXI_LPD_bvalid;
  assign pspmc_0_M_AXI_LPD_RDATA = M_AXI_LPD_rdata[127:0];
  assign pspmc_0_M_AXI_LPD_RID = M_AXI_LPD_rid[15:0];
  assign pspmc_0_M_AXI_LPD_RLAST = M_AXI_LPD_rlast;
  assign pspmc_0_M_AXI_LPD_RRESP = M_AXI_LPD_rresp[1:0];
  assign pspmc_0_M_AXI_LPD_RVALID = M_AXI_LPD_rvalid;
  assign pspmc_0_M_AXI_LPD_WREADY = M_AXI_LPD_wready;
  bd_65e0_pspmc_0_0 pspmc_0
       (.cpmps_corr_irq(1'b0),
        .cpmps_misc_irq(1'b0),
        .cpmps_uncorr_irq(1'b0),
        .fpd_cci_noc_axi0_araddr(pspmc_0_FPD_CCI_NOC_0_ARADDR),
        .fpd_cci_noc_axi0_arburst(pspmc_0_FPD_CCI_NOC_0_ARBURST),
        .fpd_cci_noc_axi0_arcache(pspmc_0_FPD_CCI_NOC_0_ARCACHE),
        .fpd_cci_noc_axi0_arid(pspmc_0_FPD_CCI_NOC_0_ARID),
        .fpd_cci_noc_axi0_arlen(pspmc_0_FPD_CCI_NOC_0_ARLEN),
        .fpd_cci_noc_axi0_arlock(pspmc_0_FPD_CCI_NOC_0_ARLOCK),
        .fpd_cci_noc_axi0_arprot(pspmc_0_FPD_CCI_NOC_0_ARPROT),
        .fpd_cci_noc_axi0_arqos(pspmc_0_FPD_CCI_NOC_0_ARQOS),
        .fpd_cci_noc_axi0_arready(pspmc_0_FPD_CCI_NOC_0_ARREADY),
        .fpd_cci_noc_axi0_arsize(pspmc_0_FPD_CCI_NOC_0_ARSIZE),
        .fpd_cci_noc_axi0_aruser(pspmc_0_FPD_CCI_NOC_0_ARUSER),
        .fpd_cci_noc_axi0_arvalid(pspmc_0_FPD_CCI_NOC_0_ARVALID),
        .fpd_cci_noc_axi0_awaddr(pspmc_0_FPD_CCI_NOC_0_AWADDR),
        .fpd_cci_noc_axi0_awburst(pspmc_0_FPD_CCI_NOC_0_AWBURST),
        .fpd_cci_noc_axi0_awcache(pspmc_0_FPD_CCI_NOC_0_AWCACHE),
        .fpd_cci_noc_axi0_awid(pspmc_0_FPD_CCI_NOC_0_AWID),
        .fpd_cci_noc_axi0_awlen(pspmc_0_FPD_CCI_NOC_0_AWLEN),
        .fpd_cci_noc_axi0_awlock(pspmc_0_FPD_CCI_NOC_0_AWLOCK),
        .fpd_cci_noc_axi0_awprot(pspmc_0_FPD_CCI_NOC_0_AWPROT),
        .fpd_cci_noc_axi0_awqos(pspmc_0_FPD_CCI_NOC_0_AWQOS),
        .fpd_cci_noc_axi0_awready(pspmc_0_FPD_CCI_NOC_0_AWREADY),
        .fpd_cci_noc_axi0_awsize(pspmc_0_FPD_CCI_NOC_0_AWSIZE),
        .fpd_cci_noc_axi0_awuser(pspmc_0_FPD_CCI_NOC_0_AWUSER),
        .fpd_cci_noc_axi0_awvalid(pspmc_0_FPD_CCI_NOC_0_AWVALID),
        .fpd_cci_noc_axi0_bid(pspmc_0_FPD_CCI_NOC_0_BID),
        .fpd_cci_noc_axi0_bready(pspmc_0_FPD_CCI_NOC_0_BREADY),
        .fpd_cci_noc_axi0_bresp(pspmc_0_FPD_CCI_NOC_0_BRESP),
        .fpd_cci_noc_axi0_bvalid(pspmc_0_FPD_CCI_NOC_0_BVALID),
        .fpd_cci_noc_axi0_clk(pspmc_0_fpd_cci_noc_axi0_clk),
        .fpd_cci_noc_axi0_rdata(pspmc_0_FPD_CCI_NOC_0_RDATA),
        .fpd_cci_noc_axi0_rid(pspmc_0_FPD_CCI_NOC_0_RID),
        .fpd_cci_noc_axi0_rlast(pspmc_0_FPD_CCI_NOC_0_RLAST),
        .fpd_cci_noc_axi0_rready(pspmc_0_FPD_CCI_NOC_0_RREADY),
        .fpd_cci_noc_axi0_rresp(pspmc_0_FPD_CCI_NOC_0_RRESP),
        .fpd_cci_noc_axi0_rvalid(pspmc_0_FPD_CCI_NOC_0_RVALID),
        .fpd_cci_noc_axi0_wdata(pspmc_0_FPD_CCI_NOC_0_WDATA),
        .fpd_cci_noc_axi0_wlast(pspmc_0_FPD_CCI_NOC_0_WLAST),
        .fpd_cci_noc_axi0_wready(pspmc_0_FPD_CCI_NOC_0_WREADY),
        .fpd_cci_noc_axi0_wstrb(pspmc_0_FPD_CCI_NOC_0_WSTRB),
        .fpd_cci_noc_axi0_wuser(pspmc_0_FPD_CCI_NOC_0_WUSER),
        .fpd_cci_noc_axi0_wvalid(pspmc_0_FPD_CCI_NOC_0_WVALID),
        .fpd_cci_noc_axi1_araddr(pspmc_0_FPD_CCI_NOC_1_ARADDR),
        .fpd_cci_noc_axi1_arburst(pspmc_0_FPD_CCI_NOC_1_ARBURST),
        .fpd_cci_noc_axi1_arcache(pspmc_0_FPD_CCI_NOC_1_ARCACHE),
        .fpd_cci_noc_axi1_arid(pspmc_0_FPD_CCI_NOC_1_ARID),
        .fpd_cci_noc_axi1_arlen(pspmc_0_FPD_CCI_NOC_1_ARLEN),
        .fpd_cci_noc_axi1_arlock(pspmc_0_FPD_CCI_NOC_1_ARLOCK),
        .fpd_cci_noc_axi1_arprot(pspmc_0_FPD_CCI_NOC_1_ARPROT),
        .fpd_cci_noc_axi1_arqos(pspmc_0_FPD_CCI_NOC_1_ARQOS),
        .fpd_cci_noc_axi1_arready(pspmc_0_FPD_CCI_NOC_1_ARREADY),
        .fpd_cci_noc_axi1_arsize(pspmc_0_FPD_CCI_NOC_1_ARSIZE),
        .fpd_cci_noc_axi1_aruser(pspmc_0_FPD_CCI_NOC_1_ARUSER),
        .fpd_cci_noc_axi1_arvalid(pspmc_0_FPD_CCI_NOC_1_ARVALID),
        .fpd_cci_noc_axi1_awaddr(pspmc_0_FPD_CCI_NOC_1_AWADDR),
        .fpd_cci_noc_axi1_awburst(pspmc_0_FPD_CCI_NOC_1_AWBURST),
        .fpd_cci_noc_axi1_awcache(pspmc_0_FPD_CCI_NOC_1_AWCACHE),
        .fpd_cci_noc_axi1_awid(pspmc_0_FPD_CCI_NOC_1_AWID),
        .fpd_cci_noc_axi1_awlen(pspmc_0_FPD_CCI_NOC_1_AWLEN),
        .fpd_cci_noc_axi1_awlock(pspmc_0_FPD_CCI_NOC_1_AWLOCK),
        .fpd_cci_noc_axi1_awprot(pspmc_0_FPD_CCI_NOC_1_AWPROT),
        .fpd_cci_noc_axi1_awqos(pspmc_0_FPD_CCI_NOC_1_AWQOS),
        .fpd_cci_noc_axi1_awready(pspmc_0_FPD_CCI_NOC_1_AWREADY),
        .fpd_cci_noc_axi1_awsize(pspmc_0_FPD_CCI_NOC_1_AWSIZE),
        .fpd_cci_noc_axi1_awuser(pspmc_0_FPD_CCI_NOC_1_AWUSER),
        .fpd_cci_noc_axi1_awvalid(pspmc_0_FPD_CCI_NOC_1_AWVALID),
        .fpd_cci_noc_axi1_bid(pspmc_0_FPD_CCI_NOC_1_BID),
        .fpd_cci_noc_axi1_bready(pspmc_0_FPD_CCI_NOC_1_BREADY),
        .fpd_cci_noc_axi1_bresp(pspmc_0_FPD_CCI_NOC_1_BRESP),
        .fpd_cci_noc_axi1_bvalid(pspmc_0_FPD_CCI_NOC_1_BVALID),
        .fpd_cci_noc_axi1_clk(pspmc_0_fpd_cci_noc_axi1_clk),
        .fpd_cci_noc_axi1_rdata(pspmc_0_FPD_CCI_NOC_1_RDATA),
        .fpd_cci_noc_axi1_rid(pspmc_0_FPD_CCI_NOC_1_RID),
        .fpd_cci_noc_axi1_rlast(pspmc_0_FPD_CCI_NOC_1_RLAST),
        .fpd_cci_noc_axi1_rready(pspmc_0_FPD_CCI_NOC_1_RREADY),
        .fpd_cci_noc_axi1_rresp(pspmc_0_FPD_CCI_NOC_1_RRESP),
        .fpd_cci_noc_axi1_rvalid(pspmc_0_FPD_CCI_NOC_1_RVALID),
        .fpd_cci_noc_axi1_wdata(pspmc_0_FPD_CCI_NOC_1_WDATA),
        .fpd_cci_noc_axi1_wlast(pspmc_0_FPD_CCI_NOC_1_WLAST),
        .fpd_cci_noc_axi1_wready(pspmc_0_FPD_CCI_NOC_1_WREADY),
        .fpd_cci_noc_axi1_wstrb(pspmc_0_FPD_CCI_NOC_1_WSTRB),
        .fpd_cci_noc_axi1_wuser(pspmc_0_FPD_CCI_NOC_1_WUSER),
        .fpd_cci_noc_axi1_wvalid(pspmc_0_FPD_CCI_NOC_1_WVALID),
        .fpd_cci_noc_axi2_araddr(pspmc_0_FPD_CCI_NOC_2_ARADDR),
        .fpd_cci_noc_axi2_arburst(pspmc_0_FPD_CCI_NOC_2_ARBURST),
        .fpd_cci_noc_axi2_arcache(pspmc_0_FPD_CCI_NOC_2_ARCACHE),
        .fpd_cci_noc_axi2_arid(pspmc_0_FPD_CCI_NOC_2_ARID),
        .fpd_cci_noc_axi2_arlen(pspmc_0_FPD_CCI_NOC_2_ARLEN),
        .fpd_cci_noc_axi2_arlock(pspmc_0_FPD_CCI_NOC_2_ARLOCK),
        .fpd_cci_noc_axi2_arprot(pspmc_0_FPD_CCI_NOC_2_ARPROT),
        .fpd_cci_noc_axi2_arqos(pspmc_0_FPD_CCI_NOC_2_ARQOS),
        .fpd_cci_noc_axi2_arready(pspmc_0_FPD_CCI_NOC_2_ARREADY),
        .fpd_cci_noc_axi2_arsize(pspmc_0_FPD_CCI_NOC_2_ARSIZE),
        .fpd_cci_noc_axi2_aruser(pspmc_0_FPD_CCI_NOC_2_ARUSER),
        .fpd_cci_noc_axi2_arvalid(pspmc_0_FPD_CCI_NOC_2_ARVALID),
        .fpd_cci_noc_axi2_awaddr(pspmc_0_FPD_CCI_NOC_2_AWADDR),
        .fpd_cci_noc_axi2_awburst(pspmc_0_FPD_CCI_NOC_2_AWBURST),
        .fpd_cci_noc_axi2_awcache(pspmc_0_FPD_CCI_NOC_2_AWCACHE),
        .fpd_cci_noc_axi2_awid(pspmc_0_FPD_CCI_NOC_2_AWID),
        .fpd_cci_noc_axi2_awlen(pspmc_0_FPD_CCI_NOC_2_AWLEN),
        .fpd_cci_noc_axi2_awlock(pspmc_0_FPD_CCI_NOC_2_AWLOCK),
        .fpd_cci_noc_axi2_awprot(pspmc_0_FPD_CCI_NOC_2_AWPROT),
        .fpd_cci_noc_axi2_awqos(pspmc_0_FPD_CCI_NOC_2_AWQOS),
        .fpd_cci_noc_axi2_awready(pspmc_0_FPD_CCI_NOC_2_AWREADY),
        .fpd_cci_noc_axi2_awsize(pspmc_0_FPD_CCI_NOC_2_AWSIZE),
        .fpd_cci_noc_axi2_awuser(pspmc_0_FPD_CCI_NOC_2_AWUSER),
        .fpd_cci_noc_axi2_awvalid(pspmc_0_FPD_CCI_NOC_2_AWVALID),
        .fpd_cci_noc_axi2_bid(pspmc_0_FPD_CCI_NOC_2_BID),
        .fpd_cci_noc_axi2_bready(pspmc_0_FPD_CCI_NOC_2_BREADY),
        .fpd_cci_noc_axi2_bresp(pspmc_0_FPD_CCI_NOC_2_BRESP),
        .fpd_cci_noc_axi2_bvalid(pspmc_0_FPD_CCI_NOC_2_BVALID),
        .fpd_cci_noc_axi2_clk(pspmc_0_fpd_cci_noc_axi2_clk),
        .fpd_cci_noc_axi2_rdata(pspmc_0_FPD_CCI_NOC_2_RDATA),
        .fpd_cci_noc_axi2_rid(pspmc_0_FPD_CCI_NOC_2_RID),
        .fpd_cci_noc_axi2_rlast(pspmc_0_FPD_CCI_NOC_2_RLAST),
        .fpd_cci_noc_axi2_rready(pspmc_0_FPD_CCI_NOC_2_RREADY),
        .fpd_cci_noc_axi2_rresp(pspmc_0_FPD_CCI_NOC_2_RRESP),
        .fpd_cci_noc_axi2_rvalid(pspmc_0_FPD_CCI_NOC_2_RVALID),
        .fpd_cci_noc_axi2_wdata(pspmc_0_FPD_CCI_NOC_2_WDATA),
        .fpd_cci_noc_axi2_wlast(pspmc_0_FPD_CCI_NOC_2_WLAST),
        .fpd_cci_noc_axi2_wready(pspmc_0_FPD_CCI_NOC_2_WREADY),
        .fpd_cci_noc_axi2_wstrb(pspmc_0_FPD_CCI_NOC_2_WSTRB),
        .fpd_cci_noc_axi2_wuser(pspmc_0_FPD_CCI_NOC_2_WUSER),
        .fpd_cci_noc_axi2_wvalid(pspmc_0_FPD_CCI_NOC_2_WVALID),
        .fpd_cci_noc_axi3_araddr(pspmc_0_FPD_CCI_NOC_3_ARADDR),
        .fpd_cci_noc_axi3_arburst(pspmc_0_FPD_CCI_NOC_3_ARBURST),
        .fpd_cci_noc_axi3_arcache(pspmc_0_FPD_CCI_NOC_3_ARCACHE),
        .fpd_cci_noc_axi3_arid(pspmc_0_FPD_CCI_NOC_3_ARID),
        .fpd_cci_noc_axi3_arlen(pspmc_0_FPD_CCI_NOC_3_ARLEN),
        .fpd_cci_noc_axi3_arlock(pspmc_0_FPD_CCI_NOC_3_ARLOCK),
        .fpd_cci_noc_axi3_arprot(pspmc_0_FPD_CCI_NOC_3_ARPROT),
        .fpd_cci_noc_axi3_arqos(pspmc_0_FPD_CCI_NOC_3_ARQOS),
        .fpd_cci_noc_axi3_arready(pspmc_0_FPD_CCI_NOC_3_ARREADY),
        .fpd_cci_noc_axi3_arsize(pspmc_0_FPD_CCI_NOC_3_ARSIZE),
        .fpd_cci_noc_axi3_aruser(pspmc_0_FPD_CCI_NOC_3_ARUSER),
        .fpd_cci_noc_axi3_arvalid(pspmc_0_FPD_CCI_NOC_3_ARVALID),
        .fpd_cci_noc_axi3_awaddr(pspmc_0_FPD_CCI_NOC_3_AWADDR),
        .fpd_cci_noc_axi3_awburst(pspmc_0_FPD_CCI_NOC_3_AWBURST),
        .fpd_cci_noc_axi3_awcache(pspmc_0_FPD_CCI_NOC_3_AWCACHE),
        .fpd_cci_noc_axi3_awid(pspmc_0_FPD_CCI_NOC_3_AWID),
        .fpd_cci_noc_axi3_awlen(pspmc_0_FPD_CCI_NOC_3_AWLEN),
        .fpd_cci_noc_axi3_awlock(pspmc_0_FPD_CCI_NOC_3_AWLOCK),
        .fpd_cci_noc_axi3_awprot(pspmc_0_FPD_CCI_NOC_3_AWPROT),
        .fpd_cci_noc_axi3_awqos(pspmc_0_FPD_CCI_NOC_3_AWQOS),
        .fpd_cci_noc_axi3_awready(pspmc_0_FPD_CCI_NOC_3_AWREADY),
        .fpd_cci_noc_axi3_awsize(pspmc_0_FPD_CCI_NOC_3_AWSIZE),
        .fpd_cci_noc_axi3_awuser(pspmc_0_FPD_CCI_NOC_3_AWUSER),
        .fpd_cci_noc_axi3_awvalid(pspmc_0_FPD_CCI_NOC_3_AWVALID),
        .fpd_cci_noc_axi3_bid(pspmc_0_FPD_CCI_NOC_3_BID),
        .fpd_cci_noc_axi3_bready(pspmc_0_FPD_CCI_NOC_3_BREADY),
        .fpd_cci_noc_axi3_bresp(pspmc_0_FPD_CCI_NOC_3_BRESP),
        .fpd_cci_noc_axi3_bvalid(pspmc_0_FPD_CCI_NOC_3_BVALID),
        .fpd_cci_noc_axi3_clk(pspmc_0_fpd_cci_noc_axi3_clk),
        .fpd_cci_noc_axi3_rdata(pspmc_0_FPD_CCI_NOC_3_RDATA),
        .fpd_cci_noc_axi3_rid(pspmc_0_FPD_CCI_NOC_3_RID),
        .fpd_cci_noc_axi3_rlast(pspmc_0_FPD_CCI_NOC_3_RLAST),
        .fpd_cci_noc_axi3_rready(pspmc_0_FPD_CCI_NOC_3_RREADY),
        .fpd_cci_noc_axi3_rresp(pspmc_0_FPD_CCI_NOC_3_RRESP),
        .fpd_cci_noc_axi3_rvalid(pspmc_0_FPD_CCI_NOC_3_RVALID),
        .fpd_cci_noc_axi3_wdata(pspmc_0_FPD_CCI_NOC_3_WDATA),
        .fpd_cci_noc_axi3_wlast(pspmc_0_FPD_CCI_NOC_3_WLAST),
        .fpd_cci_noc_axi3_wready(pspmc_0_FPD_CCI_NOC_3_WREADY),
        .fpd_cci_noc_axi3_wstrb(pspmc_0_FPD_CCI_NOC_3_WSTRB),
        .fpd_cci_noc_axi3_wuser(pspmc_0_FPD_CCI_NOC_3_WUSER),
        .fpd_cci_noc_axi3_wvalid(pspmc_0_FPD_CCI_NOC_3_WVALID),
        .hsdp_gt_rxoutclk(1'b0),
        .hsdp_xpipe0_rx_datavalid(1'b0),
        .hsdp_xpipe0_rx_header({1'b0,1'b0}),
        .hsdp_xpipe0_rx_headervalid(1'b0),
        .hsdp_xpipe0_rx_resetdone(1'b0),
        .hsdp_xpipe0_tx_resetdone(1'b0),
        .hsdp_xpipe1_rx_datavalid(1'b0),
        .hsdp_xpipe1_rx_header({1'b0,1'b0}),
        .hsdp_xpipe1_rx_headervalid(1'b0),
        .hsdp_xpipe1_rx_resetdone(1'b0),
        .hsdp_xpipe1_tx_resetdone(1'b0),
        .hsdp_xpipe2_rx_datavalid(1'b0),
        .hsdp_xpipe2_rx_header({1'b0,1'b0}),
        .hsdp_xpipe2_rx_headervalid(1'b0),
        .hsdp_xpipe2_rx_resetdone(1'b0),
        .hsdp_xpipe2_tx_resetdone(1'b0),
        .link0_xpipe_bufgtce(1'b0),
        .link0_xpipe_bufgtcemask({1'b0,1'b0,1'b0,1'b0}),
        .link0_xpipe_bufgtdiv({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link0_xpipe_bufgtrst(1'b0),
        .link0_xpipe_bufgtrstmask({1'b0,1'b0,1'b0,1'b0}),
        .link0_xpipe_gtoutclk(1'b0),
        .link0_xpipe_phyready(1'b0),
        .link1_xpipe_bufgtce(1'b0),
        .link1_xpipe_bufgtcemask({1'b0,1'b0,1'b0,1'b0}),
        .link1_xpipe_bufgtdiv({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link1_xpipe_bufgtrst(1'b0),
        .link1_xpipe_bufgtrstmask({1'b0,1'b0,1'b0,1'b0}),
        .link1_xpipe_gtoutclk(1'b0),
        .link1_xpipe_phyready(1'b0),
        .m_axi0_ps_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_arburst({1'b0,1'b0}),
        .m_axi0_ps_arcache({1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_arlock(1'b0),
        .m_axi0_ps_arprot({1'b0,1'b0,1'b0}),
        .m_axi0_ps_arqos({1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_arregion({1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_arsize({1'b0,1'b0,1'b0}),
        .m_axi0_ps_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_arvalid(1'b0),
        .m_axi0_ps_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_awburst({1'b0,1'b0}),
        .m_axi0_ps_awcache({1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_awlock(1'b0),
        .m_axi0_ps_awprot({1'b0,1'b0,1'b0}),
        .m_axi0_ps_awqos({1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_awregion({1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_awsize({1'b0,1'b0,1'b0}),
        .m_axi0_ps_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_awvalid(1'b0),
        .m_axi0_ps_bready(1'b0),
        .m_axi0_ps_rready(1'b0),
        .m_axi0_ps_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_wlast(1'b0),
        .m_axi0_ps_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_wuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi0_ps_wvalid(1'b0),
        .m_axi1_ps_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_arburst({1'b0,1'b0}),
        .m_axi1_ps_arcache({1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_arlock(1'b0),
        .m_axi1_ps_arprot({1'b0,1'b0,1'b0}),
        .m_axi1_ps_arqos({1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_arregion({1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_arsize({1'b0,1'b0,1'b0}),
        .m_axi1_ps_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_arvalid(1'b0),
        .m_axi1_ps_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_awburst({1'b0,1'b0}),
        .m_axi1_ps_awcache({1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_awlock(1'b0),
        .m_axi1_ps_awprot({1'b0,1'b0,1'b0}),
        .m_axi1_ps_awqos({1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_awregion({1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_awsize({1'b0,1'b0,1'b0}),
        .m_axi1_ps_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_awvalid(1'b0),
        .m_axi1_ps_bready(1'b0),
        .m_axi1_ps_rready(1'b0),
        .m_axi1_ps_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_wlast(1'b0),
        .m_axi1_ps_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_wuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi1_ps_wvalid(1'b0),
        .m_axi_fpd_aclk(m_axi_fpd_aclk_1),
        .m_axi_fpd_araddr(pspmc_0_M_AXI_FPD_ARADDR),
        .m_axi_fpd_arburst(pspmc_0_M_AXI_FPD_ARBURST),
        .m_axi_fpd_arcache(pspmc_0_M_AXI_FPD_ARCACHE),
        .m_axi_fpd_arid(pspmc_0_M_AXI_FPD_ARID),
        .m_axi_fpd_arlen(pspmc_0_M_AXI_FPD_ARLEN),
        .m_axi_fpd_arlock(pspmc_0_M_AXI_FPD_ARLOCK),
        .m_axi_fpd_arprot(pspmc_0_M_AXI_FPD_ARPROT),
        .m_axi_fpd_arqos(pspmc_0_M_AXI_FPD_ARQOS),
        .m_axi_fpd_arready(pspmc_0_M_AXI_FPD_ARREADY),
        .m_axi_fpd_arsize(pspmc_0_M_AXI_FPD_ARSIZE),
        .m_axi_fpd_aruser(pspmc_0_M_AXI_FPD_ARUSER),
        .m_axi_fpd_arvalid(pspmc_0_M_AXI_FPD_ARVALID),
        .m_axi_fpd_awaddr(pspmc_0_M_AXI_FPD_AWADDR),
        .m_axi_fpd_awburst(pspmc_0_M_AXI_FPD_AWBURST),
        .m_axi_fpd_awcache(pspmc_0_M_AXI_FPD_AWCACHE),
        .m_axi_fpd_awid(pspmc_0_M_AXI_FPD_AWID),
        .m_axi_fpd_awlen(pspmc_0_M_AXI_FPD_AWLEN),
        .m_axi_fpd_awlock(pspmc_0_M_AXI_FPD_AWLOCK),
        .m_axi_fpd_awprot(pspmc_0_M_AXI_FPD_AWPROT),
        .m_axi_fpd_awqos(pspmc_0_M_AXI_FPD_AWQOS),
        .m_axi_fpd_awready(pspmc_0_M_AXI_FPD_AWREADY),
        .m_axi_fpd_awsize(pspmc_0_M_AXI_FPD_AWSIZE),
        .m_axi_fpd_awuser(pspmc_0_M_AXI_FPD_AWUSER),
        .m_axi_fpd_awvalid(pspmc_0_M_AXI_FPD_AWVALID),
        .m_axi_fpd_bid(pspmc_0_M_AXI_FPD_BID),
        .m_axi_fpd_bready(pspmc_0_M_AXI_FPD_BREADY),
        .m_axi_fpd_bresp(pspmc_0_M_AXI_FPD_BRESP),
        .m_axi_fpd_bvalid(pspmc_0_M_AXI_FPD_BVALID),
        .m_axi_fpd_rdata(pspmc_0_M_AXI_FPD_RDATA),
        .m_axi_fpd_rid(pspmc_0_M_AXI_FPD_RID),
        .m_axi_fpd_rlast(pspmc_0_M_AXI_FPD_RLAST),
        .m_axi_fpd_rready(pspmc_0_M_AXI_FPD_RREADY),
        .m_axi_fpd_rresp(pspmc_0_M_AXI_FPD_RRESP),
        .m_axi_fpd_rvalid(pspmc_0_M_AXI_FPD_RVALID),
        .m_axi_fpd_wdata(pspmc_0_M_AXI_FPD_WDATA),
        .m_axi_fpd_wlast(pspmc_0_M_AXI_FPD_WLAST),
        .m_axi_fpd_wready(pspmc_0_M_AXI_FPD_WREADY),
        .m_axi_fpd_wstrb(pspmc_0_M_AXI_FPD_WSTRB),
        .m_axi_fpd_wvalid(pspmc_0_M_AXI_FPD_WVALID),
        .m_axi_lpd_aclk(m_axi_lpd_aclk_1),
        .m_axi_lpd_araddr(pspmc_0_M_AXI_LPD_ARADDR),
        .m_axi_lpd_arburst(pspmc_0_M_AXI_LPD_ARBURST),
        .m_axi_lpd_arcache(pspmc_0_M_AXI_LPD_ARCACHE),
        .m_axi_lpd_arid(pspmc_0_M_AXI_LPD_ARID),
        .m_axi_lpd_arlen(pspmc_0_M_AXI_LPD_ARLEN),
        .m_axi_lpd_arlock(pspmc_0_M_AXI_LPD_ARLOCK),
        .m_axi_lpd_arprot(pspmc_0_M_AXI_LPD_ARPROT),
        .m_axi_lpd_arqos(pspmc_0_M_AXI_LPD_ARQOS),
        .m_axi_lpd_arready(pspmc_0_M_AXI_LPD_ARREADY),
        .m_axi_lpd_arsize(pspmc_0_M_AXI_LPD_ARSIZE),
        .m_axi_lpd_aruser(pspmc_0_M_AXI_LPD_ARUSER),
        .m_axi_lpd_arvalid(pspmc_0_M_AXI_LPD_ARVALID),
        .m_axi_lpd_awaddr(pspmc_0_M_AXI_LPD_AWADDR),
        .m_axi_lpd_awburst(pspmc_0_M_AXI_LPD_AWBURST),
        .m_axi_lpd_awcache(pspmc_0_M_AXI_LPD_AWCACHE),
        .m_axi_lpd_awid(pspmc_0_M_AXI_LPD_AWID),
        .m_axi_lpd_awlen(pspmc_0_M_AXI_LPD_AWLEN),
        .m_axi_lpd_awlock(pspmc_0_M_AXI_LPD_AWLOCK),
        .m_axi_lpd_awprot(pspmc_0_M_AXI_LPD_AWPROT),
        .m_axi_lpd_awqos(pspmc_0_M_AXI_LPD_AWQOS),
        .m_axi_lpd_awready(pspmc_0_M_AXI_LPD_AWREADY),
        .m_axi_lpd_awsize(pspmc_0_M_AXI_LPD_AWSIZE),
        .m_axi_lpd_awuser(pspmc_0_M_AXI_LPD_AWUSER),
        .m_axi_lpd_awvalid(pspmc_0_M_AXI_LPD_AWVALID),
        .m_axi_lpd_bid(pspmc_0_M_AXI_LPD_BID),
        .m_axi_lpd_bready(pspmc_0_M_AXI_LPD_BREADY),
        .m_axi_lpd_bresp(pspmc_0_M_AXI_LPD_BRESP),
        .m_axi_lpd_bvalid(pspmc_0_M_AXI_LPD_BVALID),
        .m_axi_lpd_rdata(pspmc_0_M_AXI_LPD_RDATA),
        .m_axi_lpd_rid(pspmc_0_M_AXI_LPD_RID),
        .m_axi_lpd_rlast(pspmc_0_M_AXI_LPD_RLAST),
        .m_axi_lpd_rready(pspmc_0_M_AXI_LPD_RREADY),
        .m_axi_lpd_rresp(pspmc_0_M_AXI_LPD_RRESP),
        .m_axi_lpd_rvalid(pspmc_0_M_AXI_LPD_RVALID),
        .m_axi_lpd_wdata(pspmc_0_M_AXI_LPD_WDATA),
        .m_axi_lpd_wlast(pspmc_0_M_AXI_LPD_WLAST),
        .m_axi_lpd_wready(pspmc_0_M_AXI_LPD_WREADY),
        .m_axi_lpd_wstrb(pspmc_0_M_AXI_LPD_WSTRB),
        .m_axi_lpd_wvalid(pspmc_0_M_AXI_LPD_WVALID),
        .phy_ready_tobot(1'b0),
        .pl0_ref_clk(pspmc_0_pl0_ref_clk),
        .pl0_resetn(pspmc_0_pl0_resetn),
        .pl1_ref_clk(pspmc_0_pl1_ref_clk),
        .pl_ps_irq0(pl_ps_irq0_1),
        .pl_ps_irq1(pl_ps_irq1_1),
        .pl_ps_irq2(pl_ps_irq2_1),
        .pl_ps_irq3(pl_ps_irq3_1),
        .pl_ps_irq4(pl_ps_irq4_1),
        .pl_ps_irq5(pl_ps_irq5_1),
        .s_axi_cfg_arready(1'b0),
        .s_axi_cfg_awready(1'b0),
        .s_axi_cfg_bid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_cfg_bresp({1'b0,1'b0}),
        .s_axi_cfg_buser(1'b0),
        .s_axi_cfg_bvalid(1'b0),
        .s_axi_cfg_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_cfg_rid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_cfg_rlast(1'b0),
        .s_axi_cfg_rresp({1'b0,1'b0}),
        .s_axi_cfg_ruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_cfg_rvalid(1'b0),
        .s_axi_cfg_wready(1'b0),
        .s_axi_pcie_arready(1'b0),
        .s_axi_pcie_awready(1'b0),
        .s_axi_pcie_bid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_pcie_bresp({1'b0,1'b0}),
        .s_axi_pcie_buser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_pcie_bvalid(1'b0),
        .s_axi_pcie_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_pcie_rid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_pcie_rlast(1'b0),
        .s_axi_pcie_rresp({1'b0,1'b0}),
        .s_axi_pcie_ruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_pcie_rvalid(1'b0),
        .s_axi_pcie_wready(1'b0),
        .xpipe0_rx_charisk({1'b0,1'b0}),
        .xpipe0_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe0_rx_datavalid(1'b0),
        .xpipe0_rx_elecidle(1'b0),
        .xpipe0_rx_startblock(1'b0),
        .xpipe0_rx_status({1'b0,1'b0,1'b0}),
        .xpipe0_rx_syncheader({1'b0,1'b0}),
        .xpipe0_rx_valid(1'b0),
        .xpipe10_phystatus(1'b0),
        .xpipe10_rx_charisk({1'b0,1'b0}),
        .xpipe10_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe10_rx_datavalid(1'b0),
        .xpipe10_rx_elecidle(1'b0),
        .xpipe10_rx_startblock(1'b0),
        .xpipe10_rx_status({1'b0,1'b0,1'b0}),
        .xpipe10_rx_syncheader({1'b0,1'b0}),
        .xpipe10_rx_valid(1'b0),
        .xpipe11_phystatus(1'b0),
        .xpipe11_rx_charisk({1'b0,1'b0}),
        .xpipe11_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe11_rx_datavalid(1'b0),
        .xpipe11_rx_elecidle(1'b0),
        .xpipe11_rx_startblock(1'b0),
        .xpipe11_rx_status({1'b0,1'b0,1'b0}),
        .xpipe11_rx_syncheader({1'b0,1'b0}),
        .xpipe11_rx_valid(1'b0),
        .xpipe12_phystatus(1'b0),
        .xpipe12_rx_charisk({1'b0,1'b0}),
        .xpipe12_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe12_rx_datavalid(1'b0),
        .xpipe12_rx_elecidle(1'b0),
        .xpipe12_rx_startblock(1'b0),
        .xpipe12_rx_status({1'b0,1'b0,1'b0}),
        .xpipe12_rx_syncheader({1'b0,1'b0}),
        .xpipe12_rx_valid(1'b0),
        .xpipe13_phystatus(1'b0),
        .xpipe13_rx_charisk({1'b0,1'b0}),
        .xpipe13_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe13_rx_datavalid(1'b0),
        .xpipe13_rx_elecidle(1'b0),
        .xpipe13_rx_startblock(1'b0),
        .xpipe13_rx_status({1'b0,1'b0,1'b0}),
        .xpipe13_rx_syncheader({1'b0,1'b0}),
        .xpipe13_rx_valid(1'b0),
        .xpipe14_phystatus(1'b0),
        .xpipe14_rx_charisk({1'b0,1'b0}),
        .xpipe14_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe14_rx_datavalid(1'b0),
        .xpipe14_rx_elecidle(1'b0),
        .xpipe14_rx_startblock(1'b0),
        .xpipe14_rx_status({1'b0,1'b0,1'b0}),
        .xpipe14_rx_syncheader({1'b0,1'b0}),
        .xpipe14_rx_valid(1'b0),
        .xpipe15_phystatus(1'b0),
        .xpipe15_rx_charisk({1'b0,1'b0}),
        .xpipe15_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe15_rx_datavalid(1'b0),
        .xpipe15_rx_elecidle(1'b0),
        .xpipe15_rx_startblock(1'b0),
        .xpipe15_rx_status({1'b0,1'b0,1'b0}),
        .xpipe15_rx_syncheader({1'b0,1'b0}),
        .xpipe15_rx_valid(1'b0),
        .xpipe1_phystatus(1'b0),
        .xpipe1_rx_charisk({1'b0,1'b0}),
        .xpipe1_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe1_rx_datavalid(1'b0),
        .xpipe1_rx_elecidle(1'b0),
        .xpipe1_rx_startblock(1'b0),
        .xpipe1_rx_status({1'b0,1'b0,1'b0}),
        .xpipe1_rx_syncheader({1'b0,1'b0}),
        .xpipe1_rx_valid(1'b0),
        .xpipe2_phystatus(1'b0),
        .xpipe2_rx_charisk({1'b0,1'b0}),
        .xpipe2_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe2_rx_datavalid(1'b0),
        .xpipe2_rx_elecidle(1'b0),
        .xpipe2_rx_startblock(1'b0),
        .xpipe2_rx_status({1'b0,1'b0,1'b0}),
        .xpipe2_rx_syncheader({1'b0,1'b0}),
        .xpipe2_rx_valid(1'b0),
        .xpipe3_phystatus(1'b0),
        .xpipe3_rx_charisk({1'b0,1'b0}),
        .xpipe3_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe3_rx_datavalid(1'b0),
        .xpipe3_rx_elecidle(1'b0),
        .xpipe3_rx_startblock(1'b0),
        .xpipe3_rx_status({1'b0,1'b0,1'b0}),
        .xpipe3_rx_syncheader({1'b0,1'b0}),
        .xpipe3_rx_valid(1'b0),
        .xpipe4_phystatus(1'b0),
        .xpipe4_rx_charisk({1'b0,1'b0}),
        .xpipe4_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe4_rx_datavalid(1'b0),
        .xpipe4_rx_elecidle(1'b0),
        .xpipe4_rx_startblock(1'b0),
        .xpipe4_rx_status({1'b0,1'b0,1'b0}),
        .xpipe4_rx_syncheader({1'b0,1'b0}),
        .xpipe4_rx_valid(1'b0),
        .xpipe5_phystatus(1'b0),
        .xpipe5_rx_charisk({1'b0,1'b0}),
        .xpipe5_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe5_rx_datavalid(1'b0),
        .xpipe5_rx_elecidle(1'b0),
        .xpipe5_rx_startblock(1'b0),
        .xpipe5_rx_status({1'b0,1'b0,1'b0}),
        .xpipe5_rx_syncheader({1'b0,1'b0}),
        .xpipe5_rx_valid(1'b0),
        .xpipe6_phystatus(1'b0),
        .xpipe6_rx_charisk({1'b0,1'b0}),
        .xpipe6_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe6_rx_datavalid(1'b0),
        .xpipe6_rx_elecidle(1'b0),
        .xpipe6_rx_startblock(1'b0),
        .xpipe6_rx_status({1'b0,1'b0,1'b0}),
        .xpipe6_rx_syncheader({1'b0,1'b0}),
        .xpipe6_rx_valid(1'b0),
        .xpipe7_phystatus(1'b0),
        .xpipe7_rx_charisk({1'b0,1'b0}),
        .xpipe7_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe7_rx_datavalid(1'b0),
        .xpipe7_rx_elecidle(1'b0),
        .xpipe7_rx_startblock(1'b0),
        .xpipe7_rx_status({1'b0,1'b0,1'b0}),
        .xpipe7_rx_syncheader({1'b0,1'b0}),
        .xpipe7_rx_valid(1'b0),
        .xpipe8_phystatus(1'b0),
        .xpipe8_rx_charisk({1'b0,1'b0}),
        .xpipe8_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe8_rx_datavalid(1'b0),
        .xpipe8_rx_elecidle(1'b0),
        .xpipe8_rx_startblock(1'b0),
        .xpipe8_rx_status({1'b0,1'b0,1'b0}),
        .xpipe8_rx_syncheader({1'b0,1'b0}),
        .xpipe8_rx_valid(1'b0),
        .xpipe9_phystatus(1'b0),
        .xpipe9_rx_charisk({1'b0,1'b0}),
        .xpipe9_rx_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe9_rx_datavalid(1'b0),
        .xpipe9_rx_elecidle(1'b0),
        .xpipe9_rx_startblock(1'b0),
        .xpipe9_rx_status({1'b0,1'b0,1'b0}),
        .xpipe9_rx_syncheader({1'b0,1'b0}),
        .xpipe9_rx_valid(1'b0),
        .xpipe_q0_rxmargin_req_ack(1'b0),
        .xpipe_q0_rxmargin_res_cmd({1'b0,1'b0,1'b0,1'b0}),
        .xpipe_q0_rxmargin_res_lanenum({1'b0,1'b0}),
        .xpipe_q0_rxmargin_res_payload({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe_q0_rxmargin_res_req(1'b0),
        .xpipe_q1_rxmargin_req_ack(1'b0),
        .xpipe_q1_rxmargin_res_cmd({1'b0,1'b0,1'b0,1'b0}),
        .xpipe_q1_rxmargin_res_lanenum({1'b0,1'b0}),
        .xpipe_q1_rxmargin_res_payload({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe_q1_rxmargin_res_req(1'b0),
        .xpipe_q2_rxmargin_req_ack(1'b0),
        .xpipe_q2_rxmargin_res_cmd({1'b0,1'b0,1'b0,1'b0}),
        .xpipe_q2_rxmargin_res_lanenum({1'b0,1'b0}),
        .xpipe_q2_rxmargin_res_payload({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe_q2_rxmargin_res_req(1'b0),
        .xpipe_q3_rxmargin_req_ack(1'b0),
        .xpipe_q3_rxmargin_res_cmd({1'b0,1'b0,1'b0,1'b0}),
        .xpipe_q3_rxmargin_res_lanenum({1'b0,1'b0}),
        .xpipe_q3_rxmargin_res_payload({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xpipe_q3_rxmargin_res_req(1'b0));
endmodule
