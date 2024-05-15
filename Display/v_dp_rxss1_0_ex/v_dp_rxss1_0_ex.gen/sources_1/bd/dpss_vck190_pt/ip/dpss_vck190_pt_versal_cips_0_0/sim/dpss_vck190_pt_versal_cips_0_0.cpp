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


#include "dpss_vck190_pt_versal_cips_0_0_sc.h"

#include "dpss_vck190_pt_versal_cips_0_0.h"

#include "versal_cips_v3_4_0_tlm.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
dpss_vck190_pt_versal_cips_0_0::dpss_vck190_pt_versal_cips_0_0(const sc_core::sc_module_name& nm) : dpss_vck190_pt_versal_cips_0_0_sc(nm), pl0_ref_clk("pl0_ref_clk"), pl1_ref_clk("pl1_ref_clk"), pl0_resetn("pl0_resetn"), m_axi_fpd_aclk("m_axi_fpd_aclk"), m_axi_lpd_aclk("m_axi_lpd_aclk"), fpd_cci_noc_axi0_clk("fpd_cci_noc_axi0_clk"), fpd_cci_noc_axi1_clk("fpd_cci_noc_axi1_clk"), fpd_cci_noc_axi2_clk("fpd_cci_noc_axi2_clk"), fpd_cci_noc_axi3_clk("fpd_cci_noc_axi3_clk"), pl_ps_irq0("pl_ps_irq0"), pl_ps_irq1("pl_ps_irq1"), pl_ps_irq2("pl_ps_irq2"), pl_ps_irq3("pl_ps_irq3"), pl_ps_irq4("pl_ps_irq4"), pl_ps_irq5("pl_ps_irq5"), M_AXI_FPD_awid("M_AXI_FPD_awid"), M_AXI_FPD_awaddr("M_AXI_FPD_awaddr"), M_AXI_FPD_awlen("M_AXI_FPD_awlen"), M_AXI_FPD_awsize("M_AXI_FPD_awsize"), M_AXI_FPD_awburst("M_AXI_FPD_awburst"), M_AXI_FPD_awlock("M_AXI_FPD_awlock"), M_AXI_FPD_awcache("M_AXI_FPD_awcache"), M_AXI_FPD_awprot("M_AXI_FPD_awprot"), M_AXI_FPD_awvalid("M_AXI_FPD_awvalid"), M_AXI_FPD_awuser("M_AXI_FPD_awuser"), M_AXI_FPD_awready("M_AXI_FPD_awready"), M_AXI_FPD_wlast("M_AXI_FPD_wlast"), M_AXI_FPD_wvalid("M_AXI_FPD_wvalid"), M_AXI_FPD_wready("M_AXI_FPD_wready"), M_AXI_FPD_bid("M_AXI_FPD_bid"), M_AXI_FPD_bresp("M_AXI_FPD_bresp"), M_AXI_FPD_bvalid("M_AXI_FPD_bvalid"), M_AXI_FPD_bready("M_AXI_FPD_bready"), M_AXI_FPD_arid("M_AXI_FPD_arid"), M_AXI_FPD_araddr("M_AXI_FPD_araddr"), M_AXI_FPD_arlen("M_AXI_FPD_arlen"), M_AXI_FPD_arsize("M_AXI_FPD_arsize"), M_AXI_FPD_arburst("M_AXI_FPD_arburst"), M_AXI_FPD_arlock("M_AXI_FPD_arlock"), M_AXI_FPD_arcache("M_AXI_FPD_arcache"), M_AXI_FPD_arprot("M_AXI_FPD_arprot"), M_AXI_FPD_arvalid("M_AXI_FPD_arvalid"), M_AXI_FPD_aruser("M_AXI_FPD_aruser"), M_AXI_FPD_arready("M_AXI_FPD_arready"), M_AXI_FPD_rid("M_AXI_FPD_rid"), M_AXI_FPD_rresp("M_AXI_FPD_rresp"), M_AXI_FPD_rlast("M_AXI_FPD_rlast"), M_AXI_FPD_rvalid("M_AXI_FPD_rvalid"), M_AXI_FPD_rready("M_AXI_FPD_rready"), M_AXI_FPD_awqos("M_AXI_FPD_awqos"), M_AXI_FPD_arqos("M_AXI_FPD_arqos"), M_AXI_FPD_wdata("M_AXI_FPD_wdata"), M_AXI_FPD_wstrb("M_AXI_FPD_wstrb"), M_AXI_FPD_rdata("M_AXI_FPD_rdata"), M_AXI_LPD_awid("M_AXI_LPD_awid"), M_AXI_LPD_awaddr("M_AXI_LPD_awaddr"), M_AXI_LPD_awlen("M_AXI_LPD_awlen"), M_AXI_LPD_awsize("M_AXI_LPD_awsize"), M_AXI_LPD_awburst("M_AXI_LPD_awburst"), M_AXI_LPD_awlock("M_AXI_LPD_awlock"), M_AXI_LPD_awcache("M_AXI_LPD_awcache"), M_AXI_LPD_awprot("M_AXI_LPD_awprot"), M_AXI_LPD_awvalid("M_AXI_LPD_awvalid"), M_AXI_LPD_awuser("M_AXI_LPD_awuser"), M_AXI_LPD_awready("M_AXI_LPD_awready"), M_AXI_LPD_wlast("M_AXI_LPD_wlast"), M_AXI_LPD_wvalid("M_AXI_LPD_wvalid"), M_AXI_LPD_wready("M_AXI_LPD_wready"), M_AXI_LPD_bid("M_AXI_LPD_bid"), M_AXI_LPD_bresp("M_AXI_LPD_bresp"), M_AXI_LPD_bvalid("M_AXI_LPD_bvalid"), M_AXI_LPD_bready("M_AXI_LPD_bready"), M_AXI_LPD_arid("M_AXI_LPD_arid"), M_AXI_LPD_araddr("M_AXI_LPD_araddr"), M_AXI_LPD_arlen("M_AXI_LPD_arlen"), M_AXI_LPD_arsize("M_AXI_LPD_arsize"), M_AXI_LPD_arburst("M_AXI_LPD_arburst"), M_AXI_LPD_arlock("M_AXI_LPD_arlock"), M_AXI_LPD_arcache("M_AXI_LPD_arcache"), M_AXI_LPD_arprot("M_AXI_LPD_arprot"), M_AXI_LPD_arvalid("M_AXI_LPD_arvalid"), M_AXI_LPD_aruser("M_AXI_LPD_aruser"), M_AXI_LPD_arready("M_AXI_LPD_arready"), M_AXI_LPD_rid("M_AXI_LPD_rid"), M_AXI_LPD_rresp("M_AXI_LPD_rresp"), M_AXI_LPD_rlast("M_AXI_LPD_rlast"), M_AXI_LPD_rvalid("M_AXI_LPD_rvalid"), M_AXI_LPD_rready("M_AXI_LPD_rready"), M_AXI_LPD_awqos("M_AXI_LPD_awqos"), M_AXI_LPD_arqos("M_AXI_LPD_arqos"), M_AXI_LPD_wdata("M_AXI_LPD_wdata"), M_AXI_LPD_wstrb("M_AXI_LPD_wstrb"), M_AXI_LPD_rdata("M_AXI_LPD_rdata"), FPD_CCI_NOC_0_awid("FPD_CCI_NOC_0_awid"), FPD_CCI_NOC_0_awaddr("FPD_CCI_NOC_0_awaddr"), FPD_CCI_NOC_0_awlen("FPD_CCI_NOC_0_awlen"), FPD_CCI_NOC_0_awsize("FPD_CCI_NOC_0_awsize"), FPD_CCI_NOC_0_awburst("FPD_CCI_NOC_0_awburst"), FPD_CCI_NOC_0_awlock("FPD_CCI_NOC_0_awlock"), FPD_CCI_NOC_0_awcache("FPD_CCI_NOC_0_awcache"), FPD_CCI_NOC_0_awprot("FPD_CCI_NOC_0_awprot"), FPD_CCI_NOC_0_awvalid("FPD_CCI_NOC_0_awvalid"), FPD_CCI_NOC_0_awuser("FPD_CCI_NOC_0_awuser"), FPD_CCI_NOC_0_awready("FPD_CCI_NOC_0_awready"), FPD_CCI_NOC_0_wdata("FPD_CCI_NOC_0_wdata"), FPD_CCI_NOC_0_wstrb("FPD_CCI_NOC_0_wstrb"), FPD_CCI_NOC_0_wuser("FPD_CCI_NOC_0_wuser"), FPD_CCI_NOC_0_wlast("FPD_CCI_NOC_0_wlast"), FPD_CCI_NOC_0_wvalid("FPD_CCI_NOC_0_wvalid"), FPD_CCI_NOC_0_wready("FPD_CCI_NOC_0_wready"), FPD_CCI_NOC_0_bid("FPD_CCI_NOC_0_bid"), FPD_CCI_NOC_0_bresp("FPD_CCI_NOC_0_bresp"), FPD_CCI_NOC_0_bvalid("FPD_CCI_NOC_0_bvalid"), FPD_CCI_NOC_0_bready("FPD_CCI_NOC_0_bready"), FPD_CCI_NOC_0_arid("FPD_CCI_NOC_0_arid"), FPD_CCI_NOC_0_araddr("FPD_CCI_NOC_0_araddr"), FPD_CCI_NOC_0_arlen("FPD_CCI_NOC_0_arlen"), FPD_CCI_NOC_0_arsize("FPD_CCI_NOC_0_arsize"), FPD_CCI_NOC_0_arburst("FPD_CCI_NOC_0_arburst"), FPD_CCI_NOC_0_arlock("FPD_CCI_NOC_0_arlock"), FPD_CCI_NOC_0_arcache("FPD_CCI_NOC_0_arcache"), FPD_CCI_NOC_0_arprot("FPD_CCI_NOC_0_arprot"), FPD_CCI_NOC_0_arvalid("FPD_CCI_NOC_0_arvalid"), FPD_CCI_NOC_0_aruser("FPD_CCI_NOC_0_aruser"), FPD_CCI_NOC_0_arready("FPD_CCI_NOC_0_arready"), FPD_CCI_NOC_0_rid("FPD_CCI_NOC_0_rid"), FPD_CCI_NOC_0_rdata("FPD_CCI_NOC_0_rdata"), FPD_CCI_NOC_0_rresp("FPD_CCI_NOC_0_rresp"), FPD_CCI_NOC_0_rlast("FPD_CCI_NOC_0_rlast"), FPD_CCI_NOC_0_rvalid("FPD_CCI_NOC_0_rvalid"), FPD_CCI_NOC_0_rready("FPD_CCI_NOC_0_rready"), FPD_CCI_NOC_0_awqos("FPD_CCI_NOC_0_awqos"), FPD_CCI_NOC_0_arqos("FPD_CCI_NOC_0_arqos"), FPD_CCI_NOC_1_awid("FPD_CCI_NOC_1_awid"), FPD_CCI_NOC_1_awaddr("FPD_CCI_NOC_1_awaddr"), FPD_CCI_NOC_1_awlen("FPD_CCI_NOC_1_awlen"), FPD_CCI_NOC_1_awsize("FPD_CCI_NOC_1_awsize"), FPD_CCI_NOC_1_awburst("FPD_CCI_NOC_1_awburst"), FPD_CCI_NOC_1_awlock("FPD_CCI_NOC_1_awlock"), FPD_CCI_NOC_1_awcache("FPD_CCI_NOC_1_awcache"), FPD_CCI_NOC_1_awprot("FPD_CCI_NOC_1_awprot"), FPD_CCI_NOC_1_awvalid("FPD_CCI_NOC_1_awvalid"), FPD_CCI_NOC_1_awuser("FPD_CCI_NOC_1_awuser"), FPD_CCI_NOC_1_awready("FPD_CCI_NOC_1_awready"), FPD_CCI_NOC_1_wdata("FPD_CCI_NOC_1_wdata"), FPD_CCI_NOC_1_wstrb("FPD_CCI_NOC_1_wstrb"), FPD_CCI_NOC_1_wuser("FPD_CCI_NOC_1_wuser"), FPD_CCI_NOC_1_wlast("FPD_CCI_NOC_1_wlast"), FPD_CCI_NOC_1_wvalid("FPD_CCI_NOC_1_wvalid"), FPD_CCI_NOC_1_wready("FPD_CCI_NOC_1_wready"), FPD_CCI_NOC_1_bid("FPD_CCI_NOC_1_bid"), FPD_CCI_NOC_1_bresp("FPD_CCI_NOC_1_bresp"), FPD_CCI_NOC_1_bvalid("FPD_CCI_NOC_1_bvalid"), FPD_CCI_NOC_1_bready("FPD_CCI_NOC_1_bready"), FPD_CCI_NOC_1_arid("FPD_CCI_NOC_1_arid"), FPD_CCI_NOC_1_araddr("FPD_CCI_NOC_1_araddr"), FPD_CCI_NOC_1_arlen("FPD_CCI_NOC_1_arlen"), FPD_CCI_NOC_1_arsize("FPD_CCI_NOC_1_arsize"), FPD_CCI_NOC_1_arburst("FPD_CCI_NOC_1_arburst"), FPD_CCI_NOC_1_arlock("FPD_CCI_NOC_1_arlock"), FPD_CCI_NOC_1_arcache("FPD_CCI_NOC_1_arcache"), FPD_CCI_NOC_1_arprot("FPD_CCI_NOC_1_arprot"), FPD_CCI_NOC_1_arvalid("FPD_CCI_NOC_1_arvalid"), FPD_CCI_NOC_1_aruser("FPD_CCI_NOC_1_aruser"), FPD_CCI_NOC_1_arready("FPD_CCI_NOC_1_arready"), FPD_CCI_NOC_1_rid("FPD_CCI_NOC_1_rid"), FPD_CCI_NOC_1_rdata("FPD_CCI_NOC_1_rdata"), FPD_CCI_NOC_1_rresp("FPD_CCI_NOC_1_rresp"), FPD_CCI_NOC_1_rlast("FPD_CCI_NOC_1_rlast"), FPD_CCI_NOC_1_rvalid("FPD_CCI_NOC_1_rvalid"), FPD_CCI_NOC_1_rready("FPD_CCI_NOC_1_rready"), FPD_CCI_NOC_1_awqos("FPD_CCI_NOC_1_awqos"), FPD_CCI_NOC_1_arqos("FPD_CCI_NOC_1_arqos"), FPD_CCI_NOC_2_awid("FPD_CCI_NOC_2_awid"), FPD_CCI_NOC_2_awaddr("FPD_CCI_NOC_2_awaddr"), FPD_CCI_NOC_2_awlen("FPD_CCI_NOC_2_awlen"), FPD_CCI_NOC_2_awsize("FPD_CCI_NOC_2_awsize"), FPD_CCI_NOC_2_awburst("FPD_CCI_NOC_2_awburst"), FPD_CCI_NOC_2_awlock("FPD_CCI_NOC_2_awlock"), FPD_CCI_NOC_2_awcache("FPD_CCI_NOC_2_awcache"), FPD_CCI_NOC_2_awprot("FPD_CCI_NOC_2_awprot"), FPD_CCI_NOC_2_awvalid("FPD_CCI_NOC_2_awvalid"), FPD_CCI_NOC_2_awuser("FPD_CCI_NOC_2_awuser"), FPD_CCI_NOC_2_awready("FPD_CCI_NOC_2_awready"), FPD_CCI_NOC_2_wdata("FPD_CCI_NOC_2_wdata"), FPD_CCI_NOC_2_wstrb("FPD_CCI_NOC_2_wstrb"), FPD_CCI_NOC_2_wuser("FPD_CCI_NOC_2_wuser"), FPD_CCI_NOC_2_wlast("FPD_CCI_NOC_2_wlast"), FPD_CCI_NOC_2_wvalid("FPD_CCI_NOC_2_wvalid"), FPD_CCI_NOC_2_wready("FPD_CCI_NOC_2_wready"), FPD_CCI_NOC_2_bid("FPD_CCI_NOC_2_bid"), FPD_CCI_NOC_2_bresp("FPD_CCI_NOC_2_bresp"), FPD_CCI_NOC_2_bvalid("FPD_CCI_NOC_2_bvalid"), FPD_CCI_NOC_2_bready("FPD_CCI_NOC_2_bready"), FPD_CCI_NOC_2_arid("FPD_CCI_NOC_2_arid"), FPD_CCI_NOC_2_araddr("FPD_CCI_NOC_2_araddr"), FPD_CCI_NOC_2_arlen("FPD_CCI_NOC_2_arlen"), FPD_CCI_NOC_2_arsize("FPD_CCI_NOC_2_arsize"), FPD_CCI_NOC_2_arburst("FPD_CCI_NOC_2_arburst"), FPD_CCI_NOC_2_arlock("FPD_CCI_NOC_2_arlock"), FPD_CCI_NOC_2_arcache("FPD_CCI_NOC_2_arcache"), FPD_CCI_NOC_2_arprot("FPD_CCI_NOC_2_arprot"), FPD_CCI_NOC_2_arvalid("FPD_CCI_NOC_2_arvalid"), FPD_CCI_NOC_2_aruser("FPD_CCI_NOC_2_aruser"), FPD_CCI_NOC_2_arready("FPD_CCI_NOC_2_arready"), FPD_CCI_NOC_2_rid("FPD_CCI_NOC_2_rid"), FPD_CCI_NOC_2_rdata("FPD_CCI_NOC_2_rdata"), FPD_CCI_NOC_2_rresp("FPD_CCI_NOC_2_rresp"), FPD_CCI_NOC_2_rlast("FPD_CCI_NOC_2_rlast"), FPD_CCI_NOC_2_rvalid("FPD_CCI_NOC_2_rvalid"), FPD_CCI_NOC_2_rready("FPD_CCI_NOC_2_rready"), FPD_CCI_NOC_2_awqos("FPD_CCI_NOC_2_awqos"), FPD_CCI_NOC_2_arqos("FPD_CCI_NOC_2_arqos"), FPD_CCI_NOC_3_awid("FPD_CCI_NOC_3_awid"), FPD_CCI_NOC_3_awaddr("FPD_CCI_NOC_3_awaddr"), FPD_CCI_NOC_3_awlen("FPD_CCI_NOC_3_awlen"), FPD_CCI_NOC_3_awsize("FPD_CCI_NOC_3_awsize"), FPD_CCI_NOC_3_awburst("FPD_CCI_NOC_3_awburst"), FPD_CCI_NOC_3_awlock("FPD_CCI_NOC_3_awlock"), FPD_CCI_NOC_3_awcache("FPD_CCI_NOC_3_awcache"), FPD_CCI_NOC_3_awprot("FPD_CCI_NOC_3_awprot"), FPD_CCI_NOC_3_awvalid("FPD_CCI_NOC_3_awvalid"), FPD_CCI_NOC_3_awuser("FPD_CCI_NOC_3_awuser"), FPD_CCI_NOC_3_awready("FPD_CCI_NOC_3_awready"), FPD_CCI_NOC_3_wdata("FPD_CCI_NOC_3_wdata"), FPD_CCI_NOC_3_wstrb("FPD_CCI_NOC_3_wstrb"), FPD_CCI_NOC_3_wuser("FPD_CCI_NOC_3_wuser"), FPD_CCI_NOC_3_wlast("FPD_CCI_NOC_3_wlast"), FPD_CCI_NOC_3_wvalid("FPD_CCI_NOC_3_wvalid"), FPD_CCI_NOC_3_wready("FPD_CCI_NOC_3_wready"), FPD_CCI_NOC_3_bid("FPD_CCI_NOC_3_bid"), FPD_CCI_NOC_3_bresp("FPD_CCI_NOC_3_bresp"), FPD_CCI_NOC_3_bvalid("FPD_CCI_NOC_3_bvalid"), FPD_CCI_NOC_3_bready("FPD_CCI_NOC_3_bready"), FPD_CCI_NOC_3_arid("FPD_CCI_NOC_3_arid"), FPD_CCI_NOC_3_araddr("FPD_CCI_NOC_3_araddr"), FPD_CCI_NOC_3_arlen("FPD_CCI_NOC_3_arlen"), FPD_CCI_NOC_3_arsize("FPD_CCI_NOC_3_arsize"), FPD_CCI_NOC_3_arburst("FPD_CCI_NOC_3_arburst"), FPD_CCI_NOC_3_arlock("FPD_CCI_NOC_3_arlock"), FPD_CCI_NOC_3_arcache("FPD_CCI_NOC_3_arcache"), FPD_CCI_NOC_3_arprot("FPD_CCI_NOC_3_arprot"), FPD_CCI_NOC_3_arvalid("FPD_CCI_NOC_3_arvalid"), FPD_CCI_NOC_3_aruser("FPD_CCI_NOC_3_aruser"), FPD_CCI_NOC_3_arready("FPD_CCI_NOC_3_arready"), FPD_CCI_NOC_3_rid("FPD_CCI_NOC_3_rid"), FPD_CCI_NOC_3_rdata("FPD_CCI_NOC_3_rdata"), FPD_CCI_NOC_3_rresp("FPD_CCI_NOC_3_rresp"), FPD_CCI_NOC_3_rlast("FPD_CCI_NOC_3_rlast"), FPD_CCI_NOC_3_rvalid("FPD_CCI_NOC_3_rvalid"), FPD_CCI_NOC_3_rready("FPD_CCI_NOC_3_rready"), FPD_CCI_NOC_3_awqos("FPD_CCI_NOC_3_awqos"), FPD_CCI_NOC_3_arqos("FPD_CCI_NOC_3_arqos")
{

  // initialize pins
  mp_impl->pl0_ref_clk(pl0_ref_clk);
  mp_impl->pl1_ref_clk(pl1_ref_clk);
  mp_impl->pl0_resetn(pl0_resetn);
  mp_impl->m_axi_fpd_aclk(m_axi_fpd_aclk);
  mp_impl->m_axi_lpd_aclk(m_axi_lpd_aclk);
  mp_impl->fpd_cci_noc_axi0_clk(fpd_cci_noc_axi0_clk);
  mp_impl->fpd_cci_noc_axi1_clk(fpd_cci_noc_axi1_clk);
  mp_impl->fpd_cci_noc_axi2_clk(fpd_cci_noc_axi2_clk);
  mp_impl->fpd_cci_noc_axi3_clk(fpd_cci_noc_axi3_clk);
  mp_impl->pl_ps_irq0(pl_ps_irq0);
  mp_impl->pl_ps_irq1(pl_ps_irq1);
  mp_impl->pl_ps_irq2(pl_ps_irq2);
  mp_impl->pl_ps_irq3(pl_ps_irq3);
  mp_impl->pl_ps_irq4(pl_ps_irq4);
  mp_impl->pl_ps_irq5(pl_ps_irq5);

  // initialize transactors
  mp_M_AXI_FPD_transactor = NULL;
  mp_M_AXI_LPD_transactor = NULL;
  mp_FPD_CCI_NOC_0_transactor = NULL;
  mp_FPD_CCI_NOC_1_transactor = NULL;
  mp_FPD_CCI_NOC_2_transactor = NULL;
  mp_FPD_CCI_NOC_3_transactor = NULL;

  // initialize socket stubs

}

void dpss_vck190_pt_versal_cips_0_0::before_end_of_elaboration()
{
  // configure 'M_AXI_FPD' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "M_AXI_FPD_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXI_FPD' transactor parameters
    xsc::common_cpp::properties M_AXI_FPD_transactor_param_props;
    M_AXI_FPD_transactor_param_props.addLong("DATA_WIDTH", "128");
    M_AXI_FPD_transactor_param_props.addLong("FREQ_HZ", "99999001");
    M_AXI_FPD_transactor_param_props.addLong("ID_WIDTH", "16");
    M_AXI_FPD_transactor_param_props.addLong("ADDR_WIDTH", "44");
    M_AXI_FPD_transactor_param_props.addLong("AWUSER_WIDTH", "16");
    M_AXI_FPD_transactor_param_props.addLong("ARUSER_WIDTH", "16");
    M_AXI_FPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_FPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_FPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_FPD_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_FPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_FPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXI_FPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXI_FPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M_AXI_FPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_FPD_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXI_FPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXI_FPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_FPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_FPD_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXI_FPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_FPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_FPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_FPD_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_pl0_ref_clk");
    M_AXI_FPD_transactor_param_props.addString("CATEGORY", "pl");
    M_AXI_FPD_transactor_param_props.addString("MY_CATEGORY", "ps");

    mp_M_AXI_FPD_transactor = new xtlm::xaximm_xtlm2pin_t<128,44,16,16,1,1,16,1>("M_AXI_FPD_transactor", M_AXI_FPD_transactor_param_props);

    // M_AXI_FPD' transactor ports

    mp_M_AXI_FPD_transactor->AWID(M_AXI_FPD_awid);
    mp_M_AXI_FPD_transactor->AWADDR(M_AXI_FPD_awaddr);
    mp_M_AXI_FPD_transactor->AWLEN(M_AXI_FPD_awlen);
    mp_M_AXI_FPD_transactor->AWSIZE(M_AXI_FPD_awsize);
    mp_M_AXI_FPD_transactor->AWBURST(M_AXI_FPD_awburst);
    mp_M_AXI_FPD_transactor->AWLOCK(M_AXI_FPD_awlock);
    mp_M_AXI_FPD_transactor->AWCACHE(M_AXI_FPD_awcache);
    mp_M_AXI_FPD_transactor->AWPROT(M_AXI_FPD_awprot);
    mp_M_AXI_FPD_transactor->AWVALID(M_AXI_FPD_awvalid);
    mp_M_AXI_FPD_transactor->AWUSER(M_AXI_FPD_awuser);
    mp_M_AXI_FPD_transactor->AWREADY(M_AXI_FPD_awready);
    mp_M_AXI_FPD_transactor->WLAST(M_AXI_FPD_wlast);
    mp_M_AXI_FPD_transactor->WVALID(M_AXI_FPD_wvalid);
    mp_M_AXI_FPD_transactor->WREADY(M_AXI_FPD_wready);
    mp_M_AXI_FPD_transactor->BID(M_AXI_FPD_bid);
    mp_M_AXI_FPD_transactor->BRESP(M_AXI_FPD_bresp);
    mp_M_AXI_FPD_transactor->BVALID(M_AXI_FPD_bvalid);
    mp_M_AXI_FPD_transactor->BREADY(M_AXI_FPD_bready);
    mp_M_AXI_FPD_transactor->ARID(M_AXI_FPD_arid);
    mp_M_AXI_FPD_transactor->ARADDR(M_AXI_FPD_araddr);
    mp_M_AXI_FPD_transactor->ARLEN(M_AXI_FPD_arlen);
    mp_M_AXI_FPD_transactor->ARSIZE(M_AXI_FPD_arsize);
    mp_M_AXI_FPD_transactor->ARBURST(M_AXI_FPD_arburst);
    mp_M_AXI_FPD_transactor->ARLOCK(M_AXI_FPD_arlock);
    mp_M_AXI_FPD_transactor->ARCACHE(M_AXI_FPD_arcache);
    mp_M_AXI_FPD_transactor->ARPROT(M_AXI_FPD_arprot);
    mp_M_AXI_FPD_transactor->ARVALID(M_AXI_FPD_arvalid);
    mp_M_AXI_FPD_transactor->ARUSER(M_AXI_FPD_aruser);
    mp_M_AXI_FPD_transactor->ARREADY(M_AXI_FPD_arready);
    mp_M_AXI_FPD_transactor->RID(M_AXI_FPD_rid);
    mp_M_AXI_FPD_transactor->RRESP(M_AXI_FPD_rresp);
    mp_M_AXI_FPD_transactor->RLAST(M_AXI_FPD_rlast);
    mp_M_AXI_FPD_transactor->RVALID(M_AXI_FPD_rvalid);
    mp_M_AXI_FPD_transactor->RREADY(M_AXI_FPD_rready);
    mp_M_AXI_FPD_transactor->AWQOS(M_AXI_FPD_awqos);
    mp_M_AXI_FPD_transactor->ARQOS(M_AXI_FPD_arqos);
    mp_M_AXI_FPD_transactor->WDATA(M_AXI_FPD_wdata);
    mp_M_AXI_FPD_transactor->WSTRB(M_AXI_FPD_wstrb);
    mp_M_AXI_FPD_transactor->RDATA(M_AXI_FPD_rdata);
    mp_M_AXI_FPD_transactor->CLK(m_axi_fpd_aclk);
    mp_M_AXI_FPD_transactor->RST(pl0_resetn);

    // M_AXI_FPD' transactor sockets

    mp_impl->M_AXI_FPD_tlm_aximm_read_socket->bind(*(mp_M_AXI_FPD_transactor->rd_socket));
    mp_impl->M_AXI_FPD_tlm_aximm_write_socket->bind(*(mp_M_AXI_FPD_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M_AXI_LPD' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "M_AXI_LPD_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXI_LPD' transactor parameters
    xsc::common_cpp::properties M_AXI_LPD_transactor_param_props;
    M_AXI_LPD_transactor_param_props.addLong("DATA_WIDTH", "128");
    M_AXI_LPD_transactor_param_props.addLong("FREQ_HZ", "99999001");
    M_AXI_LPD_transactor_param_props.addLong("ID_WIDTH", "16");
    M_AXI_LPD_transactor_param_props.addLong("ADDR_WIDTH", "44");
    M_AXI_LPD_transactor_param_props.addLong("AWUSER_WIDTH", "16");
    M_AXI_LPD_transactor_param_props.addLong("ARUSER_WIDTH", "16");
    M_AXI_LPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_LPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_LPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_LPD_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_LPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_LPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXI_LPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXI_LPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M_AXI_LPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_LPD_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXI_LPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXI_LPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_LPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_LPD_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXI_LPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_LPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_LPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_LPD_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_pl0_ref_clk");
    M_AXI_LPD_transactor_param_props.addString("CATEGORY", "pl");
    M_AXI_LPD_transactor_param_props.addString("MY_CATEGORY", "ps");

    mp_M_AXI_LPD_transactor = new xtlm::xaximm_xtlm2pin_t<128,44,16,16,1,1,16,1>("M_AXI_LPD_transactor", M_AXI_LPD_transactor_param_props);

    // M_AXI_LPD' transactor ports

    mp_M_AXI_LPD_transactor->AWID(M_AXI_LPD_awid);
    mp_M_AXI_LPD_transactor->AWADDR(M_AXI_LPD_awaddr);
    mp_M_AXI_LPD_transactor->AWLEN(M_AXI_LPD_awlen);
    mp_M_AXI_LPD_transactor->AWSIZE(M_AXI_LPD_awsize);
    mp_M_AXI_LPD_transactor->AWBURST(M_AXI_LPD_awburst);
    mp_M_AXI_LPD_transactor->AWLOCK(M_AXI_LPD_awlock);
    mp_M_AXI_LPD_transactor->AWCACHE(M_AXI_LPD_awcache);
    mp_M_AXI_LPD_transactor->AWPROT(M_AXI_LPD_awprot);
    mp_M_AXI_LPD_transactor->AWVALID(M_AXI_LPD_awvalid);
    mp_M_AXI_LPD_transactor->AWUSER(M_AXI_LPD_awuser);
    mp_M_AXI_LPD_transactor->AWREADY(M_AXI_LPD_awready);
    mp_M_AXI_LPD_transactor->WLAST(M_AXI_LPD_wlast);
    mp_M_AXI_LPD_transactor->WVALID(M_AXI_LPD_wvalid);
    mp_M_AXI_LPD_transactor->WREADY(M_AXI_LPD_wready);
    mp_M_AXI_LPD_transactor->BID(M_AXI_LPD_bid);
    mp_M_AXI_LPD_transactor->BRESP(M_AXI_LPD_bresp);
    mp_M_AXI_LPD_transactor->BVALID(M_AXI_LPD_bvalid);
    mp_M_AXI_LPD_transactor->BREADY(M_AXI_LPD_bready);
    mp_M_AXI_LPD_transactor->ARID(M_AXI_LPD_arid);
    mp_M_AXI_LPD_transactor->ARADDR(M_AXI_LPD_araddr);
    mp_M_AXI_LPD_transactor->ARLEN(M_AXI_LPD_arlen);
    mp_M_AXI_LPD_transactor->ARSIZE(M_AXI_LPD_arsize);
    mp_M_AXI_LPD_transactor->ARBURST(M_AXI_LPD_arburst);
    mp_M_AXI_LPD_transactor->ARLOCK(M_AXI_LPD_arlock);
    mp_M_AXI_LPD_transactor->ARCACHE(M_AXI_LPD_arcache);
    mp_M_AXI_LPD_transactor->ARPROT(M_AXI_LPD_arprot);
    mp_M_AXI_LPD_transactor->ARVALID(M_AXI_LPD_arvalid);
    mp_M_AXI_LPD_transactor->ARUSER(M_AXI_LPD_aruser);
    mp_M_AXI_LPD_transactor->ARREADY(M_AXI_LPD_arready);
    mp_M_AXI_LPD_transactor->RID(M_AXI_LPD_rid);
    mp_M_AXI_LPD_transactor->RRESP(M_AXI_LPD_rresp);
    mp_M_AXI_LPD_transactor->RLAST(M_AXI_LPD_rlast);
    mp_M_AXI_LPD_transactor->RVALID(M_AXI_LPD_rvalid);
    mp_M_AXI_LPD_transactor->RREADY(M_AXI_LPD_rready);
    mp_M_AXI_LPD_transactor->AWQOS(M_AXI_LPD_awqos);
    mp_M_AXI_LPD_transactor->ARQOS(M_AXI_LPD_arqos);
    mp_M_AXI_LPD_transactor->WDATA(M_AXI_LPD_wdata);
    mp_M_AXI_LPD_transactor->WSTRB(M_AXI_LPD_wstrb);
    mp_M_AXI_LPD_transactor->RDATA(M_AXI_LPD_rdata);
    mp_M_AXI_LPD_transactor->CLK(m_axi_lpd_aclk);
    mp_M_AXI_LPD_transactor->RST(pl0_resetn);

    // M_AXI_LPD' transactor sockets

    mp_impl->M_AXI_LPD_tlm_aximm_read_socket->bind(*(mp_M_AXI_LPD_transactor->rd_socket));
    mp_impl->M_AXI_LPD_tlm_aximm_write_socket->bind(*(mp_M_AXI_LPD_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'FPD_CCI_NOC_0' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "FPD_CCI_NOC_0_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'FPD_CCI_NOC_0' transactor parameters
    xsc::common_cpp::properties FPD_CCI_NOC_0_transactor_param_props;
    FPD_CCI_NOC_0_transactor_param_props.addLong("DATA_WIDTH", "128");
    FPD_CCI_NOC_0_transactor_param_props.addLong("FREQ_HZ", "824991760");
    FPD_CCI_NOC_0_transactor_param_props.addLong("ID_WIDTH", "16");
    FPD_CCI_NOC_0_transactor_param_props.addLong("ADDR_WIDTH", "64");
    FPD_CCI_NOC_0_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    FPD_CCI_NOC_0_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    FPD_CCI_NOC_0_transactor_param_props.addLong("WUSER_WIDTH", "17");
    FPD_CCI_NOC_0_transactor_param_props.addLong("RUSER_WIDTH", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("BUSER_WIDTH", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_BURST", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_LOCK", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_PROT", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_CACHE", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_QOS", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_REGION", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_WSTRB", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_BRESP", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_RRESP", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    FPD_CCI_NOC_0_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    FPD_CCI_NOC_0_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    FPD_CCI_NOC_0_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_SIZE", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_RESET", "1");
    FPD_CCI_NOC_0_transactor_param_props.addFloat("PHASE", "0.0");
    FPD_CCI_NOC_0_transactor_param_props.addString("PROTOCOL", "AXI4");
    FPD_CCI_NOC_0_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    FPD_CCI_NOC_0_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_fpd_cci_noc_axi0_clk");
    FPD_CCI_NOC_0_transactor_param_props.addString("CATEGORY", "noc");
    FPD_CCI_NOC_0_transactor_param_props.addString("MY_CATEGORY", "ps_cci");
    FPD_CCI_NOC_0_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_CCI_TO_NOC_NMU");
    FPD_CCI_NOC_0_transactor_param_props.addString("INDEX", "0");

    mp_FPD_CCI_NOC_0_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>("FPD_CCI_NOC_0_transactor", FPD_CCI_NOC_0_transactor_param_props);

    // FPD_CCI_NOC_0' transactor ports

    mp_FPD_CCI_NOC_0_transactor->AWID(FPD_CCI_NOC_0_awid);
    mp_FPD_CCI_NOC_0_transactor->AWADDR(FPD_CCI_NOC_0_awaddr);
    mp_FPD_CCI_NOC_0_transactor->AWLEN(FPD_CCI_NOC_0_awlen);
    mp_FPD_CCI_NOC_0_transactor->AWSIZE(FPD_CCI_NOC_0_awsize);
    mp_FPD_CCI_NOC_0_transactor->AWBURST(FPD_CCI_NOC_0_awburst);
    mp_FPD_CCI_NOC_0_transactor->AWLOCK(FPD_CCI_NOC_0_awlock);
    mp_FPD_CCI_NOC_0_transactor->AWCACHE(FPD_CCI_NOC_0_awcache);
    mp_FPD_CCI_NOC_0_transactor->AWPROT(FPD_CCI_NOC_0_awprot);
    mp_FPD_CCI_NOC_0_transactor->AWVALID(FPD_CCI_NOC_0_awvalid);
    mp_FPD_CCI_NOC_0_transactor->AWUSER(FPD_CCI_NOC_0_awuser);
    mp_FPD_CCI_NOC_0_transactor->AWREADY(FPD_CCI_NOC_0_awready);
    mp_FPD_CCI_NOC_0_transactor->WDATA(FPD_CCI_NOC_0_wdata);
    mp_FPD_CCI_NOC_0_transactor->WSTRB(FPD_CCI_NOC_0_wstrb);
    mp_FPD_CCI_NOC_0_transactor->WUSER(FPD_CCI_NOC_0_wuser);
    mp_FPD_CCI_NOC_0_transactor->WLAST(FPD_CCI_NOC_0_wlast);
    mp_FPD_CCI_NOC_0_transactor->WVALID(FPD_CCI_NOC_0_wvalid);
    mp_FPD_CCI_NOC_0_transactor->WREADY(FPD_CCI_NOC_0_wready);
    mp_FPD_CCI_NOC_0_transactor->BID(FPD_CCI_NOC_0_bid);
    mp_FPD_CCI_NOC_0_transactor->BRESP(FPD_CCI_NOC_0_bresp);
    mp_FPD_CCI_NOC_0_transactor->BVALID(FPD_CCI_NOC_0_bvalid);
    mp_FPD_CCI_NOC_0_transactor->BREADY(FPD_CCI_NOC_0_bready);
    mp_FPD_CCI_NOC_0_transactor->ARID(FPD_CCI_NOC_0_arid);
    mp_FPD_CCI_NOC_0_transactor->ARADDR(FPD_CCI_NOC_0_araddr);
    mp_FPD_CCI_NOC_0_transactor->ARLEN(FPD_CCI_NOC_0_arlen);
    mp_FPD_CCI_NOC_0_transactor->ARSIZE(FPD_CCI_NOC_0_arsize);
    mp_FPD_CCI_NOC_0_transactor->ARBURST(FPD_CCI_NOC_0_arburst);
    mp_FPD_CCI_NOC_0_transactor->ARLOCK(FPD_CCI_NOC_0_arlock);
    mp_FPD_CCI_NOC_0_transactor->ARCACHE(FPD_CCI_NOC_0_arcache);
    mp_FPD_CCI_NOC_0_transactor->ARPROT(FPD_CCI_NOC_0_arprot);
    mp_FPD_CCI_NOC_0_transactor->ARVALID(FPD_CCI_NOC_0_arvalid);
    mp_FPD_CCI_NOC_0_transactor->ARUSER(FPD_CCI_NOC_0_aruser);
    mp_FPD_CCI_NOC_0_transactor->ARREADY(FPD_CCI_NOC_0_arready);
    mp_FPD_CCI_NOC_0_transactor->RID(FPD_CCI_NOC_0_rid);
    mp_FPD_CCI_NOC_0_transactor->RDATA(FPD_CCI_NOC_0_rdata);
    mp_FPD_CCI_NOC_0_transactor->RRESP(FPD_CCI_NOC_0_rresp);
    mp_FPD_CCI_NOC_0_transactor->RLAST(FPD_CCI_NOC_0_rlast);
    mp_FPD_CCI_NOC_0_transactor->RVALID(FPD_CCI_NOC_0_rvalid);
    mp_FPD_CCI_NOC_0_transactor->RREADY(FPD_CCI_NOC_0_rready);
    mp_FPD_CCI_NOC_0_transactor->AWQOS(FPD_CCI_NOC_0_awqos);
    mp_FPD_CCI_NOC_0_transactor->ARQOS(FPD_CCI_NOC_0_arqos);
    mp_FPD_CCI_NOC_0_transactor->CLK(fpd_cci_noc_axi0_clk);
    mp_FPD_CCI_NOC_0_transactor->RST(pl0_resetn);

    // FPD_CCI_NOC_0' transactor sockets

    mp_impl->FPD_CCI_NOC_0_tlm_aximm_read_socket->bind(*(mp_FPD_CCI_NOC_0_transactor->rd_socket));
    mp_impl->FPD_CCI_NOC_0_tlm_aximm_write_socket->bind(*(mp_FPD_CCI_NOC_0_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'FPD_CCI_NOC_1' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "FPD_CCI_NOC_1_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'FPD_CCI_NOC_1' transactor parameters
    xsc::common_cpp::properties FPD_CCI_NOC_1_transactor_param_props;
    FPD_CCI_NOC_1_transactor_param_props.addLong("DATA_WIDTH", "128");
    FPD_CCI_NOC_1_transactor_param_props.addLong("FREQ_HZ", "824991760");
    FPD_CCI_NOC_1_transactor_param_props.addLong("ID_WIDTH", "16");
    FPD_CCI_NOC_1_transactor_param_props.addLong("ADDR_WIDTH", "64");
    FPD_CCI_NOC_1_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    FPD_CCI_NOC_1_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    FPD_CCI_NOC_1_transactor_param_props.addLong("WUSER_WIDTH", "17");
    FPD_CCI_NOC_1_transactor_param_props.addLong("RUSER_WIDTH", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("BUSER_WIDTH", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_BURST", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_LOCK", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_PROT", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_CACHE", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_QOS", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_REGION", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_WSTRB", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_BRESP", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_RRESP", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    FPD_CCI_NOC_1_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    FPD_CCI_NOC_1_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    FPD_CCI_NOC_1_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_SIZE", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_RESET", "1");
    FPD_CCI_NOC_1_transactor_param_props.addFloat("PHASE", "0.0");
    FPD_CCI_NOC_1_transactor_param_props.addString("PROTOCOL", "AXI4");
    FPD_CCI_NOC_1_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    FPD_CCI_NOC_1_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_fpd_cci_noc_axi1_clk");
    FPD_CCI_NOC_1_transactor_param_props.addString("CATEGORY", "noc");
    FPD_CCI_NOC_1_transactor_param_props.addString("MY_CATEGORY", "ps_cci");
    FPD_CCI_NOC_1_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_CCI_TO_NOC_NMU");
    FPD_CCI_NOC_1_transactor_param_props.addString("INDEX", "1");

    mp_FPD_CCI_NOC_1_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>("FPD_CCI_NOC_1_transactor", FPD_CCI_NOC_1_transactor_param_props);

    // FPD_CCI_NOC_1' transactor ports

    mp_FPD_CCI_NOC_1_transactor->AWID(FPD_CCI_NOC_1_awid);
    mp_FPD_CCI_NOC_1_transactor->AWADDR(FPD_CCI_NOC_1_awaddr);
    mp_FPD_CCI_NOC_1_transactor->AWLEN(FPD_CCI_NOC_1_awlen);
    mp_FPD_CCI_NOC_1_transactor->AWSIZE(FPD_CCI_NOC_1_awsize);
    mp_FPD_CCI_NOC_1_transactor->AWBURST(FPD_CCI_NOC_1_awburst);
    mp_FPD_CCI_NOC_1_transactor->AWLOCK(FPD_CCI_NOC_1_awlock);
    mp_FPD_CCI_NOC_1_transactor->AWCACHE(FPD_CCI_NOC_1_awcache);
    mp_FPD_CCI_NOC_1_transactor->AWPROT(FPD_CCI_NOC_1_awprot);
    mp_FPD_CCI_NOC_1_transactor->AWVALID(FPD_CCI_NOC_1_awvalid);
    mp_FPD_CCI_NOC_1_transactor->AWUSER(FPD_CCI_NOC_1_awuser);
    mp_FPD_CCI_NOC_1_transactor->AWREADY(FPD_CCI_NOC_1_awready);
    mp_FPD_CCI_NOC_1_transactor->WDATA(FPD_CCI_NOC_1_wdata);
    mp_FPD_CCI_NOC_1_transactor->WSTRB(FPD_CCI_NOC_1_wstrb);
    mp_FPD_CCI_NOC_1_transactor->WUSER(FPD_CCI_NOC_1_wuser);
    mp_FPD_CCI_NOC_1_transactor->WLAST(FPD_CCI_NOC_1_wlast);
    mp_FPD_CCI_NOC_1_transactor->WVALID(FPD_CCI_NOC_1_wvalid);
    mp_FPD_CCI_NOC_1_transactor->WREADY(FPD_CCI_NOC_1_wready);
    mp_FPD_CCI_NOC_1_transactor->BID(FPD_CCI_NOC_1_bid);
    mp_FPD_CCI_NOC_1_transactor->BRESP(FPD_CCI_NOC_1_bresp);
    mp_FPD_CCI_NOC_1_transactor->BVALID(FPD_CCI_NOC_1_bvalid);
    mp_FPD_CCI_NOC_1_transactor->BREADY(FPD_CCI_NOC_1_bready);
    mp_FPD_CCI_NOC_1_transactor->ARID(FPD_CCI_NOC_1_arid);
    mp_FPD_CCI_NOC_1_transactor->ARADDR(FPD_CCI_NOC_1_araddr);
    mp_FPD_CCI_NOC_1_transactor->ARLEN(FPD_CCI_NOC_1_arlen);
    mp_FPD_CCI_NOC_1_transactor->ARSIZE(FPD_CCI_NOC_1_arsize);
    mp_FPD_CCI_NOC_1_transactor->ARBURST(FPD_CCI_NOC_1_arburst);
    mp_FPD_CCI_NOC_1_transactor->ARLOCK(FPD_CCI_NOC_1_arlock);
    mp_FPD_CCI_NOC_1_transactor->ARCACHE(FPD_CCI_NOC_1_arcache);
    mp_FPD_CCI_NOC_1_transactor->ARPROT(FPD_CCI_NOC_1_arprot);
    mp_FPD_CCI_NOC_1_transactor->ARVALID(FPD_CCI_NOC_1_arvalid);
    mp_FPD_CCI_NOC_1_transactor->ARUSER(FPD_CCI_NOC_1_aruser);
    mp_FPD_CCI_NOC_1_transactor->ARREADY(FPD_CCI_NOC_1_arready);
    mp_FPD_CCI_NOC_1_transactor->RID(FPD_CCI_NOC_1_rid);
    mp_FPD_CCI_NOC_1_transactor->RDATA(FPD_CCI_NOC_1_rdata);
    mp_FPD_CCI_NOC_1_transactor->RRESP(FPD_CCI_NOC_1_rresp);
    mp_FPD_CCI_NOC_1_transactor->RLAST(FPD_CCI_NOC_1_rlast);
    mp_FPD_CCI_NOC_1_transactor->RVALID(FPD_CCI_NOC_1_rvalid);
    mp_FPD_CCI_NOC_1_transactor->RREADY(FPD_CCI_NOC_1_rready);
    mp_FPD_CCI_NOC_1_transactor->AWQOS(FPD_CCI_NOC_1_awqos);
    mp_FPD_CCI_NOC_1_transactor->ARQOS(FPD_CCI_NOC_1_arqos);
    mp_FPD_CCI_NOC_1_transactor->CLK(fpd_cci_noc_axi1_clk);
    mp_FPD_CCI_NOC_1_transactor->RST(pl0_resetn);

    // FPD_CCI_NOC_1' transactor sockets

    mp_impl->FPD_CCI_NOC_1_tlm_aximm_read_socket->bind(*(mp_FPD_CCI_NOC_1_transactor->rd_socket));
    mp_impl->FPD_CCI_NOC_1_tlm_aximm_write_socket->bind(*(mp_FPD_CCI_NOC_1_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'FPD_CCI_NOC_2' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "FPD_CCI_NOC_2_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'FPD_CCI_NOC_2' transactor parameters
    xsc::common_cpp::properties FPD_CCI_NOC_2_transactor_param_props;
    FPD_CCI_NOC_2_transactor_param_props.addLong("DATA_WIDTH", "128");
    FPD_CCI_NOC_2_transactor_param_props.addLong("FREQ_HZ", "824991760");
    FPD_CCI_NOC_2_transactor_param_props.addLong("ID_WIDTH", "16");
    FPD_CCI_NOC_2_transactor_param_props.addLong("ADDR_WIDTH", "64");
    FPD_CCI_NOC_2_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    FPD_CCI_NOC_2_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    FPD_CCI_NOC_2_transactor_param_props.addLong("WUSER_WIDTH", "17");
    FPD_CCI_NOC_2_transactor_param_props.addLong("RUSER_WIDTH", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("BUSER_WIDTH", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_BURST", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_LOCK", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_PROT", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_CACHE", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_QOS", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_REGION", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_WSTRB", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_BRESP", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_RRESP", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    FPD_CCI_NOC_2_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    FPD_CCI_NOC_2_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    FPD_CCI_NOC_2_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_SIZE", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_RESET", "1");
    FPD_CCI_NOC_2_transactor_param_props.addFloat("PHASE", "0.0");
    FPD_CCI_NOC_2_transactor_param_props.addString("PROTOCOL", "AXI4");
    FPD_CCI_NOC_2_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    FPD_CCI_NOC_2_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_fpd_cci_noc_axi2_clk");
    FPD_CCI_NOC_2_transactor_param_props.addString("CATEGORY", "noc");
    FPD_CCI_NOC_2_transactor_param_props.addString("MY_CATEGORY", "ps_cci");
    FPD_CCI_NOC_2_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_CCI_TO_NOC_NMU");
    FPD_CCI_NOC_2_transactor_param_props.addString("INDEX", "2");

    mp_FPD_CCI_NOC_2_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>("FPD_CCI_NOC_2_transactor", FPD_CCI_NOC_2_transactor_param_props);

    // FPD_CCI_NOC_2' transactor ports

    mp_FPD_CCI_NOC_2_transactor->AWID(FPD_CCI_NOC_2_awid);
    mp_FPD_CCI_NOC_2_transactor->AWADDR(FPD_CCI_NOC_2_awaddr);
    mp_FPD_CCI_NOC_2_transactor->AWLEN(FPD_CCI_NOC_2_awlen);
    mp_FPD_CCI_NOC_2_transactor->AWSIZE(FPD_CCI_NOC_2_awsize);
    mp_FPD_CCI_NOC_2_transactor->AWBURST(FPD_CCI_NOC_2_awburst);
    mp_FPD_CCI_NOC_2_transactor->AWLOCK(FPD_CCI_NOC_2_awlock);
    mp_FPD_CCI_NOC_2_transactor->AWCACHE(FPD_CCI_NOC_2_awcache);
    mp_FPD_CCI_NOC_2_transactor->AWPROT(FPD_CCI_NOC_2_awprot);
    mp_FPD_CCI_NOC_2_transactor->AWVALID(FPD_CCI_NOC_2_awvalid);
    mp_FPD_CCI_NOC_2_transactor->AWUSER(FPD_CCI_NOC_2_awuser);
    mp_FPD_CCI_NOC_2_transactor->AWREADY(FPD_CCI_NOC_2_awready);
    mp_FPD_CCI_NOC_2_transactor->WDATA(FPD_CCI_NOC_2_wdata);
    mp_FPD_CCI_NOC_2_transactor->WSTRB(FPD_CCI_NOC_2_wstrb);
    mp_FPD_CCI_NOC_2_transactor->WUSER(FPD_CCI_NOC_2_wuser);
    mp_FPD_CCI_NOC_2_transactor->WLAST(FPD_CCI_NOC_2_wlast);
    mp_FPD_CCI_NOC_2_transactor->WVALID(FPD_CCI_NOC_2_wvalid);
    mp_FPD_CCI_NOC_2_transactor->WREADY(FPD_CCI_NOC_2_wready);
    mp_FPD_CCI_NOC_2_transactor->BID(FPD_CCI_NOC_2_bid);
    mp_FPD_CCI_NOC_2_transactor->BRESP(FPD_CCI_NOC_2_bresp);
    mp_FPD_CCI_NOC_2_transactor->BVALID(FPD_CCI_NOC_2_bvalid);
    mp_FPD_CCI_NOC_2_transactor->BREADY(FPD_CCI_NOC_2_bready);
    mp_FPD_CCI_NOC_2_transactor->ARID(FPD_CCI_NOC_2_arid);
    mp_FPD_CCI_NOC_2_transactor->ARADDR(FPD_CCI_NOC_2_araddr);
    mp_FPD_CCI_NOC_2_transactor->ARLEN(FPD_CCI_NOC_2_arlen);
    mp_FPD_CCI_NOC_2_transactor->ARSIZE(FPD_CCI_NOC_2_arsize);
    mp_FPD_CCI_NOC_2_transactor->ARBURST(FPD_CCI_NOC_2_arburst);
    mp_FPD_CCI_NOC_2_transactor->ARLOCK(FPD_CCI_NOC_2_arlock);
    mp_FPD_CCI_NOC_2_transactor->ARCACHE(FPD_CCI_NOC_2_arcache);
    mp_FPD_CCI_NOC_2_transactor->ARPROT(FPD_CCI_NOC_2_arprot);
    mp_FPD_CCI_NOC_2_transactor->ARVALID(FPD_CCI_NOC_2_arvalid);
    mp_FPD_CCI_NOC_2_transactor->ARUSER(FPD_CCI_NOC_2_aruser);
    mp_FPD_CCI_NOC_2_transactor->ARREADY(FPD_CCI_NOC_2_arready);
    mp_FPD_CCI_NOC_2_transactor->RID(FPD_CCI_NOC_2_rid);
    mp_FPD_CCI_NOC_2_transactor->RDATA(FPD_CCI_NOC_2_rdata);
    mp_FPD_CCI_NOC_2_transactor->RRESP(FPD_CCI_NOC_2_rresp);
    mp_FPD_CCI_NOC_2_transactor->RLAST(FPD_CCI_NOC_2_rlast);
    mp_FPD_CCI_NOC_2_transactor->RVALID(FPD_CCI_NOC_2_rvalid);
    mp_FPD_CCI_NOC_2_transactor->RREADY(FPD_CCI_NOC_2_rready);
    mp_FPD_CCI_NOC_2_transactor->AWQOS(FPD_CCI_NOC_2_awqos);
    mp_FPD_CCI_NOC_2_transactor->ARQOS(FPD_CCI_NOC_2_arqos);
    mp_FPD_CCI_NOC_2_transactor->CLK(fpd_cci_noc_axi2_clk);
    mp_FPD_CCI_NOC_2_transactor->RST(pl0_resetn);

    // FPD_CCI_NOC_2' transactor sockets

    mp_impl->FPD_CCI_NOC_2_tlm_aximm_read_socket->bind(*(mp_FPD_CCI_NOC_2_transactor->rd_socket));
    mp_impl->FPD_CCI_NOC_2_tlm_aximm_write_socket->bind(*(mp_FPD_CCI_NOC_2_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'FPD_CCI_NOC_3' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "FPD_CCI_NOC_3_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'FPD_CCI_NOC_3' transactor parameters
    xsc::common_cpp::properties FPD_CCI_NOC_3_transactor_param_props;
    FPD_CCI_NOC_3_transactor_param_props.addLong("DATA_WIDTH", "128");
    FPD_CCI_NOC_3_transactor_param_props.addLong("FREQ_HZ", "824991760");
    FPD_CCI_NOC_3_transactor_param_props.addLong("ID_WIDTH", "16");
    FPD_CCI_NOC_3_transactor_param_props.addLong("ADDR_WIDTH", "64");
    FPD_CCI_NOC_3_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    FPD_CCI_NOC_3_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    FPD_CCI_NOC_3_transactor_param_props.addLong("WUSER_WIDTH", "17");
    FPD_CCI_NOC_3_transactor_param_props.addLong("RUSER_WIDTH", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("BUSER_WIDTH", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_BURST", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_LOCK", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_PROT", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_CACHE", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_QOS", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_REGION", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_WSTRB", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_BRESP", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_RRESP", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    FPD_CCI_NOC_3_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    FPD_CCI_NOC_3_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    FPD_CCI_NOC_3_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_SIZE", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_RESET", "1");
    FPD_CCI_NOC_3_transactor_param_props.addFloat("PHASE", "0.0");
    FPD_CCI_NOC_3_transactor_param_props.addString("PROTOCOL", "AXI4");
    FPD_CCI_NOC_3_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    FPD_CCI_NOC_3_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_fpd_cci_noc_axi3_clk");
    FPD_CCI_NOC_3_transactor_param_props.addString("CATEGORY", "noc");
    FPD_CCI_NOC_3_transactor_param_props.addString("MY_CATEGORY", "ps_cci");
    FPD_CCI_NOC_3_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_CCI_TO_NOC_NMU");
    FPD_CCI_NOC_3_transactor_param_props.addString("INDEX", "3");

    mp_FPD_CCI_NOC_3_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>("FPD_CCI_NOC_3_transactor", FPD_CCI_NOC_3_transactor_param_props);

    // FPD_CCI_NOC_3' transactor ports

    mp_FPD_CCI_NOC_3_transactor->AWID(FPD_CCI_NOC_3_awid);
    mp_FPD_CCI_NOC_3_transactor->AWADDR(FPD_CCI_NOC_3_awaddr);
    mp_FPD_CCI_NOC_3_transactor->AWLEN(FPD_CCI_NOC_3_awlen);
    mp_FPD_CCI_NOC_3_transactor->AWSIZE(FPD_CCI_NOC_3_awsize);
    mp_FPD_CCI_NOC_3_transactor->AWBURST(FPD_CCI_NOC_3_awburst);
    mp_FPD_CCI_NOC_3_transactor->AWLOCK(FPD_CCI_NOC_3_awlock);
    mp_FPD_CCI_NOC_3_transactor->AWCACHE(FPD_CCI_NOC_3_awcache);
    mp_FPD_CCI_NOC_3_transactor->AWPROT(FPD_CCI_NOC_3_awprot);
    mp_FPD_CCI_NOC_3_transactor->AWVALID(FPD_CCI_NOC_3_awvalid);
    mp_FPD_CCI_NOC_3_transactor->AWUSER(FPD_CCI_NOC_3_awuser);
    mp_FPD_CCI_NOC_3_transactor->AWREADY(FPD_CCI_NOC_3_awready);
    mp_FPD_CCI_NOC_3_transactor->WDATA(FPD_CCI_NOC_3_wdata);
    mp_FPD_CCI_NOC_3_transactor->WSTRB(FPD_CCI_NOC_3_wstrb);
    mp_FPD_CCI_NOC_3_transactor->WUSER(FPD_CCI_NOC_3_wuser);
    mp_FPD_CCI_NOC_3_transactor->WLAST(FPD_CCI_NOC_3_wlast);
    mp_FPD_CCI_NOC_3_transactor->WVALID(FPD_CCI_NOC_3_wvalid);
    mp_FPD_CCI_NOC_3_transactor->WREADY(FPD_CCI_NOC_3_wready);
    mp_FPD_CCI_NOC_3_transactor->BID(FPD_CCI_NOC_3_bid);
    mp_FPD_CCI_NOC_3_transactor->BRESP(FPD_CCI_NOC_3_bresp);
    mp_FPD_CCI_NOC_3_transactor->BVALID(FPD_CCI_NOC_3_bvalid);
    mp_FPD_CCI_NOC_3_transactor->BREADY(FPD_CCI_NOC_3_bready);
    mp_FPD_CCI_NOC_3_transactor->ARID(FPD_CCI_NOC_3_arid);
    mp_FPD_CCI_NOC_3_transactor->ARADDR(FPD_CCI_NOC_3_araddr);
    mp_FPD_CCI_NOC_3_transactor->ARLEN(FPD_CCI_NOC_3_arlen);
    mp_FPD_CCI_NOC_3_transactor->ARSIZE(FPD_CCI_NOC_3_arsize);
    mp_FPD_CCI_NOC_3_transactor->ARBURST(FPD_CCI_NOC_3_arburst);
    mp_FPD_CCI_NOC_3_transactor->ARLOCK(FPD_CCI_NOC_3_arlock);
    mp_FPD_CCI_NOC_3_transactor->ARCACHE(FPD_CCI_NOC_3_arcache);
    mp_FPD_CCI_NOC_3_transactor->ARPROT(FPD_CCI_NOC_3_arprot);
    mp_FPD_CCI_NOC_3_transactor->ARVALID(FPD_CCI_NOC_3_arvalid);
    mp_FPD_CCI_NOC_3_transactor->ARUSER(FPD_CCI_NOC_3_aruser);
    mp_FPD_CCI_NOC_3_transactor->ARREADY(FPD_CCI_NOC_3_arready);
    mp_FPD_CCI_NOC_3_transactor->RID(FPD_CCI_NOC_3_rid);
    mp_FPD_CCI_NOC_3_transactor->RDATA(FPD_CCI_NOC_3_rdata);
    mp_FPD_CCI_NOC_3_transactor->RRESP(FPD_CCI_NOC_3_rresp);
    mp_FPD_CCI_NOC_3_transactor->RLAST(FPD_CCI_NOC_3_rlast);
    mp_FPD_CCI_NOC_3_transactor->RVALID(FPD_CCI_NOC_3_rvalid);
    mp_FPD_CCI_NOC_3_transactor->RREADY(FPD_CCI_NOC_3_rready);
    mp_FPD_CCI_NOC_3_transactor->AWQOS(FPD_CCI_NOC_3_awqos);
    mp_FPD_CCI_NOC_3_transactor->ARQOS(FPD_CCI_NOC_3_arqos);
    mp_FPD_CCI_NOC_3_transactor->CLK(fpd_cci_noc_axi3_clk);
    mp_FPD_CCI_NOC_3_transactor->RST(pl0_resetn);

    // FPD_CCI_NOC_3' transactor sockets

    mp_impl->FPD_CCI_NOC_3_tlm_aximm_read_socket->bind(*(mp_FPD_CCI_NOC_3_transactor->rd_socket));
    mp_impl->FPD_CCI_NOC_3_tlm_aximm_write_socket->bind(*(mp_FPD_CCI_NOC_3_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
dpss_vck190_pt_versal_cips_0_0::dpss_vck190_pt_versal_cips_0_0(const sc_core::sc_module_name& nm) : dpss_vck190_pt_versal_cips_0_0_sc(nm), pl0_ref_clk("pl0_ref_clk"), pl1_ref_clk("pl1_ref_clk"), pl0_resetn("pl0_resetn"), m_axi_fpd_aclk("m_axi_fpd_aclk"), m_axi_lpd_aclk("m_axi_lpd_aclk"), fpd_cci_noc_axi0_clk("fpd_cci_noc_axi0_clk"), fpd_cci_noc_axi1_clk("fpd_cci_noc_axi1_clk"), fpd_cci_noc_axi2_clk("fpd_cci_noc_axi2_clk"), fpd_cci_noc_axi3_clk("fpd_cci_noc_axi3_clk"), pl_ps_irq0("pl_ps_irq0"), pl_ps_irq1("pl_ps_irq1"), pl_ps_irq2("pl_ps_irq2"), pl_ps_irq3("pl_ps_irq3"), pl_ps_irq4("pl_ps_irq4"), pl_ps_irq5("pl_ps_irq5"), M_AXI_FPD_awid("M_AXI_FPD_awid"), M_AXI_FPD_awaddr("M_AXI_FPD_awaddr"), M_AXI_FPD_awlen("M_AXI_FPD_awlen"), M_AXI_FPD_awsize("M_AXI_FPD_awsize"), M_AXI_FPD_awburst("M_AXI_FPD_awburst"), M_AXI_FPD_awlock("M_AXI_FPD_awlock"), M_AXI_FPD_awcache("M_AXI_FPD_awcache"), M_AXI_FPD_awprot("M_AXI_FPD_awprot"), M_AXI_FPD_awvalid("M_AXI_FPD_awvalid"), M_AXI_FPD_awuser("M_AXI_FPD_awuser"), M_AXI_FPD_awready("M_AXI_FPD_awready"), M_AXI_FPD_wlast("M_AXI_FPD_wlast"), M_AXI_FPD_wvalid("M_AXI_FPD_wvalid"), M_AXI_FPD_wready("M_AXI_FPD_wready"), M_AXI_FPD_bid("M_AXI_FPD_bid"), M_AXI_FPD_bresp("M_AXI_FPD_bresp"), M_AXI_FPD_bvalid("M_AXI_FPD_bvalid"), M_AXI_FPD_bready("M_AXI_FPD_bready"), M_AXI_FPD_arid("M_AXI_FPD_arid"), M_AXI_FPD_araddr("M_AXI_FPD_araddr"), M_AXI_FPD_arlen("M_AXI_FPD_arlen"), M_AXI_FPD_arsize("M_AXI_FPD_arsize"), M_AXI_FPD_arburst("M_AXI_FPD_arburst"), M_AXI_FPD_arlock("M_AXI_FPD_arlock"), M_AXI_FPD_arcache("M_AXI_FPD_arcache"), M_AXI_FPD_arprot("M_AXI_FPD_arprot"), M_AXI_FPD_arvalid("M_AXI_FPD_arvalid"), M_AXI_FPD_aruser("M_AXI_FPD_aruser"), M_AXI_FPD_arready("M_AXI_FPD_arready"), M_AXI_FPD_rid("M_AXI_FPD_rid"), M_AXI_FPD_rresp("M_AXI_FPD_rresp"), M_AXI_FPD_rlast("M_AXI_FPD_rlast"), M_AXI_FPD_rvalid("M_AXI_FPD_rvalid"), M_AXI_FPD_rready("M_AXI_FPD_rready"), M_AXI_FPD_awqos("M_AXI_FPD_awqos"), M_AXI_FPD_arqos("M_AXI_FPD_arqos"), M_AXI_FPD_wdata("M_AXI_FPD_wdata"), M_AXI_FPD_wstrb("M_AXI_FPD_wstrb"), M_AXI_FPD_rdata("M_AXI_FPD_rdata"), M_AXI_LPD_awid("M_AXI_LPD_awid"), M_AXI_LPD_awaddr("M_AXI_LPD_awaddr"), M_AXI_LPD_awlen("M_AXI_LPD_awlen"), M_AXI_LPD_awsize("M_AXI_LPD_awsize"), M_AXI_LPD_awburst("M_AXI_LPD_awburst"), M_AXI_LPD_awlock("M_AXI_LPD_awlock"), M_AXI_LPD_awcache("M_AXI_LPD_awcache"), M_AXI_LPD_awprot("M_AXI_LPD_awprot"), M_AXI_LPD_awvalid("M_AXI_LPD_awvalid"), M_AXI_LPD_awuser("M_AXI_LPD_awuser"), M_AXI_LPD_awready("M_AXI_LPD_awready"), M_AXI_LPD_wlast("M_AXI_LPD_wlast"), M_AXI_LPD_wvalid("M_AXI_LPD_wvalid"), M_AXI_LPD_wready("M_AXI_LPD_wready"), M_AXI_LPD_bid("M_AXI_LPD_bid"), M_AXI_LPD_bresp("M_AXI_LPD_bresp"), M_AXI_LPD_bvalid("M_AXI_LPD_bvalid"), M_AXI_LPD_bready("M_AXI_LPD_bready"), M_AXI_LPD_arid("M_AXI_LPD_arid"), M_AXI_LPD_araddr("M_AXI_LPD_araddr"), M_AXI_LPD_arlen("M_AXI_LPD_arlen"), M_AXI_LPD_arsize("M_AXI_LPD_arsize"), M_AXI_LPD_arburst("M_AXI_LPD_arburst"), M_AXI_LPD_arlock("M_AXI_LPD_arlock"), M_AXI_LPD_arcache("M_AXI_LPD_arcache"), M_AXI_LPD_arprot("M_AXI_LPD_arprot"), M_AXI_LPD_arvalid("M_AXI_LPD_arvalid"), M_AXI_LPD_aruser("M_AXI_LPD_aruser"), M_AXI_LPD_arready("M_AXI_LPD_arready"), M_AXI_LPD_rid("M_AXI_LPD_rid"), M_AXI_LPD_rresp("M_AXI_LPD_rresp"), M_AXI_LPD_rlast("M_AXI_LPD_rlast"), M_AXI_LPD_rvalid("M_AXI_LPD_rvalid"), M_AXI_LPD_rready("M_AXI_LPD_rready"), M_AXI_LPD_awqos("M_AXI_LPD_awqos"), M_AXI_LPD_arqos("M_AXI_LPD_arqos"), M_AXI_LPD_wdata("M_AXI_LPD_wdata"), M_AXI_LPD_wstrb("M_AXI_LPD_wstrb"), M_AXI_LPD_rdata("M_AXI_LPD_rdata"), FPD_CCI_NOC_0_awid("FPD_CCI_NOC_0_awid"), FPD_CCI_NOC_0_awaddr("FPD_CCI_NOC_0_awaddr"), FPD_CCI_NOC_0_awlen("FPD_CCI_NOC_0_awlen"), FPD_CCI_NOC_0_awsize("FPD_CCI_NOC_0_awsize"), FPD_CCI_NOC_0_awburst("FPD_CCI_NOC_0_awburst"), FPD_CCI_NOC_0_awlock("FPD_CCI_NOC_0_awlock"), FPD_CCI_NOC_0_awcache("FPD_CCI_NOC_0_awcache"), FPD_CCI_NOC_0_awprot("FPD_CCI_NOC_0_awprot"), FPD_CCI_NOC_0_awvalid("FPD_CCI_NOC_0_awvalid"), FPD_CCI_NOC_0_awuser("FPD_CCI_NOC_0_awuser"), FPD_CCI_NOC_0_awready("FPD_CCI_NOC_0_awready"), FPD_CCI_NOC_0_wdata("FPD_CCI_NOC_0_wdata"), FPD_CCI_NOC_0_wstrb("FPD_CCI_NOC_0_wstrb"), FPD_CCI_NOC_0_wuser("FPD_CCI_NOC_0_wuser"), FPD_CCI_NOC_0_wlast("FPD_CCI_NOC_0_wlast"), FPD_CCI_NOC_0_wvalid("FPD_CCI_NOC_0_wvalid"), FPD_CCI_NOC_0_wready("FPD_CCI_NOC_0_wready"), FPD_CCI_NOC_0_bid("FPD_CCI_NOC_0_bid"), FPD_CCI_NOC_0_bresp("FPD_CCI_NOC_0_bresp"), FPD_CCI_NOC_0_bvalid("FPD_CCI_NOC_0_bvalid"), FPD_CCI_NOC_0_bready("FPD_CCI_NOC_0_bready"), FPD_CCI_NOC_0_arid("FPD_CCI_NOC_0_arid"), FPD_CCI_NOC_0_araddr("FPD_CCI_NOC_0_araddr"), FPD_CCI_NOC_0_arlen("FPD_CCI_NOC_0_arlen"), FPD_CCI_NOC_0_arsize("FPD_CCI_NOC_0_arsize"), FPD_CCI_NOC_0_arburst("FPD_CCI_NOC_0_arburst"), FPD_CCI_NOC_0_arlock("FPD_CCI_NOC_0_arlock"), FPD_CCI_NOC_0_arcache("FPD_CCI_NOC_0_arcache"), FPD_CCI_NOC_0_arprot("FPD_CCI_NOC_0_arprot"), FPD_CCI_NOC_0_arvalid("FPD_CCI_NOC_0_arvalid"), FPD_CCI_NOC_0_aruser("FPD_CCI_NOC_0_aruser"), FPD_CCI_NOC_0_arready("FPD_CCI_NOC_0_arready"), FPD_CCI_NOC_0_rid("FPD_CCI_NOC_0_rid"), FPD_CCI_NOC_0_rdata("FPD_CCI_NOC_0_rdata"), FPD_CCI_NOC_0_rresp("FPD_CCI_NOC_0_rresp"), FPD_CCI_NOC_0_rlast("FPD_CCI_NOC_0_rlast"), FPD_CCI_NOC_0_rvalid("FPD_CCI_NOC_0_rvalid"), FPD_CCI_NOC_0_rready("FPD_CCI_NOC_0_rready"), FPD_CCI_NOC_0_awqos("FPD_CCI_NOC_0_awqos"), FPD_CCI_NOC_0_arqos("FPD_CCI_NOC_0_arqos"), FPD_CCI_NOC_1_awid("FPD_CCI_NOC_1_awid"), FPD_CCI_NOC_1_awaddr("FPD_CCI_NOC_1_awaddr"), FPD_CCI_NOC_1_awlen("FPD_CCI_NOC_1_awlen"), FPD_CCI_NOC_1_awsize("FPD_CCI_NOC_1_awsize"), FPD_CCI_NOC_1_awburst("FPD_CCI_NOC_1_awburst"), FPD_CCI_NOC_1_awlock("FPD_CCI_NOC_1_awlock"), FPD_CCI_NOC_1_awcache("FPD_CCI_NOC_1_awcache"), FPD_CCI_NOC_1_awprot("FPD_CCI_NOC_1_awprot"), FPD_CCI_NOC_1_awvalid("FPD_CCI_NOC_1_awvalid"), FPD_CCI_NOC_1_awuser("FPD_CCI_NOC_1_awuser"), FPD_CCI_NOC_1_awready("FPD_CCI_NOC_1_awready"), FPD_CCI_NOC_1_wdata("FPD_CCI_NOC_1_wdata"), FPD_CCI_NOC_1_wstrb("FPD_CCI_NOC_1_wstrb"), FPD_CCI_NOC_1_wuser("FPD_CCI_NOC_1_wuser"), FPD_CCI_NOC_1_wlast("FPD_CCI_NOC_1_wlast"), FPD_CCI_NOC_1_wvalid("FPD_CCI_NOC_1_wvalid"), FPD_CCI_NOC_1_wready("FPD_CCI_NOC_1_wready"), FPD_CCI_NOC_1_bid("FPD_CCI_NOC_1_bid"), FPD_CCI_NOC_1_bresp("FPD_CCI_NOC_1_bresp"), FPD_CCI_NOC_1_bvalid("FPD_CCI_NOC_1_bvalid"), FPD_CCI_NOC_1_bready("FPD_CCI_NOC_1_bready"), FPD_CCI_NOC_1_arid("FPD_CCI_NOC_1_arid"), FPD_CCI_NOC_1_araddr("FPD_CCI_NOC_1_araddr"), FPD_CCI_NOC_1_arlen("FPD_CCI_NOC_1_arlen"), FPD_CCI_NOC_1_arsize("FPD_CCI_NOC_1_arsize"), FPD_CCI_NOC_1_arburst("FPD_CCI_NOC_1_arburst"), FPD_CCI_NOC_1_arlock("FPD_CCI_NOC_1_arlock"), FPD_CCI_NOC_1_arcache("FPD_CCI_NOC_1_arcache"), FPD_CCI_NOC_1_arprot("FPD_CCI_NOC_1_arprot"), FPD_CCI_NOC_1_arvalid("FPD_CCI_NOC_1_arvalid"), FPD_CCI_NOC_1_aruser("FPD_CCI_NOC_1_aruser"), FPD_CCI_NOC_1_arready("FPD_CCI_NOC_1_arready"), FPD_CCI_NOC_1_rid("FPD_CCI_NOC_1_rid"), FPD_CCI_NOC_1_rdata("FPD_CCI_NOC_1_rdata"), FPD_CCI_NOC_1_rresp("FPD_CCI_NOC_1_rresp"), FPD_CCI_NOC_1_rlast("FPD_CCI_NOC_1_rlast"), FPD_CCI_NOC_1_rvalid("FPD_CCI_NOC_1_rvalid"), FPD_CCI_NOC_1_rready("FPD_CCI_NOC_1_rready"), FPD_CCI_NOC_1_awqos("FPD_CCI_NOC_1_awqos"), FPD_CCI_NOC_1_arqos("FPD_CCI_NOC_1_arqos"), FPD_CCI_NOC_2_awid("FPD_CCI_NOC_2_awid"), FPD_CCI_NOC_2_awaddr("FPD_CCI_NOC_2_awaddr"), FPD_CCI_NOC_2_awlen("FPD_CCI_NOC_2_awlen"), FPD_CCI_NOC_2_awsize("FPD_CCI_NOC_2_awsize"), FPD_CCI_NOC_2_awburst("FPD_CCI_NOC_2_awburst"), FPD_CCI_NOC_2_awlock("FPD_CCI_NOC_2_awlock"), FPD_CCI_NOC_2_awcache("FPD_CCI_NOC_2_awcache"), FPD_CCI_NOC_2_awprot("FPD_CCI_NOC_2_awprot"), FPD_CCI_NOC_2_awvalid("FPD_CCI_NOC_2_awvalid"), FPD_CCI_NOC_2_awuser("FPD_CCI_NOC_2_awuser"), FPD_CCI_NOC_2_awready("FPD_CCI_NOC_2_awready"), FPD_CCI_NOC_2_wdata("FPD_CCI_NOC_2_wdata"), FPD_CCI_NOC_2_wstrb("FPD_CCI_NOC_2_wstrb"), FPD_CCI_NOC_2_wuser("FPD_CCI_NOC_2_wuser"), FPD_CCI_NOC_2_wlast("FPD_CCI_NOC_2_wlast"), FPD_CCI_NOC_2_wvalid("FPD_CCI_NOC_2_wvalid"), FPD_CCI_NOC_2_wready("FPD_CCI_NOC_2_wready"), FPD_CCI_NOC_2_bid("FPD_CCI_NOC_2_bid"), FPD_CCI_NOC_2_bresp("FPD_CCI_NOC_2_bresp"), FPD_CCI_NOC_2_bvalid("FPD_CCI_NOC_2_bvalid"), FPD_CCI_NOC_2_bready("FPD_CCI_NOC_2_bready"), FPD_CCI_NOC_2_arid("FPD_CCI_NOC_2_arid"), FPD_CCI_NOC_2_araddr("FPD_CCI_NOC_2_araddr"), FPD_CCI_NOC_2_arlen("FPD_CCI_NOC_2_arlen"), FPD_CCI_NOC_2_arsize("FPD_CCI_NOC_2_arsize"), FPD_CCI_NOC_2_arburst("FPD_CCI_NOC_2_arburst"), FPD_CCI_NOC_2_arlock("FPD_CCI_NOC_2_arlock"), FPD_CCI_NOC_2_arcache("FPD_CCI_NOC_2_arcache"), FPD_CCI_NOC_2_arprot("FPD_CCI_NOC_2_arprot"), FPD_CCI_NOC_2_arvalid("FPD_CCI_NOC_2_arvalid"), FPD_CCI_NOC_2_aruser("FPD_CCI_NOC_2_aruser"), FPD_CCI_NOC_2_arready("FPD_CCI_NOC_2_arready"), FPD_CCI_NOC_2_rid("FPD_CCI_NOC_2_rid"), FPD_CCI_NOC_2_rdata("FPD_CCI_NOC_2_rdata"), FPD_CCI_NOC_2_rresp("FPD_CCI_NOC_2_rresp"), FPD_CCI_NOC_2_rlast("FPD_CCI_NOC_2_rlast"), FPD_CCI_NOC_2_rvalid("FPD_CCI_NOC_2_rvalid"), FPD_CCI_NOC_2_rready("FPD_CCI_NOC_2_rready"), FPD_CCI_NOC_2_awqos("FPD_CCI_NOC_2_awqos"), FPD_CCI_NOC_2_arqos("FPD_CCI_NOC_2_arqos"), FPD_CCI_NOC_3_awid("FPD_CCI_NOC_3_awid"), FPD_CCI_NOC_3_awaddr("FPD_CCI_NOC_3_awaddr"), FPD_CCI_NOC_3_awlen("FPD_CCI_NOC_3_awlen"), FPD_CCI_NOC_3_awsize("FPD_CCI_NOC_3_awsize"), FPD_CCI_NOC_3_awburst("FPD_CCI_NOC_3_awburst"), FPD_CCI_NOC_3_awlock("FPD_CCI_NOC_3_awlock"), FPD_CCI_NOC_3_awcache("FPD_CCI_NOC_3_awcache"), FPD_CCI_NOC_3_awprot("FPD_CCI_NOC_3_awprot"), FPD_CCI_NOC_3_awvalid("FPD_CCI_NOC_3_awvalid"), FPD_CCI_NOC_3_awuser("FPD_CCI_NOC_3_awuser"), FPD_CCI_NOC_3_awready("FPD_CCI_NOC_3_awready"), FPD_CCI_NOC_3_wdata("FPD_CCI_NOC_3_wdata"), FPD_CCI_NOC_3_wstrb("FPD_CCI_NOC_3_wstrb"), FPD_CCI_NOC_3_wuser("FPD_CCI_NOC_3_wuser"), FPD_CCI_NOC_3_wlast("FPD_CCI_NOC_3_wlast"), FPD_CCI_NOC_3_wvalid("FPD_CCI_NOC_3_wvalid"), FPD_CCI_NOC_3_wready("FPD_CCI_NOC_3_wready"), FPD_CCI_NOC_3_bid("FPD_CCI_NOC_3_bid"), FPD_CCI_NOC_3_bresp("FPD_CCI_NOC_3_bresp"), FPD_CCI_NOC_3_bvalid("FPD_CCI_NOC_3_bvalid"), FPD_CCI_NOC_3_bready("FPD_CCI_NOC_3_bready"), FPD_CCI_NOC_3_arid("FPD_CCI_NOC_3_arid"), FPD_CCI_NOC_3_araddr("FPD_CCI_NOC_3_araddr"), FPD_CCI_NOC_3_arlen("FPD_CCI_NOC_3_arlen"), FPD_CCI_NOC_3_arsize("FPD_CCI_NOC_3_arsize"), FPD_CCI_NOC_3_arburst("FPD_CCI_NOC_3_arburst"), FPD_CCI_NOC_3_arlock("FPD_CCI_NOC_3_arlock"), FPD_CCI_NOC_3_arcache("FPD_CCI_NOC_3_arcache"), FPD_CCI_NOC_3_arprot("FPD_CCI_NOC_3_arprot"), FPD_CCI_NOC_3_arvalid("FPD_CCI_NOC_3_arvalid"), FPD_CCI_NOC_3_aruser("FPD_CCI_NOC_3_aruser"), FPD_CCI_NOC_3_arready("FPD_CCI_NOC_3_arready"), FPD_CCI_NOC_3_rid("FPD_CCI_NOC_3_rid"), FPD_CCI_NOC_3_rdata("FPD_CCI_NOC_3_rdata"), FPD_CCI_NOC_3_rresp("FPD_CCI_NOC_3_rresp"), FPD_CCI_NOC_3_rlast("FPD_CCI_NOC_3_rlast"), FPD_CCI_NOC_3_rvalid("FPD_CCI_NOC_3_rvalid"), FPD_CCI_NOC_3_rready("FPD_CCI_NOC_3_rready"), FPD_CCI_NOC_3_awqos("FPD_CCI_NOC_3_awqos"), FPD_CCI_NOC_3_arqos("FPD_CCI_NOC_3_arqos")
{

  // initialize pins
  mp_impl->pl0_ref_clk(pl0_ref_clk);
  mp_impl->pl1_ref_clk(pl1_ref_clk);
  mp_impl->pl0_resetn(pl0_resetn);
  mp_impl->m_axi_fpd_aclk(m_axi_fpd_aclk);
  mp_impl->m_axi_lpd_aclk(m_axi_lpd_aclk);
  mp_impl->fpd_cci_noc_axi0_clk(fpd_cci_noc_axi0_clk);
  mp_impl->fpd_cci_noc_axi1_clk(fpd_cci_noc_axi1_clk);
  mp_impl->fpd_cci_noc_axi2_clk(fpd_cci_noc_axi2_clk);
  mp_impl->fpd_cci_noc_axi3_clk(fpd_cci_noc_axi3_clk);
  mp_impl->pl_ps_irq0(pl_ps_irq0);
  mp_impl->pl_ps_irq1(pl_ps_irq1);
  mp_impl->pl_ps_irq2(pl_ps_irq2);
  mp_impl->pl_ps_irq3(pl_ps_irq3);
  mp_impl->pl_ps_irq4(pl_ps_irq4);
  mp_impl->pl_ps_irq5(pl_ps_irq5);

  // initialize transactors
  mp_M_AXI_FPD_transactor = NULL;
  mp_M_AXI_LPD_transactor = NULL;
  mp_FPD_CCI_NOC_0_transactor = NULL;
  mp_FPD_CCI_NOC_1_transactor = NULL;
  mp_FPD_CCI_NOC_2_transactor = NULL;
  mp_FPD_CCI_NOC_3_transactor = NULL;

  // initialize socket stubs

}

void dpss_vck190_pt_versal_cips_0_0::before_end_of_elaboration()
{
  // configure 'M_AXI_FPD' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "M_AXI_FPD_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXI_FPD' transactor parameters
    xsc::common_cpp::properties M_AXI_FPD_transactor_param_props;
    M_AXI_FPD_transactor_param_props.addLong("DATA_WIDTH", "128");
    M_AXI_FPD_transactor_param_props.addLong("FREQ_HZ", "99999001");
    M_AXI_FPD_transactor_param_props.addLong("ID_WIDTH", "16");
    M_AXI_FPD_transactor_param_props.addLong("ADDR_WIDTH", "44");
    M_AXI_FPD_transactor_param_props.addLong("AWUSER_WIDTH", "16");
    M_AXI_FPD_transactor_param_props.addLong("ARUSER_WIDTH", "16");
    M_AXI_FPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_FPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_FPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_FPD_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_FPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_FPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXI_FPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXI_FPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M_AXI_FPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_FPD_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXI_FPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXI_FPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_FPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_FPD_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXI_FPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_FPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_FPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_FPD_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_pl0_ref_clk");
    M_AXI_FPD_transactor_param_props.addString("CATEGORY", "pl");
    M_AXI_FPD_transactor_param_props.addString("MY_CATEGORY", "ps");

    mp_M_AXI_FPD_transactor = new xtlm::xaximm_xtlm2pin_t<128,44,16,16,1,1,16,1>("M_AXI_FPD_transactor", M_AXI_FPD_transactor_param_props);

    // M_AXI_FPD' transactor ports

    mp_M_AXI_FPD_transactor->AWID(M_AXI_FPD_awid);
    mp_M_AXI_FPD_transactor->AWADDR(M_AXI_FPD_awaddr);
    mp_M_AXI_FPD_transactor->AWLEN(M_AXI_FPD_awlen);
    mp_M_AXI_FPD_transactor->AWSIZE(M_AXI_FPD_awsize);
    mp_M_AXI_FPD_transactor->AWBURST(M_AXI_FPD_awburst);
    mp_M_AXI_FPD_transactor->AWLOCK(M_AXI_FPD_awlock);
    mp_M_AXI_FPD_transactor->AWCACHE(M_AXI_FPD_awcache);
    mp_M_AXI_FPD_transactor->AWPROT(M_AXI_FPD_awprot);
    mp_M_AXI_FPD_transactor->AWVALID(M_AXI_FPD_awvalid);
    mp_M_AXI_FPD_transactor->AWUSER(M_AXI_FPD_awuser);
    mp_M_AXI_FPD_transactor->AWREADY(M_AXI_FPD_awready);
    mp_M_AXI_FPD_transactor->WLAST(M_AXI_FPD_wlast);
    mp_M_AXI_FPD_transactor->WVALID(M_AXI_FPD_wvalid);
    mp_M_AXI_FPD_transactor->WREADY(M_AXI_FPD_wready);
    mp_M_AXI_FPD_transactor->BID(M_AXI_FPD_bid);
    mp_M_AXI_FPD_transactor->BRESP(M_AXI_FPD_bresp);
    mp_M_AXI_FPD_transactor->BVALID(M_AXI_FPD_bvalid);
    mp_M_AXI_FPD_transactor->BREADY(M_AXI_FPD_bready);
    mp_M_AXI_FPD_transactor->ARID(M_AXI_FPD_arid);
    mp_M_AXI_FPD_transactor->ARADDR(M_AXI_FPD_araddr);
    mp_M_AXI_FPD_transactor->ARLEN(M_AXI_FPD_arlen);
    mp_M_AXI_FPD_transactor->ARSIZE(M_AXI_FPD_arsize);
    mp_M_AXI_FPD_transactor->ARBURST(M_AXI_FPD_arburst);
    mp_M_AXI_FPD_transactor->ARLOCK(M_AXI_FPD_arlock);
    mp_M_AXI_FPD_transactor->ARCACHE(M_AXI_FPD_arcache);
    mp_M_AXI_FPD_transactor->ARPROT(M_AXI_FPD_arprot);
    mp_M_AXI_FPD_transactor->ARVALID(M_AXI_FPD_arvalid);
    mp_M_AXI_FPD_transactor->ARUSER(M_AXI_FPD_aruser);
    mp_M_AXI_FPD_transactor->ARREADY(M_AXI_FPD_arready);
    mp_M_AXI_FPD_transactor->RID(M_AXI_FPD_rid);
    mp_M_AXI_FPD_transactor->RRESP(M_AXI_FPD_rresp);
    mp_M_AXI_FPD_transactor->RLAST(M_AXI_FPD_rlast);
    mp_M_AXI_FPD_transactor->RVALID(M_AXI_FPD_rvalid);
    mp_M_AXI_FPD_transactor->RREADY(M_AXI_FPD_rready);
    mp_M_AXI_FPD_transactor->AWQOS(M_AXI_FPD_awqos);
    mp_M_AXI_FPD_transactor->ARQOS(M_AXI_FPD_arqos);
    mp_M_AXI_FPD_transactor->WDATA(M_AXI_FPD_wdata);
    mp_M_AXI_FPD_transactor->WSTRB(M_AXI_FPD_wstrb);
    mp_M_AXI_FPD_transactor->RDATA(M_AXI_FPD_rdata);
    mp_M_AXI_FPD_transactor->CLK(m_axi_fpd_aclk);
    mp_M_AXI_FPD_transactor->RST(pl0_resetn);

    // M_AXI_FPD' transactor sockets

    mp_impl->M_AXI_FPD_tlm_aximm_read_socket->bind(*(mp_M_AXI_FPD_transactor->rd_socket));
    mp_impl->M_AXI_FPD_tlm_aximm_write_socket->bind(*(mp_M_AXI_FPD_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M_AXI_LPD' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "M_AXI_LPD_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXI_LPD' transactor parameters
    xsc::common_cpp::properties M_AXI_LPD_transactor_param_props;
    M_AXI_LPD_transactor_param_props.addLong("DATA_WIDTH", "128");
    M_AXI_LPD_transactor_param_props.addLong("FREQ_HZ", "99999001");
    M_AXI_LPD_transactor_param_props.addLong("ID_WIDTH", "16");
    M_AXI_LPD_transactor_param_props.addLong("ADDR_WIDTH", "44");
    M_AXI_LPD_transactor_param_props.addLong("AWUSER_WIDTH", "16");
    M_AXI_LPD_transactor_param_props.addLong("ARUSER_WIDTH", "16");
    M_AXI_LPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_LPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_LPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_LPD_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_LPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_LPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXI_LPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXI_LPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M_AXI_LPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_LPD_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXI_LPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXI_LPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_LPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_LPD_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXI_LPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_LPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_LPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_LPD_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_pl0_ref_clk");
    M_AXI_LPD_transactor_param_props.addString("CATEGORY", "pl");
    M_AXI_LPD_transactor_param_props.addString("MY_CATEGORY", "ps");

    mp_M_AXI_LPD_transactor = new xtlm::xaximm_xtlm2pin_t<128,44,16,16,1,1,16,1>("M_AXI_LPD_transactor", M_AXI_LPD_transactor_param_props);

    // M_AXI_LPD' transactor ports

    mp_M_AXI_LPD_transactor->AWID(M_AXI_LPD_awid);
    mp_M_AXI_LPD_transactor->AWADDR(M_AXI_LPD_awaddr);
    mp_M_AXI_LPD_transactor->AWLEN(M_AXI_LPD_awlen);
    mp_M_AXI_LPD_transactor->AWSIZE(M_AXI_LPD_awsize);
    mp_M_AXI_LPD_transactor->AWBURST(M_AXI_LPD_awburst);
    mp_M_AXI_LPD_transactor->AWLOCK(M_AXI_LPD_awlock);
    mp_M_AXI_LPD_transactor->AWCACHE(M_AXI_LPD_awcache);
    mp_M_AXI_LPD_transactor->AWPROT(M_AXI_LPD_awprot);
    mp_M_AXI_LPD_transactor->AWVALID(M_AXI_LPD_awvalid);
    mp_M_AXI_LPD_transactor->AWUSER(M_AXI_LPD_awuser);
    mp_M_AXI_LPD_transactor->AWREADY(M_AXI_LPD_awready);
    mp_M_AXI_LPD_transactor->WLAST(M_AXI_LPD_wlast);
    mp_M_AXI_LPD_transactor->WVALID(M_AXI_LPD_wvalid);
    mp_M_AXI_LPD_transactor->WREADY(M_AXI_LPD_wready);
    mp_M_AXI_LPD_transactor->BID(M_AXI_LPD_bid);
    mp_M_AXI_LPD_transactor->BRESP(M_AXI_LPD_bresp);
    mp_M_AXI_LPD_transactor->BVALID(M_AXI_LPD_bvalid);
    mp_M_AXI_LPD_transactor->BREADY(M_AXI_LPD_bready);
    mp_M_AXI_LPD_transactor->ARID(M_AXI_LPD_arid);
    mp_M_AXI_LPD_transactor->ARADDR(M_AXI_LPD_araddr);
    mp_M_AXI_LPD_transactor->ARLEN(M_AXI_LPD_arlen);
    mp_M_AXI_LPD_transactor->ARSIZE(M_AXI_LPD_arsize);
    mp_M_AXI_LPD_transactor->ARBURST(M_AXI_LPD_arburst);
    mp_M_AXI_LPD_transactor->ARLOCK(M_AXI_LPD_arlock);
    mp_M_AXI_LPD_transactor->ARCACHE(M_AXI_LPD_arcache);
    mp_M_AXI_LPD_transactor->ARPROT(M_AXI_LPD_arprot);
    mp_M_AXI_LPD_transactor->ARVALID(M_AXI_LPD_arvalid);
    mp_M_AXI_LPD_transactor->ARUSER(M_AXI_LPD_aruser);
    mp_M_AXI_LPD_transactor->ARREADY(M_AXI_LPD_arready);
    mp_M_AXI_LPD_transactor->RID(M_AXI_LPD_rid);
    mp_M_AXI_LPD_transactor->RRESP(M_AXI_LPD_rresp);
    mp_M_AXI_LPD_transactor->RLAST(M_AXI_LPD_rlast);
    mp_M_AXI_LPD_transactor->RVALID(M_AXI_LPD_rvalid);
    mp_M_AXI_LPD_transactor->RREADY(M_AXI_LPD_rready);
    mp_M_AXI_LPD_transactor->AWQOS(M_AXI_LPD_awqos);
    mp_M_AXI_LPD_transactor->ARQOS(M_AXI_LPD_arqos);
    mp_M_AXI_LPD_transactor->WDATA(M_AXI_LPD_wdata);
    mp_M_AXI_LPD_transactor->WSTRB(M_AXI_LPD_wstrb);
    mp_M_AXI_LPD_transactor->RDATA(M_AXI_LPD_rdata);
    mp_M_AXI_LPD_transactor->CLK(m_axi_lpd_aclk);
    mp_M_AXI_LPD_transactor->RST(pl0_resetn);

    // M_AXI_LPD' transactor sockets

    mp_impl->M_AXI_LPD_tlm_aximm_read_socket->bind(*(mp_M_AXI_LPD_transactor->rd_socket));
    mp_impl->M_AXI_LPD_tlm_aximm_write_socket->bind(*(mp_M_AXI_LPD_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'FPD_CCI_NOC_0' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "FPD_CCI_NOC_0_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'FPD_CCI_NOC_0' transactor parameters
    xsc::common_cpp::properties FPD_CCI_NOC_0_transactor_param_props;
    FPD_CCI_NOC_0_transactor_param_props.addLong("DATA_WIDTH", "128");
    FPD_CCI_NOC_0_transactor_param_props.addLong("FREQ_HZ", "824991760");
    FPD_CCI_NOC_0_transactor_param_props.addLong("ID_WIDTH", "16");
    FPD_CCI_NOC_0_transactor_param_props.addLong("ADDR_WIDTH", "64");
    FPD_CCI_NOC_0_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    FPD_CCI_NOC_0_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    FPD_CCI_NOC_0_transactor_param_props.addLong("WUSER_WIDTH", "17");
    FPD_CCI_NOC_0_transactor_param_props.addLong("RUSER_WIDTH", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("BUSER_WIDTH", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_BURST", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_LOCK", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_PROT", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_CACHE", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_QOS", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_REGION", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_WSTRB", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_BRESP", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_RRESP", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    FPD_CCI_NOC_0_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    FPD_CCI_NOC_0_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    FPD_CCI_NOC_0_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_SIZE", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_RESET", "1");
    FPD_CCI_NOC_0_transactor_param_props.addFloat("PHASE", "0.0");
    FPD_CCI_NOC_0_transactor_param_props.addString("PROTOCOL", "AXI4");
    FPD_CCI_NOC_0_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    FPD_CCI_NOC_0_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_fpd_cci_noc_axi0_clk");
    FPD_CCI_NOC_0_transactor_param_props.addString("CATEGORY", "noc");
    FPD_CCI_NOC_0_transactor_param_props.addString("MY_CATEGORY", "ps_cci");
    FPD_CCI_NOC_0_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_CCI_TO_NOC_NMU");
    FPD_CCI_NOC_0_transactor_param_props.addString("INDEX", "0");

    mp_FPD_CCI_NOC_0_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>("FPD_CCI_NOC_0_transactor", FPD_CCI_NOC_0_transactor_param_props);

    // FPD_CCI_NOC_0' transactor ports

    mp_FPD_CCI_NOC_0_transactor->AWID(FPD_CCI_NOC_0_awid);
    mp_FPD_CCI_NOC_0_transactor->AWADDR(FPD_CCI_NOC_0_awaddr);
    mp_FPD_CCI_NOC_0_transactor->AWLEN(FPD_CCI_NOC_0_awlen);
    mp_FPD_CCI_NOC_0_transactor->AWSIZE(FPD_CCI_NOC_0_awsize);
    mp_FPD_CCI_NOC_0_transactor->AWBURST(FPD_CCI_NOC_0_awburst);
    mp_FPD_CCI_NOC_0_transactor->AWLOCK(FPD_CCI_NOC_0_awlock);
    mp_FPD_CCI_NOC_0_transactor->AWCACHE(FPD_CCI_NOC_0_awcache);
    mp_FPD_CCI_NOC_0_transactor->AWPROT(FPD_CCI_NOC_0_awprot);
    mp_FPD_CCI_NOC_0_transactor->AWVALID(FPD_CCI_NOC_0_awvalid);
    mp_FPD_CCI_NOC_0_transactor->AWUSER(FPD_CCI_NOC_0_awuser);
    mp_FPD_CCI_NOC_0_transactor->AWREADY(FPD_CCI_NOC_0_awready);
    mp_FPD_CCI_NOC_0_transactor->WDATA(FPD_CCI_NOC_0_wdata);
    mp_FPD_CCI_NOC_0_transactor->WSTRB(FPD_CCI_NOC_0_wstrb);
    mp_FPD_CCI_NOC_0_transactor->WUSER(FPD_CCI_NOC_0_wuser);
    mp_FPD_CCI_NOC_0_transactor->WLAST(FPD_CCI_NOC_0_wlast);
    mp_FPD_CCI_NOC_0_transactor->WVALID(FPD_CCI_NOC_0_wvalid);
    mp_FPD_CCI_NOC_0_transactor->WREADY(FPD_CCI_NOC_0_wready);
    mp_FPD_CCI_NOC_0_transactor->BID(FPD_CCI_NOC_0_bid);
    mp_FPD_CCI_NOC_0_transactor->BRESP(FPD_CCI_NOC_0_bresp);
    mp_FPD_CCI_NOC_0_transactor->BVALID(FPD_CCI_NOC_0_bvalid);
    mp_FPD_CCI_NOC_0_transactor->BREADY(FPD_CCI_NOC_0_bready);
    mp_FPD_CCI_NOC_0_transactor->ARID(FPD_CCI_NOC_0_arid);
    mp_FPD_CCI_NOC_0_transactor->ARADDR(FPD_CCI_NOC_0_araddr);
    mp_FPD_CCI_NOC_0_transactor->ARLEN(FPD_CCI_NOC_0_arlen);
    mp_FPD_CCI_NOC_0_transactor->ARSIZE(FPD_CCI_NOC_0_arsize);
    mp_FPD_CCI_NOC_0_transactor->ARBURST(FPD_CCI_NOC_0_arburst);
    mp_FPD_CCI_NOC_0_transactor->ARLOCK(FPD_CCI_NOC_0_arlock);
    mp_FPD_CCI_NOC_0_transactor->ARCACHE(FPD_CCI_NOC_0_arcache);
    mp_FPD_CCI_NOC_0_transactor->ARPROT(FPD_CCI_NOC_0_arprot);
    mp_FPD_CCI_NOC_0_transactor->ARVALID(FPD_CCI_NOC_0_arvalid);
    mp_FPD_CCI_NOC_0_transactor->ARUSER(FPD_CCI_NOC_0_aruser);
    mp_FPD_CCI_NOC_0_transactor->ARREADY(FPD_CCI_NOC_0_arready);
    mp_FPD_CCI_NOC_0_transactor->RID(FPD_CCI_NOC_0_rid);
    mp_FPD_CCI_NOC_0_transactor->RDATA(FPD_CCI_NOC_0_rdata);
    mp_FPD_CCI_NOC_0_transactor->RRESP(FPD_CCI_NOC_0_rresp);
    mp_FPD_CCI_NOC_0_transactor->RLAST(FPD_CCI_NOC_0_rlast);
    mp_FPD_CCI_NOC_0_transactor->RVALID(FPD_CCI_NOC_0_rvalid);
    mp_FPD_CCI_NOC_0_transactor->RREADY(FPD_CCI_NOC_0_rready);
    mp_FPD_CCI_NOC_0_transactor->AWQOS(FPD_CCI_NOC_0_awqos);
    mp_FPD_CCI_NOC_0_transactor->ARQOS(FPD_CCI_NOC_0_arqos);
    mp_FPD_CCI_NOC_0_transactor->CLK(fpd_cci_noc_axi0_clk);
    mp_FPD_CCI_NOC_0_transactor->RST(pl0_resetn);

    // FPD_CCI_NOC_0' transactor sockets

    mp_impl->FPD_CCI_NOC_0_tlm_aximm_read_socket->bind(*(mp_FPD_CCI_NOC_0_transactor->rd_socket));
    mp_impl->FPD_CCI_NOC_0_tlm_aximm_write_socket->bind(*(mp_FPD_CCI_NOC_0_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'FPD_CCI_NOC_1' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "FPD_CCI_NOC_1_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'FPD_CCI_NOC_1' transactor parameters
    xsc::common_cpp::properties FPD_CCI_NOC_1_transactor_param_props;
    FPD_CCI_NOC_1_transactor_param_props.addLong("DATA_WIDTH", "128");
    FPD_CCI_NOC_1_transactor_param_props.addLong("FREQ_HZ", "824991760");
    FPD_CCI_NOC_1_transactor_param_props.addLong("ID_WIDTH", "16");
    FPD_CCI_NOC_1_transactor_param_props.addLong("ADDR_WIDTH", "64");
    FPD_CCI_NOC_1_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    FPD_CCI_NOC_1_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    FPD_CCI_NOC_1_transactor_param_props.addLong("WUSER_WIDTH", "17");
    FPD_CCI_NOC_1_transactor_param_props.addLong("RUSER_WIDTH", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("BUSER_WIDTH", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_BURST", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_LOCK", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_PROT", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_CACHE", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_QOS", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_REGION", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_WSTRB", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_BRESP", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_RRESP", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    FPD_CCI_NOC_1_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    FPD_CCI_NOC_1_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    FPD_CCI_NOC_1_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_SIZE", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_RESET", "1");
    FPD_CCI_NOC_1_transactor_param_props.addFloat("PHASE", "0.0");
    FPD_CCI_NOC_1_transactor_param_props.addString("PROTOCOL", "AXI4");
    FPD_CCI_NOC_1_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    FPD_CCI_NOC_1_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_fpd_cci_noc_axi1_clk");
    FPD_CCI_NOC_1_transactor_param_props.addString("CATEGORY", "noc");
    FPD_CCI_NOC_1_transactor_param_props.addString("MY_CATEGORY", "ps_cci");
    FPD_CCI_NOC_1_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_CCI_TO_NOC_NMU");
    FPD_CCI_NOC_1_transactor_param_props.addString("INDEX", "1");

    mp_FPD_CCI_NOC_1_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>("FPD_CCI_NOC_1_transactor", FPD_CCI_NOC_1_transactor_param_props);

    // FPD_CCI_NOC_1' transactor ports

    mp_FPD_CCI_NOC_1_transactor->AWID(FPD_CCI_NOC_1_awid);
    mp_FPD_CCI_NOC_1_transactor->AWADDR(FPD_CCI_NOC_1_awaddr);
    mp_FPD_CCI_NOC_1_transactor->AWLEN(FPD_CCI_NOC_1_awlen);
    mp_FPD_CCI_NOC_1_transactor->AWSIZE(FPD_CCI_NOC_1_awsize);
    mp_FPD_CCI_NOC_1_transactor->AWBURST(FPD_CCI_NOC_1_awburst);
    mp_FPD_CCI_NOC_1_transactor->AWLOCK(FPD_CCI_NOC_1_awlock);
    mp_FPD_CCI_NOC_1_transactor->AWCACHE(FPD_CCI_NOC_1_awcache);
    mp_FPD_CCI_NOC_1_transactor->AWPROT(FPD_CCI_NOC_1_awprot);
    mp_FPD_CCI_NOC_1_transactor->AWVALID(FPD_CCI_NOC_1_awvalid);
    mp_FPD_CCI_NOC_1_transactor->AWUSER(FPD_CCI_NOC_1_awuser);
    mp_FPD_CCI_NOC_1_transactor->AWREADY(FPD_CCI_NOC_1_awready);
    mp_FPD_CCI_NOC_1_transactor->WDATA(FPD_CCI_NOC_1_wdata);
    mp_FPD_CCI_NOC_1_transactor->WSTRB(FPD_CCI_NOC_1_wstrb);
    mp_FPD_CCI_NOC_1_transactor->WUSER(FPD_CCI_NOC_1_wuser);
    mp_FPD_CCI_NOC_1_transactor->WLAST(FPD_CCI_NOC_1_wlast);
    mp_FPD_CCI_NOC_1_transactor->WVALID(FPD_CCI_NOC_1_wvalid);
    mp_FPD_CCI_NOC_1_transactor->WREADY(FPD_CCI_NOC_1_wready);
    mp_FPD_CCI_NOC_1_transactor->BID(FPD_CCI_NOC_1_bid);
    mp_FPD_CCI_NOC_1_transactor->BRESP(FPD_CCI_NOC_1_bresp);
    mp_FPD_CCI_NOC_1_transactor->BVALID(FPD_CCI_NOC_1_bvalid);
    mp_FPD_CCI_NOC_1_transactor->BREADY(FPD_CCI_NOC_1_bready);
    mp_FPD_CCI_NOC_1_transactor->ARID(FPD_CCI_NOC_1_arid);
    mp_FPD_CCI_NOC_1_transactor->ARADDR(FPD_CCI_NOC_1_araddr);
    mp_FPD_CCI_NOC_1_transactor->ARLEN(FPD_CCI_NOC_1_arlen);
    mp_FPD_CCI_NOC_1_transactor->ARSIZE(FPD_CCI_NOC_1_arsize);
    mp_FPD_CCI_NOC_1_transactor->ARBURST(FPD_CCI_NOC_1_arburst);
    mp_FPD_CCI_NOC_1_transactor->ARLOCK(FPD_CCI_NOC_1_arlock);
    mp_FPD_CCI_NOC_1_transactor->ARCACHE(FPD_CCI_NOC_1_arcache);
    mp_FPD_CCI_NOC_1_transactor->ARPROT(FPD_CCI_NOC_1_arprot);
    mp_FPD_CCI_NOC_1_transactor->ARVALID(FPD_CCI_NOC_1_arvalid);
    mp_FPD_CCI_NOC_1_transactor->ARUSER(FPD_CCI_NOC_1_aruser);
    mp_FPD_CCI_NOC_1_transactor->ARREADY(FPD_CCI_NOC_1_arready);
    mp_FPD_CCI_NOC_1_transactor->RID(FPD_CCI_NOC_1_rid);
    mp_FPD_CCI_NOC_1_transactor->RDATA(FPD_CCI_NOC_1_rdata);
    mp_FPD_CCI_NOC_1_transactor->RRESP(FPD_CCI_NOC_1_rresp);
    mp_FPD_CCI_NOC_1_transactor->RLAST(FPD_CCI_NOC_1_rlast);
    mp_FPD_CCI_NOC_1_transactor->RVALID(FPD_CCI_NOC_1_rvalid);
    mp_FPD_CCI_NOC_1_transactor->RREADY(FPD_CCI_NOC_1_rready);
    mp_FPD_CCI_NOC_1_transactor->AWQOS(FPD_CCI_NOC_1_awqos);
    mp_FPD_CCI_NOC_1_transactor->ARQOS(FPD_CCI_NOC_1_arqos);
    mp_FPD_CCI_NOC_1_transactor->CLK(fpd_cci_noc_axi1_clk);
    mp_FPD_CCI_NOC_1_transactor->RST(pl0_resetn);

    // FPD_CCI_NOC_1' transactor sockets

    mp_impl->FPD_CCI_NOC_1_tlm_aximm_read_socket->bind(*(mp_FPD_CCI_NOC_1_transactor->rd_socket));
    mp_impl->FPD_CCI_NOC_1_tlm_aximm_write_socket->bind(*(mp_FPD_CCI_NOC_1_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'FPD_CCI_NOC_2' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "FPD_CCI_NOC_2_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'FPD_CCI_NOC_2' transactor parameters
    xsc::common_cpp::properties FPD_CCI_NOC_2_transactor_param_props;
    FPD_CCI_NOC_2_transactor_param_props.addLong("DATA_WIDTH", "128");
    FPD_CCI_NOC_2_transactor_param_props.addLong("FREQ_HZ", "824991760");
    FPD_CCI_NOC_2_transactor_param_props.addLong("ID_WIDTH", "16");
    FPD_CCI_NOC_2_transactor_param_props.addLong("ADDR_WIDTH", "64");
    FPD_CCI_NOC_2_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    FPD_CCI_NOC_2_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    FPD_CCI_NOC_2_transactor_param_props.addLong("WUSER_WIDTH", "17");
    FPD_CCI_NOC_2_transactor_param_props.addLong("RUSER_WIDTH", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("BUSER_WIDTH", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_BURST", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_LOCK", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_PROT", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_CACHE", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_QOS", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_REGION", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_WSTRB", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_BRESP", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_RRESP", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    FPD_CCI_NOC_2_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    FPD_CCI_NOC_2_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    FPD_CCI_NOC_2_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_SIZE", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_RESET", "1");
    FPD_CCI_NOC_2_transactor_param_props.addFloat("PHASE", "0.0");
    FPD_CCI_NOC_2_transactor_param_props.addString("PROTOCOL", "AXI4");
    FPD_CCI_NOC_2_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    FPD_CCI_NOC_2_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_fpd_cci_noc_axi2_clk");
    FPD_CCI_NOC_2_transactor_param_props.addString("CATEGORY", "noc");
    FPD_CCI_NOC_2_transactor_param_props.addString("MY_CATEGORY", "ps_cci");
    FPD_CCI_NOC_2_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_CCI_TO_NOC_NMU");
    FPD_CCI_NOC_2_transactor_param_props.addString("INDEX", "2");

    mp_FPD_CCI_NOC_2_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>("FPD_CCI_NOC_2_transactor", FPD_CCI_NOC_2_transactor_param_props);

    // FPD_CCI_NOC_2' transactor ports

    mp_FPD_CCI_NOC_2_transactor->AWID(FPD_CCI_NOC_2_awid);
    mp_FPD_CCI_NOC_2_transactor->AWADDR(FPD_CCI_NOC_2_awaddr);
    mp_FPD_CCI_NOC_2_transactor->AWLEN(FPD_CCI_NOC_2_awlen);
    mp_FPD_CCI_NOC_2_transactor->AWSIZE(FPD_CCI_NOC_2_awsize);
    mp_FPD_CCI_NOC_2_transactor->AWBURST(FPD_CCI_NOC_2_awburst);
    mp_FPD_CCI_NOC_2_transactor->AWLOCK(FPD_CCI_NOC_2_awlock);
    mp_FPD_CCI_NOC_2_transactor->AWCACHE(FPD_CCI_NOC_2_awcache);
    mp_FPD_CCI_NOC_2_transactor->AWPROT(FPD_CCI_NOC_2_awprot);
    mp_FPD_CCI_NOC_2_transactor->AWVALID(FPD_CCI_NOC_2_awvalid);
    mp_FPD_CCI_NOC_2_transactor->AWUSER(FPD_CCI_NOC_2_awuser);
    mp_FPD_CCI_NOC_2_transactor->AWREADY(FPD_CCI_NOC_2_awready);
    mp_FPD_CCI_NOC_2_transactor->WDATA(FPD_CCI_NOC_2_wdata);
    mp_FPD_CCI_NOC_2_transactor->WSTRB(FPD_CCI_NOC_2_wstrb);
    mp_FPD_CCI_NOC_2_transactor->WUSER(FPD_CCI_NOC_2_wuser);
    mp_FPD_CCI_NOC_2_transactor->WLAST(FPD_CCI_NOC_2_wlast);
    mp_FPD_CCI_NOC_2_transactor->WVALID(FPD_CCI_NOC_2_wvalid);
    mp_FPD_CCI_NOC_2_transactor->WREADY(FPD_CCI_NOC_2_wready);
    mp_FPD_CCI_NOC_2_transactor->BID(FPD_CCI_NOC_2_bid);
    mp_FPD_CCI_NOC_2_transactor->BRESP(FPD_CCI_NOC_2_bresp);
    mp_FPD_CCI_NOC_2_transactor->BVALID(FPD_CCI_NOC_2_bvalid);
    mp_FPD_CCI_NOC_2_transactor->BREADY(FPD_CCI_NOC_2_bready);
    mp_FPD_CCI_NOC_2_transactor->ARID(FPD_CCI_NOC_2_arid);
    mp_FPD_CCI_NOC_2_transactor->ARADDR(FPD_CCI_NOC_2_araddr);
    mp_FPD_CCI_NOC_2_transactor->ARLEN(FPD_CCI_NOC_2_arlen);
    mp_FPD_CCI_NOC_2_transactor->ARSIZE(FPD_CCI_NOC_2_arsize);
    mp_FPD_CCI_NOC_2_transactor->ARBURST(FPD_CCI_NOC_2_arburst);
    mp_FPD_CCI_NOC_2_transactor->ARLOCK(FPD_CCI_NOC_2_arlock);
    mp_FPD_CCI_NOC_2_transactor->ARCACHE(FPD_CCI_NOC_2_arcache);
    mp_FPD_CCI_NOC_2_transactor->ARPROT(FPD_CCI_NOC_2_arprot);
    mp_FPD_CCI_NOC_2_transactor->ARVALID(FPD_CCI_NOC_2_arvalid);
    mp_FPD_CCI_NOC_2_transactor->ARUSER(FPD_CCI_NOC_2_aruser);
    mp_FPD_CCI_NOC_2_transactor->ARREADY(FPD_CCI_NOC_2_arready);
    mp_FPD_CCI_NOC_2_transactor->RID(FPD_CCI_NOC_2_rid);
    mp_FPD_CCI_NOC_2_transactor->RDATA(FPD_CCI_NOC_2_rdata);
    mp_FPD_CCI_NOC_2_transactor->RRESP(FPD_CCI_NOC_2_rresp);
    mp_FPD_CCI_NOC_2_transactor->RLAST(FPD_CCI_NOC_2_rlast);
    mp_FPD_CCI_NOC_2_transactor->RVALID(FPD_CCI_NOC_2_rvalid);
    mp_FPD_CCI_NOC_2_transactor->RREADY(FPD_CCI_NOC_2_rready);
    mp_FPD_CCI_NOC_2_transactor->AWQOS(FPD_CCI_NOC_2_awqos);
    mp_FPD_CCI_NOC_2_transactor->ARQOS(FPD_CCI_NOC_2_arqos);
    mp_FPD_CCI_NOC_2_transactor->CLK(fpd_cci_noc_axi2_clk);
    mp_FPD_CCI_NOC_2_transactor->RST(pl0_resetn);

    // FPD_CCI_NOC_2' transactor sockets

    mp_impl->FPD_CCI_NOC_2_tlm_aximm_read_socket->bind(*(mp_FPD_CCI_NOC_2_transactor->rd_socket));
    mp_impl->FPD_CCI_NOC_2_tlm_aximm_write_socket->bind(*(mp_FPD_CCI_NOC_2_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'FPD_CCI_NOC_3' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "FPD_CCI_NOC_3_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'FPD_CCI_NOC_3' transactor parameters
    xsc::common_cpp::properties FPD_CCI_NOC_3_transactor_param_props;
    FPD_CCI_NOC_3_transactor_param_props.addLong("DATA_WIDTH", "128");
    FPD_CCI_NOC_3_transactor_param_props.addLong("FREQ_HZ", "824991760");
    FPD_CCI_NOC_3_transactor_param_props.addLong("ID_WIDTH", "16");
    FPD_CCI_NOC_3_transactor_param_props.addLong("ADDR_WIDTH", "64");
    FPD_CCI_NOC_3_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    FPD_CCI_NOC_3_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    FPD_CCI_NOC_3_transactor_param_props.addLong("WUSER_WIDTH", "17");
    FPD_CCI_NOC_3_transactor_param_props.addLong("RUSER_WIDTH", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("BUSER_WIDTH", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_BURST", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_LOCK", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_PROT", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_CACHE", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_QOS", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_REGION", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_WSTRB", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_BRESP", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_RRESP", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    FPD_CCI_NOC_3_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    FPD_CCI_NOC_3_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    FPD_CCI_NOC_3_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_SIZE", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_RESET", "1");
    FPD_CCI_NOC_3_transactor_param_props.addFloat("PHASE", "0.0");
    FPD_CCI_NOC_3_transactor_param_props.addString("PROTOCOL", "AXI4");
    FPD_CCI_NOC_3_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    FPD_CCI_NOC_3_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_fpd_cci_noc_axi3_clk");
    FPD_CCI_NOC_3_transactor_param_props.addString("CATEGORY", "noc");
    FPD_CCI_NOC_3_transactor_param_props.addString("MY_CATEGORY", "ps_cci");
    FPD_CCI_NOC_3_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_CCI_TO_NOC_NMU");
    FPD_CCI_NOC_3_transactor_param_props.addString("INDEX", "3");

    mp_FPD_CCI_NOC_3_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>("FPD_CCI_NOC_3_transactor", FPD_CCI_NOC_3_transactor_param_props);

    // FPD_CCI_NOC_3' transactor ports

    mp_FPD_CCI_NOC_3_transactor->AWID(FPD_CCI_NOC_3_awid);
    mp_FPD_CCI_NOC_3_transactor->AWADDR(FPD_CCI_NOC_3_awaddr);
    mp_FPD_CCI_NOC_3_transactor->AWLEN(FPD_CCI_NOC_3_awlen);
    mp_FPD_CCI_NOC_3_transactor->AWSIZE(FPD_CCI_NOC_3_awsize);
    mp_FPD_CCI_NOC_3_transactor->AWBURST(FPD_CCI_NOC_3_awburst);
    mp_FPD_CCI_NOC_3_transactor->AWLOCK(FPD_CCI_NOC_3_awlock);
    mp_FPD_CCI_NOC_3_transactor->AWCACHE(FPD_CCI_NOC_3_awcache);
    mp_FPD_CCI_NOC_3_transactor->AWPROT(FPD_CCI_NOC_3_awprot);
    mp_FPD_CCI_NOC_3_transactor->AWVALID(FPD_CCI_NOC_3_awvalid);
    mp_FPD_CCI_NOC_3_transactor->AWUSER(FPD_CCI_NOC_3_awuser);
    mp_FPD_CCI_NOC_3_transactor->AWREADY(FPD_CCI_NOC_3_awready);
    mp_FPD_CCI_NOC_3_transactor->WDATA(FPD_CCI_NOC_3_wdata);
    mp_FPD_CCI_NOC_3_transactor->WSTRB(FPD_CCI_NOC_3_wstrb);
    mp_FPD_CCI_NOC_3_transactor->WUSER(FPD_CCI_NOC_3_wuser);
    mp_FPD_CCI_NOC_3_transactor->WLAST(FPD_CCI_NOC_3_wlast);
    mp_FPD_CCI_NOC_3_transactor->WVALID(FPD_CCI_NOC_3_wvalid);
    mp_FPD_CCI_NOC_3_transactor->WREADY(FPD_CCI_NOC_3_wready);
    mp_FPD_CCI_NOC_3_transactor->BID(FPD_CCI_NOC_3_bid);
    mp_FPD_CCI_NOC_3_transactor->BRESP(FPD_CCI_NOC_3_bresp);
    mp_FPD_CCI_NOC_3_transactor->BVALID(FPD_CCI_NOC_3_bvalid);
    mp_FPD_CCI_NOC_3_transactor->BREADY(FPD_CCI_NOC_3_bready);
    mp_FPD_CCI_NOC_3_transactor->ARID(FPD_CCI_NOC_3_arid);
    mp_FPD_CCI_NOC_3_transactor->ARADDR(FPD_CCI_NOC_3_araddr);
    mp_FPD_CCI_NOC_3_transactor->ARLEN(FPD_CCI_NOC_3_arlen);
    mp_FPD_CCI_NOC_3_transactor->ARSIZE(FPD_CCI_NOC_3_arsize);
    mp_FPD_CCI_NOC_3_transactor->ARBURST(FPD_CCI_NOC_3_arburst);
    mp_FPD_CCI_NOC_3_transactor->ARLOCK(FPD_CCI_NOC_3_arlock);
    mp_FPD_CCI_NOC_3_transactor->ARCACHE(FPD_CCI_NOC_3_arcache);
    mp_FPD_CCI_NOC_3_transactor->ARPROT(FPD_CCI_NOC_3_arprot);
    mp_FPD_CCI_NOC_3_transactor->ARVALID(FPD_CCI_NOC_3_arvalid);
    mp_FPD_CCI_NOC_3_transactor->ARUSER(FPD_CCI_NOC_3_aruser);
    mp_FPD_CCI_NOC_3_transactor->ARREADY(FPD_CCI_NOC_3_arready);
    mp_FPD_CCI_NOC_3_transactor->RID(FPD_CCI_NOC_3_rid);
    mp_FPD_CCI_NOC_3_transactor->RDATA(FPD_CCI_NOC_3_rdata);
    mp_FPD_CCI_NOC_3_transactor->RRESP(FPD_CCI_NOC_3_rresp);
    mp_FPD_CCI_NOC_3_transactor->RLAST(FPD_CCI_NOC_3_rlast);
    mp_FPD_CCI_NOC_3_transactor->RVALID(FPD_CCI_NOC_3_rvalid);
    mp_FPD_CCI_NOC_3_transactor->RREADY(FPD_CCI_NOC_3_rready);
    mp_FPD_CCI_NOC_3_transactor->AWQOS(FPD_CCI_NOC_3_awqos);
    mp_FPD_CCI_NOC_3_transactor->ARQOS(FPD_CCI_NOC_3_arqos);
    mp_FPD_CCI_NOC_3_transactor->CLK(fpd_cci_noc_axi3_clk);
    mp_FPD_CCI_NOC_3_transactor->RST(pl0_resetn);

    // FPD_CCI_NOC_3' transactor sockets

    mp_impl->FPD_CCI_NOC_3_tlm_aximm_read_socket->bind(*(mp_FPD_CCI_NOC_3_transactor->rd_socket));
    mp_impl->FPD_CCI_NOC_3_tlm_aximm_write_socket->bind(*(mp_FPD_CCI_NOC_3_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
dpss_vck190_pt_versal_cips_0_0::dpss_vck190_pt_versal_cips_0_0(const sc_core::sc_module_name& nm) : dpss_vck190_pt_versal_cips_0_0_sc(nm), pl0_ref_clk("pl0_ref_clk"), pl1_ref_clk("pl1_ref_clk"), pl0_resetn("pl0_resetn"), m_axi_fpd_aclk("m_axi_fpd_aclk"), m_axi_lpd_aclk("m_axi_lpd_aclk"), fpd_cci_noc_axi0_clk("fpd_cci_noc_axi0_clk"), fpd_cci_noc_axi1_clk("fpd_cci_noc_axi1_clk"), fpd_cci_noc_axi2_clk("fpd_cci_noc_axi2_clk"), fpd_cci_noc_axi3_clk("fpd_cci_noc_axi3_clk"), pl_ps_irq0("pl_ps_irq0"), pl_ps_irq1("pl_ps_irq1"), pl_ps_irq2("pl_ps_irq2"), pl_ps_irq3("pl_ps_irq3"), pl_ps_irq4("pl_ps_irq4"), pl_ps_irq5("pl_ps_irq5"), M_AXI_FPD_awid("M_AXI_FPD_awid"), M_AXI_FPD_awaddr("M_AXI_FPD_awaddr"), M_AXI_FPD_awlen("M_AXI_FPD_awlen"), M_AXI_FPD_awsize("M_AXI_FPD_awsize"), M_AXI_FPD_awburst("M_AXI_FPD_awburst"), M_AXI_FPD_awlock("M_AXI_FPD_awlock"), M_AXI_FPD_awcache("M_AXI_FPD_awcache"), M_AXI_FPD_awprot("M_AXI_FPD_awprot"), M_AXI_FPD_awvalid("M_AXI_FPD_awvalid"), M_AXI_FPD_awuser("M_AXI_FPD_awuser"), M_AXI_FPD_awready("M_AXI_FPD_awready"), M_AXI_FPD_wlast("M_AXI_FPD_wlast"), M_AXI_FPD_wvalid("M_AXI_FPD_wvalid"), M_AXI_FPD_wready("M_AXI_FPD_wready"), M_AXI_FPD_bid("M_AXI_FPD_bid"), M_AXI_FPD_bresp("M_AXI_FPD_bresp"), M_AXI_FPD_bvalid("M_AXI_FPD_bvalid"), M_AXI_FPD_bready("M_AXI_FPD_bready"), M_AXI_FPD_arid("M_AXI_FPD_arid"), M_AXI_FPD_araddr("M_AXI_FPD_araddr"), M_AXI_FPD_arlen("M_AXI_FPD_arlen"), M_AXI_FPD_arsize("M_AXI_FPD_arsize"), M_AXI_FPD_arburst("M_AXI_FPD_arburst"), M_AXI_FPD_arlock("M_AXI_FPD_arlock"), M_AXI_FPD_arcache("M_AXI_FPD_arcache"), M_AXI_FPD_arprot("M_AXI_FPD_arprot"), M_AXI_FPD_arvalid("M_AXI_FPD_arvalid"), M_AXI_FPD_aruser("M_AXI_FPD_aruser"), M_AXI_FPD_arready("M_AXI_FPD_arready"), M_AXI_FPD_rid("M_AXI_FPD_rid"), M_AXI_FPD_rresp("M_AXI_FPD_rresp"), M_AXI_FPD_rlast("M_AXI_FPD_rlast"), M_AXI_FPD_rvalid("M_AXI_FPD_rvalid"), M_AXI_FPD_rready("M_AXI_FPD_rready"), M_AXI_FPD_awqos("M_AXI_FPD_awqos"), M_AXI_FPD_arqos("M_AXI_FPD_arqos"), M_AXI_FPD_wdata("M_AXI_FPD_wdata"), M_AXI_FPD_wstrb("M_AXI_FPD_wstrb"), M_AXI_FPD_rdata("M_AXI_FPD_rdata"), M_AXI_LPD_awid("M_AXI_LPD_awid"), M_AXI_LPD_awaddr("M_AXI_LPD_awaddr"), M_AXI_LPD_awlen("M_AXI_LPD_awlen"), M_AXI_LPD_awsize("M_AXI_LPD_awsize"), M_AXI_LPD_awburst("M_AXI_LPD_awburst"), M_AXI_LPD_awlock("M_AXI_LPD_awlock"), M_AXI_LPD_awcache("M_AXI_LPD_awcache"), M_AXI_LPD_awprot("M_AXI_LPD_awprot"), M_AXI_LPD_awvalid("M_AXI_LPD_awvalid"), M_AXI_LPD_awuser("M_AXI_LPD_awuser"), M_AXI_LPD_awready("M_AXI_LPD_awready"), M_AXI_LPD_wlast("M_AXI_LPD_wlast"), M_AXI_LPD_wvalid("M_AXI_LPD_wvalid"), M_AXI_LPD_wready("M_AXI_LPD_wready"), M_AXI_LPD_bid("M_AXI_LPD_bid"), M_AXI_LPD_bresp("M_AXI_LPD_bresp"), M_AXI_LPD_bvalid("M_AXI_LPD_bvalid"), M_AXI_LPD_bready("M_AXI_LPD_bready"), M_AXI_LPD_arid("M_AXI_LPD_arid"), M_AXI_LPD_araddr("M_AXI_LPD_araddr"), M_AXI_LPD_arlen("M_AXI_LPD_arlen"), M_AXI_LPD_arsize("M_AXI_LPD_arsize"), M_AXI_LPD_arburst("M_AXI_LPD_arburst"), M_AXI_LPD_arlock("M_AXI_LPD_arlock"), M_AXI_LPD_arcache("M_AXI_LPD_arcache"), M_AXI_LPD_arprot("M_AXI_LPD_arprot"), M_AXI_LPD_arvalid("M_AXI_LPD_arvalid"), M_AXI_LPD_aruser("M_AXI_LPD_aruser"), M_AXI_LPD_arready("M_AXI_LPD_arready"), M_AXI_LPD_rid("M_AXI_LPD_rid"), M_AXI_LPD_rresp("M_AXI_LPD_rresp"), M_AXI_LPD_rlast("M_AXI_LPD_rlast"), M_AXI_LPD_rvalid("M_AXI_LPD_rvalid"), M_AXI_LPD_rready("M_AXI_LPD_rready"), M_AXI_LPD_awqos("M_AXI_LPD_awqos"), M_AXI_LPD_arqos("M_AXI_LPD_arqos"), M_AXI_LPD_wdata("M_AXI_LPD_wdata"), M_AXI_LPD_wstrb("M_AXI_LPD_wstrb"), M_AXI_LPD_rdata("M_AXI_LPD_rdata"), FPD_CCI_NOC_0_awid("FPD_CCI_NOC_0_awid"), FPD_CCI_NOC_0_awaddr("FPD_CCI_NOC_0_awaddr"), FPD_CCI_NOC_0_awlen("FPD_CCI_NOC_0_awlen"), FPD_CCI_NOC_0_awsize("FPD_CCI_NOC_0_awsize"), FPD_CCI_NOC_0_awburst("FPD_CCI_NOC_0_awburst"), FPD_CCI_NOC_0_awlock("FPD_CCI_NOC_0_awlock"), FPD_CCI_NOC_0_awcache("FPD_CCI_NOC_0_awcache"), FPD_CCI_NOC_0_awprot("FPD_CCI_NOC_0_awprot"), FPD_CCI_NOC_0_awvalid("FPD_CCI_NOC_0_awvalid"), FPD_CCI_NOC_0_awuser("FPD_CCI_NOC_0_awuser"), FPD_CCI_NOC_0_awready("FPD_CCI_NOC_0_awready"), FPD_CCI_NOC_0_wdata("FPD_CCI_NOC_0_wdata"), FPD_CCI_NOC_0_wstrb("FPD_CCI_NOC_0_wstrb"), FPD_CCI_NOC_0_wuser("FPD_CCI_NOC_0_wuser"), FPD_CCI_NOC_0_wlast("FPD_CCI_NOC_0_wlast"), FPD_CCI_NOC_0_wvalid("FPD_CCI_NOC_0_wvalid"), FPD_CCI_NOC_0_wready("FPD_CCI_NOC_0_wready"), FPD_CCI_NOC_0_bid("FPD_CCI_NOC_0_bid"), FPD_CCI_NOC_0_bresp("FPD_CCI_NOC_0_bresp"), FPD_CCI_NOC_0_bvalid("FPD_CCI_NOC_0_bvalid"), FPD_CCI_NOC_0_bready("FPD_CCI_NOC_0_bready"), FPD_CCI_NOC_0_arid("FPD_CCI_NOC_0_arid"), FPD_CCI_NOC_0_araddr("FPD_CCI_NOC_0_araddr"), FPD_CCI_NOC_0_arlen("FPD_CCI_NOC_0_arlen"), FPD_CCI_NOC_0_arsize("FPD_CCI_NOC_0_arsize"), FPD_CCI_NOC_0_arburst("FPD_CCI_NOC_0_arburst"), FPD_CCI_NOC_0_arlock("FPD_CCI_NOC_0_arlock"), FPD_CCI_NOC_0_arcache("FPD_CCI_NOC_0_arcache"), FPD_CCI_NOC_0_arprot("FPD_CCI_NOC_0_arprot"), FPD_CCI_NOC_0_arvalid("FPD_CCI_NOC_0_arvalid"), FPD_CCI_NOC_0_aruser("FPD_CCI_NOC_0_aruser"), FPD_CCI_NOC_0_arready("FPD_CCI_NOC_0_arready"), FPD_CCI_NOC_0_rid("FPD_CCI_NOC_0_rid"), FPD_CCI_NOC_0_rdata("FPD_CCI_NOC_0_rdata"), FPD_CCI_NOC_0_rresp("FPD_CCI_NOC_0_rresp"), FPD_CCI_NOC_0_rlast("FPD_CCI_NOC_0_rlast"), FPD_CCI_NOC_0_rvalid("FPD_CCI_NOC_0_rvalid"), FPD_CCI_NOC_0_rready("FPD_CCI_NOC_0_rready"), FPD_CCI_NOC_0_awqos("FPD_CCI_NOC_0_awqos"), FPD_CCI_NOC_0_arqos("FPD_CCI_NOC_0_arqos"), FPD_CCI_NOC_1_awid("FPD_CCI_NOC_1_awid"), FPD_CCI_NOC_1_awaddr("FPD_CCI_NOC_1_awaddr"), FPD_CCI_NOC_1_awlen("FPD_CCI_NOC_1_awlen"), FPD_CCI_NOC_1_awsize("FPD_CCI_NOC_1_awsize"), FPD_CCI_NOC_1_awburst("FPD_CCI_NOC_1_awburst"), FPD_CCI_NOC_1_awlock("FPD_CCI_NOC_1_awlock"), FPD_CCI_NOC_1_awcache("FPD_CCI_NOC_1_awcache"), FPD_CCI_NOC_1_awprot("FPD_CCI_NOC_1_awprot"), FPD_CCI_NOC_1_awvalid("FPD_CCI_NOC_1_awvalid"), FPD_CCI_NOC_1_awuser("FPD_CCI_NOC_1_awuser"), FPD_CCI_NOC_1_awready("FPD_CCI_NOC_1_awready"), FPD_CCI_NOC_1_wdata("FPD_CCI_NOC_1_wdata"), FPD_CCI_NOC_1_wstrb("FPD_CCI_NOC_1_wstrb"), FPD_CCI_NOC_1_wuser("FPD_CCI_NOC_1_wuser"), FPD_CCI_NOC_1_wlast("FPD_CCI_NOC_1_wlast"), FPD_CCI_NOC_1_wvalid("FPD_CCI_NOC_1_wvalid"), FPD_CCI_NOC_1_wready("FPD_CCI_NOC_1_wready"), FPD_CCI_NOC_1_bid("FPD_CCI_NOC_1_bid"), FPD_CCI_NOC_1_bresp("FPD_CCI_NOC_1_bresp"), FPD_CCI_NOC_1_bvalid("FPD_CCI_NOC_1_bvalid"), FPD_CCI_NOC_1_bready("FPD_CCI_NOC_1_bready"), FPD_CCI_NOC_1_arid("FPD_CCI_NOC_1_arid"), FPD_CCI_NOC_1_araddr("FPD_CCI_NOC_1_araddr"), FPD_CCI_NOC_1_arlen("FPD_CCI_NOC_1_arlen"), FPD_CCI_NOC_1_arsize("FPD_CCI_NOC_1_arsize"), FPD_CCI_NOC_1_arburst("FPD_CCI_NOC_1_arburst"), FPD_CCI_NOC_1_arlock("FPD_CCI_NOC_1_arlock"), FPD_CCI_NOC_1_arcache("FPD_CCI_NOC_1_arcache"), FPD_CCI_NOC_1_arprot("FPD_CCI_NOC_1_arprot"), FPD_CCI_NOC_1_arvalid("FPD_CCI_NOC_1_arvalid"), FPD_CCI_NOC_1_aruser("FPD_CCI_NOC_1_aruser"), FPD_CCI_NOC_1_arready("FPD_CCI_NOC_1_arready"), FPD_CCI_NOC_1_rid("FPD_CCI_NOC_1_rid"), FPD_CCI_NOC_1_rdata("FPD_CCI_NOC_1_rdata"), FPD_CCI_NOC_1_rresp("FPD_CCI_NOC_1_rresp"), FPD_CCI_NOC_1_rlast("FPD_CCI_NOC_1_rlast"), FPD_CCI_NOC_1_rvalid("FPD_CCI_NOC_1_rvalid"), FPD_CCI_NOC_1_rready("FPD_CCI_NOC_1_rready"), FPD_CCI_NOC_1_awqos("FPD_CCI_NOC_1_awqos"), FPD_CCI_NOC_1_arqos("FPD_CCI_NOC_1_arqos"), FPD_CCI_NOC_2_awid("FPD_CCI_NOC_2_awid"), FPD_CCI_NOC_2_awaddr("FPD_CCI_NOC_2_awaddr"), FPD_CCI_NOC_2_awlen("FPD_CCI_NOC_2_awlen"), FPD_CCI_NOC_2_awsize("FPD_CCI_NOC_2_awsize"), FPD_CCI_NOC_2_awburst("FPD_CCI_NOC_2_awburst"), FPD_CCI_NOC_2_awlock("FPD_CCI_NOC_2_awlock"), FPD_CCI_NOC_2_awcache("FPD_CCI_NOC_2_awcache"), FPD_CCI_NOC_2_awprot("FPD_CCI_NOC_2_awprot"), FPD_CCI_NOC_2_awvalid("FPD_CCI_NOC_2_awvalid"), FPD_CCI_NOC_2_awuser("FPD_CCI_NOC_2_awuser"), FPD_CCI_NOC_2_awready("FPD_CCI_NOC_2_awready"), FPD_CCI_NOC_2_wdata("FPD_CCI_NOC_2_wdata"), FPD_CCI_NOC_2_wstrb("FPD_CCI_NOC_2_wstrb"), FPD_CCI_NOC_2_wuser("FPD_CCI_NOC_2_wuser"), FPD_CCI_NOC_2_wlast("FPD_CCI_NOC_2_wlast"), FPD_CCI_NOC_2_wvalid("FPD_CCI_NOC_2_wvalid"), FPD_CCI_NOC_2_wready("FPD_CCI_NOC_2_wready"), FPD_CCI_NOC_2_bid("FPD_CCI_NOC_2_bid"), FPD_CCI_NOC_2_bresp("FPD_CCI_NOC_2_bresp"), FPD_CCI_NOC_2_bvalid("FPD_CCI_NOC_2_bvalid"), FPD_CCI_NOC_2_bready("FPD_CCI_NOC_2_bready"), FPD_CCI_NOC_2_arid("FPD_CCI_NOC_2_arid"), FPD_CCI_NOC_2_araddr("FPD_CCI_NOC_2_araddr"), FPD_CCI_NOC_2_arlen("FPD_CCI_NOC_2_arlen"), FPD_CCI_NOC_2_arsize("FPD_CCI_NOC_2_arsize"), FPD_CCI_NOC_2_arburst("FPD_CCI_NOC_2_arburst"), FPD_CCI_NOC_2_arlock("FPD_CCI_NOC_2_arlock"), FPD_CCI_NOC_2_arcache("FPD_CCI_NOC_2_arcache"), FPD_CCI_NOC_2_arprot("FPD_CCI_NOC_2_arprot"), FPD_CCI_NOC_2_arvalid("FPD_CCI_NOC_2_arvalid"), FPD_CCI_NOC_2_aruser("FPD_CCI_NOC_2_aruser"), FPD_CCI_NOC_2_arready("FPD_CCI_NOC_2_arready"), FPD_CCI_NOC_2_rid("FPD_CCI_NOC_2_rid"), FPD_CCI_NOC_2_rdata("FPD_CCI_NOC_2_rdata"), FPD_CCI_NOC_2_rresp("FPD_CCI_NOC_2_rresp"), FPD_CCI_NOC_2_rlast("FPD_CCI_NOC_2_rlast"), FPD_CCI_NOC_2_rvalid("FPD_CCI_NOC_2_rvalid"), FPD_CCI_NOC_2_rready("FPD_CCI_NOC_2_rready"), FPD_CCI_NOC_2_awqos("FPD_CCI_NOC_2_awqos"), FPD_CCI_NOC_2_arqos("FPD_CCI_NOC_2_arqos"), FPD_CCI_NOC_3_awid("FPD_CCI_NOC_3_awid"), FPD_CCI_NOC_3_awaddr("FPD_CCI_NOC_3_awaddr"), FPD_CCI_NOC_3_awlen("FPD_CCI_NOC_3_awlen"), FPD_CCI_NOC_3_awsize("FPD_CCI_NOC_3_awsize"), FPD_CCI_NOC_3_awburst("FPD_CCI_NOC_3_awburst"), FPD_CCI_NOC_3_awlock("FPD_CCI_NOC_3_awlock"), FPD_CCI_NOC_3_awcache("FPD_CCI_NOC_3_awcache"), FPD_CCI_NOC_3_awprot("FPD_CCI_NOC_3_awprot"), FPD_CCI_NOC_3_awvalid("FPD_CCI_NOC_3_awvalid"), FPD_CCI_NOC_3_awuser("FPD_CCI_NOC_3_awuser"), FPD_CCI_NOC_3_awready("FPD_CCI_NOC_3_awready"), FPD_CCI_NOC_3_wdata("FPD_CCI_NOC_3_wdata"), FPD_CCI_NOC_3_wstrb("FPD_CCI_NOC_3_wstrb"), FPD_CCI_NOC_3_wuser("FPD_CCI_NOC_3_wuser"), FPD_CCI_NOC_3_wlast("FPD_CCI_NOC_3_wlast"), FPD_CCI_NOC_3_wvalid("FPD_CCI_NOC_3_wvalid"), FPD_CCI_NOC_3_wready("FPD_CCI_NOC_3_wready"), FPD_CCI_NOC_3_bid("FPD_CCI_NOC_3_bid"), FPD_CCI_NOC_3_bresp("FPD_CCI_NOC_3_bresp"), FPD_CCI_NOC_3_bvalid("FPD_CCI_NOC_3_bvalid"), FPD_CCI_NOC_3_bready("FPD_CCI_NOC_3_bready"), FPD_CCI_NOC_3_arid("FPD_CCI_NOC_3_arid"), FPD_CCI_NOC_3_araddr("FPD_CCI_NOC_3_araddr"), FPD_CCI_NOC_3_arlen("FPD_CCI_NOC_3_arlen"), FPD_CCI_NOC_3_arsize("FPD_CCI_NOC_3_arsize"), FPD_CCI_NOC_3_arburst("FPD_CCI_NOC_3_arburst"), FPD_CCI_NOC_3_arlock("FPD_CCI_NOC_3_arlock"), FPD_CCI_NOC_3_arcache("FPD_CCI_NOC_3_arcache"), FPD_CCI_NOC_3_arprot("FPD_CCI_NOC_3_arprot"), FPD_CCI_NOC_3_arvalid("FPD_CCI_NOC_3_arvalid"), FPD_CCI_NOC_3_aruser("FPD_CCI_NOC_3_aruser"), FPD_CCI_NOC_3_arready("FPD_CCI_NOC_3_arready"), FPD_CCI_NOC_3_rid("FPD_CCI_NOC_3_rid"), FPD_CCI_NOC_3_rdata("FPD_CCI_NOC_3_rdata"), FPD_CCI_NOC_3_rresp("FPD_CCI_NOC_3_rresp"), FPD_CCI_NOC_3_rlast("FPD_CCI_NOC_3_rlast"), FPD_CCI_NOC_3_rvalid("FPD_CCI_NOC_3_rvalid"), FPD_CCI_NOC_3_rready("FPD_CCI_NOC_3_rready"), FPD_CCI_NOC_3_awqos("FPD_CCI_NOC_3_awqos"), FPD_CCI_NOC_3_arqos("FPD_CCI_NOC_3_arqos")
{

  // initialize pins
  mp_impl->pl0_ref_clk(pl0_ref_clk);
  mp_impl->pl1_ref_clk(pl1_ref_clk);
  mp_impl->pl0_resetn(pl0_resetn);
  mp_impl->m_axi_fpd_aclk(m_axi_fpd_aclk);
  mp_impl->m_axi_lpd_aclk(m_axi_lpd_aclk);
  mp_impl->fpd_cci_noc_axi0_clk(fpd_cci_noc_axi0_clk);
  mp_impl->fpd_cci_noc_axi1_clk(fpd_cci_noc_axi1_clk);
  mp_impl->fpd_cci_noc_axi2_clk(fpd_cci_noc_axi2_clk);
  mp_impl->fpd_cci_noc_axi3_clk(fpd_cci_noc_axi3_clk);
  mp_impl->pl_ps_irq0(pl_ps_irq0);
  mp_impl->pl_ps_irq1(pl_ps_irq1);
  mp_impl->pl_ps_irq2(pl_ps_irq2);
  mp_impl->pl_ps_irq3(pl_ps_irq3);
  mp_impl->pl_ps_irq4(pl_ps_irq4);
  mp_impl->pl_ps_irq5(pl_ps_irq5);

  // initialize transactors
  mp_M_AXI_FPD_transactor = NULL;
  mp_M_AXI_LPD_transactor = NULL;
  mp_FPD_CCI_NOC_0_transactor = NULL;
  mp_FPD_CCI_NOC_1_transactor = NULL;
  mp_FPD_CCI_NOC_2_transactor = NULL;
  mp_FPD_CCI_NOC_3_transactor = NULL;

  // initialize socket stubs

}

void dpss_vck190_pt_versal_cips_0_0::before_end_of_elaboration()
{
  // configure 'M_AXI_FPD' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "M_AXI_FPD_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXI_FPD' transactor parameters
    xsc::common_cpp::properties M_AXI_FPD_transactor_param_props;
    M_AXI_FPD_transactor_param_props.addLong("DATA_WIDTH", "128");
    M_AXI_FPD_transactor_param_props.addLong("FREQ_HZ", "99999001");
    M_AXI_FPD_transactor_param_props.addLong("ID_WIDTH", "16");
    M_AXI_FPD_transactor_param_props.addLong("ADDR_WIDTH", "44");
    M_AXI_FPD_transactor_param_props.addLong("AWUSER_WIDTH", "16");
    M_AXI_FPD_transactor_param_props.addLong("ARUSER_WIDTH", "16");
    M_AXI_FPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_FPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_FPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_FPD_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_FPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_FPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXI_FPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXI_FPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M_AXI_FPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_FPD_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXI_FPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXI_FPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_FPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_FPD_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXI_FPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_FPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_FPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_FPD_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_pl0_ref_clk");
    M_AXI_FPD_transactor_param_props.addString("CATEGORY", "pl");
    M_AXI_FPD_transactor_param_props.addString("MY_CATEGORY", "ps");

    mp_M_AXI_FPD_transactor = new xtlm::xaximm_xtlm2pin_t<128,44,16,16,1,1,16,1>("M_AXI_FPD_transactor", M_AXI_FPD_transactor_param_props);

    // M_AXI_FPD' transactor ports

    mp_M_AXI_FPD_transactor->AWID(M_AXI_FPD_awid);
    mp_M_AXI_FPD_transactor->AWADDR(M_AXI_FPD_awaddr);
    mp_M_AXI_FPD_transactor->AWLEN(M_AXI_FPD_awlen);
    mp_M_AXI_FPD_transactor->AWSIZE(M_AXI_FPD_awsize);
    mp_M_AXI_FPD_transactor->AWBURST(M_AXI_FPD_awburst);
    mp_M_AXI_FPD_transactor->AWLOCK(M_AXI_FPD_awlock);
    mp_M_AXI_FPD_transactor->AWCACHE(M_AXI_FPD_awcache);
    mp_M_AXI_FPD_transactor->AWPROT(M_AXI_FPD_awprot);
    mp_M_AXI_FPD_transactor->AWVALID(M_AXI_FPD_awvalid);
    mp_M_AXI_FPD_transactor->AWUSER(M_AXI_FPD_awuser);
    mp_M_AXI_FPD_transactor->AWREADY(M_AXI_FPD_awready);
    mp_M_AXI_FPD_transactor->WLAST(M_AXI_FPD_wlast);
    mp_M_AXI_FPD_transactor->WVALID(M_AXI_FPD_wvalid);
    mp_M_AXI_FPD_transactor->WREADY(M_AXI_FPD_wready);
    mp_M_AXI_FPD_transactor->BID(M_AXI_FPD_bid);
    mp_M_AXI_FPD_transactor->BRESP(M_AXI_FPD_bresp);
    mp_M_AXI_FPD_transactor->BVALID(M_AXI_FPD_bvalid);
    mp_M_AXI_FPD_transactor->BREADY(M_AXI_FPD_bready);
    mp_M_AXI_FPD_transactor->ARID(M_AXI_FPD_arid);
    mp_M_AXI_FPD_transactor->ARADDR(M_AXI_FPD_araddr);
    mp_M_AXI_FPD_transactor->ARLEN(M_AXI_FPD_arlen);
    mp_M_AXI_FPD_transactor->ARSIZE(M_AXI_FPD_arsize);
    mp_M_AXI_FPD_transactor->ARBURST(M_AXI_FPD_arburst);
    mp_M_AXI_FPD_transactor->ARLOCK(M_AXI_FPD_arlock);
    mp_M_AXI_FPD_transactor->ARCACHE(M_AXI_FPD_arcache);
    mp_M_AXI_FPD_transactor->ARPROT(M_AXI_FPD_arprot);
    mp_M_AXI_FPD_transactor->ARVALID(M_AXI_FPD_arvalid);
    mp_M_AXI_FPD_transactor->ARUSER(M_AXI_FPD_aruser);
    mp_M_AXI_FPD_transactor->ARREADY(M_AXI_FPD_arready);
    mp_M_AXI_FPD_transactor->RID(M_AXI_FPD_rid);
    mp_M_AXI_FPD_transactor->RRESP(M_AXI_FPD_rresp);
    mp_M_AXI_FPD_transactor->RLAST(M_AXI_FPD_rlast);
    mp_M_AXI_FPD_transactor->RVALID(M_AXI_FPD_rvalid);
    mp_M_AXI_FPD_transactor->RREADY(M_AXI_FPD_rready);
    mp_M_AXI_FPD_transactor->AWQOS(M_AXI_FPD_awqos);
    mp_M_AXI_FPD_transactor->ARQOS(M_AXI_FPD_arqos);
    mp_M_AXI_FPD_transactor->WDATA(M_AXI_FPD_wdata);
    mp_M_AXI_FPD_transactor->WSTRB(M_AXI_FPD_wstrb);
    mp_M_AXI_FPD_transactor->RDATA(M_AXI_FPD_rdata);
    mp_M_AXI_FPD_transactor->CLK(m_axi_fpd_aclk);
    mp_M_AXI_FPD_transactor->RST(pl0_resetn);

    // M_AXI_FPD' transactor sockets

    mp_impl->M_AXI_FPD_tlm_aximm_read_socket->bind(*(mp_M_AXI_FPD_transactor->rd_socket));
    mp_impl->M_AXI_FPD_tlm_aximm_write_socket->bind(*(mp_M_AXI_FPD_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M_AXI_LPD' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "M_AXI_LPD_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXI_LPD' transactor parameters
    xsc::common_cpp::properties M_AXI_LPD_transactor_param_props;
    M_AXI_LPD_transactor_param_props.addLong("DATA_WIDTH", "128");
    M_AXI_LPD_transactor_param_props.addLong("FREQ_HZ", "99999001");
    M_AXI_LPD_transactor_param_props.addLong("ID_WIDTH", "16");
    M_AXI_LPD_transactor_param_props.addLong("ADDR_WIDTH", "44");
    M_AXI_LPD_transactor_param_props.addLong("AWUSER_WIDTH", "16");
    M_AXI_LPD_transactor_param_props.addLong("ARUSER_WIDTH", "16");
    M_AXI_LPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_LPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_LPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_LPD_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_LPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_LPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXI_LPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXI_LPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M_AXI_LPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_LPD_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXI_LPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXI_LPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_LPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_LPD_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXI_LPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_LPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_LPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_LPD_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_pl0_ref_clk");
    M_AXI_LPD_transactor_param_props.addString("CATEGORY", "pl");
    M_AXI_LPD_transactor_param_props.addString("MY_CATEGORY", "ps");

    mp_M_AXI_LPD_transactor = new xtlm::xaximm_xtlm2pin_t<128,44,16,16,1,1,16,1>("M_AXI_LPD_transactor", M_AXI_LPD_transactor_param_props);

    // M_AXI_LPD' transactor ports

    mp_M_AXI_LPD_transactor->AWID(M_AXI_LPD_awid);
    mp_M_AXI_LPD_transactor->AWADDR(M_AXI_LPD_awaddr);
    mp_M_AXI_LPD_transactor->AWLEN(M_AXI_LPD_awlen);
    mp_M_AXI_LPD_transactor->AWSIZE(M_AXI_LPD_awsize);
    mp_M_AXI_LPD_transactor->AWBURST(M_AXI_LPD_awburst);
    mp_M_AXI_LPD_transactor->AWLOCK(M_AXI_LPD_awlock);
    mp_M_AXI_LPD_transactor->AWCACHE(M_AXI_LPD_awcache);
    mp_M_AXI_LPD_transactor->AWPROT(M_AXI_LPD_awprot);
    mp_M_AXI_LPD_transactor->AWVALID(M_AXI_LPD_awvalid);
    mp_M_AXI_LPD_transactor->AWUSER(M_AXI_LPD_awuser);
    mp_M_AXI_LPD_transactor->AWREADY(M_AXI_LPD_awready);
    mp_M_AXI_LPD_transactor->WLAST(M_AXI_LPD_wlast);
    mp_M_AXI_LPD_transactor->WVALID(M_AXI_LPD_wvalid);
    mp_M_AXI_LPD_transactor->WREADY(M_AXI_LPD_wready);
    mp_M_AXI_LPD_transactor->BID(M_AXI_LPD_bid);
    mp_M_AXI_LPD_transactor->BRESP(M_AXI_LPD_bresp);
    mp_M_AXI_LPD_transactor->BVALID(M_AXI_LPD_bvalid);
    mp_M_AXI_LPD_transactor->BREADY(M_AXI_LPD_bready);
    mp_M_AXI_LPD_transactor->ARID(M_AXI_LPD_arid);
    mp_M_AXI_LPD_transactor->ARADDR(M_AXI_LPD_araddr);
    mp_M_AXI_LPD_transactor->ARLEN(M_AXI_LPD_arlen);
    mp_M_AXI_LPD_transactor->ARSIZE(M_AXI_LPD_arsize);
    mp_M_AXI_LPD_transactor->ARBURST(M_AXI_LPD_arburst);
    mp_M_AXI_LPD_transactor->ARLOCK(M_AXI_LPD_arlock);
    mp_M_AXI_LPD_transactor->ARCACHE(M_AXI_LPD_arcache);
    mp_M_AXI_LPD_transactor->ARPROT(M_AXI_LPD_arprot);
    mp_M_AXI_LPD_transactor->ARVALID(M_AXI_LPD_arvalid);
    mp_M_AXI_LPD_transactor->ARUSER(M_AXI_LPD_aruser);
    mp_M_AXI_LPD_transactor->ARREADY(M_AXI_LPD_arready);
    mp_M_AXI_LPD_transactor->RID(M_AXI_LPD_rid);
    mp_M_AXI_LPD_transactor->RRESP(M_AXI_LPD_rresp);
    mp_M_AXI_LPD_transactor->RLAST(M_AXI_LPD_rlast);
    mp_M_AXI_LPD_transactor->RVALID(M_AXI_LPD_rvalid);
    mp_M_AXI_LPD_transactor->RREADY(M_AXI_LPD_rready);
    mp_M_AXI_LPD_transactor->AWQOS(M_AXI_LPD_awqos);
    mp_M_AXI_LPD_transactor->ARQOS(M_AXI_LPD_arqos);
    mp_M_AXI_LPD_transactor->WDATA(M_AXI_LPD_wdata);
    mp_M_AXI_LPD_transactor->WSTRB(M_AXI_LPD_wstrb);
    mp_M_AXI_LPD_transactor->RDATA(M_AXI_LPD_rdata);
    mp_M_AXI_LPD_transactor->CLK(m_axi_lpd_aclk);
    mp_M_AXI_LPD_transactor->RST(pl0_resetn);

    // M_AXI_LPD' transactor sockets

    mp_impl->M_AXI_LPD_tlm_aximm_read_socket->bind(*(mp_M_AXI_LPD_transactor->rd_socket));
    mp_impl->M_AXI_LPD_tlm_aximm_write_socket->bind(*(mp_M_AXI_LPD_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'FPD_CCI_NOC_0' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "FPD_CCI_NOC_0_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'FPD_CCI_NOC_0' transactor parameters
    xsc::common_cpp::properties FPD_CCI_NOC_0_transactor_param_props;
    FPD_CCI_NOC_0_transactor_param_props.addLong("DATA_WIDTH", "128");
    FPD_CCI_NOC_0_transactor_param_props.addLong("FREQ_HZ", "824991760");
    FPD_CCI_NOC_0_transactor_param_props.addLong("ID_WIDTH", "16");
    FPD_CCI_NOC_0_transactor_param_props.addLong("ADDR_WIDTH", "64");
    FPD_CCI_NOC_0_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    FPD_CCI_NOC_0_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    FPD_CCI_NOC_0_transactor_param_props.addLong("WUSER_WIDTH", "17");
    FPD_CCI_NOC_0_transactor_param_props.addLong("RUSER_WIDTH", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("BUSER_WIDTH", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_BURST", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_LOCK", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_PROT", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_CACHE", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_QOS", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_REGION", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_WSTRB", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_BRESP", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_RRESP", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    FPD_CCI_NOC_0_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    FPD_CCI_NOC_0_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    FPD_CCI_NOC_0_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_SIZE", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_RESET", "1");
    FPD_CCI_NOC_0_transactor_param_props.addFloat("PHASE", "0.0");
    FPD_CCI_NOC_0_transactor_param_props.addString("PROTOCOL", "AXI4");
    FPD_CCI_NOC_0_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    FPD_CCI_NOC_0_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_fpd_cci_noc_axi0_clk");
    FPD_CCI_NOC_0_transactor_param_props.addString("CATEGORY", "noc");
    FPD_CCI_NOC_0_transactor_param_props.addString("MY_CATEGORY", "ps_cci");
    FPD_CCI_NOC_0_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_CCI_TO_NOC_NMU");
    FPD_CCI_NOC_0_transactor_param_props.addString("INDEX", "0");

    mp_FPD_CCI_NOC_0_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>("FPD_CCI_NOC_0_transactor", FPD_CCI_NOC_0_transactor_param_props);

    // FPD_CCI_NOC_0' transactor ports

    mp_FPD_CCI_NOC_0_transactor->AWID(FPD_CCI_NOC_0_awid);
    mp_FPD_CCI_NOC_0_transactor->AWADDR(FPD_CCI_NOC_0_awaddr);
    mp_FPD_CCI_NOC_0_transactor->AWLEN(FPD_CCI_NOC_0_awlen);
    mp_FPD_CCI_NOC_0_transactor->AWSIZE(FPD_CCI_NOC_0_awsize);
    mp_FPD_CCI_NOC_0_transactor->AWBURST(FPD_CCI_NOC_0_awburst);
    mp_FPD_CCI_NOC_0_transactor->AWLOCK(FPD_CCI_NOC_0_awlock);
    mp_FPD_CCI_NOC_0_transactor->AWCACHE(FPD_CCI_NOC_0_awcache);
    mp_FPD_CCI_NOC_0_transactor->AWPROT(FPD_CCI_NOC_0_awprot);
    mp_FPD_CCI_NOC_0_transactor->AWVALID(FPD_CCI_NOC_0_awvalid);
    mp_FPD_CCI_NOC_0_transactor->AWUSER(FPD_CCI_NOC_0_awuser);
    mp_FPD_CCI_NOC_0_transactor->AWREADY(FPD_CCI_NOC_0_awready);
    mp_FPD_CCI_NOC_0_transactor->WDATA(FPD_CCI_NOC_0_wdata);
    mp_FPD_CCI_NOC_0_transactor->WSTRB(FPD_CCI_NOC_0_wstrb);
    mp_FPD_CCI_NOC_0_transactor->WUSER(FPD_CCI_NOC_0_wuser);
    mp_FPD_CCI_NOC_0_transactor->WLAST(FPD_CCI_NOC_0_wlast);
    mp_FPD_CCI_NOC_0_transactor->WVALID(FPD_CCI_NOC_0_wvalid);
    mp_FPD_CCI_NOC_0_transactor->WREADY(FPD_CCI_NOC_0_wready);
    mp_FPD_CCI_NOC_0_transactor->BID(FPD_CCI_NOC_0_bid);
    mp_FPD_CCI_NOC_0_transactor->BRESP(FPD_CCI_NOC_0_bresp);
    mp_FPD_CCI_NOC_0_transactor->BVALID(FPD_CCI_NOC_0_bvalid);
    mp_FPD_CCI_NOC_0_transactor->BREADY(FPD_CCI_NOC_0_bready);
    mp_FPD_CCI_NOC_0_transactor->ARID(FPD_CCI_NOC_0_arid);
    mp_FPD_CCI_NOC_0_transactor->ARADDR(FPD_CCI_NOC_0_araddr);
    mp_FPD_CCI_NOC_0_transactor->ARLEN(FPD_CCI_NOC_0_arlen);
    mp_FPD_CCI_NOC_0_transactor->ARSIZE(FPD_CCI_NOC_0_arsize);
    mp_FPD_CCI_NOC_0_transactor->ARBURST(FPD_CCI_NOC_0_arburst);
    mp_FPD_CCI_NOC_0_transactor->ARLOCK(FPD_CCI_NOC_0_arlock);
    mp_FPD_CCI_NOC_0_transactor->ARCACHE(FPD_CCI_NOC_0_arcache);
    mp_FPD_CCI_NOC_0_transactor->ARPROT(FPD_CCI_NOC_0_arprot);
    mp_FPD_CCI_NOC_0_transactor->ARVALID(FPD_CCI_NOC_0_arvalid);
    mp_FPD_CCI_NOC_0_transactor->ARUSER(FPD_CCI_NOC_0_aruser);
    mp_FPD_CCI_NOC_0_transactor->ARREADY(FPD_CCI_NOC_0_arready);
    mp_FPD_CCI_NOC_0_transactor->RID(FPD_CCI_NOC_0_rid);
    mp_FPD_CCI_NOC_0_transactor->RDATA(FPD_CCI_NOC_0_rdata);
    mp_FPD_CCI_NOC_0_transactor->RRESP(FPD_CCI_NOC_0_rresp);
    mp_FPD_CCI_NOC_0_transactor->RLAST(FPD_CCI_NOC_0_rlast);
    mp_FPD_CCI_NOC_0_transactor->RVALID(FPD_CCI_NOC_0_rvalid);
    mp_FPD_CCI_NOC_0_transactor->RREADY(FPD_CCI_NOC_0_rready);
    mp_FPD_CCI_NOC_0_transactor->AWQOS(FPD_CCI_NOC_0_awqos);
    mp_FPD_CCI_NOC_0_transactor->ARQOS(FPD_CCI_NOC_0_arqos);
    mp_FPD_CCI_NOC_0_transactor->CLK(fpd_cci_noc_axi0_clk);
    mp_FPD_CCI_NOC_0_transactor->RST(pl0_resetn);

    // FPD_CCI_NOC_0' transactor sockets

    mp_impl->FPD_CCI_NOC_0_tlm_aximm_read_socket->bind(*(mp_FPD_CCI_NOC_0_transactor->rd_socket));
    mp_impl->FPD_CCI_NOC_0_tlm_aximm_write_socket->bind(*(mp_FPD_CCI_NOC_0_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'FPD_CCI_NOC_1' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "FPD_CCI_NOC_1_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'FPD_CCI_NOC_1' transactor parameters
    xsc::common_cpp::properties FPD_CCI_NOC_1_transactor_param_props;
    FPD_CCI_NOC_1_transactor_param_props.addLong("DATA_WIDTH", "128");
    FPD_CCI_NOC_1_transactor_param_props.addLong("FREQ_HZ", "824991760");
    FPD_CCI_NOC_1_transactor_param_props.addLong("ID_WIDTH", "16");
    FPD_CCI_NOC_1_transactor_param_props.addLong("ADDR_WIDTH", "64");
    FPD_CCI_NOC_1_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    FPD_CCI_NOC_1_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    FPD_CCI_NOC_1_transactor_param_props.addLong("WUSER_WIDTH", "17");
    FPD_CCI_NOC_1_transactor_param_props.addLong("RUSER_WIDTH", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("BUSER_WIDTH", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_BURST", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_LOCK", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_PROT", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_CACHE", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_QOS", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_REGION", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_WSTRB", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_BRESP", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_RRESP", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    FPD_CCI_NOC_1_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    FPD_CCI_NOC_1_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    FPD_CCI_NOC_1_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_SIZE", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_RESET", "1");
    FPD_CCI_NOC_1_transactor_param_props.addFloat("PHASE", "0.0");
    FPD_CCI_NOC_1_transactor_param_props.addString("PROTOCOL", "AXI4");
    FPD_CCI_NOC_1_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    FPD_CCI_NOC_1_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_fpd_cci_noc_axi1_clk");
    FPD_CCI_NOC_1_transactor_param_props.addString("CATEGORY", "noc");
    FPD_CCI_NOC_1_transactor_param_props.addString("MY_CATEGORY", "ps_cci");
    FPD_CCI_NOC_1_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_CCI_TO_NOC_NMU");
    FPD_CCI_NOC_1_transactor_param_props.addString("INDEX", "1");

    mp_FPD_CCI_NOC_1_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>("FPD_CCI_NOC_1_transactor", FPD_CCI_NOC_1_transactor_param_props);

    // FPD_CCI_NOC_1' transactor ports

    mp_FPD_CCI_NOC_1_transactor->AWID(FPD_CCI_NOC_1_awid);
    mp_FPD_CCI_NOC_1_transactor->AWADDR(FPD_CCI_NOC_1_awaddr);
    mp_FPD_CCI_NOC_1_transactor->AWLEN(FPD_CCI_NOC_1_awlen);
    mp_FPD_CCI_NOC_1_transactor->AWSIZE(FPD_CCI_NOC_1_awsize);
    mp_FPD_CCI_NOC_1_transactor->AWBURST(FPD_CCI_NOC_1_awburst);
    mp_FPD_CCI_NOC_1_transactor->AWLOCK(FPD_CCI_NOC_1_awlock);
    mp_FPD_CCI_NOC_1_transactor->AWCACHE(FPD_CCI_NOC_1_awcache);
    mp_FPD_CCI_NOC_1_transactor->AWPROT(FPD_CCI_NOC_1_awprot);
    mp_FPD_CCI_NOC_1_transactor->AWVALID(FPD_CCI_NOC_1_awvalid);
    mp_FPD_CCI_NOC_1_transactor->AWUSER(FPD_CCI_NOC_1_awuser);
    mp_FPD_CCI_NOC_1_transactor->AWREADY(FPD_CCI_NOC_1_awready);
    mp_FPD_CCI_NOC_1_transactor->WDATA(FPD_CCI_NOC_1_wdata);
    mp_FPD_CCI_NOC_1_transactor->WSTRB(FPD_CCI_NOC_1_wstrb);
    mp_FPD_CCI_NOC_1_transactor->WUSER(FPD_CCI_NOC_1_wuser);
    mp_FPD_CCI_NOC_1_transactor->WLAST(FPD_CCI_NOC_1_wlast);
    mp_FPD_CCI_NOC_1_transactor->WVALID(FPD_CCI_NOC_1_wvalid);
    mp_FPD_CCI_NOC_1_transactor->WREADY(FPD_CCI_NOC_1_wready);
    mp_FPD_CCI_NOC_1_transactor->BID(FPD_CCI_NOC_1_bid);
    mp_FPD_CCI_NOC_1_transactor->BRESP(FPD_CCI_NOC_1_bresp);
    mp_FPD_CCI_NOC_1_transactor->BVALID(FPD_CCI_NOC_1_bvalid);
    mp_FPD_CCI_NOC_1_transactor->BREADY(FPD_CCI_NOC_1_bready);
    mp_FPD_CCI_NOC_1_transactor->ARID(FPD_CCI_NOC_1_arid);
    mp_FPD_CCI_NOC_1_transactor->ARADDR(FPD_CCI_NOC_1_araddr);
    mp_FPD_CCI_NOC_1_transactor->ARLEN(FPD_CCI_NOC_1_arlen);
    mp_FPD_CCI_NOC_1_transactor->ARSIZE(FPD_CCI_NOC_1_arsize);
    mp_FPD_CCI_NOC_1_transactor->ARBURST(FPD_CCI_NOC_1_arburst);
    mp_FPD_CCI_NOC_1_transactor->ARLOCK(FPD_CCI_NOC_1_arlock);
    mp_FPD_CCI_NOC_1_transactor->ARCACHE(FPD_CCI_NOC_1_arcache);
    mp_FPD_CCI_NOC_1_transactor->ARPROT(FPD_CCI_NOC_1_arprot);
    mp_FPD_CCI_NOC_1_transactor->ARVALID(FPD_CCI_NOC_1_arvalid);
    mp_FPD_CCI_NOC_1_transactor->ARUSER(FPD_CCI_NOC_1_aruser);
    mp_FPD_CCI_NOC_1_transactor->ARREADY(FPD_CCI_NOC_1_arready);
    mp_FPD_CCI_NOC_1_transactor->RID(FPD_CCI_NOC_1_rid);
    mp_FPD_CCI_NOC_1_transactor->RDATA(FPD_CCI_NOC_1_rdata);
    mp_FPD_CCI_NOC_1_transactor->RRESP(FPD_CCI_NOC_1_rresp);
    mp_FPD_CCI_NOC_1_transactor->RLAST(FPD_CCI_NOC_1_rlast);
    mp_FPD_CCI_NOC_1_transactor->RVALID(FPD_CCI_NOC_1_rvalid);
    mp_FPD_CCI_NOC_1_transactor->RREADY(FPD_CCI_NOC_1_rready);
    mp_FPD_CCI_NOC_1_transactor->AWQOS(FPD_CCI_NOC_1_awqos);
    mp_FPD_CCI_NOC_1_transactor->ARQOS(FPD_CCI_NOC_1_arqos);
    mp_FPD_CCI_NOC_1_transactor->CLK(fpd_cci_noc_axi1_clk);
    mp_FPD_CCI_NOC_1_transactor->RST(pl0_resetn);

    // FPD_CCI_NOC_1' transactor sockets

    mp_impl->FPD_CCI_NOC_1_tlm_aximm_read_socket->bind(*(mp_FPD_CCI_NOC_1_transactor->rd_socket));
    mp_impl->FPD_CCI_NOC_1_tlm_aximm_write_socket->bind(*(mp_FPD_CCI_NOC_1_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'FPD_CCI_NOC_2' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "FPD_CCI_NOC_2_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'FPD_CCI_NOC_2' transactor parameters
    xsc::common_cpp::properties FPD_CCI_NOC_2_transactor_param_props;
    FPD_CCI_NOC_2_transactor_param_props.addLong("DATA_WIDTH", "128");
    FPD_CCI_NOC_2_transactor_param_props.addLong("FREQ_HZ", "824991760");
    FPD_CCI_NOC_2_transactor_param_props.addLong("ID_WIDTH", "16");
    FPD_CCI_NOC_2_transactor_param_props.addLong("ADDR_WIDTH", "64");
    FPD_CCI_NOC_2_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    FPD_CCI_NOC_2_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    FPD_CCI_NOC_2_transactor_param_props.addLong("WUSER_WIDTH", "17");
    FPD_CCI_NOC_2_transactor_param_props.addLong("RUSER_WIDTH", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("BUSER_WIDTH", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_BURST", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_LOCK", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_PROT", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_CACHE", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_QOS", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_REGION", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_WSTRB", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_BRESP", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_RRESP", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    FPD_CCI_NOC_2_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    FPD_CCI_NOC_2_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    FPD_CCI_NOC_2_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_SIZE", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_RESET", "1");
    FPD_CCI_NOC_2_transactor_param_props.addFloat("PHASE", "0.0");
    FPD_CCI_NOC_2_transactor_param_props.addString("PROTOCOL", "AXI4");
    FPD_CCI_NOC_2_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    FPD_CCI_NOC_2_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_fpd_cci_noc_axi2_clk");
    FPD_CCI_NOC_2_transactor_param_props.addString("CATEGORY", "noc");
    FPD_CCI_NOC_2_transactor_param_props.addString("MY_CATEGORY", "ps_cci");
    FPD_CCI_NOC_2_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_CCI_TO_NOC_NMU");
    FPD_CCI_NOC_2_transactor_param_props.addString("INDEX", "2");

    mp_FPD_CCI_NOC_2_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>("FPD_CCI_NOC_2_transactor", FPD_CCI_NOC_2_transactor_param_props);

    // FPD_CCI_NOC_2' transactor ports

    mp_FPD_CCI_NOC_2_transactor->AWID(FPD_CCI_NOC_2_awid);
    mp_FPD_CCI_NOC_2_transactor->AWADDR(FPD_CCI_NOC_2_awaddr);
    mp_FPD_CCI_NOC_2_transactor->AWLEN(FPD_CCI_NOC_2_awlen);
    mp_FPD_CCI_NOC_2_transactor->AWSIZE(FPD_CCI_NOC_2_awsize);
    mp_FPD_CCI_NOC_2_transactor->AWBURST(FPD_CCI_NOC_2_awburst);
    mp_FPD_CCI_NOC_2_transactor->AWLOCK(FPD_CCI_NOC_2_awlock);
    mp_FPD_CCI_NOC_2_transactor->AWCACHE(FPD_CCI_NOC_2_awcache);
    mp_FPD_CCI_NOC_2_transactor->AWPROT(FPD_CCI_NOC_2_awprot);
    mp_FPD_CCI_NOC_2_transactor->AWVALID(FPD_CCI_NOC_2_awvalid);
    mp_FPD_CCI_NOC_2_transactor->AWUSER(FPD_CCI_NOC_2_awuser);
    mp_FPD_CCI_NOC_2_transactor->AWREADY(FPD_CCI_NOC_2_awready);
    mp_FPD_CCI_NOC_2_transactor->WDATA(FPD_CCI_NOC_2_wdata);
    mp_FPD_CCI_NOC_2_transactor->WSTRB(FPD_CCI_NOC_2_wstrb);
    mp_FPD_CCI_NOC_2_transactor->WUSER(FPD_CCI_NOC_2_wuser);
    mp_FPD_CCI_NOC_2_transactor->WLAST(FPD_CCI_NOC_2_wlast);
    mp_FPD_CCI_NOC_2_transactor->WVALID(FPD_CCI_NOC_2_wvalid);
    mp_FPD_CCI_NOC_2_transactor->WREADY(FPD_CCI_NOC_2_wready);
    mp_FPD_CCI_NOC_2_transactor->BID(FPD_CCI_NOC_2_bid);
    mp_FPD_CCI_NOC_2_transactor->BRESP(FPD_CCI_NOC_2_bresp);
    mp_FPD_CCI_NOC_2_transactor->BVALID(FPD_CCI_NOC_2_bvalid);
    mp_FPD_CCI_NOC_2_transactor->BREADY(FPD_CCI_NOC_2_bready);
    mp_FPD_CCI_NOC_2_transactor->ARID(FPD_CCI_NOC_2_arid);
    mp_FPD_CCI_NOC_2_transactor->ARADDR(FPD_CCI_NOC_2_araddr);
    mp_FPD_CCI_NOC_2_transactor->ARLEN(FPD_CCI_NOC_2_arlen);
    mp_FPD_CCI_NOC_2_transactor->ARSIZE(FPD_CCI_NOC_2_arsize);
    mp_FPD_CCI_NOC_2_transactor->ARBURST(FPD_CCI_NOC_2_arburst);
    mp_FPD_CCI_NOC_2_transactor->ARLOCK(FPD_CCI_NOC_2_arlock);
    mp_FPD_CCI_NOC_2_transactor->ARCACHE(FPD_CCI_NOC_2_arcache);
    mp_FPD_CCI_NOC_2_transactor->ARPROT(FPD_CCI_NOC_2_arprot);
    mp_FPD_CCI_NOC_2_transactor->ARVALID(FPD_CCI_NOC_2_arvalid);
    mp_FPD_CCI_NOC_2_transactor->ARUSER(FPD_CCI_NOC_2_aruser);
    mp_FPD_CCI_NOC_2_transactor->ARREADY(FPD_CCI_NOC_2_arready);
    mp_FPD_CCI_NOC_2_transactor->RID(FPD_CCI_NOC_2_rid);
    mp_FPD_CCI_NOC_2_transactor->RDATA(FPD_CCI_NOC_2_rdata);
    mp_FPD_CCI_NOC_2_transactor->RRESP(FPD_CCI_NOC_2_rresp);
    mp_FPD_CCI_NOC_2_transactor->RLAST(FPD_CCI_NOC_2_rlast);
    mp_FPD_CCI_NOC_2_transactor->RVALID(FPD_CCI_NOC_2_rvalid);
    mp_FPD_CCI_NOC_2_transactor->RREADY(FPD_CCI_NOC_2_rready);
    mp_FPD_CCI_NOC_2_transactor->AWQOS(FPD_CCI_NOC_2_awqos);
    mp_FPD_CCI_NOC_2_transactor->ARQOS(FPD_CCI_NOC_2_arqos);
    mp_FPD_CCI_NOC_2_transactor->CLK(fpd_cci_noc_axi2_clk);
    mp_FPD_CCI_NOC_2_transactor->RST(pl0_resetn);

    // FPD_CCI_NOC_2' transactor sockets

    mp_impl->FPD_CCI_NOC_2_tlm_aximm_read_socket->bind(*(mp_FPD_CCI_NOC_2_transactor->rd_socket));
    mp_impl->FPD_CCI_NOC_2_tlm_aximm_write_socket->bind(*(mp_FPD_CCI_NOC_2_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'FPD_CCI_NOC_3' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "FPD_CCI_NOC_3_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'FPD_CCI_NOC_3' transactor parameters
    xsc::common_cpp::properties FPD_CCI_NOC_3_transactor_param_props;
    FPD_CCI_NOC_3_transactor_param_props.addLong("DATA_WIDTH", "128");
    FPD_CCI_NOC_3_transactor_param_props.addLong("FREQ_HZ", "824991760");
    FPD_CCI_NOC_3_transactor_param_props.addLong("ID_WIDTH", "16");
    FPD_CCI_NOC_3_transactor_param_props.addLong("ADDR_WIDTH", "64");
    FPD_CCI_NOC_3_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    FPD_CCI_NOC_3_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    FPD_CCI_NOC_3_transactor_param_props.addLong("WUSER_WIDTH", "17");
    FPD_CCI_NOC_3_transactor_param_props.addLong("RUSER_WIDTH", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("BUSER_WIDTH", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_BURST", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_LOCK", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_PROT", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_CACHE", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_QOS", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_REGION", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_WSTRB", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_BRESP", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_RRESP", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    FPD_CCI_NOC_3_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    FPD_CCI_NOC_3_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    FPD_CCI_NOC_3_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_SIZE", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_RESET", "1");
    FPD_CCI_NOC_3_transactor_param_props.addFloat("PHASE", "0.0");
    FPD_CCI_NOC_3_transactor_param_props.addString("PROTOCOL", "AXI4");
    FPD_CCI_NOC_3_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    FPD_CCI_NOC_3_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_fpd_cci_noc_axi3_clk");
    FPD_CCI_NOC_3_transactor_param_props.addString("CATEGORY", "noc");
    FPD_CCI_NOC_3_transactor_param_props.addString("MY_CATEGORY", "ps_cci");
    FPD_CCI_NOC_3_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_CCI_TO_NOC_NMU");
    FPD_CCI_NOC_3_transactor_param_props.addString("INDEX", "3");

    mp_FPD_CCI_NOC_3_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>("FPD_CCI_NOC_3_transactor", FPD_CCI_NOC_3_transactor_param_props);

    // FPD_CCI_NOC_3' transactor ports

    mp_FPD_CCI_NOC_3_transactor->AWID(FPD_CCI_NOC_3_awid);
    mp_FPD_CCI_NOC_3_transactor->AWADDR(FPD_CCI_NOC_3_awaddr);
    mp_FPD_CCI_NOC_3_transactor->AWLEN(FPD_CCI_NOC_3_awlen);
    mp_FPD_CCI_NOC_3_transactor->AWSIZE(FPD_CCI_NOC_3_awsize);
    mp_FPD_CCI_NOC_3_transactor->AWBURST(FPD_CCI_NOC_3_awburst);
    mp_FPD_CCI_NOC_3_transactor->AWLOCK(FPD_CCI_NOC_3_awlock);
    mp_FPD_CCI_NOC_3_transactor->AWCACHE(FPD_CCI_NOC_3_awcache);
    mp_FPD_CCI_NOC_3_transactor->AWPROT(FPD_CCI_NOC_3_awprot);
    mp_FPD_CCI_NOC_3_transactor->AWVALID(FPD_CCI_NOC_3_awvalid);
    mp_FPD_CCI_NOC_3_transactor->AWUSER(FPD_CCI_NOC_3_awuser);
    mp_FPD_CCI_NOC_3_transactor->AWREADY(FPD_CCI_NOC_3_awready);
    mp_FPD_CCI_NOC_3_transactor->WDATA(FPD_CCI_NOC_3_wdata);
    mp_FPD_CCI_NOC_3_transactor->WSTRB(FPD_CCI_NOC_3_wstrb);
    mp_FPD_CCI_NOC_3_transactor->WUSER(FPD_CCI_NOC_3_wuser);
    mp_FPD_CCI_NOC_3_transactor->WLAST(FPD_CCI_NOC_3_wlast);
    mp_FPD_CCI_NOC_3_transactor->WVALID(FPD_CCI_NOC_3_wvalid);
    mp_FPD_CCI_NOC_3_transactor->WREADY(FPD_CCI_NOC_3_wready);
    mp_FPD_CCI_NOC_3_transactor->BID(FPD_CCI_NOC_3_bid);
    mp_FPD_CCI_NOC_3_transactor->BRESP(FPD_CCI_NOC_3_bresp);
    mp_FPD_CCI_NOC_3_transactor->BVALID(FPD_CCI_NOC_3_bvalid);
    mp_FPD_CCI_NOC_3_transactor->BREADY(FPD_CCI_NOC_3_bready);
    mp_FPD_CCI_NOC_3_transactor->ARID(FPD_CCI_NOC_3_arid);
    mp_FPD_CCI_NOC_3_transactor->ARADDR(FPD_CCI_NOC_3_araddr);
    mp_FPD_CCI_NOC_3_transactor->ARLEN(FPD_CCI_NOC_3_arlen);
    mp_FPD_CCI_NOC_3_transactor->ARSIZE(FPD_CCI_NOC_3_arsize);
    mp_FPD_CCI_NOC_3_transactor->ARBURST(FPD_CCI_NOC_3_arburst);
    mp_FPD_CCI_NOC_3_transactor->ARLOCK(FPD_CCI_NOC_3_arlock);
    mp_FPD_CCI_NOC_3_transactor->ARCACHE(FPD_CCI_NOC_3_arcache);
    mp_FPD_CCI_NOC_3_transactor->ARPROT(FPD_CCI_NOC_3_arprot);
    mp_FPD_CCI_NOC_3_transactor->ARVALID(FPD_CCI_NOC_3_arvalid);
    mp_FPD_CCI_NOC_3_transactor->ARUSER(FPD_CCI_NOC_3_aruser);
    mp_FPD_CCI_NOC_3_transactor->ARREADY(FPD_CCI_NOC_3_arready);
    mp_FPD_CCI_NOC_3_transactor->RID(FPD_CCI_NOC_3_rid);
    mp_FPD_CCI_NOC_3_transactor->RDATA(FPD_CCI_NOC_3_rdata);
    mp_FPD_CCI_NOC_3_transactor->RRESP(FPD_CCI_NOC_3_rresp);
    mp_FPD_CCI_NOC_3_transactor->RLAST(FPD_CCI_NOC_3_rlast);
    mp_FPD_CCI_NOC_3_transactor->RVALID(FPD_CCI_NOC_3_rvalid);
    mp_FPD_CCI_NOC_3_transactor->RREADY(FPD_CCI_NOC_3_rready);
    mp_FPD_CCI_NOC_3_transactor->AWQOS(FPD_CCI_NOC_3_awqos);
    mp_FPD_CCI_NOC_3_transactor->ARQOS(FPD_CCI_NOC_3_arqos);
    mp_FPD_CCI_NOC_3_transactor->CLK(fpd_cci_noc_axi3_clk);
    mp_FPD_CCI_NOC_3_transactor->RST(pl0_resetn);

    // FPD_CCI_NOC_3' transactor sockets

    mp_impl->FPD_CCI_NOC_3_tlm_aximm_read_socket->bind(*(mp_FPD_CCI_NOC_3_transactor->rd_socket));
    mp_impl->FPD_CCI_NOC_3_tlm_aximm_write_socket->bind(*(mp_FPD_CCI_NOC_3_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
dpss_vck190_pt_versal_cips_0_0::dpss_vck190_pt_versal_cips_0_0(const sc_core::sc_module_name& nm) : dpss_vck190_pt_versal_cips_0_0_sc(nm),  pl0_ref_clk("pl0_ref_clk"), pl1_ref_clk("pl1_ref_clk"), pl0_resetn("pl0_resetn"), m_axi_fpd_aclk("m_axi_fpd_aclk"), m_axi_lpd_aclk("m_axi_lpd_aclk"), fpd_cci_noc_axi0_clk("fpd_cci_noc_axi0_clk"), fpd_cci_noc_axi1_clk("fpd_cci_noc_axi1_clk"), fpd_cci_noc_axi2_clk("fpd_cci_noc_axi2_clk"), fpd_cci_noc_axi3_clk("fpd_cci_noc_axi3_clk"), pl_ps_irq0("pl_ps_irq0"), pl_ps_irq1("pl_ps_irq1"), pl_ps_irq2("pl_ps_irq2"), pl_ps_irq3("pl_ps_irq3"), pl_ps_irq4("pl_ps_irq4"), pl_ps_irq5("pl_ps_irq5"), M_AXI_FPD_awid("M_AXI_FPD_awid"), M_AXI_FPD_awaddr("M_AXI_FPD_awaddr"), M_AXI_FPD_awlen("M_AXI_FPD_awlen"), M_AXI_FPD_awsize("M_AXI_FPD_awsize"), M_AXI_FPD_awburst("M_AXI_FPD_awburst"), M_AXI_FPD_awlock("M_AXI_FPD_awlock"), M_AXI_FPD_awcache("M_AXI_FPD_awcache"), M_AXI_FPD_awprot("M_AXI_FPD_awprot"), M_AXI_FPD_awvalid("M_AXI_FPD_awvalid"), M_AXI_FPD_awuser("M_AXI_FPD_awuser"), M_AXI_FPD_awready("M_AXI_FPD_awready"), M_AXI_FPD_wlast("M_AXI_FPD_wlast"), M_AXI_FPD_wvalid("M_AXI_FPD_wvalid"), M_AXI_FPD_wready("M_AXI_FPD_wready"), M_AXI_FPD_bid("M_AXI_FPD_bid"), M_AXI_FPD_bresp("M_AXI_FPD_bresp"), M_AXI_FPD_bvalid("M_AXI_FPD_bvalid"), M_AXI_FPD_bready("M_AXI_FPD_bready"), M_AXI_FPD_arid("M_AXI_FPD_arid"), M_AXI_FPD_araddr("M_AXI_FPD_araddr"), M_AXI_FPD_arlen("M_AXI_FPD_arlen"), M_AXI_FPD_arsize("M_AXI_FPD_arsize"), M_AXI_FPD_arburst("M_AXI_FPD_arburst"), M_AXI_FPD_arlock("M_AXI_FPD_arlock"), M_AXI_FPD_arcache("M_AXI_FPD_arcache"), M_AXI_FPD_arprot("M_AXI_FPD_arprot"), M_AXI_FPD_arvalid("M_AXI_FPD_arvalid"), M_AXI_FPD_aruser("M_AXI_FPD_aruser"), M_AXI_FPD_arready("M_AXI_FPD_arready"), M_AXI_FPD_rid("M_AXI_FPD_rid"), M_AXI_FPD_rresp("M_AXI_FPD_rresp"), M_AXI_FPD_rlast("M_AXI_FPD_rlast"), M_AXI_FPD_rvalid("M_AXI_FPD_rvalid"), M_AXI_FPD_rready("M_AXI_FPD_rready"), M_AXI_FPD_awqos("M_AXI_FPD_awqos"), M_AXI_FPD_arqos("M_AXI_FPD_arqos"), M_AXI_FPD_wdata("M_AXI_FPD_wdata"), M_AXI_FPD_wstrb("M_AXI_FPD_wstrb"), M_AXI_FPD_rdata("M_AXI_FPD_rdata"), M_AXI_LPD_awid("M_AXI_LPD_awid"), M_AXI_LPD_awaddr("M_AXI_LPD_awaddr"), M_AXI_LPD_awlen("M_AXI_LPD_awlen"), M_AXI_LPD_awsize("M_AXI_LPD_awsize"), M_AXI_LPD_awburst("M_AXI_LPD_awburst"), M_AXI_LPD_awlock("M_AXI_LPD_awlock"), M_AXI_LPD_awcache("M_AXI_LPD_awcache"), M_AXI_LPD_awprot("M_AXI_LPD_awprot"), M_AXI_LPD_awvalid("M_AXI_LPD_awvalid"), M_AXI_LPD_awuser("M_AXI_LPD_awuser"), M_AXI_LPD_awready("M_AXI_LPD_awready"), M_AXI_LPD_wlast("M_AXI_LPD_wlast"), M_AXI_LPD_wvalid("M_AXI_LPD_wvalid"), M_AXI_LPD_wready("M_AXI_LPD_wready"), M_AXI_LPD_bid("M_AXI_LPD_bid"), M_AXI_LPD_bresp("M_AXI_LPD_bresp"), M_AXI_LPD_bvalid("M_AXI_LPD_bvalid"), M_AXI_LPD_bready("M_AXI_LPD_bready"), M_AXI_LPD_arid("M_AXI_LPD_arid"), M_AXI_LPD_araddr("M_AXI_LPD_araddr"), M_AXI_LPD_arlen("M_AXI_LPD_arlen"), M_AXI_LPD_arsize("M_AXI_LPD_arsize"), M_AXI_LPD_arburst("M_AXI_LPD_arburst"), M_AXI_LPD_arlock("M_AXI_LPD_arlock"), M_AXI_LPD_arcache("M_AXI_LPD_arcache"), M_AXI_LPD_arprot("M_AXI_LPD_arprot"), M_AXI_LPD_arvalid("M_AXI_LPD_arvalid"), M_AXI_LPD_aruser("M_AXI_LPD_aruser"), M_AXI_LPD_arready("M_AXI_LPD_arready"), M_AXI_LPD_rid("M_AXI_LPD_rid"), M_AXI_LPD_rresp("M_AXI_LPD_rresp"), M_AXI_LPD_rlast("M_AXI_LPD_rlast"), M_AXI_LPD_rvalid("M_AXI_LPD_rvalid"), M_AXI_LPD_rready("M_AXI_LPD_rready"), M_AXI_LPD_awqos("M_AXI_LPD_awqos"), M_AXI_LPD_arqos("M_AXI_LPD_arqos"), M_AXI_LPD_wdata("M_AXI_LPD_wdata"), M_AXI_LPD_wstrb("M_AXI_LPD_wstrb"), M_AXI_LPD_rdata("M_AXI_LPD_rdata"), FPD_CCI_NOC_0_awid("FPD_CCI_NOC_0_awid"), FPD_CCI_NOC_0_awaddr("FPD_CCI_NOC_0_awaddr"), FPD_CCI_NOC_0_awlen("FPD_CCI_NOC_0_awlen"), FPD_CCI_NOC_0_awsize("FPD_CCI_NOC_0_awsize"), FPD_CCI_NOC_0_awburst("FPD_CCI_NOC_0_awburst"), FPD_CCI_NOC_0_awlock("FPD_CCI_NOC_0_awlock"), FPD_CCI_NOC_0_awcache("FPD_CCI_NOC_0_awcache"), FPD_CCI_NOC_0_awprot("FPD_CCI_NOC_0_awprot"), FPD_CCI_NOC_0_awvalid("FPD_CCI_NOC_0_awvalid"), FPD_CCI_NOC_0_awuser("FPD_CCI_NOC_0_awuser"), FPD_CCI_NOC_0_awready("FPD_CCI_NOC_0_awready"), FPD_CCI_NOC_0_wdata("FPD_CCI_NOC_0_wdata"), FPD_CCI_NOC_0_wstrb("FPD_CCI_NOC_0_wstrb"), FPD_CCI_NOC_0_wuser("FPD_CCI_NOC_0_wuser"), FPD_CCI_NOC_0_wlast("FPD_CCI_NOC_0_wlast"), FPD_CCI_NOC_0_wvalid("FPD_CCI_NOC_0_wvalid"), FPD_CCI_NOC_0_wready("FPD_CCI_NOC_0_wready"), FPD_CCI_NOC_0_bid("FPD_CCI_NOC_0_bid"), FPD_CCI_NOC_0_bresp("FPD_CCI_NOC_0_bresp"), FPD_CCI_NOC_0_bvalid("FPD_CCI_NOC_0_bvalid"), FPD_CCI_NOC_0_bready("FPD_CCI_NOC_0_bready"), FPD_CCI_NOC_0_arid("FPD_CCI_NOC_0_arid"), FPD_CCI_NOC_0_araddr("FPD_CCI_NOC_0_araddr"), FPD_CCI_NOC_0_arlen("FPD_CCI_NOC_0_arlen"), FPD_CCI_NOC_0_arsize("FPD_CCI_NOC_0_arsize"), FPD_CCI_NOC_0_arburst("FPD_CCI_NOC_0_arburst"), FPD_CCI_NOC_0_arlock("FPD_CCI_NOC_0_arlock"), FPD_CCI_NOC_0_arcache("FPD_CCI_NOC_0_arcache"), FPD_CCI_NOC_0_arprot("FPD_CCI_NOC_0_arprot"), FPD_CCI_NOC_0_arvalid("FPD_CCI_NOC_0_arvalid"), FPD_CCI_NOC_0_aruser("FPD_CCI_NOC_0_aruser"), FPD_CCI_NOC_0_arready("FPD_CCI_NOC_0_arready"), FPD_CCI_NOC_0_rid("FPD_CCI_NOC_0_rid"), FPD_CCI_NOC_0_rdata("FPD_CCI_NOC_0_rdata"), FPD_CCI_NOC_0_rresp("FPD_CCI_NOC_0_rresp"), FPD_CCI_NOC_0_rlast("FPD_CCI_NOC_0_rlast"), FPD_CCI_NOC_0_rvalid("FPD_CCI_NOC_0_rvalid"), FPD_CCI_NOC_0_rready("FPD_CCI_NOC_0_rready"), FPD_CCI_NOC_0_awqos("FPD_CCI_NOC_0_awqos"), FPD_CCI_NOC_0_arqos("FPD_CCI_NOC_0_arqos"), FPD_CCI_NOC_1_awid("FPD_CCI_NOC_1_awid"), FPD_CCI_NOC_1_awaddr("FPD_CCI_NOC_1_awaddr"), FPD_CCI_NOC_1_awlen("FPD_CCI_NOC_1_awlen"), FPD_CCI_NOC_1_awsize("FPD_CCI_NOC_1_awsize"), FPD_CCI_NOC_1_awburst("FPD_CCI_NOC_1_awburst"), FPD_CCI_NOC_1_awlock("FPD_CCI_NOC_1_awlock"), FPD_CCI_NOC_1_awcache("FPD_CCI_NOC_1_awcache"), FPD_CCI_NOC_1_awprot("FPD_CCI_NOC_1_awprot"), FPD_CCI_NOC_1_awvalid("FPD_CCI_NOC_1_awvalid"), FPD_CCI_NOC_1_awuser("FPD_CCI_NOC_1_awuser"), FPD_CCI_NOC_1_awready("FPD_CCI_NOC_1_awready"), FPD_CCI_NOC_1_wdata("FPD_CCI_NOC_1_wdata"), FPD_CCI_NOC_1_wstrb("FPD_CCI_NOC_1_wstrb"), FPD_CCI_NOC_1_wuser("FPD_CCI_NOC_1_wuser"), FPD_CCI_NOC_1_wlast("FPD_CCI_NOC_1_wlast"), FPD_CCI_NOC_1_wvalid("FPD_CCI_NOC_1_wvalid"), FPD_CCI_NOC_1_wready("FPD_CCI_NOC_1_wready"), FPD_CCI_NOC_1_bid("FPD_CCI_NOC_1_bid"), FPD_CCI_NOC_1_bresp("FPD_CCI_NOC_1_bresp"), FPD_CCI_NOC_1_bvalid("FPD_CCI_NOC_1_bvalid"), FPD_CCI_NOC_1_bready("FPD_CCI_NOC_1_bready"), FPD_CCI_NOC_1_arid("FPD_CCI_NOC_1_arid"), FPD_CCI_NOC_1_araddr("FPD_CCI_NOC_1_araddr"), FPD_CCI_NOC_1_arlen("FPD_CCI_NOC_1_arlen"), FPD_CCI_NOC_1_arsize("FPD_CCI_NOC_1_arsize"), FPD_CCI_NOC_1_arburst("FPD_CCI_NOC_1_arburst"), FPD_CCI_NOC_1_arlock("FPD_CCI_NOC_1_arlock"), FPD_CCI_NOC_1_arcache("FPD_CCI_NOC_1_arcache"), FPD_CCI_NOC_1_arprot("FPD_CCI_NOC_1_arprot"), FPD_CCI_NOC_1_arvalid("FPD_CCI_NOC_1_arvalid"), FPD_CCI_NOC_1_aruser("FPD_CCI_NOC_1_aruser"), FPD_CCI_NOC_1_arready("FPD_CCI_NOC_1_arready"), FPD_CCI_NOC_1_rid("FPD_CCI_NOC_1_rid"), FPD_CCI_NOC_1_rdata("FPD_CCI_NOC_1_rdata"), FPD_CCI_NOC_1_rresp("FPD_CCI_NOC_1_rresp"), FPD_CCI_NOC_1_rlast("FPD_CCI_NOC_1_rlast"), FPD_CCI_NOC_1_rvalid("FPD_CCI_NOC_1_rvalid"), FPD_CCI_NOC_1_rready("FPD_CCI_NOC_1_rready"), FPD_CCI_NOC_1_awqos("FPD_CCI_NOC_1_awqos"), FPD_CCI_NOC_1_arqos("FPD_CCI_NOC_1_arqos"), FPD_CCI_NOC_2_awid("FPD_CCI_NOC_2_awid"), FPD_CCI_NOC_2_awaddr("FPD_CCI_NOC_2_awaddr"), FPD_CCI_NOC_2_awlen("FPD_CCI_NOC_2_awlen"), FPD_CCI_NOC_2_awsize("FPD_CCI_NOC_2_awsize"), FPD_CCI_NOC_2_awburst("FPD_CCI_NOC_2_awburst"), FPD_CCI_NOC_2_awlock("FPD_CCI_NOC_2_awlock"), FPD_CCI_NOC_2_awcache("FPD_CCI_NOC_2_awcache"), FPD_CCI_NOC_2_awprot("FPD_CCI_NOC_2_awprot"), FPD_CCI_NOC_2_awvalid("FPD_CCI_NOC_2_awvalid"), FPD_CCI_NOC_2_awuser("FPD_CCI_NOC_2_awuser"), FPD_CCI_NOC_2_awready("FPD_CCI_NOC_2_awready"), FPD_CCI_NOC_2_wdata("FPD_CCI_NOC_2_wdata"), FPD_CCI_NOC_2_wstrb("FPD_CCI_NOC_2_wstrb"), FPD_CCI_NOC_2_wuser("FPD_CCI_NOC_2_wuser"), FPD_CCI_NOC_2_wlast("FPD_CCI_NOC_2_wlast"), FPD_CCI_NOC_2_wvalid("FPD_CCI_NOC_2_wvalid"), FPD_CCI_NOC_2_wready("FPD_CCI_NOC_2_wready"), FPD_CCI_NOC_2_bid("FPD_CCI_NOC_2_bid"), FPD_CCI_NOC_2_bresp("FPD_CCI_NOC_2_bresp"), FPD_CCI_NOC_2_bvalid("FPD_CCI_NOC_2_bvalid"), FPD_CCI_NOC_2_bready("FPD_CCI_NOC_2_bready"), FPD_CCI_NOC_2_arid("FPD_CCI_NOC_2_arid"), FPD_CCI_NOC_2_araddr("FPD_CCI_NOC_2_araddr"), FPD_CCI_NOC_2_arlen("FPD_CCI_NOC_2_arlen"), FPD_CCI_NOC_2_arsize("FPD_CCI_NOC_2_arsize"), FPD_CCI_NOC_2_arburst("FPD_CCI_NOC_2_arburst"), FPD_CCI_NOC_2_arlock("FPD_CCI_NOC_2_arlock"), FPD_CCI_NOC_2_arcache("FPD_CCI_NOC_2_arcache"), FPD_CCI_NOC_2_arprot("FPD_CCI_NOC_2_arprot"), FPD_CCI_NOC_2_arvalid("FPD_CCI_NOC_2_arvalid"), FPD_CCI_NOC_2_aruser("FPD_CCI_NOC_2_aruser"), FPD_CCI_NOC_2_arready("FPD_CCI_NOC_2_arready"), FPD_CCI_NOC_2_rid("FPD_CCI_NOC_2_rid"), FPD_CCI_NOC_2_rdata("FPD_CCI_NOC_2_rdata"), FPD_CCI_NOC_2_rresp("FPD_CCI_NOC_2_rresp"), FPD_CCI_NOC_2_rlast("FPD_CCI_NOC_2_rlast"), FPD_CCI_NOC_2_rvalid("FPD_CCI_NOC_2_rvalid"), FPD_CCI_NOC_2_rready("FPD_CCI_NOC_2_rready"), FPD_CCI_NOC_2_awqos("FPD_CCI_NOC_2_awqos"), FPD_CCI_NOC_2_arqos("FPD_CCI_NOC_2_arqos"), FPD_CCI_NOC_3_awid("FPD_CCI_NOC_3_awid"), FPD_CCI_NOC_3_awaddr("FPD_CCI_NOC_3_awaddr"), FPD_CCI_NOC_3_awlen("FPD_CCI_NOC_3_awlen"), FPD_CCI_NOC_3_awsize("FPD_CCI_NOC_3_awsize"), FPD_CCI_NOC_3_awburst("FPD_CCI_NOC_3_awburst"), FPD_CCI_NOC_3_awlock("FPD_CCI_NOC_3_awlock"), FPD_CCI_NOC_3_awcache("FPD_CCI_NOC_3_awcache"), FPD_CCI_NOC_3_awprot("FPD_CCI_NOC_3_awprot"), FPD_CCI_NOC_3_awvalid("FPD_CCI_NOC_3_awvalid"), FPD_CCI_NOC_3_awuser("FPD_CCI_NOC_3_awuser"), FPD_CCI_NOC_3_awready("FPD_CCI_NOC_3_awready"), FPD_CCI_NOC_3_wdata("FPD_CCI_NOC_3_wdata"), FPD_CCI_NOC_3_wstrb("FPD_CCI_NOC_3_wstrb"), FPD_CCI_NOC_3_wuser("FPD_CCI_NOC_3_wuser"), FPD_CCI_NOC_3_wlast("FPD_CCI_NOC_3_wlast"), FPD_CCI_NOC_3_wvalid("FPD_CCI_NOC_3_wvalid"), FPD_CCI_NOC_3_wready("FPD_CCI_NOC_3_wready"), FPD_CCI_NOC_3_bid("FPD_CCI_NOC_3_bid"), FPD_CCI_NOC_3_bresp("FPD_CCI_NOC_3_bresp"), FPD_CCI_NOC_3_bvalid("FPD_CCI_NOC_3_bvalid"), FPD_CCI_NOC_3_bready("FPD_CCI_NOC_3_bready"), FPD_CCI_NOC_3_arid("FPD_CCI_NOC_3_arid"), FPD_CCI_NOC_3_araddr("FPD_CCI_NOC_3_araddr"), FPD_CCI_NOC_3_arlen("FPD_CCI_NOC_3_arlen"), FPD_CCI_NOC_3_arsize("FPD_CCI_NOC_3_arsize"), FPD_CCI_NOC_3_arburst("FPD_CCI_NOC_3_arburst"), FPD_CCI_NOC_3_arlock("FPD_CCI_NOC_3_arlock"), FPD_CCI_NOC_3_arcache("FPD_CCI_NOC_3_arcache"), FPD_CCI_NOC_3_arprot("FPD_CCI_NOC_3_arprot"), FPD_CCI_NOC_3_arvalid("FPD_CCI_NOC_3_arvalid"), FPD_CCI_NOC_3_aruser("FPD_CCI_NOC_3_aruser"), FPD_CCI_NOC_3_arready("FPD_CCI_NOC_3_arready"), FPD_CCI_NOC_3_rid("FPD_CCI_NOC_3_rid"), FPD_CCI_NOC_3_rdata("FPD_CCI_NOC_3_rdata"), FPD_CCI_NOC_3_rresp("FPD_CCI_NOC_3_rresp"), FPD_CCI_NOC_3_rlast("FPD_CCI_NOC_3_rlast"), FPD_CCI_NOC_3_rvalid("FPD_CCI_NOC_3_rvalid"), FPD_CCI_NOC_3_rready("FPD_CCI_NOC_3_rready"), FPD_CCI_NOC_3_awqos("FPD_CCI_NOC_3_awqos"), FPD_CCI_NOC_3_arqos("FPD_CCI_NOC_3_arqos")
{
  // initialize pins
  mp_impl->pl0_ref_clk(pl0_ref_clk);
  mp_impl->pl1_ref_clk(pl1_ref_clk);
  mp_impl->pl0_resetn(pl0_resetn);
  mp_impl->m_axi_fpd_aclk(m_axi_fpd_aclk);
  mp_impl->m_axi_lpd_aclk(m_axi_lpd_aclk);
  mp_impl->fpd_cci_noc_axi0_clk(fpd_cci_noc_axi0_clk);
  mp_impl->fpd_cci_noc_axi1_clk(fpd_cci_noc_axi1_clk);
  mp_impl->fpd_cci_noc_axi2_clk(fpd_cci_noc_axi2_clk);
  mp_impl->fpd_cci_noc_axi3_clk(fpd_cci_noc_axi3_clk);
  mp_impl->pl_ps_irq0(pl_ps_irq0);
  mp_impl->pl_ps_irq1(pl_ps_irq1);
  mp_impl->pl_ps_irq2(pl_ps_irq2);
  mp_impl->pl_ps_irq3(pl_ps_irq3);
  mp_impl->pl_ps_irq4(pl_ps_irq4);
  mp_impl->pl_ps_irq5(pl_ps_irq5);

  // initialize transactors
  mp_M_AXI_FPD_transactor = NULL;
  mp_M_AXI_LPD_transactor = NULL;
  mp_FPD_CCI_NOC_0_transactor = NULL;
  mp_FPD_CCI_NOC_1_transactor = NULL;
  mp_FPD_CCI_NOC_2_transactor = NULL;
  mp_FPD_CCI_NOC_3_transactor = NULL;

  // Instantiate Socket Stubs

  // configure M_AXI_FPD_transactor
    xsc::common_cpp::properties M_AXI_FPD_transactor_param_props;
    M_AXI_FPD_transactor_param_props.addLong("DATA_WIDTH", "128");
    M_AXI_FPD_transactor_param_props.addLong("FREQ_HZ", "99999001");
    M_AXI_FPD_transactor_param_props.addLong("ID_WIDTH", "16");
    M_AXI_FPD_transactor_param_props.addLong("ADDR_WIDTH", "44");
    M_AXI_FPD_transactor_param_props.addLong("AWUSER_WIDTH", "16");
    M_AXI_FPD_transactor_param_props.addLong("ARUSER_WIDTH", "16");
    M_AXI_FPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_FPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_FPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_FPD_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_FPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_FPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXI_FPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXI_FPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M_AXI_FPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_FPD_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXI_FPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXI_FPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_FPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_FPD_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXI_FPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_FPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_FPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_FPD_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_pl0_ref_clk");
    M_AXI_FPD_transactor_param_props.addString("CATEGORY", "pl");
    M_AXI_FPD_transactor_param_props.addString("MY_CATEGORY", "ps");

    mp_M_AXI_FPD_transactor = new xtlm::xaximm_xtlm2pin_t<128,44,16,16,1,1,16,1>("M_AXI_FPD_transactor", M_AXI_FPD_transactor_param_props);
  mp_M_AXI_FPD_transactor->AWID(M_AXI_FPD_awid);
  mp_M_AXI_FPD_transactor->AWADDR(M_AXI_FPD_awaddr);
  mp_M_AXI_FPD_transactor->AWLEN(M_AXI_FPD_awlen);
  mp_M_AXI_FPD_transactor->AWSIZE(M_AXI_FPD_awsize);
  mp_M_AXI_FPD_transactor->AWBURST(M_AXI_FPD_awburst);
  mp_M_AXI_FPD_transactor->AWLOCK(M_AXI_FPD_awlock);
  mp_M_AXI_FPD_transactor->AWCACHE(M_AXI_FPD_awcache);
  mp_M_AXI_FPD_transactor->AWPROT(M_AXI_FPD_awprot);
  mp_M_AXI_FPD_transactor->AWVALID(M_AXI_FPD_awvalid);
  mp_M_AXI_FPD_transactor->AWUSER(M_AXI_FPD_awuser);
  mp_M_AXI_FPD_transactor->AWREADY(M_AXI_FPD_awready);
  mp_M_AXI_FPD_transactor->WLAST(M_AXI_FPD_wlast);
  mp_M_AXI_FPD_transactor->WVALID(M_AXI_FPD_wvalid);
  mp_M_AXI_FPD_transactor->WREADY(M_AXI_FPD_wready);
  mp_M_AXI_FPD_transactor->BID(M_AXI_FPD_bid);
  mp_M_AXI_FPD_transactor->BRESP(M_AXI_FPD_bresp);
  mp_M_AXI_FPD_transactor->BVALID(M_AXI_FPD_bvalid);
  mp_M_AXI_FPD_transactor->BREADY(M_AXI_FPD_bready);
  mp_M_AXI_FPD_transactor->ARID(M_AXI_FPD_arid);
  mp_M_AXI_FPD_transactor->ARADDR(M_AXI_FPD_araddr);
  mp_M_AXI_FPD_transactor->ARLEN(M_AXI_FPD_arlen);
  mp_M_AXI_FPD_transactor->ARSIZE(M_AXI_FPD_arsize);
  mp_M_AXI_FPD_transactor->ARBURST(M_AXI_FPD_arburst);
  mp_M_AXI_FPD_transactor->ARLOCK(M_AXI_FPD_arlock);
  mp_M_AXI_FPD_transactor->ARCACHE(M_AXI_FPD_arcache);
  mp_M_AXI_FPD_transactor->ARPROT(M_AXI_FPD_arprot);
  mp_M_AXI_FPD_transactor->ARVALID(M_AXI_FPD_arvalid);
  mp_M_AXI_FPD_transactor->ARUSER(M_AXI_FPD_aruser);
  mp_M_AXI_FPD_transactor->ARREADY(M_AXI_FPD_arready);
  mp_M_AXI_FPD_transactor->RID(M_AXI_FPD_rid);
  mp_M_AXI_FPD_transactor->RRESP(M_AXI_FPD_rresp);
  mp_M_AXI_FPD_transactor->RLAST(M_AXI_FPD_rlast);
  mp_M_AXI_FPD_transactor->RVALID(M_AXI_FPD_rvalid);
  mp_M_AXI_FPD_transactor->RREADY(M_AXI_FPD_rready);
  mp_M_AXI_FPD_transactor->AWQOS(M_AXI_FPD_awqos);
  mp_M_AXI_FPD_transactor->ARQOS(M_AXI_FPD_arqos);
  mp_M_AXI_FPD_transactor->WDATA(M_AXI_FPD_wdata);
  mp_M_AXI_FPD_transactor->WSTRB(M_AXI_FPD_wstrb);
  mp_M_AXI_FPD_transactor->RDATA(M_AXI_FPD_rdata);
  mp_M_AXI_FPD_transactor->CLK(m_axi_fpd_aclk);
  mp_M_AXI_FPD_transactor->RST(pl0_resetn);
  // configure M_AXI_LPD_transactor
    xsc::common_cpp::properties M_AXI_LPD_transactor_param_props;
    M_AXI_LPD_transactor_param_props.addLong("DATA_WIDTH", "128");
    M_AXI_LPD_transactor_param_props.addLong("FREQ_HZ", "99999001");
    M_AXI_LPD_transactor_param_props.addLong("ID_WIDTH", "16");
    M_AXI_LPD_transactor_param_props.addLong("ADDR_WIDTH", "44");
    M_AXI_LPD_transactor_param_props.addLong("AWUSER_WIDTH", "16");
    M_AXI_LPD_transactor_param_props.addLong("ARUSER_WIDTH", "16");
    M_AXI_LPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_LPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_LPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_LPD_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_LPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_LPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXI_LPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXI_LPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M_AXI_LPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_LPD_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXI_LPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXI_LPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_LPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_LPD_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXI_LPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_LPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_LPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_LPD_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_pl0_ref_clk");
    M_AXI_LPD_transactor_param_props.addString("CATEGORY", "pl");
    M_AXI_LPD_transactor_param_props.addString("MY_CATEGORY", "ps");

    mp_M_AXI_LPD_transactor = new xtlm::xaximm_xtlm2pin_t<128,44,16,16,1,1,16,1>("M_AXI_LPD_transactor", M_AXI_LPD_transactor_param_props);
  mp_M_AXI_LPD_transactor->AWID(M_AXI_LPD_awid);
  mp_M_AXI_LPD_transactor->AWADDR(M_AXI_LPD_awaddr);
  mp_M_AXI_LPD_transactor->AWLEN(M_AXI_LPD_awlen);
  mp_M_AXI_LPD_transactor->AWSIZE(M_AXI_LPD_awsize);
  mp_M_AXI_LPD_transactor->AWBURST(M_AXI_LPD_awburst);
  mp_M_AXI_LPD_transactor->AWLOCK(M_AXI_LPD_awlock);
  mp_M_AXI_LPD_transactor->AWCACHE(M_AXI_LPD_awcache);
  mp_M_AXI_LPD_transactor->AWPROT(M_AXI_LPD_awprot);
  mp_M_AXI_LPD_transactor->AWVALID(M_AXI_LPD_awvalid);
  mp_M_AXI_LPD_transactor->AWUSER(M_AXI_LPD_awuser);
  mp_M_AXI_LPD_transactor->AWREADY(M_AXI_LPD_awready);
  mp_M_AXI_LPD_transactor->WLAST(M_AXI_LPD_wlast);
  mp_M_AXI_LPD_transactor->WVALID(M_AXI_LPD_wvalid);
  mp_M_AXI_LPD_transactor->WREADY(M_AXI_LPD_wready);
  mp_M_AXI_LPD_transactor->BID(M_AXI_LPD_bid);
  mp_M_AXI_LPD_transactor->BRESP(M_AXI_LPD_bresp);
  mp_M_AXI_LPD_transactor->BVALID(M_AXI_LPD_bvalid);
  mp_M_AXI_LPD_transactor->BREADY(M_AXI_LPD_bready);
  mp_M_AXI_LPD_transactor->ARID(M_AXI_LPD_arid);
  mp_M_AXI_LPD_transactor->ARADDR(M_AXI_LPD_araddr);
  mp_M_AXI_LPD_transactor->ARLEN(M_AXI_LPD_arlen);
  mp_M_AXI_LPD_transactor->ARSIZE(M_AXI_LPD_arsize);
  mp_M_AXI_LPD_transactor->ARBURST(M_AXI_LPD_arburst);
  mp_M_AXI_LPD_transactor->ARLOCK(M_AXI_LPD_arlock);
  mp_M_AXI_LPD_transactor->ARCACHE(M_AXI_LPD_arcache);
  mp_M_AXI_LPD_transactor->ARPROT(M_AXI_LPD_arprot);
  mp_M_AXI_LPD_transactor->ARVALID(M_AXI_LPD_arvalid);
  mp_M_AXI_LPD_transactor->ARUSER(M_AXI_LPD_aruser);
  mp_M_AXI_LPD_transactor->ARREADY(M_AXI_LPD_arready);
  mp_M_AXI_LPD_transactor->RID(M_AXI_LPD_rid);
  mp_M_AXI_LPD_transactor->RRESP(M_AXI_LPD_rresp);
  mp_M_AXI_LPD_transactor->RLAST(M_AXI_LPD_rlast);
  mp_M_AXI_LPD_transactor->RVALID(M_AXI_LPD_rvalid);
  mp_M_AXI_LPD_transactor->RREADY(M_AXI_LPD_rready);
  mp_M_AXI_LPD_transactor->AWQOS(M_AXI_LPD_awqos);
  mp_M_AXI_LPD_transactor->ARQOS(M_AXI_LPD_arqos);
  mp_M_AXI_LPD_transactor->WDATA(M_AXI_LPD_wdata);
  mp_M_AXI_LPD_transactor->WSTRB(M_AXI_LPD_wstrb);
  mp_M_AXI_LPD_transactor->RDATA(M_AXI_LPD_rdata);
  mp_M_AXI_LPD_transactor->CLK(m_axi_lpd_aclk);
  mp_M_AXI_LPD_transactor->RST(pl0_resetn);
  // configure FPD_CCI_NOC_0_transactor
    xsc::common_cpp::properties FPD_CCI_NOC_0_transactor_param_props;
    FPD_CCI_NOC_0_transactor_param_props.addLong("DATA_WIDTH", "128");
    FPD_CCI_NOC_0_transactor_param_props.addLong("FREQ_HZ", "824991760");
    FPD_CCI_NOC_0_transactor_param_props.addLong("ID_WIDTH", "16");
    FPD_CCI_NOC_0_transactor_param_props.addLong("ADDR_WIDTH", "64");
    FPD_CCI_NOC_0_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    FPD_CCI_NOC_0_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    FPD_CCI_NOC_0_transactor_param_props.addLong("WUSER_WIDTH", "17");
    FPD_CCI_NOC_0_transactor_param_props.addLong("RUSER_WIDTH", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("BUSER_WIDTH", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_BURST", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_LOCK", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_PROT", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_CACHE", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_QOS", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_REGION", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_WSTRB", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_BRESP", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_RRESP", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    FPD_CCI_NOC_0_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    FPD_CCI_NOC_0_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    FPD_CCI_NOC_0_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_SIZE", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_RESET", "1");
    FPD_CCI_NOC_0_transactor_param_props.addFloat("PHASE", "0.0");
    FPD_CCI_NOC_0_transactor_param_props.addString("PROTOCOL", "AXI4");
    FPD_CCI_NOC_0_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    FPD_CCI_NOC_0_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_fpd_cci_noc_axi0_clk");
    FPD_CCI_NOC_0_transactor_param_props.addString("CATEGORY", "noc");
    FPD_CCI_NOC_0_transactor_param_props.addString("MY_CATEGORY", "ps_cci");
    FPD_CCI_NOC_0_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_CCI_TO_NOC_NMU");
    FPD_CCI_NOC_0_transactor_param_props.addString("INDEX", "0");

    mp_FPD_CCI_NOC_0_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>("FPD_CCI_NOC_0_transactor", FPD_CCI_NOC_0_transactor_param_props);
  mp_FPD_CCI_NOC_0_transactor->AWID(FPD_CCI_NOC_0_awid);
  mp_FPD_CCI_NOC_0_transactor->AWADDR(FPD_CCI_NOC_0_awaddr);
  mp_FPD_CCI_NOC_0_transactor->AWLEN(FPD_CCI_NOC_0_awlen);
  mp_FPD_CCI_NOC_0_transactor->AWSIZE(FPD_CCI_NOC_0_awsize);
  mp_FPD_CCI_NOC_0_transactor->AWBURST(FPD_CCI_NOC_0_awburst);
  mp_FPD_CCI_NOC_0_transactor->AWLOCK(FPD_CCI_NOC_0_awlock);
  mp_FPD_CCI_NOC_0_transactor->AWCACHE(FPD_CCI_NOC_0_awcache);
  mp_FPD_CCI_NOC_0_transactor->AWPROT(FPD_CCI_NOC_0_awprot);
  mp_FPD_CCI_NOC_0_transactor->AWVALID(FPD_CCI_NOC_0_awvalid);
  mp_FPD_CCI_NOC_0_transactor->AWUSER(FPD_CCI_NOC_0_awuser);
  mp_FPD_CCI_NOC_0_transactor->AWREADY(FPD_CCI_NOC_0_awready);
  mp_FPD_CCI_NOC_0_transactor->WDATA(FPD_CCI_NOC_0_wdata);
  mp_FPD_CCI_NOC_0_transactor->WSTRB(FPD_CCI_NOC_0_wstrb);
  mp_FPD_CCI_NOC_0_transactor->WUSER(FPD_CCI_NOC_0_wuser);
  mp_FPD_CCI_NOC_0_transactor->WLAST(FPD_CCI_NOC_0_wlast);
  mp_FPD_CCI_NOC_0_transactor->WVALID(FPD_CCI_NOC_0_wvalid);
  mp_FPD_CCI_NOC_0_transactor->WREADY(FPD_CCI_NOC_0_wready);
  mp_FPD_CCI_NOC_0_transactor->BID(FPD_CCI_NOC_0_bid);
  mp_FPD_CCI_NOC_0_transactor->BRESP(FPD_CCI_NOC_0_bresp);
  mp_FPD_CCI_NOC_0_transactor->BVALID(FPD_CCI_NOC_0_bvalid);
  mp_FPD_CCI_NOC_0_transactor->BREADY(FPD_CCI_NOC_0_bready);
  mp_FPD_CCI_NOC_0_transactor->ARID(FPD_CCI_NOC_0_arid);
  mp_FPD_CCI_NOC_0_transactor->ARADDR(FPD_CCI_NOC_0_araddr);
  mp_FPD_CCI_NOC_0_transactor->ARLEN(FPD_CCI_NOC_0_arlen);
  mp_FPD_CCI_NOC_0_transactor->ARSIZE(FPD_CCI_NOC_0_arsize);
  mp_FPD_CCI_NOC_0_transactor->ARBURST(FPD_CCI_NOC_0_arburst);
  mp_FPD_CCI_NOC_0_transactor->ARLOCK(FPD_CCI_NOC_0_arlock);
  mp_FPD_CCI_NOC_0_transactor->ARCACHE(FPD_CCI_NOC_0_arcache);
  mp_FPD_CCI_NOC_0_transactor->ARPROT(FPD_CCI_NOC_0_arprot);
  mp_FPD_CCI_NOC_0_transactor->ARVALID(FPD_CCI_NOC_0_arvalid);
  mp_FPD_CCI_NOC_0_transactor->ARUSER(FPD_CCI_NOC_0_aruser);
  mp_FPD_CCI_NOC_0_transactor->ARREADY(FPD_CCI_NOC_0_arready);
  mp_FPD_CCI_NOC_0_transactor->RID(FPD_CCI_NOC_0_rid);
  mp_FPD_CCI_NOC_0_transactor->RDATA(FPD_CCI_NOC_0_rdata);
  mp_FPD_CCI_NOC_0_transactor->RRESP(FPD_CCI_NOC_0_rresp);
  mp_FPD_CCI_NOC_0_transactor->RLAST(FPD_CCI_NOC_0_rlast);
  mp_FPD_CCI_NOC_0_transactor->RVALID(FPD_CCI_NOC_0_rvalid);
  mp_FPD_CCI_NOC_0_transactor->RREADY(FPD_CCI_NOC_0_rready);
  mp_FPD_CCI_NOC_0_transactor->AWQOS(FPD_CCI_NOC_0_awqos);
  mp_FPD_CCI_NOC_0_transactor->ARQOS(FPD_CCI_NOC_0_arqos);
  mp_FPD_CCI_NOC_0_transactor->CLK(fpd_cci_noc_axi0_clk);
  mp_FPD_CCI_NOC_0_transactor->RST(pl0_resetn);
  // configure FPD_CCI_NOC_1_transactor
    xsc::common_cpp::properties FPD_CCI_NOC_1_transactor_param_props;
    FPD_CCI_NOC_1_transactor_param_props.addLong("DATA_WIDTH", "128");
    FPD_CCI_NOC_1_transactor_param_props.addLong("FREQ_HZ", "824991760");
    FPD_CCI_NOC_1_transactor_param_props.addLong("ID_WIDTH", "16");
    FPD_CCI_NOC_1_transactor_param_props.addLong("ADDR_WIDTH", "64");
    FPD_CCI_NOC_1_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    FPD_CCI_NOC_1_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    FPD_CCI_NOC_1_transactor_param_props.addLong("WUSER_WIDTH", "17");
    FPD_CCI_NOC_1_transactor_param_props.addLong("RUSER_WIDTH", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("BUSER_WIDTH", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_BURST", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_LOCK", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_PROT", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_CACHE", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_QOS", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_REGION", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_WSTRB", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_BRESP", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_RRESP", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    FPD_CCI_NOC_1_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    FPD_CCI_NOC_1_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    FPD_CCI_NOC_1_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_SIZE", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_RESET", "1");
    FPD_CCI_NOC_1_transactor_param_props.addFloat("PHASE", "0.0");
    FPD_CCI_NOC_1_transactor_param_props.addString("PROTOCOL", "AXI4");
    FPD_CCI_NOC_1_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    FPD_CCI_NOC_1_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_fpd_cci_noc_axi1_clk");
    FPD_CCI_NOC_1_transactor_param_props.addString("CATEGORY", "noc");
    FPD_CCI_NOC_1_transactor_param_props.addString("MY_CATEGORY", "ps_cci");
    FPD_CCI_NOC_1_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_CCI_TO_NOC_NMU");
    FPD_CCI_NOC_1_transactor_param_props.addString("INDEX", "1");

    mp_FPD_CCI_NOC_1_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>("FPD_CCI_NOC_1_transactor", FPD_CCI_NOC_1_transactor_param_props);
  mp_FPD_CCI_NOC_1_transactor->AWID(FPD_CCI_NOC_1_awid);
  mp_FPD_CCI_NOC_1_transactor->AWADDR(FPD_CCI_NOC_1_awaddr);
  mp_FPD_CCI_NOC_1_transactor->AWLEN(FPD_CCI_NOC_1_awlen);
  mp_FPD_CCI_NOC_1_transactor->AWSIZE(FPD_CCI_NOC_1_awsize);
  mp_FPD_CCI_NOC_1_transactor->AWBURST(FPD_CCI_NOC_1_awburst);
  mp_FPD_CCI_NOC_1_transactor->AWLOCK(FPD_CCI_NOC_1_awlock);
  mp_FPD_CCI_NOC_1_transactor->AWCACHE(FPD_CCI_NOC_1_awcache);
  mp_FPD_CCI_NOC_1_transactor->AWPROT(FPD_CCI_NOC_1_awprot);
  mp_FPD_CCI_NOC_1_transactor->AWVALID(FPD_CCI_NOC_1_awvalid);
  mp_FPD_CCI_NOC_1_transactor->AWUSER(FPD_CCI_NOC_1_awuser);
  mp_FPD_CCI_NOC_1_transactor->AWREADY(FPD_CCI_NOC_1_awready);
  mp_FPD_CCI_NOC_1_transactor->WDATA(FPD_CCI_NOC_1_wdata);
  mp_FPD_CCI_NOC_1_transactor->WSTRB(FPD_CCI_NOC_1_wstrb);
  mp_FPD_CCI_NOC_1_transactor->WUSER(FPD_CCI_NOC_1_wuser);
  mp_FPD_CCI_NOC_1_transactor->WLAST(FPD_CCI_NOC_1_wlast);
  mp_FPD_CCI_NOC_1_transactor->WVALID(FPD_CCI_NOC_1_wvalid);
  mp_FPD_CCI_NOC_1_transactor->WREADY(FPD_CCI_NOC_1_wready);
  mp_FPD_CCI_NOC_1_transactor->BID(FPD_CCI_NOC_1_bid);
  mp_FPD_CCI_NOC_1_transactor->BRESP(FPD_CCI_NOC_1_bresp);
  mp_FPD_CCI_NOC_1_transactor->BVALID(FPD_CCI_NOC_1_bvalid);
  mp_FPD_CCI_NOC_1_transactor->BREADY(FPD_CCI_NOC_1_bready);
  mp_FPD_CCI_NOC_1_transactor->ARID(FPD_CCI_NOC_1_arid);
  mp_FPD_CCI_NOC_1_transactor->ARADDR(FPD_CCI_NOC_1_araddr);
  mp_FPD_CCI_NOC_1_transactor->ARLEN(FPD_CCI_NOC_1_arlen);
  mp_FPD_CCI_NOC_1_transactor->ARSIZE(FPD_CCI_NOC_1_arsize);
  mp_FPD_CCI_NOC_1_transactor->ARBURST(FPD_CCI_NOC_1_arburst);
  mp_FPD_CCI_NOC_1_transactor->ARLOCK(FPD_CCI_NOC_1_arlock);
  mp_FPD_CCI_NOC_1_transactor->ARCACHE(FPD_CCI_NOC_1_arcache);
  mp_FPD_CCI_NOC_1_transactor->ARPROT(FPD_CCI_NOC_1_arprot);
  mp_FPD_CCI_NOC_1_transactor->ARVALID(FPD_CCI_NOC_1_arvalid);
  mp_FPD_CCI_NOC_1_transactor->ARUSER(FPD_CCI_NOC_1_aruser);
  mp_FPD_CCI_NOC_1_transactor->ARREADY(FPD_CCI_NOC_1_arready);
  mp_FPD_CCI_NOC_1_transactor->RID(FPD_CCI_NOC_1_rid);
  mp_FPD_CCI_NOC_1_transactor->RDATA(FPD_CCI_NOC_1_rdata);
  mp_FPD_CCI_NOC_1_transactor->RRESP(FPD_CCI_NOC_1_rresp);
  mp_FPD_CCI_NOC_1_transactor->RLAST(FPD_CCI_NOC_1_rlast);
  mp_FPD_CCI_NOC_1_transactor->RVALID(FPD_CCI_NOC_1_rvalid);
  mp_FPD_CCI_NOC_1_transactor->RREADY(FPD_CCI_NOC_1_rready);
  mp_FPD_CCI_NOC_1_transactor->AWQOS(FPD_CCI_NOC_1_awqos);
  mp_FPD_CCI_NOC_1_transactor->ARQOS(FPD_CCI_NOC_1_arqos);
  mp_FPD_CCI_NOC_1_transactor->CLK(fpd_cci_noc_axi1_clk);
  mp_FPD_CCI_NOC_1_transactor->RST(pl0_resetn);
  // configure FPD_CCI_NOC_2_transactor
    xsc::common_cpp::properties FPD_CCI_NOC_2_transactor_param_props;
    FPD_CCI_NOC_2_transactor_param_props.addLong("DATA_WIDTH", "128");
    FPD_CCI_NOC_2_transactor_param_props.addLong("FREQ_HZ", "824991760");
    FPD_CCI_NOC_2_transactor_param_props.addLong("ID_WIDTH", "16");
    FPD_CCI_NOC_2_transactor_param_props.addLong("ADDR_WIDTH", "64");
    FPD_CCI_NOC_2_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    FPD_CCI_NOC_2_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    FPD_CCI_NOC_2_transactor_param_props.addLong("WUSER_WIDTH", "17");
    FPD_CCI_NOC_2_transactor_param_props.addLong("RUSER_WIDTH", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("BUSER_WIDTH", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_BURST", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_LOCK", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_PROT", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_CACHE", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_QOS", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_REGION", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_WSTRB", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_BRESP", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_RRESP", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    FPD_CCI_NOC_2_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    FPD_CCI_NOC_2_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    FPD_CCI_NOC_2_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_SIZE", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_RESET", "1");
    FPD_CCI_NOC_2_transactor_param_props.addFloat("PHASE", "0.0");
    FPD_CCI_NOC_2_transactor_param_props.addString("PROTOCOL", "AXI4");
    FPD_CCI_NOC_2_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    FPD_CCI_NOC_2_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_fpd_cci_noc_axi2_clk");
    FPD_CCI_NOC_2_transactor_param_props.addString("CATEGORY", "noc");
    FPD_CCI_NOC_2_transactor_param_props.addString("MY_CATEGORY", "ps_cci");
    FPD_CCI_NOC_2_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_CCI_TO_NOC_NMU");
    FPD_CCI_NOC_2_transactor_param_props.addString("INDEX", "2");

    mp_FPD_CCI_NOC_2_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>("FPD_CCI_NOC_2_transactor", FPD_CCI_NOC_2_transactor_param_props);
  mp_FPD_CCI_NOC_2_transactor->AWID(FPD_CCI_NOC_2_awid);
  mp_FPD_CCI_NOC_2_transactor->AWADDR(FPD_CCI_NOC_2_awaddr);
  mp_FPD_CCI_NOC_2_transactor->AWLEN(FPD_CCI_NOC_2_awlen);
  mp_FPD_CCI_NOC_2_transactor->AWSIZE(FPD_CCI_NOC_2_awsize);
  mp_FPD_CCI_NOC_2_transactor->AWBURST(FPD_CCI_NOC_2_awburst);
  mp_FPD_CCI_NOC_2_transactor->AWLOCK(FPD_CCI_NOC_2_awlock);
  mp_FPD_CCI_NOC_2_transactor->AWCACHE(FPD_CCI_NOC_2_awcache);
  mp_FPD_CCI_NOC_2_transactor->AWPROT(FPD_CCI_NOC_2_awprot);
  mp_FPD_CCI_NOC_2_transactor->AWVALID(FPD_CCI_NOC_2_awvalid);
  mp_FPD_CCI_NOC_2_transactor->AWUSER(FPD_CCI_NOC_2_awuser);
  mp_FPD_CCI_NOC_2_transactor->AWREADY(FPD_CCI_NOC_2_awready);
  mp_FPD_CCI_NOC_2_transactor->WDATA(FPD_CCI_NOC_2_wdata);
  mp_FPD_CCI_NOC_2_transactor->WSTRB(FPD_CCI_NOC_2_wstrb);
  mp_FPD_CCI_NOC_2_transactor->WUSER(FPD_CCI_NOC_2_wuser);
  mp_FPD_CCI_NOC_2_transactor->WLAST(FPD_CCI_NOC_2_wlast);
  mp_FPD_CCI_NOC_2_transactor->WVALID(FPD_CCI_NOC_2_wvalid);
  mp_FPD_CCI_NOC_2_transactor->WREADY(FPD_CCI_NOC_2_wready);
  mp_FPD_CCI_NOC_2_transactor->BID(FPD_CCI_NOC_2_bid);
  mp_FPD_CCI_NOC_2_transactor->BRESP(FPD_CCI_NOC_2_bresp);
  mp_FPD_CCI_NOC_2_transactor->BVALID(FPD_CCI_NOC_2_bvalid);
  mp_FPD_CCI_NOC_2_transactor->BREADY(FPD_CCI_NOC_2_bready);
  mp_FPD_CCI_NOC_2_transactor->ARID(FPD_CCI_NOC_2_arid);
  mp_FPD_CCI_NOC_2_transactor->ARADDR(FPD_CCI_NOC_2_araddr);
  mp_FPD_CCI_NOC_2_transactor->ARLEN(FPD_CCI_NOC_2_arlen);
  mp_FPD_CCI_NOC_2_transactor->ARSIZE(FPD_CCI_NOC_2_arsize);
  mp_FPD_CCI_NOC_2_transactor->ARBURST(FPD_CCI_NOC_2_arburst);
  mp_FPD_CCI_NOC_2_transactor->ARLOCK(FPD_CCI_NOC_2_arlock);
  mp_FPD_CCI_NOC_2_transactor->ARCACHE(FPD_CCI_NOC_2_arcache);
  mp_FPD_CCI_NOC_2_transactor->ARPROT(FPD_CCI_NOC_2_arprot);
  mp_FPD_CCI_NOC_2_transactor->ARVALID(FPD_CCI_NOC_2_arvalid);
  mp_FPD_CCI_NOC_2_transactor->ARUSER(FPD_CCI_NOC_2_aruser);
  mp_FPD_CCI_NOC_2_transactor->ARREADY(FPD_CCI_NOC_2_arready);
  mp_FPD_CCI_NOC_2_transactor->RID(FPD_CCI_NOC_2_rid);
  mp_FPD_CCI_NOC_2_transactor->RDATA(FPD_CCI_NOC_2_rdata);
  mp_FPD_CCI_NOC_2_transactor->RRESP(FPD_CCI_NOC_2_rresp);
  mp_FPD_CCI_NOC_2_transactor->RLAST(FPD_CCI_NOC_2_rlast);
  mp_FPD_CCI_NOC_2_transactor->RVALID(FPD_CCI_NOC_2_rvalid);
  mp_FPD_CCI_NOC_2_transactor->RREADY(FPD_CCI_NOC_2_rready);
  mp_FPD_CCI_NOC_2_transactor->AWQOS(FPD_CCI_NOC_2_awqos);
  mp_FPD_CCI_NOC_2_transactor->ARQOS(FPD_CCI_NOC_2_arqos);
  mp_FPD_CCI_NOC_2_transactor->CLK(fpd_cci_noc_axi2_clk);
  mp_FPD_CCI_NOC_2_transactor->RST(pl0_resetn);
  // configure FPD_CCI_NOC_3_transactor
    xsc::common_cpp::properties FPD_CCI_NOC_3_transactor_param_props;
    FPD_CCI_NOC_3_transactor_param_props.addLong("DATA_WIDTH", "128");
    FPD_CCI_NOC_3_transactor_param_props.addLong("FREQ_HZ", "824991760");
    FPD_CCI_NOC_3_transactor_param_props.addLong("ID_WIDTH", "16");
    FPD_CCI_NOC_3_transactor_param_props.addLong("ADDR_WIDTH", "64");
    FPD_CCI_NOC_3_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    FPD_CCI_NOC_3_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    FPD_CCI_NOC_3_transactor_param_props.addLong("WUSER_WIDTH", "17");
    FPD_CCI_NOC_3_transactor_param_props.addLong("RUSER_WIDTH", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("BUSER_WIDTH", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_BURST", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_LOCK", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_PROT", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_CACHE", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_QOS", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_REGION", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_WSTRB", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_BRESP", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_RRESP", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    FPD_CCI_NOC_3_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    FPD_CCI_NOC_3_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    FPD_CCI_NOC_3_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_SIZE", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_RESET", "1");
    FPD_CCI_NOC_3_transactor_param_props.addFloat("PHASE", "0.0");
    FPD_CCI_NOC_3_transactor_param_props.addString("PROTOCOL", "AXI4");
    FPD_CCI_NOC_3_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    FPD_CCI_NOC_3_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_fpd_cci_noc_axi3_clk");
    FPD_CCI_NOC_3_transactor_param_props.addString("CATEGORY", "noc");
    FPD_CCI_NOC_3_transactor_param_props.addString("MY_CATEGORY", "ps_cci");
    FPD_CCI_NOC_3_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_CCI_TO_NOC_NMU");
    FPD_CCI_NOC_3_transactor_param_props.addString("INDEX", "3");

    mp_FPD_CCI_NOC_3_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>("FPD_CCI_NOC_3_transactor", FPD_CCI_NOC_3_transactor_param_props);
  mp_FPD_CCI_NOC_3_transactor->AWID(FPD_CCI_NOC_3_awid);
  mp_FPD_CCI_NOC_3_transactor->AWADDR(FPD_CCI_NOC_3_awaddr);
  mp_FPD_CCI_NOC_3_transactor->AWLEN(FPD_CCI_NOC_3_awlen);
  mp_FPD_CCI_NOC_3_transactor->AWSIZE(FPD_CCI_NOC_3_awsize);
  mp_FPD_CCI_NOC_3_transactor->AWBURST(FPD_CCI_NOC_3_awburst);
  mp_FPD_CCI_NOC_3_transactor->AWLOCK(FPD_CCI_NOC_3_awlock);
  mp_FPD_CCI_NOC_3_transactor->AWCACHE(FPD_CCI_NOC_3_awcache);
  mp_FPD_CCI_NOC_3_transactor->AWPROT(FPD_CCI_NOC_3_awprot);
  mp_FPD_CCI_NOC_3_transactor->AWVALID(FPD_CCI_NOC_3_awvalid);
  mp_FPD_CCI_NOC_3_transactor->AWUSER(FPD_CCI_NOC_3_awuser);
  mp_FPD_CCI_NOC_3_transactor->AWREADY(FPD_CCI_NOC_3_awready);
  mp_FPD_CCI_NOC_3_transactor->WDATA(FPD_CCI_NOC_3_wdata);
  mp_FPD_CCI_NOC_3_transactor->WSTRB(FPD_CCI_NOC_3_wstrb);
  mp_FPD_CCI_NOC_3_transactor->WUSER(FPD_CCI_NOC_3_wuser);
  mp_FPD_CCI_NOC_3_transactor->WLAST(FPD_CCI_NOC_3_wlast);
  mp_FPD_CCI_NOC_3_transactor->WVALID(FPD_CCI_NOC_3_wvalid);
  mp_FPD_CCI_NOC_3_transactor->WREADY(FPD_CCI_NOC_3_wready);
  mp_FPD_CCI_NOC_3_transactor->BID(FPD_CCI_NOC_3_bid);
  mp_FPD_CCI_NOC_3_transactor->BRESP(FPD_CCI_NOC_3_bresp);
  mp_FPD_CCI_NOC_3_transactor->BVALID(FPD_CCI_NOC_3_bvalid);
  mp_FPD_CCI_NOC_3_transactor->BREADY(FPD_CCI_NOC_3_bready);
  mp_FPD_CCI_NOC_3_transactor->ARID(FPD_CCI_NOC_3_arid);
  mp_FPD_CCI_NOC_3_transactor->ARADDR(FPD_CCI_NOC_3_araddr);
  mp_FPD_CCI_NOC_3_transactor->ARLEN(FPD_CCI_NOC_3_arlen);
  mp_FPD_CCI_NOC_3_transactor->ARSIZE(FPD_CCI_NOC_3_arsize);
  mp_FPD_CCI_NOC_3_transactor->ARBURST(FPD_CCI_NOC_3_arburst);
  mp_FPD_CCI_NOC_3_transactor->ARLOCK(FPD_CCI_NOC_3_arlock);
  mp_FPD_CCI_NOC_3_transactor->ARCACHE(FPD_CCI_NOC_3_arcache);
  mp_FPD_CCI_NOC_3_transactor->ARPROT(FPD_CCI_NOC_3_arprot);
  mp_FPD_CCI_NOC_3_transactor->ARVALID(FPD_CCI_NOC_3_arvalid);
  mp_FPD_CCI_NOC_3_transactor->ARUSER(FPD_CCI_NOC_3_aruser);
  mp_FPD_CCI_NOC_3_transactor->ARREADY(FPD_CCI_NOC_3_arready);
  mp_FPD_CCI_NOC_3_transactor->RID(FPD_CCI_NOC_3_rid);
  mp_FPD_CCI_NOC_3_transactor->RDATA(FPD_CCI_NOC_3_rdata);
  mp_FPD_CCI_NOC_3_transactor->RRESP(FPD_CCI_NOC_3_rresp);
  mp_FPD_CCI_NOC_3_transactor->RLAST(FPD_CCI_NOC_3_rlast);
  mp_FPD_CCI_NOC_3_transactor->RVALID(FPD_CCI_NOC_3_rvalid);
  mp_FPD_CCI_NOC_3_transactor->RREADY(FPD_CCI_NOC_3_rready);
  mp_FPD_CCI_NOC_3_transactor->AWQOS(FPD_CCI_NOC_3_awqos);
  mp_FPD_CCI_NOC_3_transactor->ARQOS(FPD_CCI_NOC_3_arqos);
  mp_FPD_CCI_NOC_3_transactor->CLK(fpd_cci_noc_axi3_clk);
  mp_FPD_CCI_NOC_3_transactor->RST(pl0_resetn);

  // initialize transactors stubs
  M_AXI_FPD_transactor_initiator_wr_socket_stub = nullptr;
  M_AXI_FPD_transactor_initiator_rd_socket_stub = nullptr;
  M_AXI_LPD_transactor_initiator_wr_socket_stub = nullptr;
  M_AXI_LPD_transactor_initiator_rd_socket_stub = nullptr;
  FPD_CCI_NOC_0_transactor_initiator_wr_socket_stub = nullptr;
  FPD_CCI_NOC_0_transactor_initiator_rd_socket_stub = nullptr;
  FPD_CCI_NOC_1_transactor_initiator_wr_socket_stub = nullptr;
  FPD_CCI_NOC_1_transactor_initiator_rd_socket_stub = nullptr;
  FPD_CCI_NOC_2_transactor_initiator_wr_socket_stub = nullptr;
  FPD_CCI_NOC_2_transactor_initiator_rd_socket_stub = nullptr;
  FPD_CCI_NOC_3_transactor_initiator_wr_socket_stub = nullptr;
  FPD_CCI_NOC_3_transactor_initiator_rd_socket_stub = nullptr;

}

void dpss_vck190_pt_versal_cips_0_0::before_end_of_elaboration()
{
  // configure 'M_AXI_FPD' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "M_AXI_FPD_TLM_MODE") != 1)
  {
    mp_impl->M_AXI_FPD_tlm_aximm_read_socket->bind(*(mp_M_AXI_FPD_transactor->rd_socket));
    mp_impl->M_AXI_FPD_tlm_aximm_write_socket->bind(*(mp_M_AXI_FPD_transactor->wr_socket));
  
  }
  else
  {
    M_AXI_FPD_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M_AXI_FPD_transactor_initiator_wr_socket_stub->bind(*(mp_M_AXI_FPD_transactor->wr_socket));
    M_AXI_FPD_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M_AXI_FPD_transactor_initiator_rd_socket_stub->bind(*(mp_M_AXI_FPD_transactor->rd_socket));
    mp_M_AXI_FPD_transactor->disable_transactor();
  }

  // configure 'M_AXI_LPD' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "M_AXI_LPD_TLM_MODE") != 1)
  {
    mp_impl->M_AXI_LPD_tlm_aximm_read_socket->bind(*(mp_M_AXI_LPD_transactor->rd_socket));
    mp_impl->M_AXI_LPD_tlm_aximm_write_socket->bind(*(mp_M_AXI_LPD_transactor->wr_socket));
  
  }
  else
  {
    M_AXI_LPD_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M_AXI_LPD_transactor_initiator_wr_socket_stub->bind(*(mp_M_AXI_LPD_transactor->wr_socket));
    M_AXI_LPD_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M_AXI_LPD_transactor_initiator_rd_socket_stub->bind(*(mp_M_AXI_LPD_transactor->rd_socket));
    mp_M_AXI_LPD_transactor->disable_transactor();
  }

  // configure 'FPD_CCI_NOC_0' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "FPD_CCI_NOC_0_TLM_MODE") != 1)
  {
    mp_impl->FPD_CCI_NOC_0_tlm_aximm_read_socket->bind(*(mp_FPD_CCI_NOC_0_transactor->rd_socket));
    mp_impl->FPD_CCI_NOC_0_tlm_aximm_write_socket->bind(*(mp_FPD_CCI_NOC_0_transactor->wr_socket));
  
  }
  else
  {
    FPD_CCI_NOC_0_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    FPD_CCI_NOC_0_transactor_initiator_wr_socket_stub->bind(*(mp_FPD_CCI_NOC_0_transactor->wr_socket));
    FPD_CCI_NOC_0_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    FPD_CCI_NOC_0_transactor_initiator_rd_socket_stub->bind(*(mp_FPD_CCI_NOC_0_transactor->rd_socket));
    mp_FPD_CCI_NOC_0_transactor->disable_transactor();
  }

  // configure 'FPD_CCI_NOC_1' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "FPD_CCI_NOC_1_TLM_MODE") != 1)
  {
    mp_impl->FPD_CCI_NOC_1_tlm_aximm_read_socket->bind(*(mp_FPD_CCI_NOC_1_transactor->rd_socket));
    mp_impl->FPD_CCI_NOC_1_tlm_aximm_write_socket->bind(*(mp_FPD_CCI_NOC_1_transactor->wr_socket));
  
  }
  else
  {
    FPD_CCI_NOC_1_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    FPD_CCI_NOC_1_transactor_initiator_wr_socket_stub->bind(*(mp_FPD_CCI_NOC_1_transactor->wr_socket));
    FPD_CCI_NOC_1_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    FPD_CCI_NOC_1_transactor_initiator_rd_socket_stub->bind(*(mp_FPD_CCI_NOC_1_transactor->rd_socket));
    mp_FPD_CCI_NOC_1_transactor->disable_transactor();
  }

  // configure 'FPD_CCI_NOC_2' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "FPD_CCI_NOC_2_TLM_MODE") != 1)
  {
    mp_impl->FPD_CCI_NOC_2_tlm_aximm_read_socket->bind(*(mp_FPD_CCI_NOC_2_transactor->rd_socket));
    mp_impl->FPD_CCI_NOC_2_tlm_aximm_write_socket->bind(*(mp_FPD_CCI_NOC_2_transactor->wr_socket));
  
  }
  else
  {
    FPD_CCI_NOC_2_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    FPD_CCI_NOC_2_transactor_initiator_wr_socket_stub->bind(*(mp_FPD_CCI_NOC_2_transactor->wr_socket));
    FPD_CCI_NOC_2_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    FPD_CCI_NOC_2_transactor_initiator_rd_socket_stub->bind(*(mp_FPD_CCI_NOC_2_transactor->rd_socket));
    mp_FPD_CCI_NOC_2_transactor->disable_transactor();
  }

  // configure 'FPD_CCI_NOC_3' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "FPD_CCI_NOC_3_TLM_MODE") != 1)
  {
    mp_impl->FPD_CCI_NOC_3_tlm_aximm_read_socket->bind(*(mp_FPD_CCI_NOC_3_transactor->rd_socket));
    mp_impl->FPD_CCI_NOC_3_tlm_aximm_write_socket->bind(*(mp_FPD_CCI_NOC_3_transactor->wr_socket));
  
  }
  else
  {
    FPD_CCI_NOC_3_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    FPD_CCI_NOC_3_transactor_initiator_wr_socket_stub->bind(*(mp_FPD_CCI_NOC_3_transactor->wr_socket));
    FPD_CCI_NOC_3_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    FPD_CCI_NOC_3_transactor_initiator_rd_socket_stub->bind(*(mp_FPD_CCI_NOC_3_transactor->rd_socket));
    mp_FPD_CCI_NOC_3_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
dpss_vck190_pt_versal_cips_0_0::dpss_vck190_pt_versal_cips_0_0(const sc_core::sc_module_name& nm) : dpss_vck190_pt_versal_cips_0_0_sc(nm),  pl0_ref_clk("pl0_ref_clk"), pl1_ref_clk("pl1_ref_clk"), pl0_resetn("pl0_resetn"), m_axi_fpd_aclk("m_axi_fpd_aclk"), m_axi_lpd_aclk("m_axi_lpd_aclk"), fpd_cci_noc_axi0_clk("fpd_cci_noc_axi0_clk"), fpd_cci_noc_axi1_clk("fpd_cci_noc_axi1_clk"), fpd_cci_noc_axi2_clk("fpd_cci_noc_axi2_clk"), fpd_cci_noc_axi3_clk("fpd_cci_noc_axi3_clk"), pl_ps_irq0("pl_ps_irq0"), pl_ps_irq1("pl_ps_irq1"), pl_ps_irq2("pl_ps_irq2"), pl_ps_irq3("pl_ps_irq3"), pl_ps_irq4("pl_ps_irq4"), pl_ps_irq5("pl_ps_irq5"), M_AXI_FPD_awid("M_AXI_FPD_awid"), M_AXI_FPD_awaddr("M_AXI_FPD_awaddr"), M_AXI_FPD_awlen("M_AXI_FPD_awlen"), M_AXI_FPD_awsize("M_AXI_FPD_awsize"), M_AXI_FPD_awburst("M_AXI_FPD_awburst"), M_AXI_FPD_awlock("M_AXI_FPD_awlock"), M_AXI_FPD_awcache("M_AXI_FPD_awcache"), M_AXI_FPD_awprot("M_AXI_FPD_awprot"), M_AXI_FPD_awvalid("M_AXI_FPD_awvalid"), M_AXI_FPD_awuser("M_AXI_FPD_awuser"), M_AXI_FPD_awready("M_AXI_FPD_awready"), M_AXI_FPD_wlast("M_AXI_FPD_wlast"), M_AXI_FPD_wvalid("M_AXI_FPD_wvalid"), M_AXI_FPD_wready("M_AXI_FPD_wready"), M_AXI_FPD_bid("M_AXI_FPD_bid"), M_AXI_FPD_bresp("M_AXI_FPD_bresp"), M_AXI_FPD_bvalid("M_AXI_FPD_bvalid"), M_AXI_FPD_bready("M_AXI_FPD_bready"), M_AXI_FPD_arid("M_AXI_FPD_arid"), M_AXI_FPD_araddr("M_AXI_FPD_araddr"), M_AXI_FPD_arlen("M_AXI_FPD_arlen"), M_AXI_FPD_arsize("M_AXI_FPD_arsize"), M_AXI_FPD_arburst("M_AXI_FPD_arburst"), M_AXI_FPD_arlock("M_AXI_FPD_arlock"), M_AXI_FPD_arcache("M_AXI_FPD_arcache"), M_AXI_FPD_arprot("M_AXI_FPD_arprot"), M_AXI_FPD_arvalid("M_AXI_FPD_arvalid"), M_AXI_FPD_aruser("M_AXI_FPD_aruser"), M_AXI_FPD_arready("M_AXI_FPD_arready"), M_AXI_FPD_rid("M_AXI_FPD_rid"), M_AXI_FPD_rresp("M_AXI_FPD_rresp"), M_AXI_FPD_rlast("M_AXI_FPD_rlast"), M_AXI_FPD_rvalid("M_AXI_FPD_rvalid"), M_AXI_FPD_rready("M_AXI_FPD_rready"), M_AXI_FPD_awqos("M_AXI_FPD_awqos"), M_AXI_FPD_arqos("M_AXI_FPD_arqos"), M_AXI_FPD_wdata("M_AXI_FPD_wdata"), M_AXI_FPD_wstrb("M_AXI_FPD_wstrb"), M_AXI_FPD_rdata("M_AXI_FPD_rdata"), M_AXI_LPD_awid("M_AXI_LPD_awid"), M_AXI_LPD_awaddr("M_AXI_LPD_awaddr"), M_AXI_LPD_awlen("M_AXI_LPD_awlen"), M_AXI_LPD_awsize("M_AXI_LPD_awsize"), M_AXI_LPD_awburst("M_AXI_LPD_awburst"), M_AXI_LPD_awlock("M_AXI_LPD_awlock"), M_AXI_LPD_awcache("M_AXI_LPD_awcache"), M_AXI_LPD_awprot("M_AXI_LPD_awprot"), M_AXI_LPD_awvalid("M_AXI_LPD_awvalid"), M_AXI_LPD_awuser("M_AXI_LPD_awuser"), M_AXI_LPD_awready("M_AXI_LPD_awready"), M_AXI_LPD_wlast("M_AXI_LPD_wlast"), M_AXI_LPD_wvalid("M_AXI_LPD_wvalid"), M_AXI_LPD_wready("M_AXI_LPD_wready"), M_AXI_LPD_bid("M_AXI_LPD_bid"), M_AXI_LPD_bresp("M_AXI_LPD_bresp"), M_AXI_LPD_bvalid("M_AXI_LPD_bvalid"), M_AXI_LPD_bready("M_AXI_LPD_bready"), M_AXI_LPD_arid("M_AXI_LPD_arid"), M_AXI_LPD_araddr("M_AXI_LPD_araddr"), M_AXI_LPD_arlen("M_AXI_LPD_arlen"), M_AXI_LPD_arsize("M_AXI_LPD_arsize"), M_AXI_LPD_arburst("M_AXI_LPD_arburst"), M_AXI_LPD_arlock("M_AXI_LPD_arlock"), M_AXI_LPD_arcache("M_AXI_LPD_arcache"), M_AXI_LPD_arprot("M_AXI_LPD_arprot"), M_AXI_LPD_arvalid("M_AXI_LPD_arvalid"), M_AXI_LPD_aruser("M_AXI_LPD_aruser"), M_AXI_LPD_arready("M_AXI_LPD_arready"), M_AXI_LPD_rid("M_AXI_LPD_rid"), M_AXI_LPD_rresp("M_AXI_LPD_rresp"), M_AXI_LPD_rlast("M_AXI_LPD_rlast"), M_AXI_LPD_rvalid("M_AXI_LPD_rvalid"), M_AXI_LPD_rready("M_AXI_LPD_rready"), M_AXI_LPD_awqos("M_AXI_LPD_awqos"), M_AXI_LPD_arqos("M_AXI_LPD_arqos"), M_AXI_LPD_wdata("M_AXI_LPD_wdata"), M_AXI_LPD_wstrb("M_AXI_LPD_wstrb"), M_AXI_LPD_rdata("M_AXI_LPD_rdata"), FPD_CCI_NOC_0_awid("FPD_CCI_NOC_0_awid"), FPD_CCI_NOC_0_awaddr("FPD_CCI_NOC_0_awaddr"), FPD_CCI_NOC_0_awlen("FPD_CCI_NOC_0_awlen"), FPD_CCI_NOC_0_awsize("FPD_CCI_NOC_0_awsize"), FPD_CCI_NOC_0_awburst("FPD_CCI_NOC_0_awburst"), FPD_CCI_NOC_0_awlock("FPD_CCI_NOC_0_awlock"), FPD_CCI_NOC_0_awcache("FPD_CCI_NOC_0_awcache"), FPD_CCI_NOC_0_awprot("FPD_CCI_NOC_0_awprot"), FPD_CCI_NOC_0_awvalid("FPD_CCI_NOC_0_awvalid"), FPD_CCI_NOC_0_awuser("FPD_CCI_NOC_0_awuser"), FPD_CCI_NOC_0_awready("FPD_CCI_NOC_0_awready"), FPD_CCI_NOC_0_wdata("FPD_CCI_NOC_0_wdata"), FPD_CCI_NOC_0_wstrb("FPD_CCI_NOC_0_wstrb"), FPD_CCI_NOC_0_wuser("FPD_CCI_NOC_0_wuser"), FPD_CCI_NOC_0_wlast("FPD_CCI_NOC_0_wlast"), FPD_CCI_NOC_0_wvalid("FPD_CCI_NOC_0_wvalid"), FPD_CCI_NOC_0_wready("FPD_CCI_NOC_0_wready"), FPD_CCI_NOC_0_bid("FPD_CCI_NOC_0_bid"), FPD_CCI_NOC_0_bresp("FPD_CCI_NOC_0_bresp"), FPD_CCI_NOC_0_bvalid("FPD_CCI_NOC_0_bvalid"), FPD_CCI_NOC_0_bready("FPD_CCI_NOC_0_bready"), FPD_CCI_NOC_0_arid("FPD_CCI_NOC_0_arid"), FPD_CCI_NOC_0_araddr("FPD_CCI_NOC_0_araddr"), FPD_CCI_NOC_0_arlen("FPD_CCI_NOC_0_arlen"), FPD_CCI_NOC_0_arsize("FPD_CCI_NOC_0_arsize"), FPD_CCI_NOC_0_arburst("FPD_CCI_NOC_0_arburst"), FPD_CCI_NOC_0_arlock("FPD_CCI_NOC_0_arlock"), FPD_CCI_NOC_0_arcache("FPD_CCI_NOC_0_arcache"), FPD_CCI_NOC_0_arprot("FPD_CCI_NOC_0_arprot"), FPD_CCI_NOC_0_arvalid("FPD_CCI_NOC_0_arvalid"), FPD_CCI_NOC_0_aruser("FPD_CCI_NOC_0_aruser"), FPD_CCI_NOC_0_arready("FPD_CCI_NOC_0_arready"), FPD_CCI_NOC_0_rid("FPD_CCI_NOC_0_rid"), FPD_CCI_NOC_0_rdata("FPD_CCI_NOC_0_rdata"), FPD_CCI_NOC_0_rresp("FPD_CCI_NOC_0_rresp"), FPD_CCI_NOC_0_rlast("FPD_CCI_NOC_0_rlast"), FPD_CCI_NOC_0_rvalid("FPD_CCI_NOC_0_rvalid"), FPD_CCI_NOC_0_rready("FPD_CCI_NOC_0_rready"), FPD_CCI_NOC_0_awqos("FPD_CCI_NOC_0_awqos"), FPD_CCI_NOC_0_arqos("FPD_CCI_NOC_0_arqos"), FPD_CCI_NOC_1_awid("FPD_CCI_NOC_1_awid"), FPD_CCI_NOC_1_awaddr("FPD_CCI_NOC_1_awaddr"), FPD_CCI_NOC_1_awlen("FPD_CCI_NOC_1_awlen"), FPD_CCI_NOC_1_awsize("FPD_CCI_NOC_1_awsize"), FPD_CCI_NOC_1_awburst("FPD_CCI_NOC_1_awburst"), FPD_CCI_NOC_1_awlock("FPD_CCI_NOC_1_awlock"), FPD_CCI_NOC_1_awcache("FPD_CCI_NOC_1_awcache"), FPD_CCI_NOC_1_awprot("FPD_CCI_NOC_1_awprot"), FPD_CCI_NOC_1_awvalid("FPD_CCI_NOC_1_awvalid"), FPD_CCI_NOC_1_awuser("FPD_CCI_NOC_1_awuser"), FPD_CCI_NOC_1_awready("FPD_CCI_NOC_1_awready"), FPD_CCI_NOC_1_wdata("FPD_CCI_NOC_1_wdata"), FPD_CCI_NOC_1_wstrb("FPD_CCI_NOC_1_wstrb"), FPD_CCI_NOC_1_wuser("FPD_CCI_NOC_1_wuser"), FPD_CCI_NOC_1_wlast("FPD_CCI_NOC_1_wlast"), FPD_CCI_NOC_1_wvalid("FPD_CCI_NOC_1_wvalid"), FPD_CCI_NOC_1_wready("FPD_CCI_NOC_1_wready"), FPD_CCI_NOC_1_bid("FPD_CCI_NOC_1_bid"), FPD_CCI_NOC_1_bresp("FPD_CCI_NOC_1_bresp"), FPD_CCI_NOC_1_bvalid("FPD_CCI_NOC_1_bvalid"), FPD_CCI_NOC_1_bready("FPD_CCI_NOC_1_bready"), FPD_CCI_NOC_1_arid("FPD_CCI_NOC_1_arid"), FPD_CCI_NOC_1_araddr("FPD_CCI_NOC_1_araddr"), FPD_CCI_NOC_1_arlen("FPD_CCI_NOC_1_arlen"), FPD_CCI_NOC_1_arsize("FPD_CCI_NOC_1_arsize"), FPD_CCI_NOC_1_arburst("FPD_CCI_NOC_1_arburst"), FPD_CCI_NOC_1_arlock("FPD_CCI_NOC_1_arlock"), FPD_CCI_NOC_1_arcache("FPD_CCI_NOC_1_arcache"), FPD_CCI_NOC_1_arprot("FPD_CCI_NOC_1_arprot"), FPD_CCI_NOC_1_arvalid("FPD_CCI_NOC_1_arvalid"), FPD_CCI_NOC_1_aruser("FPD_CCI_NOC_1_aruser"), FPD_CCI_NOC_1_arready("FPD_CCI_NOC_1_arready"), FPD_CCI_NOC_1_rid("FPD_CCI_NOC_1_rid"), FPD_CCI_NOC_1_rdata("FPD_CCI_NOC_1_rdata"), FPD_CCI_NOC_1_rresp("FPD_CCI_NOC_1_rresp"), FPD_CCI_NOC_1_rlast("FPD_CCI_NOC_1_rlast"), FPD_CCI_NOC_1_rvalid("FPD_CCI_NOC_1_rvalid"), FPD_CCI_NOC_1_rready("FPD_CCI_NOC_1_rready"), FPD_CCI_NOC_1_awqos("FPD_CCI_NOC_1_awqos"), FPD_CCI_NOC_1_arqos("FPD_CCI_NOC_1_arqos"), FPD_CCI_NOC_2_awid("FPD_CCI_NOC_2_awid"), FPD_CCI_NOC_2_awaddr("FPD_CCI_NOC_2_awaddr"), FPD_CCI_NOC_2_awlen("FPD_CCI_NOC_2_awlen"), FPD_CCI_NOC_2_awsize("FPD_CCI_NOC_2_awsize"), FPD_CCI_NOC_2_awburst("FPD_CCI_NOC_2_awburst"), FPD_CCI_NOC_2_awlock("FPD_CCI_NOC_2_awlock"), FPD_CCI_NOC_2_awcache("FPD_CCI_NOC_2_awcache"), FPD_CCI_NOC_2_awprot("FPD_CCI_NOC_2_awprot"), FPD_CCI_NOC_2_awvalid("FPD_CCI_NOC_2_awvalid"), FPD_CCI_NOC_2_awuser("FPD_CCI_NOC_2_awuser"), FPD_CCI_NOC_2_awready("FPD_CCI_NOC_2_awready"), FPD_CCI_NOC_2_wdata("FPD_CCI_NOC_2_wdata"), FPD_CCI_NOC_2_wstrb("FPD_CCI_NOC_2_wstrb"), FPD_CCI_NOC_2_wuser("FPD_CCI_NOC_2_wuser"), FPD_CCI_NOC_2_wlast("FPD_CCI_NOC_2_wlast"), FPD_CCI_NOC_2_wvalid("FPD_CCI_NOC_2_wvalid"), FPD_CCI_NOC_2_wready("FPD_CCI_NOC_2_wready"), FPD_CCI_NOC_2_bid("FPD_CCI_NOC_2_bid"), FPD_CCI_NOC_2_bresp("FPD_CCI_NOC_2_bresp"), FPD_CCI_NOC_2_bvalid("FPD_CCI_NOC_2_bvalid"), FPD_CCI_NOC_2_bready("FPD_CCI_NOC_2_bready"), FPD_CCI_NOC_2_arid("FPD_CCI_NOC_2_arid"), FPD_CCI_NOC_2_araddr("FPD_CCI_NOC_2_araddr"), FPD_CCI_NOC_2_arlen("FPD_CCI_NOC_2_arlen"), FPD_CCI_NOC_2_arsize("FPD_CCI_NOC_2_arsize"), FPD_CCI_NOC_2_arburst("FPD_CCI_NOC_2_arburst"), FPD_CCI_NOC_2_arlock("FPD_CCI_NOC_2_arlock"), FPD_CCI_NOC_2_arcache("FPD_CCI_NOC_2_arcache"), FPD_CCI_NOC_2_arprot("FPD_CCI_NOC_2_arprot"), FPD_CCI_NOC_2_arvalid("FPD_CCI_NOC_2_arvalid"), FPD_CCI_NOC_2_aruser("FPD_CCI_NOC_2_aruser"), FPD_CCI_NOC_2_arready("FPD_CCI_NOC_2_arready"), FPD_CCI_NOC_2_rid("FPD_CCI_NOC_2_rid"), FPD_CCI_NOC_2_rdata("FPD_CCI_NOC_2_rdata"), FPD_CCI_NOC_2_rresp("FPD_CCI_NOC_2_rresp"), FPD_CCI_NOC_2_rlast("FPD_CCI_NOC_2_rlast"), FPD_CCI_NOC_2_rvalid("FPD_CCI_NOC_2_rvalid"), FPD_CCI_NOC_2_rready("FPD_CCI_NOC_2_rready"), FPD_CCI_NOC_2_awqos("FPD_CCI_NOC_2_awqos"), FPD_CCI_NOC_2_arqos("FPD_CCI_NOC_2_arqos"), FPD_CCI_NOC_3_awid("FPD_CCI_NOC_3_awid"), FPD_CCI_NOC_3_awaddr("FPD_CCI_NOC_3_awaddr"), FPD_CCI_NOC_3_awlen("FPD_CCI_NOC_3_awlen"), FPD_CCI_NOC_3_awsize("FPD_CCI_NOC_3_awsize"), FPD_CCI_NOC_3_awburst("FPD_CCI_NOC_3_awburst"), FPD_CCI_NOC_3_awlock("FPD_CCI_NOC_3_awlock"), FPD_CCI_NOC_3_awcache("FPD_CCI_NOC_3_awcache"), FPD_CCI_NOC_3_awprot("FPD_CCI_NOC_3_awprot"), FPD_CCI_NOC_3_awvalid("FPD_CCI_NOC_3_awvalid"), FPD_CCI_NOC_3_awuser("FPD_CCI_NOC_3_awuser"), FPD_CCI_NOC_3_awready("FPD_CCI_NOC_3_awready"), FPD_CCI_NOC_3_wdata("FPD_CCI_NOC_3_wdata"), FPD_CCI_NOC_3_wstrb("FPD_CCI_NOC_3_wstrb"), FPD_CCI_NOC_3_wuser("FPD_CCI_NOC_3_wuser"), FPD_CCI_NOC_3_wlast("FPD_CCI_NOC_3_wlast"), FPD_CCI_NOC_3_wvalid("FPD_CCI_NOC_3_wvalid"), FPD_CCI_NOC_3_wready("FPD_CCI_NOC_3_wready"), FPD_CCI_NOC_3_bid("FPD_CCI_NOC_3_bid"), FPD_CCI_NOC_3_bresp("FPD_CCI_NOC_3_bresp"), FPD_CCI_NOC_3_bvalid("FPD_CCI_NOC_3_bvalid"), FPD_CCI_NOC_3_bready("FPD_CCI_NOC_3_bready"), FPD_CCI_NOC_3_arid("FPD_CCI_NOC_3_arid"), FPD_CCI_NOC_3_araddr("FPD_CCI_NOC_3_araddr"), FPD_CCI_NOC_3_arlen("FPD_CCI_NOC_3_arlen"), FPD_CCI_NOC_3_arsize("FPD_CCI_NOC_3_arsize"), FPD_CCI_NOC_3_arburst("FPD_CCI_NOC_3_arburst"), FPD_CCI_NOC_3_arlock("FPD_CCI_NOC_3_arlock"), FPD_CCI_NOC_3_arcache("FPD_CCI_NOC_3_arcache"), FPD_CCI_NOC_3_arprot("FPD_CCI_NOC_3_arprot"), FPD_CCI_NOC_3_arvalid("FPD_CCI_NOC_3_arvalid"), FPD_CCI_NOC_3_aruser("FPD_CCI_NOC_3_aruser"), FPD_CCI_NOC_3_arready("FPD_CCI_NOC_3_arready"), FPD_CCI_NOC_3_rid("FPD_CCI_NOC_3_rid"), FPD_CCI_NOC_3_rdata("FPD_CCI_NOC_3_rdata"), FPD_CCI_NOC_3_rresp("FPD_CCI_NOC_3_rresp"), FPD_CCI_NOC_3_rlast("FPD_CCI_NOC_3_rlast"), FPD_CCI_NOC_3_rvalid("FPD_CCI_NOC_3_rvalid"), FPD_CCI_NOC_3_rready("FPD_CCI_NOC_3_rready"), FPD_CCI_NOC_3_awqos("FPD_CCI_NOC_3_awqos"), FPD_CCI_NOC_3_arqos("FPD_CCI_NOC_3_arqos")
{
  // initialize pins
  mp_impl->pl0_ref_clk(pl0_ref_clk);
  mp_impl->pl1_ref_clk(pl1_ref_clk);
  mp_impl->pl0_resetn(pl0_resetn);
  mp_impl->m_axi_fpd_aclk(m_axi_fpd_aclk);
  mp_impl->m_axi_lpd_aclk(m_axi_lpd_aclk);
  mp_impl->fpd_cci_noc_axi0_clk(fpd_cci_noc_axi0_clk);
  mp_impl->fpd_cci_noc_axi1_clk(fpd_cci_noc_axi1_clk);
  mp_impl->fpd_cci_noc_axi2_clk(fpd_cci_noc_axi2_clk);
  mp_impl->fpd_cci_noc_axi3_clk(fpd_cci_noc_axi3_clk);
  mp_impl->pl_ps_irq0(pl_ps_irq0);
  mp_impl->pl_ps_irq1(pl_ps_irq1);
  mp_impl->pl_ps_irq2(pl_ps_irq2);
  mp_impl->pl_ps_irq3(pl_ps_irq3);
  mp_impl->pl_ps_irq4(pl_ps_irq4);
  mp_impl->pl_ps_irq5(pl_ps_irq5);

  // initialize transactors
  mp_M_AXI_FPD_transactor = NULL;
  mp_M_AXI_LPD_transactor = NULL;
  mp_FPD_CCI_NOC_0_transactor = NULL;
  mp_FPD_CCI_NOC_1_transactor = NULL;
  mp_FPD_CCI_NOC_2_transactor = NULL;
  mp_FPD_CCI_NOC_3_transactor = NULL;

  // Instantiate Socket Stubs

  // configure M_AXI_FPD_transactor
    xsc::common_cpp::properties M_AXI_FPD_transactor_param_props;
    M_AXI_FPD_transactor_param_props.addLong("DATA_WIDTH", "128");
    M_AXI_FPD_transactor_param_props.addLong("FREQ_HZ", "99999001");
    M_AXI_FPD_transactor_param_props.addLong("ID_WIDTH", "16");
    M_AXI_FPD_transactor_param_props.addLong("ADDR_WIDTH", "44");
    M_AXI_FPD_transactor_param_props.addLong("AWUSER_WIDTH", "16");
    M_AXI_FPD_transactor_param_props.addLong("ARUSER_WIDTH", "16");
    M_AXI_FPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_FPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_FPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_FPD_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_FPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_FPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXI_FPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXI_FPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M_AXI_FPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_FPD_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXI_FPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXI_FPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_FPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_FPD_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_FPD_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXI_FPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_FPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_FPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_FPD_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_pl0_ref_clk");
    M_AXI_FPD_transactor_param_props.addString("CATEGORY", "pl");
    M_AXI_FPD_transactor_param_props.addString("MY_CATEGORY", "ps");

    mp_M_AXI_FPD_transactor = new xtlm::xaximm_xtlm2pin_t<128,44,16,16,1,1,16,1>("M_AXI_FPD_transactor", M_AXI_FPD_transactor_param_props);
  mp_M_AXI_FPD_transactor->AWID(M_AXI_FPD_awid);
  mp_M_AXI_FPD_transactor->AWADDR(M_AXI_FPD_awaddr);
  mp_M_AXI_FPD_transactor->AWLEN(M_AXI_FPD_awlen);
  mp_M_AXI_FPD_transactor->AWSIZE(M_AXI_FPD_awsize);
  mp_M_AXI_FPD_transactor->AWBURST(M_AXI_FPD_awburst);
  mp_M_AXI_FPD_transactor->AWLOCK(M_AXI_FPD_awlock);
  mp_M_AXI_FPD_transactor->AWCACHE(M_AXI_FPD_awcache);
  mp_M_AXI_FPD_transactor->AWPROT(M_AXI_FPD_awprot);
  mp_M_AXI_FPD_transactor->AWVALID(M_AXI_FPD_awvalid);
  mp_M_AXI_FPD_transactor->AWUSER(M_AXI_FPD_awuser);
  mp_M_AXI_FPD_transactor->AWREADY(M_AXI_FPD_awready);
  mp_M_AXI_FPD_transactor->WLAST(M_AXI_FPD_wlast);
  mp_M_AXI_FPD_transactor->WVALID(M_AXI_FPD_wvalid);
  mp_M_AXI_FPD_transactor->WREADY(M_AXI_FPD_wready);
  mp_M_AXI_FPD_transactor->BID(M_AXI_FPD_bid);
  mp_M_AXI_FPD_transactor->BRESP(M_AXI_FPD_bresp);
  mp_M_AXI_FPD_transactor->BVALID(M_AXI_FPD_bvalid);
  mp_M_AXI_FPD_transactor->BREADY(M_AXI_FPD_bready);
  mp_M_AXI_FPD_transactor->ARID(M_AXI_FPD_arid);
  mp_M_AXI_FPD_transactor->ARADDR(M_AXI_FPD_araddr);
  mp_M_AXI_FPD_transactor->ARLEN(M_AXI_FPD_arlen);
  mp_M_AXI_FPD_transactor->ARSIZE(M_AXI_FPD_arsize);
  mp_M_AXI_FPD_transactor->ARBURST(M_AXI_FPD_arburst);
  mp_M_AXI_FPD_transactor->ARLOCK(M_AXI_FPD_arlock);
  mp_M_AXI_FPD_transactor->ARCACHE(M_AXI_FPD_arcache);
  mp_M_AXI_FPD_transactor->ARPROT(M_AXI_FPD_arprot);
  mp_M_AXI_FPD_transactor->ARVALID(M_AXI_FPD_arvalid);
  mp_M_AXI_FPD_transactor->ARUSER(M_AXI_FPD_aruser);
  mp_M_AXI_FPD_transactor->ARREADY(M_AXI_FPD_arready);
  mp_M_AXI_FPD_transactor->RID(M_AXI_FPD_rid);
  mp_M_AXI_FPD_transactor->RRESP(M_AXI_FPD_rresp);
  mp_M_AXI_FPD_transactor->RLAST(M_AXI_FPD_rlast);
  mp_M_AXI_FPD_transactor->RVALID(M_AXI_FPD_rvalid);
  mp_M_AXI_FPD_transactor->RREADY(M_AXI_FPD_rready);
  mp_M_AXI_FPD_transactor->AWQOS(M_AXI_FPD_awqos);
  mp_M_AXI_FPD_transactor->ARQOS(M_AXI_FPD_arqos);
  mp_M_AXI_FPD_transactor->WDATA(M_AXI_FPD_wdata);
  mp_M_AXI_FPD_transactor->WSTRB(M_AXI_FPD_wstrb);
  mp_M_AXI_FPD_transactor->RDATA(M_AXI_FPD_rdata);
  mp_M_AXI_FPD_transactor->CLK(m_axi_fpd_aclk);
  mp_M_AXI_FPD_transactor->RST(pl0_resetn);
  // configure M_AXI_LPD_transactor
    xsc::common_cpp::properties M_AXI_LPD_transactor_param_props;
    M_AXI_LPD_transactor_param_props.addLong("DATA_WIDTH", "128");
    M_AXI_LPD_transactor_param_props.addLong("FREQ_HZ", "99999001");
    M_AXI_LPD_transactor_param_props.addLong("ID_WIDTH", "16");
    M_AXI_LPD_transactor_param_props.addLong("ADDR_WIDTH", "44");
    M_AXI_LPD_transactor_param_props.addLong("AWUSER_WIDTH", "16");
    M_AXI_LPD_transactor_param_props.addLong("ARUSER_WIDTH", "16");
    M_AXI_LPD_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXI_LPD_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXI_LPD_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXI_LPD_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXI_LPD_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXI_LPD_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXI_LPD_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXI_LPD_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M_AXI_LPD_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXI_LPD_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXI_LPD_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXI_LPD_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXI_LPD_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXI_LPD_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXI_LPD_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXI_LPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_LPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_LPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_LPD_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_pl0_ref_clk");
    M_AXI_LPD_transactor_param_props.addString("CATEGORY", "pl");
    M_AXI_LPD_transactor_param_props.addString("MY_CATEGORY", "ps");

    mp_M_AXI_LPD_transactor = new xtlm::xaximm_xtlm2pin_t<128,44,16,16,1,1,16,1>("M_AXI_LPD_transactor", M_AXI_LPD_transactor_param_props);
  mp_M_AXI_LPD_transactor->AWID(M_AXI_LPD_awid);
  mp_M_AXI_LPD_transactor->AWADDR(M_AXI_LPD_awaddr);
  mp_M_AXI_LPD_transactor->AWLEN(M_AXI_LPD_awlen);
  mp_M_AXI_LPD_transactor->AWSIZE(M_AXI_LPD_awsize);
  mp_M_AXI_LPD_transactor->AWBURST(M_AXI_LPD_awburst);
  mp_M_AXI_LPD_transactor->AWLOCK(M_AXI_LPD_awlock);
  mp_M_AXI_LPD_transactor->AWCACHE(M_AXI_LPD_awcache);
  mp_M_AXI_LPD_transactor->AWPROT(M_AXI_LPD_awprot);
  mp_M_AXI_LPD_transactor->AWVALID(M_AXI_LPD_awvalid);
  mp_M_AXI_LPD_transactor->AWUSER(M_AXI_LPD_awuser);
  mp_M_AXI_LPD_transactor->AWREADY(M_AXI_LPD_awready);
  mp_M_AXI_LPD_transactor->WLAST(M_AXI_LPD_wlast);
  mp_M_AXI_LPD_transactor->WVALID(M_AXI_LPD_wvalid);
  mp_M_AXI_LPD_transactor->WREADY(M_AXI_LPD_wready);
  mp_M_AXI_LPD_transactor->BID(M_AXI_LPD_bid);
  mp_M_AXI_LPD_transactor->BRESP(M_AXI_LPD_bresp);
  mp_M_AXI_LPD_transactor->BVALID(M_AXI_LPD_bvalid);
  mp_M_AXI_LPD_transactor->BREADY(M_AXI_LPD_bready);
  mp_M_AXI_LPD_transactor->ARID(M_AXI_LPD_arid);
  mp_M_AXI_LPD_transactor->ARADDR(M_AXI_LPD_araddr);
  mp_M_AXI_LPD_transactor->ARLEN(M_AXI_LPD_arlen);
  mp_M_AXI_LPD_transactor->ARSIZE(M_AXI_LPD_arsize);
  mp_M_AXI_LPD_transactor->ARBURST(M_AXI_LPD_arburst);
  mp_M_AXI_LPD_transactor->ARLOCK(M_AXI_LPD_arlock);
  mp_M_AXI_LPD_transactor->ARCACHE(M_AXI_LPD_arcache);
  mp_M_AXI_LPD_transactor->ARPROT(M_AXI_LPD_arprot);
  mp_M_AXI_LPD_transactor->ARVALID(M_AXI_LPD_arvalid);
  mp_M_AXI_LPD_transactor->ARUSER(M_AXI_LPD_aruser);
  mp_M_AXI_LPD_transactor->ARREADY(M_AXI_LPD_arready);
  mp_M_AXI_LPD_transactor->RID(M_AXI_LPD_rid);
  mp_M_AXI_LPD_transactor->RRESP(M_AXI_LPD_rresp);
  mp_M_AXI_LPD_transactor->RLAST(M_AXI_LPD_rlast);
  mp_M_AXI_LPD_transactor->RVALID(M_AXI_LPD_rvalid);
  mp_M_AXI_LPD_transactor->RREADY(M_AXI_LPD_rready);
  mp_M_AXI_LPD_transactor->AWQOS(M_AXI_LPD_awqos);
  mp_M_AXI_LPD_transactor->ARQOS(M_AXI_LPD_arqos);
  mp_M_AXI_LPD_transactor->WDATA(M_AXI_LPD_wdata);
  mp_M_AXI_LPD_transactor->WSTRB(M_AXI_LPD_wstrb);
  mp_M_AXI_LPD_transactor->RDATA(M_AXI_LPD_rdata);
  mp_M_AXI_LPD_transactor->CLK(m_axi_lpd_aclk);
  mp_M_AXI_LPD_transactor->RST(pl0_resetn);
  // configure FPD_CCI_NOC_0_transactor
    xsc::common_cpp::properties FPD_CCI_NOC_0_transactor_param_props;
    FPD_CCI_NOC_0_transactor_param_props.addLong("DATA_WIDTH", "128");
    FPD_CCI_NOC_0_transactor_param_props.addLong("FREQ_HZ", "824991760");
    FPD_CCI_NOC_0_transactor_param_props.addLong("ID_WIDTH", "16");
    FPD_CCI_NOC_0_transactor_param_props.addLong("ADDR_WIDTH", "64");
    FPD_CCI_NOC_0_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    FPD_CCI_NOC_0_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    FPD_CCI_NOC_0_transactor_param_props.addLong("WUSER_WIDTH", "17");
    FPD_CCI_NOC_0_transactor_param_props.addLong("RUSER_WIDTH", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("BUSER_WIDTH", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_BURST", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_LOCK", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_PROT", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_CACHE", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_QOS", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_REGION", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_WSTRB", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_BRESP", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_RRESP", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    FPD_CCI_NOC_0_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    FPD_CCI_NOC_0_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    FPD_CCI_NOC_0_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_SIZE", "1");
    FPD_CCI_NOC_0_transactor_param_props.addLong("HAS_RESET", "1");
    FPD_CCI_NOC_0_transactor_param_props.addFloat("PHASE", "0.0");
    FPD_CCI_NOC_0_transactor_param_props.addString("PROTOCOL", "AXI4");
    FPD_CCI_NOC_0_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    FPD_CCI_NOC_0_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_fpd_cci_noc_axi0_clk");
    FPD_CCI_NOC_0_transactor_param_props.addString("CATEGORY", "noc");
    FPD_CCI_NOC_0_transactor_param_props.addString("MY_CATEGORY", "ps_cci");
    FPD_CCI_NOC_0_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_CCI_TO_NOC_NMU");
    FPD_CCI_NOC_0_transactor_param_props.addString("INDEX", "0");

    mp_FPD_CCI_NOC_0_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>("FPD_CCI_NOC_0_transactor", FPD_CCI_NOC_0_transactor_param_props);
  mp_FPD_CCI_NOC_0_transactor->AWID(FPD_CCI_NOC_0_awid);
  mp_FPD_CCI_NOC_0_transactor->AWADDR(FPD_CCI_NOC_0_awaddr);
  mp_FPD_CCI_NOC_0_transactor->AWLEN(FPD_CCI_NOC_0_awlen);
  mp_FPD_CCI_NOC_0_transactor->AWSIZE(FPD_CCI_NOC_0_awsize);
  mp_FPD_CCI_NOC_0_transactor->AWBURST(FPD_CCI_NOC_0_awburst);
  mp_FPD_CCI_NOC_0_transactor->AWLOCK(FPD_CCI_NOC_0_awlock);
  mp_FPD_CCI_NOC_0_transactor->AWCACHE(FPD_CCI_NOC_0_awcache);
  mp_FPD_CCI_NOC_0_transactor->AWPROT(FPD_CCI_NOC_0_awprot);
  mp_FPD_CCI_NOC_0_transactor->AWVALID(FPD_CCI_NOC_0_awvalid);
  mp_FPD_CCI_NOC_0_transactor->AWUSER(FPD_CCI_NOC_0_awuser);
  mp_FPD_CCI_NOC_0_transactor->AWREADY(FPD_CCI_NOC_0_awready);
  mp_FPD_CCI_NOC_0_transactor->WDATA(FPD_CCI_NOC_0_wdata);
  mp_FPD_CCI_NOC_0_transactor->WSTRB(FPD_CCI_NOC_0_wstrb);
  mp_FPD_CCI_NOC_0_transactor->WUSER(FPD_CCI_NOC_0_wuser);
  mp_FPD_CCI_NOC_0_transactor->WLAST(FPD_CCI_NOC_0_wlast);
  mp_FPD_CCI_NOC_0_transactor->WVALID(FPD_CCI_NOC_0_wvalid);
  mp_FPD_CCI_NOC_0_transactor->WREADY(FPD_CCI_NOC_0_wready);
  mp_FPD_CCI_NOC_0_transactor->BID(FPD_CCI_NOC_0_bid);
  mp_FPD_CCI_NOC_0_transactor->BRESP(FPD_CCI_NOC_0_bresp);
  mp_FPD_CCI_NOC_0_transactor->BVALID(FPD_CCI_NOC_0_bvalid);
  mp_FPD_CCI_NOC_0_transactor->BREADY(FPD_CCI_NOC_0_bready);
  mp_FPD_CCI_NOC_0_transactor->ARID(FPD_CCI_NOC_0_arid);
  mp_FPD_CCI_NOC_0_transactor->ARADDR(FPD_CCI_NOC_0_araddr);
  mp_FPD_CCI_NOC_0_transactor->ARLEN(FPD_CCI_NOC_0_arlen);
  mp_FPD_CCI_NOC_0_transactor->ARSIZE(FPD_CCI_NOC_0_arsize);
  mp_FPD_CCI_NOC_0_transactor->ARBURST(FPD_CCI_NOC_0_arburst);
  mp_FPD_CCI_NOC_0_transactor->ARLOCK(FPD_CCI_NOC_0_arlock);
  mp_FPD_CCI_NOC_0_transactor->ARCACHE(FPD_CCI_NOC_0_arcache);
  mp_FPD_CCI_NOC_0_transactor->ARPROT(FPD_CCI_NOC_0_arprot);
  mp_FPD_CCI_NOC_0_transactor->ARVALID(FPD_CCI_NOC_0_arvalid);
  mp_FPD_CCI_NOC_0_transactor->ARUSER(FPD_CCI_NOC_0_aruser);
  mp_FPD_CCI_NOC_0_transactor->ARREADY(FPD_CCI_NOC_0_arready);
  mp_FPD_CCI_NOC_0_transactor->RID(FPD_CCI_NOC_0_rid);
  mp_FPD_CCI_NOC_0_transactor->RDATA(FPD_CCI_NOC_0_rdata);
  mp_FPD_CCI_NOC_0_transactor->RRESP(FPD_CCI_NOC_0_rresp);
  mp_FPD_CCI_NOC_0_transactor->RLAST(FPD_CCI_NOC_0_rlast);
  mp_FPD_CCI_NOC_0_transactor->RVALID(FPD_CCI_NOC_0_rvalid);
  mp_FPD_CCI_NOC_0_transactor->RREADY(FPD_CCI_NOC_0_rready);
  mp_FPD_CCI_NOC_0_transactor->AWQOS(FPD_CCI_NOC_0_awqos);
  mp_FPD_CCI_NOC_0_transactor->ARQOS(FPD_CCI_NOC_0_arqos);
  mp_FPD_CCI_NOC_0_transactor->CLK(fpd_cci_noc_axi0_clk);
  mp_FPD_CCI_NOC_0_transactor->RST(pl0_resetn);
  // configure FPD_CCI_NOC_1_transactor
    xsc::common_cpp::properties FPD_CCI_NOC_1_transactor_param_props;
    FPD_CCI_NOC_1_transactor_param_props.addLong("DATA_WIDTH", "128");
    FPD_CCI_NOC_1_transactor_param_props.addLong("FREQ_HZ", "824991760");
    FPD_CCI_NOC_1_transactor_param_props.addLong("ID_WIDTH", "16");
    FPD_CCI_NOC_1_transactor_param_props.addLong("ADDR_WIDTH", "64");
    FPD_CCI_NOC_1_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    FPD_CCI_NOC_1_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    FPD_CCI_NOC_1_transactor_param_props.addLong("WUSER_WIDTH", "17");
    FPD_CCI_NOC_1_transactor_param_props.addLong("RUSER_WIDTH", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("BUSER_WIDTH", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_BURST", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_LOCK", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_PROT", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_CACHE", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_QOS", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_REGION", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_WSTRB", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_BRESP", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_RRESP", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    FPD_CCI_NOC_1_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    FPD_CCI_NOC_1_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    FPD_CCI_NOC_1_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_SIZE", "1");
    FPD_CCI_NOC_1_transactor_param_props.addLong("HAS_RESET", "1");
    FPD_CCI_NOC_1_transactor_param_props.addFloat("PHASE", "0.0");
    FPD_CCI_NOC_1_transactor_param_props.addString("PROTOCOL", "AXI4");
    FPD_CCI_NOC_1_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    FPD_CCI_NOC_1_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_fpd_cci_noc_axi1_clk");
    FPD_CCI_NOC_1_transactor_param_props.addString("CATEGORY", "noc");
    FPD_CCI_NOC_1_transactor_param_props.addString("MY_CATEGORY", "ps_cci");
    FPD_CCI_NOC_1_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_CCI_TO_NOC_NMU");
    FPD_CCI_NOC_1_transactor_param_props.addString("INDEX", "1");

    mp_FPD_CCI_NOC_1_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>("FPD_CCI_NOC_1_transactor", FPD_CCI_NOC_1_transactor_param_props);
  mp_FPD_CCI_NOC_1_transactor->AWID(FPD_CCI_NOC_1_awid);
  mp_FPD_CCI_NOC_1_transactor->AWADDR(FPD_CCI_NOC_1_awaddr);
  mp_FPD_CCI_NOC_1_transactor->AWLEN(FPD_CCI_NOC_1_awlen);
  mp_FPD_CCI_NOC_1_transactor->AWSIZE(FPD_CCI_NOC_1_awsize);
  mp_FPD_CCI_NOC_1_transactor->AWBURST(FPD_CCI_NOC_1_awburst);
  mp_FPD_CCI_NOC_1_transactor->AWLOCK(FPD_CCI_NOC_1_awlock);
  mp_FPD_CCI_NOC_1_transactor->AWCACHE(FPD_CCI_NOC_1_awcache);
  mp_FPD_CCI_NOC_1_transactor->AWPROT(FPD_CCI_NOC_1_awprot);
  mp_FPD_CCI_NOC_1_transactor->AWVALID(FPD_CCI_NOC_1_awvalid);
  mp_FPD_CCI_NOC_1_transactor->AWUSER(FPD_CCI_NOC_1_awuser);
  mp_FPD_CCI_NOC_1_transactor->AWREADY(FPD_CCI_NOC_1_awready);
  mp_FPD_CCI_NOC_1_transactor->WDATA(FPD_CCI_NOC_1_wdata);
  mp_FPD_CCI_NOC_1_transactor->WSTRB(FPD_CCI_NOC_1_wstrb);
  mp_FPD_CCI_NOC_1_transactor->WUSER(FPD_CCI_NOC_1_wuser);
  mp_FPD_CCI_NOC_1_transactor->WLAST(FPD_CCI_NOC_1_wlast);
  mp_FPD_CCI_NOC_1_transactor->WVALID(FPD_CCI_NOC_1_wvalid);
  mp_FPD_CCI_NOC_1_transactor->WREADY(FPD_CCI_NOC_1_wready);
  mp_FPD_CCI_NOC_1_transactor->BID(FPD_CCI_NOC_1_bid);
  mp_FPD_CCI_NOC_1_transactor->BRESP(FPD_CCI_NOC_1_bresp);
  mp_FPD_CCI_NOC_1_transactor->BVALID(FPD_CCI_NOC_1_bvalid);
  mp_FPD_CCI_NOC_1_transactor->BREADY(FPD_CCI_NOC_1_bready);
  mp_FPD_CCI_NOC_1_transactor->ARID(FPD_CCI_NOC_1_arid);
  mp_FPD_CCI_NOC_1_transactor->ARADDR(FPD_CCI_NOC_1_araddr);
  mp_FPD_CCI_NOC_1_transactor->ARLEN(FPD_CCI_NOC_1_arlen);
  mp_FPD_CCI_NOC_1_transactor->ARSIZE(FPD_CCI_NOC_1_arsize);
  mp_FPD_CCI_NOC_1_transactor->ARBURST(FPD_CCI_NOC_1_arburst);
  mp_FPD_CCI_NOC_1_transactor->ARLOCK(FPD_CCI_NOC_1_arlock);
  mp_FPD_CCI_NOC_1_transactor->ARCACHE(FPD_CCI_NOC_1_arcache);
  mp_FPD_CCI_NOC_1_transactor->ARPROT(FPD_CCI_NOC_1_arprot);
  mp_FPD_CCI_NOC_1_transactor->ARVALID(FPD_CCI_NOC_1_arvalid);
  mp_FPD_CCI_NOC_1_transactor->ARUSER(FPD_CCI_NOC_1_aruser);
  mp_FPD_CCI_NOC_1_transactor->ARREADY(FPD_CCI_NOC_1_arready);
  mp_FPD_CCI_NOC_1_transactor->RID(FPD_CCI_NOC_1_rid);
  mp_FPD_CCI_NOC_1_transactor->RDATA(FPD_CCI_NOC_1_rdata);
  mp_FPD_CCI_NOC_1_transactor->RRESP(FPD_CCI_NOC_1_rresp);
  mp_FPD_CCI_NOC_1_transactor->RLAST(FPD_CCI_NOC_1_rlast);
  mp_FPD_CCI_NOC_1_transactor->RVALID(FPD_CCI_NOC_1_rvalid);
  mp_FPD_CCI_NOC_1_transactor->RREADY(FPD_CCI_NOC_1_rready);
  mp_FPD_CCI_NOC_1_transactor->AWQOS(FPD_CCI_NOC_1_awqos);
  mp_FPD_CCI_NOC_1_transactor->ARQOS(FPD_CCI_NOC_1_arqos);
  mp_FPD_CCI_NOC_1_transactor->CLK(fpd_cci_noc_axi1_clk);
  mp_FPD_CCI_NOC_1_transactor->RST(pl0_resetn);
  // configure FPD_CCI_NOC_2_transactor
    xsc::common_cpp::properties FPD_CCI_NOC_2_transactor_param_props;
    FPD_CCI_NOC_2_transactor_param_props.addLong("DATA_WIDTH", "128");
    FPD_CCI_NOC_2_transactor_param_props.addLong("FREQ_HZ", "824991760");
    FPD_CCI_NOC_2_transactor_param_props.addLong("ID_WIDTH", "16");
    FPD_CCI_NOC_2_transactor_param_props.addLong("ADDR_WIDTH", "64");
    FPD_CCI_NOC_2_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    FPD_CCI_NOC_2_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    FPD_CCI_NOC_2_transactor_param_props.addLong("WUSER_WIDTH", "17");
    FPD_CCI_NOC_2_transactor_param_props.addLong("RUSER_WIDTH", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("BUSER_WIDTH", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_BURST", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_LOCK", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_PROT", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_CACHE", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_QOS", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_REGION", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_WSTRB", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_BRESP", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_RRESP", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    FPD_CCI_NOC_2_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    FPD_CCI_NOC_2_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    FPD_CCI_NOC_2_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_SIZE", "1");
    FPD_CCI_NOC_2_transactor_param_props.addLong("HAS_RESET", "1");
    FPD_CCI_NOC_2_transactor_param_props.addFloat("PHASE", "0.0");
    FPD_CCI_NOC_2_transactor_param_props.addString("PROTOCOL", "AXI4");
    FPD_CCI_NOC_2_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    FPD_CCI_NOC_2_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_fpd_cci_noc_axi2_clk");
    FPD_CCI_NOC_2_transactor_param_props.addString("CATEGORY", "noc");
    FPD_CCI_NOC_2_transactor_param_props.addString("MY_CATEGORY", "ps_cci");
    FPD_CCI_NOC_2_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_CCI_TO_NOC_NMU");
    FPD_CCI_NOC_2_transactor_param_props.addString("INDEX", "2");

    mp_FPD_CCI_NOC_2_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>("FPD_CCI_NOC_2_transactor", FPD_CCI_NOC_2_transactor_param_props);
  mp_FPD_CCI_NOC_2_transactor->AWID(FPD_CCI_NOC_2_awid);
  mp_FPD_CCI_NOC_2_transactor->AWADDR(FPD_CCI_NOC_2_awaddr);
  mp_FPD_CCI_NOC_2_transactor->AWLEN(FPD_CCI_NOC_2_awlen);
  mp_FPD_CCI_NOC_2_transactor->AWSIZE(FPD_CCI_NOC_2_awsize);
  mp_FPD_CCI_NOC_2_transactor->AWBURST(FPD_CCI_NOC_2_awburst);
  mp_FPD_CCI_NOC_2_transactor->AWLOCK(FPD_CCI_NOC_2_awlock);
  mp_FPD_CCI_NOC_2_transactor->AWCACHE(FPD_CCI_NOC_2_awcache);
  mp_FPD_CCI_NOC_2_transactor->AWPROT(FPD_CCI_NOC_2_awprot);
  mp_FPD_CCI_NOC_2_transactor->AWVALID(FPD_CCI_NOC_2_awvalid);
  mp_FPD_CCI_NOC_2_transactor->AWUSER(FPD_CCI_NOC_2_awuser);
  mp_FPD_CCI_NOC_2_transactor->AWREADY(FPD_CCI_NOC_2_awready);
  mp_FPD_CCI_NOC_2_transactor->WDATA(FPD_CCI_NOC_2_wdata);
  mp_FPD_CCI_NOC_2_transactor->WSTRB(FPD_CCI_NOC_2_wstrb);
  mp_FPD_CCI_NOC_2_transactor->WUSER(FPD_CCI_NOC_2_wuser);
  mp_FPD_CCI_NOC_2_transactor->WLAST(FPD_CCI_NOC_2_wlast);
  mp_FPD_CCI_NOC_2_transactor->WVALID(FPD_CCI_NOC_2_wvalid);
  mp_FPD_CCI_NOC_2_transactor->WREADY(FPD_CCI_NOC_2_wready);
  mp_FPD_CCI_NOC_2_transactor->BID(FPD_CCI_NOC_2_bid);
  mp_FPD_CCI_NOC_2_transactor->BRESP(FPD_CCI_NOC_2_bresp);
  mp_FPD_CCI_NOC_2_transactor->BVALID(FPD_CCI_NOC_2_bvalid);
  mp_FPD_CCI_NOC_2_transactor->BREADY(FPD_CCI_NOC_2_bready);
  mp_FPD_CCI_NOC_2_transactor->ARID(FPD_CCI_NOC_2_arid);
  mp_FPD_CCI_NOC_2_transactor->ARADDR(FPD_CCI_NOC_2_araddr);
  mp_FPD_CCI_NOC_2_transactor->ARLEN(FPD_CCI_NOC_2_arlen);
  mp_FPD_CCI_NOC_2_transactor->ARSIZE(FPD_CCI_NOC_2_arsize);
  mp_FPD_CCI_NOC_2_transactor->ARBURST(FPD_CCI_NOC_2_arburst);
  mp_FPD_CCI_NOC_2_transactor->ARLOCK(FPD_CCI_NOC_2_arlock);
  mp_FPD_CCI_NOC_2_transactor->ARCACHE(FPD_CCI_NOC_2_arcache);
  mp_FPD_CCI_NOC_2_transactor->ARPROT(FPD_CCI_NOC_2_arprot);
  mp_FPD_CCI_NOC_2_transactor->ARVALID(FPD_CCI_NOC_2_arvalid);
  mp_FPD_CCI_NOC_2_transactor->ARUSER(FPD_CCI_NOC_2_aruser);
  mp_FPD_CCI_NOC_2_transactor->ARREADY(FPD_CCI_NOC_2_arready);
  mp_FPD_CCI_NOC_2_transactor->RID(FPD_CCI_NOC_2_rid);
  mp_FPD_CCI_NOC_2_transactor->RDATA(FPD_CCI_NOC_2_rdata);
  mp_FPD_CCI_NOC_2_transactor->RRESP(FPD_CCI_NOC_2_rresp);
  mp_FPD_CCI_NOC_2_transactor->RLAST(FPD_CCI_NOC_2_rlast);
  mp_FPD_CCI_NOC_2_transactor->RVALID(FPD_CCI_NOC_2_rvalid);
  mp_FPD_CCI_NOC_2_transactor->RREADY(FPD_CCI_NOC_2_rready);
  mp_FPD_CCI_NOC_2_transactor->AWQOS(FPD_CCI_NOC_2_awqos);
  mp_FPD_CCI_NOC_2_transactor->ARQOS(FPD_CCI_NOC_2_arqos);
  mp_FPD_CCI_NOC_2_transactor->CLK(fpd_cci_noc_axi2_clk);
  mp_FPD_CCI_NOC_2_transactor->RST(pl0_resetn);
  // configure FPD_CCI_NOC_3_transactor
    xsc::common_cpp::properties FPD_CCI_NOC_3_transactor_param_props;
    FPD_CCI_NOC_3_transactor_param_props.addLong("DATA_WIDTH", "128");
    FPD_CCI_NOC_3_transactor_param_props.addLong("FREQ_HZ", "824991760");
    FPD_CCI_NOC_3_transactor_param_props.addLong("ID_WIDTH", "16");
    FPD_CCI_NOC_3_transactor_param_props.addLong("ADDR_WIDTH", "64");
    FPD_CCI_NOC_3_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    FPD_CCI_NOC_3_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    FPD_CCI_NOC_3_transactor_param_props.addLong("WUSER_WIDTH", "17");
    FPD_CCI_NOC_3_transactor_param_props.addLong("RUSER_WIDTH", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("BUSER_WIDTH", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_BURST", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_LOCK", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_PROT", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_CACHE", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_QOS", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_REGION", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_WSTRB", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_BRESP", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_RRESP", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    FPD_CCI_NOC_3_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    FPD_CCI_NOC_3_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    FPD_CCI_NOC_3_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_SIZE", "1");
    FPD_CCI_NOC_3_transactor_param_props.addLong("HAS_RESET", "1");
    FPD_CCI_NOC_3_transactor_param_props.addFloat("PHASE", "0.0");
    FPD_CCI_NOC_3_transactor_param_props.addString("PROTOCOL", "AXI4");
    FPD_CCI_NOC_3_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    FPD_CCI_NOC_3_transactor_param_props.addString("CLK_DOMAIN", "bd_65e0_pspmc_0_0_fpd_cci_noc_axi3_clk");
    FPD_CCI_NOC_3_transactor_param_props.addString("CATEGORY", "noc");
    FPD_CCI_NOC_3_transactor_param_props.addString("MY_CATEGORY", "ps_cci");
    FPD_CCI_NOC_3_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_CCI_TO_NOC_NMU");
    FPD_CCI_NOC_3_transactor_param_props.addString("INDEX", "3");

    mp_FPD_CCI_NOC_3_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>("FPD_CCI_NOC_3_transactor", FPD_CCI_NOC_3_transactor_param_props);
  mp_FPD_CCI_NOC_3_transactor->AWID(FPD_CCI_NOC_3_awid);
  mp_FPD_CCI_NOC_3_transactor->AWADDR(FPD_CCI_NOC_3_awaddr);
  mp_FPD_CCI_NOC_3_transactor->AWLEN(FPD_CCI_NOC_3_awlen);
  mp_FPD_CCI_NOC_3_transactor->AWSIZE(FPD_CCI_NOC_3_awsize);
  mp_FPD_CCI_NOC_3_transactor->AWBURST(FPD_CCI_NOC_3_awburst);
  mp_FPD_CCI_NOC_3_transactor->AWLOCK(FPD_CCI_NOC_3_awlock);
  mp_FPD_CCI_NOC_3_transactor->AWCACHE(FPD_CCI_NOC_3_awcache);
  mp_FPD_CCI_NOC_3_transactor->AWPROT(FPD_CCI_NOC_3_awprot);
  mp_FPD_CCI_NOC_3_transactor->AWVALID(FPD_CCI_NOC_3_awvalid);
  mp_FPD_CCI_NOC_3_transactor->AWUSER(FPD_CCI_NOC_3_awuser);
  mp_FPD_CCI_NOC_3_transactor->AWREADY(FPD_CCI_NOC_3_awready);
  mp_FPD_CCI_NOC_3_transactor->WDATA(FPD_CCI_NOC_3_wdata);
  mp_FPD_CCI_NOC_3_transactor->WSTRB(FPD_CCI_NOC_3_wstrb);
  mp_FPD_CCI_NOC_3_transactor->WUSER(FPD_CCI_NOC_3_wuser);
  mp_FPD_CCI_NOC_3_transactor->WLAST(FPD_CCI_NOC_3_wlast);
  mp_FPD_CCI_NOC_3_transactor->WVALID(FPD_CCI_NOC_3_wvalid);
  mp_FPD_CCI_NOC_3_transactor->WREADY(FPD_CCI_NOC_3_wready);
  mp_FPD_CCI_NOC_3_transactor->BID(FPD_CCI_NOC_3_bid);
  mp_FPD_CCI_NOC_3_transactor->BRESP(FPD_CCI_NOC_3_bresp);
  mp_FPD_CCI_NOC_3_transactor->BVALID(FPD_CCI_NOC_3_bvalid);
  mp_FPD_CCI_NOC_3_transactor->BREADY(FPD_CCI_NOC_3_bready);
  mp_FPD_CCI_NOC_3_transactor->ARID(FPD_CCI_NOC_3_arid);
  mp_FPD_CCI_NOC_3_transactor->ARADDR(FPD_CCI_NOC_3_araddr);
  mp_FPD_CCI_NOC_3_transactor->ARLEN(FPD_CCI_NOC_3_arlen);
  mp_FPD_CCI_NOC_3_transactor->ARSIZE(FPD_CCI_NOC_3_arsize);
  mp_FPD_CCI_NOC_3_transactor->ARBURST(FPD_CCI_NOC_3_arburst);
  mp_FPD_CCI_NOC_3_transactor->ARLOCK(FPD_CCI_NOC_3_arlock);
  mp_FPD_CCI_NOC_3_transactor->ARCACHE(FPD_CCI_NOC_3_arcache);
  mp_FPD_CCI_NOC_3_transactor->ARPROT(FPD_CCI_NOC_3_arprot);
  mp_FPD_CCI_NOC_3_transactor->ARVALID(FPD_CCI_NOC_3_arvalid);
  mp_FPD_CCI_NOC_3_transactor->ARUSER(FPD_CCI_NOC_3_aruser);
  mp_FPD_CCI_NOC_3_transactor->ARREADY(FPD_CCI_NOC_3_arready);
  mp_FPD_CCI_NOC_3_transactor->RID(FPD_CCI_NOC_3_rid);
  mp_FPD_CCI_NOC_3_transactor->RDATA(FPD_CCI_NOC_3_rdata);
  mp_FPD_CCI_NOC_3_transactor->RRESP(FPD_CCI_NOC_3_rresp);
  mp_FPD_CCI_NOC_3_transactor->RLAST(FPD_CCI_NOC_3_rlast);
  mp_FPD_CCI_NOC_3_transactor->RVALID(FPD_CCI_NOC_3_rvalid);
  mp_FPD_CCI_NOC_3_transactor->RREADY(FPD_CCI_NOC_3_rready);
  mp_FPD_CCI_NOC_3_transactor->AWQOS(FPD_CCI_NOC_3_awqos);
  mp_FPD_CCI_NOC_3_transactor->ARQOS(FPD_CCI_NOC_3_arqos);
  mp_FPD_CCI_NOC_3_transactor->CLK(fpd_cci_noc_axi3_clk);
  mp_FPD_CCI_NOC_3_transactor->RST(pl0_resetn);

  // initialize transactors stubs
  M_AXI_FPD_transactor_initiator_wr_socket_stub = nullptr;
  M_AXI_FPD_transactor_initiator_rd_socket_stub = nullptr;
  M_AXI_LPD_transactor_initiator_wr_socket_stub = nullptr;
  M_AXI_LPD_transactor_initiator_rd_socket_stub = nullptr;
  FPD_CCI_NOC_0_transactor_initiator_wr_socket_stub = nullptr;
  FPD_CCI_NOC_0_transactor_initiator_rd_socket_stub = nullptr;
  FPD_CCI_NOC_1_transactor_initiator_wr_socket_stub = nullptr;
  FPD_CCI_NOC_1_transactor_initiator_rd_socket_stub = nullptr;
  FPD_CCI_NOC_2_transactor_initiator_wr_socket_stub = nullptr;
  FPD_CCI_NOC_2_transactor_initiator_rd_socket_stub = nullptr;
  FPD_CCI_NOC_3_transactor_initiator_wr_socket_stub = nullptr;
  FPD_CCI_NOC_3_transactor_initiator_rd_socket_stub = nullptr;

}

void dpss_vck190_pt_versal_cips_0_0::before_end_of_elaboration()
{
  // configure 'M_AXI_FPD' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "M_AXI_FPD_TLM_MODE") != 1)
  {
    mp_impl->M_AXI_FPD_tlm_aximm_read_socket->bind(*(mp_M_AXI_FPD_transactor->rd_socket));
    mp_impl->M_AXI_FPD_tlm_aximm_write_socket->bind(*(mp_M_AXI_FPD_transactor->wr_socket));
  
  }
  else
  {
    M_AXI_FPD_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M_AXI_FPD_transactor_initiator_wr_socket_stub->bind(*(mp_M_AXI_FPD_transactor->wr_socket));
    M_AXI_FPD_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M_AXI_FPD_transactor_initiator_rd_socket_stub->bind(*(mp_M_AXI_FPD_transactor->rd_socket));
    mp_M_AXI_FPD_transactor->disable_transactor();
  }

  // configure 'M_AXI_LPD' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "M_AXI_LPD_TLM_MODE") != 1)
  {
    mp_impl->M_AXI_LPD_tlm_aximm_read_socket->bind(*(mp_M_AXI_LPD_transactor->rd_socket));
    mp_impl->M_AXI_LPD_tlm_aximm_write_socket->bind(*(mp_M_AXI_LPD_transactor->wr_socket));
  
  }
  else
  {
    M_AXI_LPD_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M_AXI_LPD_transactor_initiator_wr_socket_stub->bind(*(mp_M_AXI_LPD_transactor->wr_socket));
    M_AXI_LPD_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M_AXI_LPD_transactor_initiator_rd_socket_stub->bind(*(mp_M_AXI_LPD_transactor->rd_socket));
    mp_M_AXI_LPD_transactor->disable_transactor();
  }

  // configure 'FPD_CCI_NOC_0' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "FPD_CCI_NOC_0_TLM_MODE") != 1)
  {
    mp_impl->FPD_CCI_NOC_0_tlm_aximm_read_socket->bind(*(mp_FPD_CCI_NOC_0_transactor->rd_socket));
    mp_impl->FPD_CCI_NOC_0_tlm_aximm_write_socket->bind(*(mp_FPD_CCI_NOC_0_transactor->wr_socket));
  
  }
  else
  {
    FPD_CCI_NOC_0_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    FPD_CCI_NOC_0_transactor_initiator_wr_socket_stub->bind(*(mp_FPD_CCI_NOC_0_transactor->wr_socket));
    FPD_CCI_NOC_0_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    FPD_CCI_NOC_0_transactor_initiator_rd_socket_stub->bind(*(mp_FPD_CCI_NOC_0_transactor->rd_socket));
    mp_FPD_CCI_NOC_0_transactor->disable_transactor();
  }

  // configure 'FPD_CCI_NOC_1' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "FPD_CCI_NOC_1_TLM_MODE") != 1)
  {
    mp_impl->FPD_CCI_NOC_1_tlm_aximm_read_socket->bind(*(mp_FPD_CCI_NOC_1_transactor->rd_socket));
    mp_impl->FPD_CCI_NOC_1_tlm_aximm_write_socket->bind(*(mp_FPD_CCI_NOC_1_transactor->wr_socket));
  
  }
  else
  {
    FPD_CCI_NOC_1_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    FPD_CCI_NOC_1_transactor_initiator_wr_socket_stub->bind(*(mp_FPD_CCI_NOC_1_transactor->wr_socket));
    FPD_CCI_NOC_1_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    FPD_CCI_NOC_1_transactor_initiator_rd_socket_stub->bind(*(mp_FPD_CCI_NOC_1_transactor->rd_socket));
    mp_FPD_CCI_NOC_1_transactor->disable_transactor();
  }

  // configure 'FPD_CCI_NOC_2' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "FPD_CCI_NOC_2_TLM_MODE") != 1)
  {
    mp_impl->FPD_CCI_NOC_2_tlm_aximm_read_socket->bind(*(mp_FPD_CCI_NOC_2_transactor->rd_socket));
    mp_impl->FPD_CCI_NOC_2_tlm_aximm_write_socket->bind(*(mp_FPD_CCI_NOC_2_transactor->wr_socket));
  
  }
  else
  {
    FPD_CCI_NOC_2_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    FPD_CCI_NOC_2_transactor_initiator_wr_socket_stub->bind(*(mp_FPD_CCI_NOC_2_transactor->wr_socket));
    FPD_CCI_NOC_2_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    FPD_CCI_NOC_2_transactor_initiator_rd_socket_stub->bind(*(mp_FPD_CCI_NOC_2_transactor->rd_socket));
    mp_FPD_CCI_NOC_2_transactor->disable_transactor();
  }

  // configure 'FPD_CCI_NOC_3' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("dpss_vck190_pt_versal_cips_0_0", "FPD_CCI_NOC_3_TLM_MODE") != 1)
  {
    mp_impl->FPD_CCI_NOC_3_tlm_aximm_read_socket->bind(*(mp_FPD_CCI_NOC_3_transactor->rd_socket));
    mp_impl->FPD_CCI_NOC_3_tlm_aximm_write_socket->bind(*(mp_FPD_CCI_NOC_3_transactor->wr_socket));
  
  }
  else
  {
    FPD_CCI_NOC_3_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    FPD_CCI_NOC_3_transactor_initiator_wr_socket_stub->bind(*(mp_FPD_CCI_NOC_3_transactor->wr_socket));
    FPD_CCI_NOC_3_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    FPD_CCI_NOC_3_transactor_initiator_rd_socket_stub->bind(*(mp_FPD_CCI_NOC_3_transactor->rd_socket));
    mp_FPD_CCI_NOC_3_transactor->disable_transactor();
  }

}

#endif // MTI_SYSTEMC




dpss_vck190_pt_versal_cips_0_0::~dpss_vck190_pt_versal_cips_0_0()
{
  delete mp_M_AXI_FPD_transactor;

  delete mp_M_AXI_LPD_transactor;

  delete mp_FPD_CCI_NOC_0_transactor;

  delete mp_FPD_CCI_NOC_1_transactor;

  delete mp_FPD_CCI_NOC_2_transactor;

  delete mp_FPD_CCI_NOC_3_transactor;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(dpss_vck190_pt_versal_cips_0_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(dpss_vck190_pt_versal_cips_0_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(dpss_vck190_pt_versal_cips_0_0);
SC_REGISTER_BV(128);
#endif

