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


#include "cpm_qdma_ep_part_versal_cips_0_0_sc.h"

#include "cpm_qdma_ep_part_versal_cips_0_0.h"

#include "versal_cips_v3_4_0_tlm.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
cpm_qdma_ep_part_versal_cips_0_0::cpm_qdma_ep_part_versal_cips_0_0(const sc_core::sc_module_name& nm) : cpm_qdma_ep_part_versal_cips_0_0_sc(nm), pl0_ref_clk("pl0_ref_clk"), pl1_ref_clk("pl1_ref_clk"), pl0_resetn("pl0_resetn"), m_axi_fpd_aclk("m_axi_fpd_aclk"), cpm_pcie_noc_axi0_clk("cpm_pcie_noc_axi0_clk"), cpm_pcie_noc_axi1_clk("cpm_pcie_noc_axi1_clk"), dma1_intrfc_clk("dma1_intrfc_clk"), cpm_misc_irq("cpm_misc_irq"), cpm_cor_irq("cpm_cor_irq"), cpm_uncor_irq("cpm_uncor_irq"), cpm_irq0("cpm_irq0"), cpm_irq1("cpm_irq1"), dma1_axi_aresetn("dma1_axi_aresetn"), dma1_intrfc_resetn("dma1_intrfc_resetn"), M_AXI_FPD_awid("M_AXI_FPD_awid"), M_AXI_FPD_awaddr("M_AXI_FPD_awaddr"), M_AXI_FPD_awlen("M_AXI_FPD_awlen"), M_AXI_FPD_awsize("M_AXI_FPD_awsize"), M_AXI_FPD_awburst("M_AXI_FPD_awburst"), M_AXI_FPD_awlock("M_AXI_FPD_awlock"), M_AXI_FPD_awcache("M_AXI_FPD_awcache"), M_AXI_FPD_awprot("M_AXI_FPD_awprot"), M_AXI_FPD_awvalid("M_AXI_FPD_awvalid"), M_AXI_FPD_awuser("M_AXI_FPD_awuser"), M_AXI_FPD_awready("M_AXI_FPD_awready"), M_AXI_FPD_wlast("M_AXI_FPD_wlast"), M_AXI_FPD_wvalid("M_AXI_FPD_wvalid"), M_AXI_FPD_wready("M_AXI_FPD_wready"), M_AXI_FPD_bid("M_AXI_FPD_bid"), M_AXI_FPD_bresp("M_AXI_FPD_bresp"), M_AXI_FPD_bvalid("M_AXI_FPD_bvalid"), M_AXI_FPD_bready("M_AXI_FPD_bready"), M_AXI_FPD_arid("M_AXI_FPD_arid"), M_AXI_FPD_araddr("M_AXI_FPD_araddr"), M_AXI_FPD_arlen("M_AXI_FPD_arlen"), M_AXI_FPD_arsize("M_AXI_FPD_arsize"), M_AXI_FPD_arburst("M_AXI_FPD_arburst"), M_AXI_FPD_arlock("M_AXI_FPD_arlock"), M_AXI_FPD_arcache("M_AXI_FPD_arcache"), M_AXI_FPD_arprot("M_AXI_FPD_arprot"), M_AXI_FPD_arvalid("M_AXI_FPD_arvalid"), M_AXI_FPD_aruser("M_AXI_FPD_aruser"), M_AXI_FPD_arready("M_AXI_FPD_arready"), M_AXI_FPD_rid("M_AXI_FPD_rid"), M_AXI_FPD_rresp("M_AXI_FPD_rresp"), M_AXI_FPD_rlast("M_AXI_FPD_rlast"), M_AXI_FPD_rvalid("M_AXI_FPD_rvalid"), M_AXI_FPD_rready("M_AXI_FPD_rready"), M_AXI_FPD_awqos("M_AXI_FPD_awqos"), M_AXI_FPD_arqos("M_AXI_FPD_arqos"), M_AXI_FPD_wdata("M_AXI_FPD_wdata"), M_AXI_FPD_wstrb("M_AXI_FPD_wstrb"), M_AXI_FPD_rdata("M_AXI_FPD_rdata"), CPM_PCIE_NOC_0_araddr("CPM_PCIE_NOC_0_araddr"), CPM_PCIE_NOC_0_arburst("CPM_PCIE_NOC_0_arburst"), CPM_PCIE_NOC_0_arcache("CPM_PCIE_NOC_0_arcache"), CPM_PCIE_NOC_0_arid("CPM_PCIE_NOC_0_arid"), CPM_PCIE_NOC_0_arlen("CPM_PCIE_NOC_0_arlen"), CPM_PCIE_NOC_0_arlock("CPM_PCIE_NOC_0_arlock"), CPM_PCIE_NOC_0_arprot("CPM_PCIE_NOC_0_arprot"), CPM_PCIE_NOC_0_arqos("CPM_PCIE_NOC_0_arqos"), CPM_PCIE_NOC_0_arsize("CPM_PCIE_NOC_0_arsize"), CPM_PCIE_NOC_0_aruser("CPM_PCIE_NOC_0_aruser"), CPM_PCIE_NOC_0_arvalid("CPM_PCIE_NOC_0_arvalid"), CPM_PCIE_NOC_0_awaddr("CPM_PCIE_NOC_0_awaddr"), CPM_PCIE_NOC_0_awburst("CPM_PCIE_NOC_0_awburst"), CPM_PCIE_NOC_0_awcache("CPM_PCIE_NOC_0_awcache"), CPM_PCIE_NOC_0_awid("CPM_PCIE_NOC_0_awid"), CPM_PCIE_NOC_0_awlen("CPM_PCIE_NOC_0_awlen"), CPM_PCIE_NOC_0_awlock("CPM_PCIE_NOC_0_awlock"), CPM_PCIE_NOC_0_awprot("CPM_PCIE_NOC_0_awprot"), CPM_PCIE_NOC_0_awqos("CPM_PCIE_NOC_0_awqos"), CPM_PCIE_NOC_0_awsize("CPM_PCIE_NOC_0_awsize"), CPM_PCIE_NOC_0_awuser("CPM_PCIE_NOC_0_awuser"), CPM_PCIE_NOC_0_awvalid("CPM_PCIE_NOC_0_awvalid"), CPM_PCIE_NOC_0_bready("CPM_PCIE_NOC_0_bready"), CPM_PCIE_NOC_0_rready("CPM_PCIE_NOC_0_rready"), CPM_PCIE_NOC_0_wdata("CPM_PCIE_NOC_0_wdata"), CPM_PCIE_NOC_0_wlast("CPM_PCIE_NOC_0_wlast"), CPM_PCIE_NOC_0_wstrb("CPM_PCIE_NOC_0_wstrb"), CPM_PCIE_NOC_0_wvalid("CPM_PCIE_NOC_0_wvalid"), CPM_PCIE_NOC_0_arready("CPM_PCIE_NOC_0_arready"), CPM_PCIE_NOC_0_awready("CPM_PCIE_NOC_0_awready"), CPM_PCIE_NOC_0_bid("CPM_PCIE_NOC_0_bid"), CPM_PCIE_NOC_0_bresp("CPM_PCIE_NOC_0_bresp"), CPM_PCIE_NOC_0_bvalid("CPM_PCIE_NOC_0_bvalid"), CPM_PCIE_NOC_0_rdata("CPM_PCIE_NOC_0_rdata"), CPM_PCIE_NOC_0_rid("CPM_PCIE_NOC_0_rid"), CPM_PCIE_NOC_0_rlast("CPM_PCIE_NOC_0_rlast"), CPM_PCIE_NOC_0_rresp("CPM_PCIE_NOC_0_rresp"), CPM_PCIE_NOC_0_rvalid("CPM_PCIE_NOC_0_rvalid"), CPM_PCIE_NOC_0_ruser("CPM_PCIE_NOC_0_ruser"), CPM_PCIE_NOC_0_wuser("CPM_PCIE_NOC_0_wuser"), CPM_PCIE_NOC_0_wready("CPM_PCIE_NOC_0_wready"), CPM_PCIE_NOC_1_araddr("CPM_PCIE_NOC_1_araddr"), CPM_PCIE_NOC_1_arburst("CPM_PCIE_NOC_1_arburst"), CPM_PCIE_NOC_1_arcache("CPM_PCIE_NOC_1_arcache"), CPM_PCIE_NOC_1_arid("CPM_PCIE_NOC_1_arid"), CPM_PCIE_NOC_1_arlen("CPM_PCIE_NOC_1_arlen"), CPM_PCIE_NOC_1_arlock("CPM_PCIE_NOC_1_arlock"), CPM_PCIE_NOC_1_arprot("CPM_PCIE_NOC_1_arprot"), CPM_PCIE_NOC_1_arqos("CPM_PCIE_NOC_1_arqos"), CPM_PCIE_NOC_1_arsize("CPM_PCIE_NOC_1_arsize"), CPM_PCIE_NOC_1_aruser("CPM_PCIE_NOC_1_aruser"), CPM_PCIE_NOC_1_arvalid("CPM_PCIE_NOC_1_arvalid"), CPM_PCIE_NOC_1_awaddr("CPM_PCIE_NOC_1_awaddr"), CPM_PCIE_NOC_1_awburst("CPM_PCIE_NOC_1_awburst"), CPM_PCIE_NOC_1_awcache("CPM_PCIE_NOC_1_awcache"), CPM_PCIE_NOC_1_awid("CPM_PCIE_NOC_1_awid"), CPM_PCIE_NOC_1_awlen("CPM_PCIE_NOC_1_awlen"), CPM_PCIE_NOC_1_awlock("CPM_PCIE_NOC_1_awlock"), CPM_PCIE_NOC_1_awprot("CPM_PCIE_NOC_1_awprot"), CPM_PCIE_NOC_1_awqos("CPM_PCIE_NOC_1_awqos"), CPM_PCIE_NOC_1_awsize("CPM_PCIE_NOC_1_awsize"), CPM_PCIE_NOC_1_awuser("CPM_PCIE_NOC_1_awuser"), CPM_PCIE_NOC_1_awvalid("CPM_PCIE_NOC_1_awvalid"), CPM_PCIE_NOC_1_bready("CPM_PCIE_NOC_1_bready"), CPM_PCIE_NOC_1_rready("CPM_PCIE_NOC_1_rready"), CPM_PCIE_NOC_1_wdata("CPM_PCIE_NOC_1_wdata"), CPM_PCIE_NOC_1_wlast("CPM_PCIE_NOC_1_wlast"), CPM_PCIE_NOC_1_wstrb("CPM_PCIE_NOC_1_wstrb"), CPM_PCIE_NOC_1_wvalid("CPM_PCIE_NOC_1_wvalid"), CPM_PCIE_NOC_1_arready("CPM_PCIE_NOC_1_arready"), CPM_PCIE_NOC_1_awready("CPM_PCIE_NOC_1_awready"), CPM_PCIE_NOC_1_bid("CPM_PCIE_NOC_1_bid"), CPM_PCIE_NOC_1_bresp("CPM_PCIE_NOC_1_bresp"), CPM_PCIE_NOC_1_bvalid("CPM_PCIE_NOC_1_bvalid"), CPM_PCIE_NOC_1_rdata("CPM_PCIE_NOC_1_rdata"), CPM_PCIE_NOC_1_rid("CPM_PCIE_NOC_1_rid"), CPM_PCIE_NOC_1_rlast("CPM_PCIE_NOC_1_rlast"), CPM_PCIE_NOC_1_rresp("CPM_PCIE_NOC_1_rresp"), CPM_PCIE_NOC_1_rvalid("CPM_PCIE_NOC_1_rvalid"), CPM_PCIE_NOC_1_ruser("CPM_PCIE_NOC_1_ruser"), CPM_PCIE_NOC_1_wuser("CPM_PCIE_NOC_1_wuser"), CPM_PCIE_NOC_1_wready("CPM_PCIE_NOC_1_wready"), dma1_mgmt_cpl_vld("dma1_mgmt_cpl_vld"), dma1_mgmt_req_rdy("dma1_mgmt_req_rdy"), dma1_mgmt_cpl_rdy("dma1_mgmt_cpl_rdy"), dma1_mgmt_req_vld("dma1_mgmt_req_vld"), dma1_mgmt_cpl_sts("dma1_mgmt_cpl_sts"), dma1_mgmt_cpl_dat("dma1_mgmt_cpl_dat"), dma1_mgmt_req_cmd("dma1_mgmt_req_cmd"), dma1_mgmt_req_fnc("dma1_mgmt_req_fnc"), dma1_mgmt_req_msc("dma1_mgmt_req_msc"), dma1_mgmt_req_adr("dma1_mgmt_req_adr"), dma1_mgmt_req_dat("dma1_mgmt_req_dat"), dma1_st_rx_msg_tlast("dma1_st_rx_msg_tlast"), dma1_st_rx_msg_tvalid("dma1_st_rx_msg_tvalid"), dma1_st_rx_msg_tready("dma1_st_rx_msg_tready"), dma1_st_rx_msg_tdata("dma1_st_rx_msg_tdata"), dma1_c2h_byp_in_mm_0_ready("dma1_c2h_byp_in_mm_0_ready"), dma1_c2h_byp_in_mm_0_sdi("dma1_c2h_byp_in_mm_0_sdi"), dma1_c2h_byp_in_mm_0_valid("dma1_c2h_byp_in_mm_0_valid"), dma1_c2h_byp_in_mm_0_error("dma1_c2h_byp_in_mm_0_error"), dma1_c2h_byp_in_mm_0_no_dma("dma1_c2h_byp_in_mm_0_no_dma"), dma1_c2h_byp_in_mm_0_mrkr_req("dma1_c2h_byp_in_mm_0_mrkr_req"), dma1_c2h_byp_in_mm_0_len("dma1_c2h_byp_in_mm_0_len"), dma1_c2h_byp_in_mm_0_qid("dma1_c2h_byp_in_mm_0_qid"), dma1_c2h_byp_in_mm_0_func("dma1_c2h_byp_in_mm_0_func"), dma1_c2h_byp_in_mm_0_cidx("dma1_c2h_byp_in_mm_0_cidx"), dma1_c2h_byp_in_mm_0_radr("dma1_c2h_byp_in_mm_0_radr"), dma1_c2h_byp_in_mm_0_wadr("dma1_c2h_byp_in_mm_0_wadr"), dma1_c2h_byp_in_mm_0_port_id("dma1_c2h_byp_in_mm_0_port_id"), dma1_c2h_byp_in_mm_1_ready("dma1_c2h_byp_in_mm_1_ready"), dma1_c2h_byp_in_mm_1_sdi("dma1_c2h_byp_in_mm_1_sdi"), dma1_c2h_byp_in_mm_1_valid("dma1_c2h_byp_in_mm_1_valid"), dma1_c2h_byp_in_mm_1_error("dma1_c2h_byp_in_mm_1_error"), dma1_c2h_byp_in_mm_1_no_dma("dma1_c2h_byp_in_mm_1_no_dma"), dma1_c2h_byp_in_mm_1_mrkr_req("dma1_c2h_byp_in_mm_1_mrkr_req"), dma1_c2h_byp_in_mm_1_len("dma1_c2h_byp_in_mm_1_len"), dma1_c2h_byp_in_mm_1_qid("dma1_c2h_byp_in_mm_1_qid"), dma1_c2h_byp_in_mm_1_func("dma1_c2h_byp_in_mm_1_func"), dma1_c2h_byp_in_mm_1_cidx("dma1_c2h_byp_in_mm_1_cidx"), dma1_c2h_byp_in_mm_1_radr("dma1_c2h_byp_in_mm_1_radr"), dma1_c2h_byp_in_mm_1_wadr("dma1_c2h_byp_in_mm_1_wadr"), dma1_c2h_byp_in_mm_1_port_id("dma1_c2h_byp_in_mm_1_port_id"), dma1_c2h_byp_in_st_csh_ready("dma1_c2h_byp_in_st_csh_ready"), dma1_c2h_byp_in_st_csh_valid("dma1_c2h_byp_in_st_csh_valid"), dma1_c2h_byp_in_st_csh_error("dma1_c2h_byp_in_st_csh_error"), dma1_c2h_byp_in_st_csh_qid("dma1_c2h_byp_in_st_csh_qid"), dma1_c2h_byp_in_st_csh_func("dma1_c2h_byp_in_st_csh_func"), dma1_c2h_byp_in_st_csh_addr("dma1_c2h_byp_in_st_csh_addr"), dma1_c2h_byp_in_st_csh_port_id("dma1_c2h_byp_in_st_csh_port_id"), dma1_c2h_byp_in_st_csh_pfch_tag("dma1_c2h_byp_in_st_csh_pfch_tag"), dma1_c2h_byp_out_valid("dma1_c2h_byp_out_valid"), dma1_c2h_byp_out_error("dma1_c2h_byp_out_error"), dma1_c2h_byp_out_st_mm("dma1_c2h_byp_out_st_mm"), dma1_c2h_byp_out_mm_chn("dma1_c2h_byp_out_mm_chn"), dma1_c2h_byp_out_ready("dma1_c2h_byp_out_ready"), dma1_c2h_byp_out_fmt("dma1_c2h_byp_out_fmt"), dma1_c2h_byp_out_qid("dma1_c2h_byp_out_qid"), dma1_c2h_byp_out_dsc("dma1_c2h_byp_out_dsc"), dma1_c2h_byp_out_func("dma1_c2h_byp_out_func"), dma1_c2h_byp_out_cidx("dma1_c2h_byp_out_cidx"), dma1_c2h_byp_out_dsc_sz("dma1_c2h_byp_out_dsc_sz"), dma1_c2h_byp_out_port_id("dma1_c2h_byp_out_port_id"), dma1_c2h_byp_out_pfch_tag("dma1_c2h_byp_out_pfch_tag"), dma1_h2c_byp_in_mm_0_ready("dma1_h2c_byp_in_mm_0_ready"), dma1_h2c_byp_in_mm_0_sdi("dma1_h2c_byp_in_mm_0_sdi"), dma1_h2c_byp_in_mm_0_valid("dma1_h2c_byp_in_mm_0_valid"), dma1_h2c_byp_in_mm_0_error("dma1_h2c_byp_in_mm_0_error"), dma1_h2c_byp_in_mm_0_no_dma("dma1_h2c_byp_in_mm_0_no_dma"), dma1_h2c_byp_in_mm_0_mrkr_req("dma1_h2c_byp_in_mm_0_mrkr_req"), dma1_h2c_byp_in_mm_0_len("dma1_h2c_byp_in_mm_0_len"), dma1_h2c_byp_in_mm_0_qid("dma1_h2c_byp_in_mm_0_qid"), dma1_h2c_byp_in_mm_0_func("dma1_h2c_byp_in_mm_0_func"), dma1_h2c_byp_in_mm_0_cidx("dma1_h2c_byp_in_mm_0_cidx"), dma1_h2c_byp_in_mm_0_radr("dma1_h2c_byp_in_mm_0_radr"), dma1_h2c_byp_in_mm_0_wadr("dma1_h2c_byp_in_mm_0_wadr"), dma1_h2c_byp_in_mm_0_port_id("dma1_h2c_byp_in_mm_0_port_id"), dma1_h2c_byp_in_mm_1_ready("dma1_h2c_byp_in_mm_1_ready"), dma1_h2c_byp_in_mm_1_sdi("dma1_h2c_byp_in_mm_1_sdi"), dma1_h2c_byp_in_mm_1_valid("dma1_h2c_byp_in_mm_1_valid"), dma1_h2c_byp_in_mm_1_error("dma1_h2c_byp_in_mm_1_error"), dma1_h2c_byp_in_mm_1_no_dma("dma1_h2c_byp_in_mm_1_no_dma"), dma1_h2c_byp_in_mm_1_mrkr_req("dma1_h2c_byp_in_mm_1_mrkr_req"), dma1_h2c_byp_in_mm_1_len("dma1_h2c_byp_in_mm_1_len"), dma1_h2c_byp_in_mm_1_qid("dma1_h2c_byp_in_mm_1_qid"), dma1_h2c_byp_in_mm_1_func("dma1_h2c_byp_in_mm_1_func"), dma1_h2c_byp_in_mm_1_cidx("dma1_h2c_byp_in_mm_1_cidx"), dma1_h2c_byp_in_mm_1_radr("dma1_h2c_byp_in_mm_1_radr"), dma1_h2c_byp_in_mm_1_wadr("dma1_h2c_byp_in_mm_1_wadr"), dma1_h2c_byp_in_mm_1_port_id("dma1_h2c_byp_in_mm_1_port_id"), dma1_h2c_byp_in_st_ready("dma1_h2c_byp_in_st_ready"), dma1_h2c_byp_in_st_eop("dma1_h2c_byp_in_st_eop"), dma1_h2c_byp_in_st_sdi("dma1_h2c_byp_in_st_sdi"), dma1_h2c_byp_in_st_sop("dma1_h2c_byp_in_st_sop"), dma1_h2c_byp_in_st_valid("dma1_h2c_byp_in_st_valid"), dma1_h2c_byp_in_st_error("dma1_h2c_byp_in_st_error"), dma1_h2c_byp_in_st_no_dma("dma1_h2c_byp_in_st_no_dma"), dma1_h2c_byp_in_st_mrkr_req("dma1_h2c_byp_in_st_mrkr_req"), dma1_h2c_byp_in_st_len("dma1_h2c_byp_in_st_len"), dma1_h2c_byp_in_st_qid("dma1_h2c_byp_in_st_qid"), dma1_h2c_byp_in_st_func("dma1_h2c_byp_in_st_func"), dma1_h2c_byp_in_st_addr("dma1_h2c_byp_in_st_addr"), dma1_h2c_byp_in_st_cidx("dma1_h2c_byp_in_st_cidx"), dma1_h2c_byp_in_st_port_id("dma1_h2c_byp_in_st_port_id"), dma1_h2c_byp_out_valid("dma1_h2c_byp_out_valid"), dma1_h2c_byp_out_error("dma1_h2c_byp_out_error"), dma1_h2c_byp_out_st_mm("dma1_h2c_byp_out_st_mm"), dma1_h2c_byp_out_mm_chn("dma1_h2c_byp_out_mm_chn"), dma1_h2c_byp_out_ready("dma1_h2c_byp_out_ready"), dma1_h2c_byp_out_fmt("dma1_h2c_byp_out_fmt"), dma1_h2c_byp_out_qid("dma1_h2c_byp_out_qid"), dma1_h2c_byp_out_dsc("dma1_h2c_byp_out_dsc"), dma1_h2c_byp_out_func("dma1_h2c_byp_out_func"), dma1_h2c_byp_out_cidx("dma1_h2c_byp_out_cidx"), dma1_h2c_byp_out_dsc_sz("dma1_h2c_byp_out_dsc_sz"), dma1_h2c_byp_out_port_id("dma1_h2c_byp_out_port_id"), dma1_axis_c2h_dmawr_cmp("dma1_axis_c2h_dmawr_cmp"), dma1_axis_c2h_dmawr_target_vch("dma1_axis_c2h_dmawr_target_vch"), dma1_axis_c2h_dmawr_port_id("dma1_axis_c2h_dmawr_port_id"), dma1_s_axis_c2h_tready("dma1_s_axis_c2h_tready"), dma1_s_axis_c2h_tlast("dma1_s_axis_c2h_tlast"), dma1_s_axis_c2h_tvalid("dma1_s_axis_c2h_tvalid"), dma1_s_axis_c2h_tcrc("dma1_s_axis_c2h_tcrc"), dma1_s_axis_c2h_tdata("dma1_s_axis_c2h_tdata"), dma1_s_axis_c2h_mty("dma1_s_axis_c2h_mty"), dma1_s_axis_c2h_ecc("dma1_s_axis_c2h_ecc"), dma1_s_axis_c2h_ctrl_marker("dma1_s_axis_c2h_ctrl_marker"), dma1_s_axis_c2h_ctrl_has_cmpt("dma1_s_axis_c2h_ctrl_has_cmpt"), dma1_s_axis_c2h_ctrl_len("dma1_s_axis_c2h_ctrl_len"), dma1_s_axis_c2h_ctrl_qid("dma1_s_axis_c2h_ctrl_qid"), dma1_s_axis_c2h_ctrl_port_id("dma1_s_axis_c2h_ctrl_port_id"), dma1_s_axis_c2h_cmpt_marker("dma1_s_axis_c2h_cmpt_marker"), dma1_s_axis_c2h_cmpt_user_trig("dma1_s_axis_c2h_cmpt_user_trig"), dma1_s_axis_c2h_cmpt_size("dma1_s_axis_c2h_cmpt_size"), dma1_s_axis_c2h_cmpt_qid("dma1_s_axis_c2h_cmpt_qid"), dma1_s_axis_c2h_cmpt_no_wrb_marker("dma1_s_axis_c2h_cmpt_no_wrb_marker"), dma1_s_axis_c2h_cmpt_port_id("dma1_s_axis_c2h_cmpt_port_id"), dma1_s_axis_c2h_cmpt_col_idx("dma1_s_axis_c2h_cmpt_col_idx"), dma1_s_axis_c2h_cmpt_err_idx("dma1_s_axis_c2h_cmpt_err_idx"), dma1_s_axis_c2h_cmpt_wait_pld_pkt_id("dma1_s_axis_c2h_cmpt_wait_pld_pkt_id"), dma1_s_axis_c2h_cmpt_tready("dma1_s_axis_c2h_cmpt_tready"), dma1_s_axis_c2h_cmpt_tvalid("dma1_s_axis_c2h_cmpt_tvalid"), dma1_s_axis_c2h_cmpt_dpar("dma1_s_axis_c2h_cmpt_dpar"), dma1_s_axis_c2h_cmpt_data("dma1_s_axis_c2h_cmpt_data"), dma1_s_axis_c2h_cmpt_cmpt_type("dma1_s_axis_c2h_cmpt_cmpt_type"), dma1_m_axis_h2c_tlast("dma1_m_axis_h2c_tlast"), dma1_m_axis_h2c_err("dma1_m_axis_h2c_err"), dma1_m_axis_h2c_tvalid("dma1_m_axis_h2c_tvalid"), dma1_m_axis_h2c_tdata("dma1_m_axis_h2c_tdata"), dma1_m_axis_h2c_zero_byte("dma1_m_axis_h2c_zero_byte"), dma1_m_axis_h2c_tready("dma1_m_axis_h2c_tready"), dma1_m_axis_h2c_tcrc("dma1_m_axis_h2c_tcrc"), dma1_m_axis_h2c_mty("dma1_m_axis_h2c_mty"), dma1_m_axis_h2c_qid("dma1_m_axis_h2c_qid"), dma1_m_axis_h2c_mdata("dma1_m_axis_h2c_mdata"), dma1_m_axis_h2c_port_id("dma1_m_axis_h2c_port_id"), dma1_axis_c2h_status_last("dma1_axis_c2h_status_last"), dma1_axis_c2h_status_drop("dma1_axis_c2h_status_drop"), dma1_axis_c2h_status_error("dma1_axis_c2h_status_error"), dma1_axis_c2h_status_valid("dma1_axis_c2h_status_valid"), dma1_axis_c2h_status_status_cmp("dma1_axis_c2h_status_status_cmp"), dma1_axis_c2h_status_qid("dma1_axis_c2h_status_qid"), dma1_qsts_out_vld("dma1_qsts_out_vld"), dma1_qsts_out_op("dma1_qsts_out_op"), dma1_qsts_out_rdy("dma1_qsts_out_rdy"), dma1_qsts_out_qid("dma1_qsts_out_qid"), dma1_qsts_out_data("dma1_qsts_out_data"), dma1_qsts_out_port_id("dma1_qsts_out_port_id"), dma1_dsc_crdt_in_rdy("dma1_dsc_crdt_in_rdy"), dma1_dsc_crdt_in_dir("dma1_dsc_crdt_in_dir"), dma1_dsc_crdt_in_valid("dma1_dsc_crdt_in_valid"), dma1_dsc_crdt_in_fence("dma1_dsc_crdt_in_fence"), dma1_dsc_crdt_in_qid("dma1_dsc_crdt_in_qid"), dma1_dsc_crdt_in_crdt("dma1_dsc_crdt_in_crdt"), dma1_usr_irq_ack("dma1_usr_irq_ack"), dma1_usr_irq_fail("dma1_usr_irq_fail"), dma1_usr_irq_valid("dma1_usr_irq_valid"), dma1_usr_irq_vec("dma1_usr_irq_vec"), dma1_usr_irq_fnc("dma1_usr_irq_fnc"), dma1_tm_dsc_sts_mm("dma1_tm_dsc_sts_mm"), dma1_tm_dsc_sts_qen("dma1_tm_dsc_sts_qen"), dma1_tm_dsc_sts_byp("dma1_tm_dsc_sts_byp"), dma1_tm_dsc_sts_dir("dma1_tm_dsc_sts_dir"), dma1_tm_dsc_sts_error("dma1_tm_dsc_sts_error"), dma1_tm_dsc_sts_valid("dma1_tm_dsc_sts_valid"), dma1_tm_dsc_sts_qinv("dma1_tm_dsc_sts_qinv"), dma1_tm_dsc_sts_irq_arm("dma1_tm_dsc_sts_irq_arm"), dma1_tm_dsc_sts_rdy("dma1_tm_dsc_sts_rdy"), dma1_tm_dsc_sts_qid("dma1_tm_dsc_sts_qid"), dma1_tm_dsc_sts_avl("dma1_tm_dsc_sts_avl"), dma1_tm_dsc_sts_pidx("dma1_tm_dsc_sts_pidx"), dma1_tm_dsc_sts_port_id("dma1_tm_dsc_sts_port_id"), dma1_usr_flr_set("dma1_usr_flr_set"), dma1_usr_flr_clear("dma1_usr_flr_clear"), dma1_usr_flr_fnc("dma1_usr_flr_fnc"), dma1_usr_flr_done_vld("dma1_usr_flr_done_vld"), dma1_usr_flr_done_fnc("dma1_usr_flr_done_fnc"), PCIE1_GT_grx_n("PCIE1_GT_grx_n"), PCIE1_GT_gtx_n("PCIE1_GT_gtx_n"), PCIE1_GT_grx_p("PCIE1_GT_grx_p"), PCIE1_GT_gtx_p("PCIE1_GT_gtx_p"), gt_refclk1_clk_n("gt_refclk1_clk_n"), gt_refclk1_clk_p("gt_refclk1_clk_p"), pcie1_pipe_ep_tx_0("pcie1_pipe_ep_tx_0"), pcie1_pipe_ep_rx_0("pcie1_pipe_ep_rx_0"), pcie1_pipe_ep_tx_1("pcie1_pipe_ep_tx_1"), pcie1_pipe_ep_rx_1("pcie1_pipe_ep_rx_1"), pcie1_pipe_ep_tx_2("pcie1_pipe_ep_tx_2"), pcie1_pipe_ep_rx_2("pcie1_pipe_ep_rx_2"), pcie1_pipe_ep_tx_3("pcie1_pipe_ep_tx_3"), pcie1_pipe_ep_rx_3("pcie1_pipe_ep_rx_3"), pcie1_pipe_ep_tx_4("pcie1_pipe_ep_tx_4"), pcie1_pipe_ep_rx_4("pcie1_pipe_ep_rx_4"), pcie1_pipe_ep_tx_5("pcie1_pipe_ep_tx_5"), pcie1_pipe_ep_rx_5("pcie1_pipe_ep_rx_5"), pcie1_pipe_ep_tx_6("pcie1_pipe_ep_tx_6"), pcie1_pipe_ep_rx_6("pcie1_pipe_ep_rx_6"), pcie1_pipe_ep_tx_7("pcie1_pipe_ep_tx_7"), pcie1_pipe_ep_rx_7("pcie1_pipe_ep_rx_7"), pcie1_pipe_ep_tx_8("pcie1_pipe_ep_tx_8"), pcie1_pipe_ep_rx_8("pcie1_pipe_ep_rx_8"), pcie1_pipe_ep_tx_9("pcie1_pipe_ep_tx_9"), pcie1_pipe_ep_rx_9("pcie1_pipe_ep_rx_9"), pcie1_pipe_ep_tx_10("pcie1_pipe_ep_tx_10"), pcie1_pipe_ep_rx_10("pcie1_pipe_ep_rx_10"), pcie1_pipe_ep_tx_11("pcie1_pipe_ep_tx_11"), pcie1_pipe_ep_rx_11("pcie1_pipe_ep_rx_11"), pcie1_pipe_ep_tx_12("pcie1_pipe_ep_tx_12"), pcie1_pipe_ep_rx_12("pcie1_pipe_ep_rx_12"), pcie1_pipe_ep_tx_13("pcie1_pipe_ep_tx_13"), pcie1_pipe_ep_rx_13("pcie1_pipe_ep_rx_13"), pcie1_pipe_ep_tx_14("pcie1_pipe_ep_tx_14"), pcie1_pipe_ep_rx_14("pcie1_pipe_ep_rx_14"), pcie1_pipe_ep_tx_15("pcie1_pipe_ep_tx_15"), pcie1_pipe_ep_rx_15("pcie1_pipe_ep_rx_15"), pcie1_pipe_ep_commands_in("pcie1_pipe_ep_commands_in"), pcie1_pipe_ep_commands_out("pcie1_pipe_ep_commands_out")
{

  // initialize pins
  mp_impl->pl0_ref_clk(pl0_ref_clk);
  mp_impl->pl1_ref_clk(pl1_ref_clk);
  mp_impl->pl0_resetn(pl0_resetn);
  mp_impl->m_axi_fpd_aclk(m_axi_fpd_aclk);
  mp_impl->cpm_pcie_noc_axi0_clk(cpm_pcie_noc_axi0_clk);
  mp_impl->cpm_pcie_noc_axi1_clk(cpm_pcie_noc_axi1_clk);
  mp_impl->dma1_intrfc_clk(dma1_intrfc_clk);
  mp_impl->cpm_misc_irq(cpm_misc_irq);
  mp_impl->cpm_cor_irq(cpm_cor_irq);
  mp_impl->cpm_uncor_irq(cpm_uncor_irq);
  mp_impl->cpm_irq0(cpm_irq0);
  mp_impl->cpm_irq1(cpm_irq1);
  mp_impl->dma1_axi_aresetn(dma1_axi_aresetn);
  mp_impl->dma1_intrfc_resetn(dma1_intrfc_resetn);
  mp_impl->dma1_mgmt_cpl_vld(dma1_mgmt_cpl_vld);
  mp_impl->dma1_mgmt_req_rdy(dma1_mgmt_req_rdy);
  mp_impl->dma1_mgmt_cpl_rdy(dma1_mgmt_cpl_rdy);
  mp_impl->dma1_mgmt_req_vld(dma1_mgmt_req_vld);
  mp_impl->dma1_mgmt_cpl_sts(dma1_mgmt_cpl_sts);
  mp_impl->dma1_mgmt_cpl_dat(dma1_mgmt_cpl_dat);
  mp_impl->dma1_mgmt_req_cmd(dma1_mgmt_req_cmd);
  mp_impl->dma1_mgmt_req_fnc(dma1_mgmt_req_fnc);
  mp_impl->dma1_mgmt_req_msc(dma1_mgmt_req_msc);
  mp_impl->dma1_mgmt_req_adr(dma1_mgmt_req_adr);
  mp_impl->dma1_mgmt_req_dat(dma1_mgmt_req_dat);
  mp_impl->dma1_c2h_byp_in_mm_0_ready(dma1_c2h_byp_in_mm_0_ready);
  mp_impl->dma1_c2h_byp_in_mm_0_sdi(dma1_c2h_byp_in_mm_0_sdi);
  mp_impl->dma1_c2h_byp_in_mm_0_valid(dma1_c2h_byp_in_mm_0_valid);
  mp_impl->dma1_c2h_byp_in_mm_0_error(dma1_c2h_byp_in_mm_0_error);
  mp_impl->dma1_c2h_byp_in_mm_0_no_dma(dma1_c2h_byp_in_mm_0_no_dma);
  mp_impl->dma1_c2h_byp_in_mm_0_mrkr_req(dma1_c2h_byp_in_mm_0_mrkr_req);
  mp_impl->dma1_c2h_byp_in_mm_0_len(dma1_c2h_byp_in_mm_0_len);
  mp_impl->dma1_c2h_byp_in_mm_0_qid(dma1_c2h_byp_in_mm_0_qid);
  mp_impl->dma1_c2h_byp_in_mm_0_func(dma1_c2h_byp_in_mm_0_func);
  mp_impl->dma1_c2h_byp_in_mm_0_cidx(dma1_c2h_byp_in_mm_0_cidx);
  mp_impl->dma1_c2h_byp_in_mm_0_radr(dma1_c2h_byp_in_mm_0_radr);
  mp_impl->dma1_c2h_byp_in_mm_0_wadr(dma1_c2h_byp_in_mm_0_wadr);
  mp_impl->dma1_c2h_byp_in_mm_0_port_id(dma1_c2h_byp_in_mm_0_port_id);
  mp_impl->dma1_c2h_byp_in_mm_1_ready(dma1_c2h_byp_in_mm_1_ready);
  mp_impl->dma1_c2h_byp_in_mm_1_sdi(dma1_c2h_byp_in_mm_1_sdi);
  mp_impl->dma1_c2h_byp_in_mm_1_valid(dma1_c2h_byp_in_mm_1_valid);
  mp_impl->dma1_c2h_byp_in_mm_1_error(dma1_c2h_byp_in_mm_1_error);
  mp_impl->dma1_c2h_byp_in_mm_1_no_dma(dma1_c2h_byp_in_mm_1_no_dma);
  mp_impl->dma1_c2h_byp_in_mm_1_mrkr_req(dma1_c2h_byp_in_mm_1_mrkr_req);
  mp_impl->dma1_c2h_byp_in_mm_1_len(dma1_c2h_byp_in_mm_1_len);
  mp_impl->dma1_c2h_byp_in_mm_1_qid(dma1_c2h_byp_in_mm_1_qid);
  mp_impl->dma1_c2h_byp_in_mm_1_func(dma1_c2h_byp_in_mm_1_func);
  mp_impl->dma1_c2h_byp_in_mm_1_cidx(dma1_c2h_byp_in_mm_1_cidx);
  mp_impl->dma1_c2h_byp_in_mm_1_radr(dma1_c2h_byp_in_mm_1_radr);
  mp_impl->dma1_c2h_byp_in_mm_1_wadr(dma1_c2h_byp_in_mm_1_wadr);
  mp_impl->dma1_c2h_byp_in_mm_1_port_id(dma1_c2h_byp_in_mm_1_port_id);
  mp_impl->dma1_c2h_byp_in_st_csh_ready(dma1_c2h_byp_in_st_csh_ready);
  mp_impl->dma1_c2h_byp_in_st_csh_valid(dma1_c2h_byp_in_st_csh_valid);
  mp_impl->dma1_c2h_byp_in_st_csh_error(dma1_c2h_byp_in_st_csh_error);
  mp_impl->dma1_c2h_byp_in_st_csh_qid(dma1_c2h_byp_in_st_csh_qid);
  mp_impl->dma1_c2h_byp_in_st_csh_func(dma1_c2h_byp_in_st_csh_func);
  mp_impl->dma1_c2h_byp_in_st_csh_addr(dma1_c2h_byp_in_st_csh_addr);
  mp_impl->dma1_c2h_byp_in_st_csh_port_id(dma1_c2h_byp_in_st_csh_port_id);
  mp_impl->dma1_c2h_byp_in_st_csh_pfch_tag(dma1_c2h_byp_in_st_csh_pfch_tag);
  mp_impl->dma1_c2h_byp_out_valid(dma1_c2h_byp_out_valid);
  mp_impl->dma1_c2h_byp_out_error(dma1_c2h_byp_out_error);
  mp_impl->dma1_c2h_byp_out_st_mm(dma1_c2h_byp_out_st_mm);
  mp_impl->dma1_c2h_byp_out_mm_chn(dma1_c2h_byp_out_mm_chn);
  mp_impl->dma1_c2h_byp_out_ready(dma1_c2h_byp_out_ready);
  mp_impl->dma1_c2h_byp_out_fmt(dma1_c2h_byp_out_fmt);
  mp_impl->dma1_c2h_byp_out_qid(dma1_c2h_byp_out_qid);
  mp_impl->dma1_c2h_byp_out_dsc(dma1_c2h_byp_out_dsc);
  mp_impl->dma1_c2h_byp_out_func(dma1_c2h_byp_out_func);
  mp_impl->dma1_c2h_byp_out_cidx(dma1_c2h_byp_out_cidx);
  mp_impl->dma1_c2h_byp_out_dsc_sz(dma1_c2h_byp_out_dsc_sz);
  mp_impl->dma1_c2h_byp_out_port_id(dma1_c2h_byp_out_port_id);
  mp_impl->dma1_c2h_byp_out_pfch_tag(dma1_c2h_byp_out_pfch_tag);
  mp_impl->dma1_h2c_byp_in_mm_0_ready(dma1_h2c_byp_in_mm_0_ready);
  mp_impl->dma1_h2c_byp_in_mm_0_sdi(dma1_h2c_byp_in_mm_0_sdi);
  mp_impl->dma1_h2c_byp_in_mm_0_valid(dma1_h2c_byp_in_mm_0_valid);
  mp_impl->dma1_h2c_byp_in_mm_0_error(dma1_h2c_byp_in_mm_0_error);
  mp_impl->dma1_h2c_byp_in_mm_0_no_dma(dma1_h2c_byp_in_mm_0_no_dma);
  mp_impl->dma1_h2c_byp_in_mm_0_mrkr_req(dma1_h2c_byp_in_mm_0_mrkr_req);
  mp_impl->dma1_h2c_byp_in_mm_0_len(dma1_h2c_byp_in_mm_0_len);
  mp_impl->dma1_h2c_byp_in_mm_0_qid(dma1_h2c_byp_in_mm_0_qid);
  mp_impl->dma1_h2c_byp_in_mm_0_func(dma1_h2c_byp_in_mm_0_func);
  mp_impl->dma1_h2c_byp_in_mm_0_cidx(dma1_h2c_byp_in_mm_0_cidx);
  mp_impl->dma1_h2c_byp_in_mm_0_radr(dma1_h2c_byp_in_mm_0_radr);
  mp_impl->dma1_h2c_byp_in_mm_0_wadr(dma1_h2c_byp_in_mm_0_wadr);
  mp_impl->dma1_h2c_byp_in_mm_0_port_id(dma1_h2c_byp_in_mm_0_port_id);
  mp_impl->dma1_h2c_byp_in_mm_1_ready(dma1_h2c_byp_in_mm_1_ready);
  mp_impl->dma1_h2c_byp_in_mm_1_sdi(dma1_h2c_byp_in_mm_1_sdi);
  mp_impl->dma1_h2c_byp_in_mm_1_valid(dma1_h2c_byp_in_mm_1_valid);
  mp_impl->dma1_h2c_byp_in_mm_1_error(dma1_h2c_byp_in_mm_1_error);
  mp_impl->dma1_h2c_byp_in_mm_1_no_dma(dma1_h2c_byp_in_mm_1_no_dma);
  mp_impl->dma1_h2c_byp_in_mm_1_mrkr_req(dma1_h2c_byp_in_mm_1_mrkr_req);
  mp_impl->dma1_h2c_byp_in_mm_1_len(dma1_h2c_byp_in_mm_1_len);
  mp_impl->dma1_h2c_byp_in_mm_1_qid(dma1_h2c_byp_in_mm_1_qid);
  mp_impl->dma1_h2c_byp_in_mm_1_func(dma1_h2c_byp_in_mm_1_func);
  mp_impl->dma1_h2c_byp_in_mm_1_cidx(dma1_h2c_byp_in_mm_1_cidx);
  mp_impl->dma1_h2c_byp_in_mm_1_radr(dma1_h2c_byp_in_mm_1_radr);
  mp_impl->dma1_h2c_byp_in_mm_1_wadr(dma1_h2c_byp_in_mm_1_wadr);
  mp_impl->dma1_h2c_byp_in_mm_1_port_id(dma1_h2c_byp_in_mm_1_port_id);
  mp_impl->dma1_h2c_byp_in_st_ready(dma1_h2c_byp_in_st_ready);
  mp_impl->dma1_h2c_byp_in_st_eop(dma1_h2c_byp_in_st_eop);
  mp_impl->dma1_h2c_byp_in_st_sdi(dma1_h2c_byp_in_st_sdi);
  mp_impl->dma1_h2c_byp_in_st_sop(dma1_h2c_byp_in_st_sop);
  mp_impl->dma1_h2c_byp_in_st_valid(dma1_h2c_byp_in_st_valid);
  mp_impl->dma1_h2c_byp_in_st_error(dma1_h2c_byp_in_st_error);
  mp_impl->dma1_h2c_byp_in_st_no_dma(dma1_h2c_byp_in_st_no_dma);
  mp_impl->dma1_h2c_byp_in_st_mrkr_req(dma1_h2c_byp_in_st_mrkr_req);
  mp_impl->dma1_h2c_byp_in_st_len(dma1_h2c_byp_in_st_len);
  mp_impl->dma1_h2c_byp_in_st_qid(dma1_h2c_byp_in_st_qid);
  mp_impl->dma1_h2c_byp_in_st_func(dma1_h2c_byp_in_st_func);
  mp_impl->dma1_h2c_byp_in_st_addr(dma1_h2c_byp_in_st_addr);
  mp_impl->dma1_h2c_byp_in_st_cidx(dma1_h2c_byp_in_st_cidx);
  mp_impl->dma1_h2c_byp_in_st_port_id(dma1_h2c_byp_in_st_port_id);
  mp_impl->dma1_h2c_byp_out_valid(dma1_h2c_byp_out_valid);
  mp_impl->dma1_h2c_byp_out_error(dma1_h2c_byp_out_error);
  mp_impl->dma1_h2c_byp_out_st_mm(dma1_h2c_byp_out_st_mm);
  mp_impl->dma1_h2c_byp_out_mm_chn(dma1_h2c_byp_out_mm_chn);
  mp_impl->dma1_h2c_byp_out_ready(dma1_h2c_byp_out_ready);
  mp_impl->dma1_h2c_byp_out_fmt(dma1_h2c_byp_out_fmt);
  mp_impl->dma1_h2c_byp_out_qid(dma1_h2c_byp_out_qid);
  mp_impl->dma1_h2c_byp_out_dsc(dma1_h2c_byp_out_dsc);
  mp_impl->dma1_h2c_byp_out_func(dma1_h2c_byp_out_func);
  mp_impl->dma1_h2c_byp_out_cidx(dma1_h2c_byp_out_cidx);
  mp_impl->dma1_h2c_byp_out_dsc_sz(dma1_h2c_byp_out_dsc_sz);
  mp_impl->dma1_h2c_byp_out_port_id(dma1_h2c_byp_out_port_id);
  mp_impl->dma1_axis_c2h_dmawr_cmp(dma1_axis_c2h_dmawr_cmp);
  mp_impl->dma1_axis_c2h_dmawr_target_vch(dma1_axis_c2h_dmawr_target_vch);
  mp_impl->dma1_axis_c2h_dmawr_port_id(dma1_axis_c2h_dmawr_port_id);
  mp_impl->dma1_s_axis_c2h_tready(dma1_s_axis_c2h_tready);
  mp_impl->dma1_s_axis_c2h_tlast(dma1_s_axis_c2h_tlast);
  mp_impl->dma1_s_axis_c2h_tvalid(dma1_s_axis_c2h_tvalid);
  mp_impl->dma1_s_axis_c2h_tcrc(dma1_s_axis_c2h_tcrc);
  mp_impl->dma1_s_axis_c2h_tdata(dma1_s_axis_c2h_tdata);
  mp_impl->dma1_s_axis_c2h_mty(dma1_s_axis_c2h_mty);
  mp_impl->dma1_s_axis_c2h_ecc(dma1_s_axis_c2h_ecc);
  mp_impl->dma1_s_axis_c2h_ctrl_marker(dma1_s_axis_c2h_ctrl_marker);
  mp_impl->dma1_s_axis_c2h_ctrl_has_cmpt(dma1_s_axis_c2h_ctrl_has_cmpt);
  mp_impl->dma1_s_axis_c2h_ctrl_len(dma1_s_axis_c2h_ctrl_len);
  mp_impl->dma1_s_axis_c2h_ctrl_qid(dma1_s_axis_c2h_ctrl_qid);
  mp_impl->dma1_s_axis_c2h_ctrl_port_id(dma1_s_axis_c2h_ctrl_port_id);
  mp_impl->dma1_s_axis_c2h_cmpt_marker(dma1_s_axis_c2h_cmpt_marker);
  mp_impl->dma1_s_axis_c2h_cmpt_user_trig(dma1_s_axis_c2h_cmpt_user_trig);
  mp_impl->dma1_s_axis_c2h_cmpt_size(dma1_s_axis_c2h_cmpt_size);
  mp_impl->dma1_s_axis_c2h_cmpt_qid(dma1_s_axis_c2h_cmpt_qid);
  mp_impl->dma1_s_axis_c2h_cmpt_no_wrb_marker(dma1_s_axis_c2h_cmpt_no_wrb_marker);
  mp_impl->dma1_s_axis_c2h_cmpt_port_id(dma1_s_axis_c2h_cmpt_port_id);
  mp_impl->dma1_s_axis_c2h_cmpt_col_idx(dma1_s_axis_c2h_cmpt_col_idx);
  mp_impl->dma1_s_axis_c2h_cmpt_err_idx(dma1_s_axis_c2h_cmpt_err_idx);
  mp_impl->dma1_s_axis_c2h_cmpt_wait_pld_pkt_id(dma1_s_axis_c2h_cmpt_wait_pld_pkt_id);
  mp_impl->dma1_s_axis_c2h_cmpt_tready(dma1_s_axis_c2h_cmpt_tready);
  mp_impl->dma1_s_axis_c2h_cmpt_tvalid(dma1_s_axis_c2h_cmpt_tvalid);
  mp_impl->dma1_s_axis_c2h_cmpt_dpar(dma1_s_axis_c2h_cmpt_dpar);
  mp_impl->dma1_s_axis_c2h_cmpt_data(dma1_s_axis_c2h_cmpt_data);
  mp_impl->dma1_s_axis_c2h_cmpt_cmpt_type(dma1_s_axis_c2h_cmpt_cmpt_type);
  mp_impl->dma1_m_axis_h2c_tlast(dma1_m_axis_h2c_tlast);
  mp_impl->dma1_m_axis_h2c_err(dma1_m_axis_h2c_err);
  mp_impl->dma1_m_axis_h2c_tvalid(dma1_m_axis_h2c_tvalid);
  mp_impl->dma1_m_axis_h2c_tdata(dma1_m_axis_h2c_tdata);
  mp_impl->dma1_m_axis_h2c_zero_byte(dma1_m_axis_h2c_zero_byte);
  mp_impl->dma1_m_axis_h2c_tready(dma1_m_axis_h2c_tready);
  mp_impl->dma1_m_axis_h2c_tcrc(dma1_m_axis_h2c_tcrc);
  mp_impl->dma1_m_axis_h2c_mty(dma1_m_axis_h2c_mty);
  mp_impl->dma1_m_axis_h2c_qid(dma1_m_axis_h2c_qid);
  mp_impl->dma1_m_axis_h2c_mdata(dma1_m_axis_h2c_mdata);
  mp_impl->dma1_m_axis_h2c_port_id(dma1_m_axis_h2c_port_id);
  mp_impl->dma1_axis_c2h_status_last(dma1_axis_c2h_status_last);
  mp_impl->dma1_axis_c2h_status_drop(dma1_axis_c2h_status_drop);
  mp_impl->dma1_axis_c2h_status_error(dma1_axis_c2h_status_error);
  mp_impl->dma1_axis_c2h_status_valid(dma1_axis_c2h_status_valid);
  mp_impl->dma1_axis_c2h_status_status_cmp(dma1_axis_c2h_status_status_cmp);
  mp_impl->dma1_axis_c2h_status_qid(dma1_axis_c2h_status_qid);
  mp_impl->dma1_qsts_out_vld(dma1_qsts_out_vld);
  mp_impl->dma1_qsts_out_op(dma1_qsts_out_op);
  mp_impl->dma1_qsts_out_rdy(dma1_qsts_out_rdy);
  mp_impl->dma1_qsts_out_qid(dma1_qsts_out_qid);
  mp_impl->dma1_qsts_out_data(dma1_qsts_out_data);
  mp_impl->dma1_qsts_out_port_id(dma1_qsts_out_port_id);
  mp_impl->dma1_dsc_crdt_in_rdy(dma1_dsc_crdt_in_rdy);
  mp_impl->dma1_dsc_crdt_in_dir(dma1_dsc_crdt_in_dir);
  mp_impl->dma1_dsc_crdt_in_valid(dma1_dsc_crdt_in_valid);
  mp_impl->dma1_dsc_crdt_in_fence(dma1_dsc_crdt_in_fence);
  mp_impl->dma1_dsc_crdt_in_qid(dma1_dsc_crdt_in_qid);
  mp_impl->dma1_dsc_crdt_in_crdt(dma1_dsc_crdt_in_crdt);
  mp_impl->dma1_usr_irq_ack(dma1_usr_irq_ack);
  mp_impl->dma1_usr_irq_fail(dma1_usr_irq_fail);
  mp_impl->dma1_usr_irq_valid(dma1_usr_irq_valid);
  mp_impl->dma1_usr_irq_vec(dma1_usr_irq_vec);
  mp_impl->dma1_usr_irq_fnc(dma1_usr_irq_fnc);
  mp_impl->dma1_tm_dsc_sts_mm(dma1_tm_dsc_sts_mm);
  mp_impl->dma1_tm_dsc_sts_qen(dma1_tm_dsc_sts_qen);
  mp_impl->dma1_tm_dsc_sts_byp(dma1_tm_dsc_sts_byp);
  mp_impl->dma1_tm_dsc_sts_dir(dma1_tm_dsc_sts_dir);
  mp_impl->dma1_tm_dsc_sts_error(dma1_tm_dsc_sts_error);
  mp_impl->dma1_tm_dsc_sts_valid(dma1_tm_dsc_sts_valid);
  mp_impl->dma1_tm_dsc_sts_qinv(dma1_tm_dsc_sts_qinv);
  mp_impl->dma1_tm_dsc_sts_irq_arm(dma1_tm_dsc_sts_irq_arm);
  mp_impl->dma1_tm_dsc_sts_rdy(dma1_tm_dsc_sts_rdy);
  mp_impl->dma1_tm_dsc_sts_qid(dma1_tm_dsc_sts_qid);
  mp_impl->dma1_tm_dsc_sts_avl(dma1_tm_dsc_sts_avl);
  mp_impl->dma1_tm_dsc_sts_pidx(dma1_tm_dsc_sts_pidx);
  mp_impl->dma1_tm_dsc_sts_port_id(dma1_tm_dsc_sts_port_id);
  mp_impl->dma1_usr_flr_set(dma1_usr_flr_set);
  mp_impl->dma1_usr_flr_clear(dma1_usr_flr_clear);
  mp_impl->dma1_usr_flr_fnc(dma1_usr_flr_fnc);
  mp_impl->dma1_usr_flr_done_vld(dma1_usr_flr_done_vld);
  mp_impl->dma1_usr_flr_done_fnc(dma1_usr_flr_done_fnc);
  mp_impl->PCIE1_GT_grx_n(PCIE1_GT_grx_n);
  mp_impl->PCIE1_GT_gtx_n(PCIE1_GT_gtx_n);
  mp_impl->PCIE1_GT_grx_p(PCIE1_GT_grx_p);
  mp_impl->PCIE1_GT_gtx_p(PCIE1_GT_gtx_p);
  mp_impl->gt_refclk1_clk_n(gt_refclk1_clk_n);
  mp_impl->gt_refclk1_clk_p(gt_refclk1_clk_p);
  mp_impl->pcie1_pipe_ep_tx_0(pcie1_pipe_ep_tx_0);
  mp_impl->pcie1_pipe_ep_rx_0(pcie1_pipe_ep_rx_0);
  mp_impl->pcie1_pipe_ep_tx_1(pcie1_pipe_ep_tx_1);
  mp_impl->pcie1_pipe_ep_rx_1(pcie1_pipe_ep_rx_1);
  mp_impl->pcie1_pipe_ep_tx_2(pcie1_pipe_ep_tx_2);
  mp_impl->pcie1_pipe_ep_rx_2(pcie1_pipe_ep_rx_2);
  mp_impl->pcie1_pipe_ep_tx_3(pcie1_pipe_ep_tx_3);
  mp_impl->pcie1_pipe_ep_rx_3(pcie1_pipe_ep_rx_3);
  mp_impl->pcie1_pipe_ep_tx_4(pcie1_pipe_ep_tx_4);
  mp_impl->pcie1_pipe_ep_rx_4(pcie1_pipe_ep_rx_4);
  mp_impl->pcie1_pipe_ep_tx_5(pcie1_pipe_ep_tx_5);
  mp_impl->pcie1_pipe_ep_rx_5(pcie1_pipe_ep_rx_5);
  mp_impl->pcie1_pipe_ep_tx_6(pcie1_pipe_ep_tx_6);
  mp_impl->pcie1_pipe_ep_rx_6(pcie1_pipe_ep_rx_6);
  mp_impl->pcie1_pipe_ep_tx_7(pcie1_pipe_ep_tx_7);
  mp_impl->pcie1_pipe_ep_rx_7(pcie1_pipe_ep_rx_7);
  mp_impl->pcie1_pipe_ep_tx_8(pcie1_pipe_ep_tx_8);
  mp_impl->pcie1_pipe_ep_rx_8(pcie1_pipe_ep_rx_8);
  mp_impl->pcie1_pipe_ep_tx_9(pcie1_pipe_ep_tx_9);
  mp_impl->pcie1_pipe_ep_rx_9(pcie1_pipe_ep_rx_9);
  mp_impl->pcie1_pipe_ep_tx_10(pcie1_pipe_ep_tx_10);
  mp_impl->pcie1_pipe_ep_rx_10(pcie1_pipe_ep_rx_10);
  mp_impl->pcie1_pipe_ep_tx_11(pcie1_pipe_ep_tx_11);
  mp_impl->pcie1_pipe_ep_rx_11(pcie1_pipe_ep_rx_11);
  mp_impl->pcie1_pipe_ep_tx_12(pcie1_pipe_ep_tx_12);
  mp_impl->pcie1_pipe_ep_rx_12(pcie1_pipe_ep_rx_12);
  mp_impl->pcie1_pipe_ep_tx_13(pcie1_pipe_ep_tx_13);
  mp_impl->pcie1_pipe_ep_rx_13(pcie1_pipe_ep_rx_13);
  mp_impl->pcie1_pipe_ep_tx_14(pcie1_pipe_ep_tx_14);
  mp_impl->pcie1_pipe_ep_rx_14(pcie1_pipe_ep_rx_14);
  mp_impl->pcie1_pipe_ep_tx_15(pcie1_pipe_ep_tx_15);
  mp_impl->pcie1_pipe_ep_rx_15(pcie1_pipe_ep_rx_15);
  mp_impl->pcie1_pipe_ep_commands_in(pcie1_pipe_ep_commands_in);
  mp_impl->pcie1_pipe_ep_commands_out(pcie1_pipe_ep_commands_out);

  // initialize transactors
  mp_M_AXI_FPD_transactor = NULL;
  mp_CPM_PCIE_NOC_0_transactor = NULL;
  mp_CPM_PCIE_NOC_1_transactor = NULL;
  mp_dma1_st_rx_msg_transactor = NULL;

  // initialize socket stubs

}

void cpm_qdma_ep_part_versal_cips_0_0::before_end_of_elaboration()
{
  // configure 'M_AXI_FPD' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("cpm_qdma_ep_part_versal_cips_0_0", "M_AXI_FPD_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXI_FPD' transactor parameters
    xsc::common_cpp::properties M_AXI_FPD_transactor_param_props;
    M_AXI_FPD_transactor_param_props.addLong("DATA_WIDTH", "128");
    M_AXI_FPD_transactor_param_props.addLong("FREQ_HZ", "429162384");
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
    M_AXI_FPD_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_FPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_FPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_FPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_FPD_transactor_param_props.addString("CLK_DOMAIN", "bd_a532_pspmc_0_0_pl0_ref_clk");
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
    m_M_AXI_FPD_transactor_rst_signal.write(1);
    mp_M_AXI_FPD_transactor->RST(m_M_AXI_FPD_transactor_rst_signal);

    // M_AXI_FPD' transactor sockets

    mp_impl->M_AXI_FPD_tlm_aximm_read_socket->bind(*(mp_M_AXI_FPD_transactor->rd_socket));
    mp_impl->M_AXI_FPD_tlm_aximm_write_socket->bind(*(mp_M_AXI_FPD_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'CPM_PCIE_NOC_0' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("cpm_qdma_ep_part_versal_cips_0_0", "CPM_PCIE_NOC_0_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'CPM_PCIE_NOC_0' transactor parameters
    xsc::common_cpp::properties CPM_PCIE_NOC_0_transactor_param_props;
    CPM_PCIE_NOC_0_transactor_param_props.addLong("DATA_WIDTH", "128");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("FREQ_HZ", "1000000000");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("ID_WIDTH", "16");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("ADDR_WIDTH", "64");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("WUSER_WIDTH", "17");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("RUSER_WIDTH", "17");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("BUSER_WIDTH", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_BURST", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_LOCK", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_PROT", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_CACHE", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_QOS", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_REGION", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_WSTRB", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_BRESP", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_RRESP", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_SIZE", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_RESET", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addFloat("PHASE", "0.0");
    CPM_PCIE_NOC_0_transactor_param_props.addString("PROTOCOL", "AXI4");
    CPM_PCIE_NOC_0_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    CPM_PCIE_NOC_0_transactor_param_props.addString("CLK_DOMAIN", "bd_a532_pspmc_0_0_cpm_pcie_noc_axi0_clk");
    CPM_PCIE_NOC_0_transactor_param_props.addString("CATEGORY", "noc");
    CPM_PCIE_NOC_0_transactor_param_props.addString("MY_CATEGORY", "ps_pcie");
    CPM_PCIE_NOC_0_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_PCIE_TO_NOC_NMU");
    CPM_PCIE_NOC_0_transactor_param_props.addString("HD_TANDEM", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addString("INDEX", "0");

    mp_CPM_PCIE_NOC_0_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,17>("CPM_PCIE_NOC_0_transactor", CPM_PCIE_NOC_0_transactor_param_props);

    // CPM_PCIE_NOC_0' transactor ports

    mp_CPM_PCIE_NOC_0_transactor->ARADDR(CPM_PCIE_NOC_0_araddr);
    mp_CPM_PCIE_NOC_0_transactor->ARBURST(CPM_PCIE_NOC_0_arburst);
    mp_CPM_PCIE_NOC_0_transactor->ARCACHE(CPM_PCIE_NOC_0_arcache);
    mp_CPM_PCIE_NOC_0_transactor->ARID(CPM_PCIE_NOC_0_arid);
    mp_CPM_PCIE_NOC_0_transactor->ARLEN(CPM_PCIE_NOC_0_arlen);
    mp_CPM_PCIE_NOC_0_transactor->ARLOCK(CPM_PCIE_NOC_0_arlock);
    mp_CPM_PCIE_NOC_0_transactor->ARPROT(CPM_PCIE_NOC_0_arprot);
    mp_CPM_PCIE_NOC_0_transactor->ARQOS(CPM_PCIE_NOC_0_arqos);
    mp_CPM_PCIE_NOC_0_transactor->ARSIZE(CPM_PCIE_NOC_0_arsize);
    mp_CPM_PCIE_NOC_0_transactor->ARUSER(CPM_PCIE_NOC_0_aruser);
    mp_CPM_PCIE_NOC_0_transactor->ARVALID(CPM_PCIE_NOC_0_arvalid);
    mp_CPM_PCIE_NOC_0_transactor->AWADDR(CPM_PCIE_NOC_0_awaddr);
    mp_CPM_PCIE_NOC_0_transactor->AWBURST(CPM_PCIE_NOC_0_awburst);
    mp_CPM_PCIE_NOC_0_transactor->AWCACHE(CPM_PCIE_NOC_0_awcache);
    mp_CPM_PCIE_NOC_0_transactor->AWID(CPM_PCIE_NOC_0_awid);
    mp_CPM_PCIE_NOC_0_transactor->AWLEN(CPM_PCIE_NOC_0_awlen);
    mp_CPM_PCIE_NOC_0_transactor->AWLOCK(CPM_PCIE_NOC_0_awlock);
    mp_CPM_PCIE_NOC_0_transactor->AWPROT(CPM_PCIE_NOC_0_awprot);
    mp_CPM_PCIE_NOC_0_transactor->AWQOS(CPM_PCIE_NOC_0_awqos);
    mp_CPM_PCIE_NOC_0_transactor->AWSIZE(CPM_PCIE_NOC_0_awsize);
    mp_CPM_PCIE_NOC_0_transactor->AWUSER(CPM_PCIE_NOC_0_awuser);
    mp_CPM_PCIE_NOC_0_transactor->AWVALID(CPM_PCIE_NOC_0_awvalid);
    mp_CPM_PCIE_NOC_0_transactor->BREADY(CPM_PCIE_NOC_0_bready);
    mp_CPM_PCIE_NOC_0_transactor->RREADY(CPM_PCIE_NOC_0_rready);
    mp_CPM_PCIE_NOC_0_transactor->WDATA(CPM_PCIE_NOC_0_wdata);
    mp_CPM_PCIE_NOC_0_transactor->WLAST(CPM_PCIE_NOC_0_wlast);
    mp_CPM_PCIE_NOC_0_transactor->WSTRB(CPM_PCIE_NOC_0_wstrb);
    mp_CPM_PCIE_NOC_0_transactor->WVALID(CPM_PCIE_NOC_0_wvalid);
    mp_CPM_PCIE_NOC_0_transactor->ARREADY(CPM_PCIE_NOC_0_arready);
    mp_CPM_PCIE_NOC_0_transactor->AWREADY(CPM_PCIE_NOC_0_awready);
    mp_CPM_PCIE_NOC_0_transactor->BID(CPM_PCIE_NOC_0_bid);
    mp_CPM_PCIE_NOC_0_transactor->BRESP(CPM_PCIE_NOC_0_bresp);
    mp_CPM_PCIE_NOC_0_transactor->BVALID(CPM_PCIE_NOC_0_bvalid);
    mp_CPM_PCIE_NOC_0_transactor->RDATA(CPM_PCIE_NOC_0_rdata);
    mp_CPM_PCIE_NOC_0_transactor->RID(CPM_PCIE_NOC_0_rid);
    mp_CPM_PCIE_NOC_0_transactor->RLAST(CPM_PCIE_NOC_0_rlast);
    mp_CPM_PCIE_NOC_0_transactor->RRESP(CPM_PCIE_NOC_0_rresp);
    mp_CPM_PCIE_NOC_0_transactor->RVALID(CPM_PCIE_NOC_0_rvalid);
    mp_CPM_PCIE_NOC_0_transactor->RUSER(CPM_PCIE_NOC_0_ruser);
    mp_CPM_PCIE_NOC_0_transactor->WUSER(CPM_PCIE_NOC_0_wuser);
    mp_CPM_PCIE_NOC_0_transactor->WREADY(CPM_PCIE_NOC_0_wready);
    mp_CPM_PCIE_NOC_0_transactor->CLK(cpm_pcie_noc_axi0_clk);
    m_CPM_PCIE_NOC_0_transactor_rst_signal.write(1);
    mp_CPM_PCIE_NOC_0_transactor->RST(m_CPM_PCIE_NOC_0_transactor_rst_signal);

    // CPM_PCIE_NOC_0' transactor sockets

    mp_impl->CPM_PCIE_NOC_0_tlm_aximm_read_socket->bind(*(mp_CPM_PCIE_NOC_0_transactor->rd_socket));
    mp_impl->CPM_PCIE_NOC_0_tlm_aximm_write_socket->bind(*(mp_CPM_PCIE_NOC_0_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'CPM_PCIE_NOC_1' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("cpm_qdma_ep_part_versal_cips_0_0", "CPM_PCIE_NOC_1_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'CPM_PCIE_NOC_1' transactor parameters
    xsc::common_cpp::properties CPM_PCIE_NOC_1_transactor_param_props;
    CPM_PCIE_NOC_1_transactor_param_props.addLong("DATA_WIDTH", "128");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("FREQ_HZ", "1000000000");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("ID_WIDTH", "16");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("ADDR_WIDTH", "64");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("WUSER_WIDTH", "17");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("RUSER_WIDTH", "17");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("BUSER_WIDTH", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_BURST", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_LOCK", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_PROT", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_CACHE", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_QOS", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_REGION", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_WSTRB", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_BRESP", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_RRESP", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_SIZE", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_RESET", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addFloat("PHASE", "0.0");
    CPM_PCIE_NOC_1_transactor_param_props.addString("PROTOCOL", "AXI4");
    CPM_PCIE_NOC_1_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    CPM_PCIE_NOC_1_transactor_param_props.addString("CLK_DOMAIN", "bd_a532_pspmc_0_0_cpm_pcie_noc_axi1_clk");
    CPM_PCIE_NOC_1_transactor_param_props.addString("CATEGORY", "noc");
    CPM_PCIE_NOC_1_transactor_param_props.addString("MY_CATEGORY", "ps_pcie");
    CPM_PCIE_NOC_1_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_PCIE_TO_NOC_NMU");
    CPM_PCIE_NOC_1_transactor_param_props.addString("HD_TANDEM", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addString("INDEX", "1");

    mp_CPM_PCIE_NOC_1_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,17>("CPM_PCIE_NOC_1_transactor", CPM_PCIE_NOC_1_transactor_param_props);

    // CPM_PCIE_NOC_1' transactor ports

    mp_CPM_PCIE_NOC_1_transactor->ARADDR(CPM_PCIE_NOC_1_araddr);
    mp_CPM_PCIE_NOC_1_transactor->ARBURST(CPM_PCIE_NOC_1_arburst);
    mp_CPM_PCIE_NOC_1_transactor->ARCACHE(CPM_PCIE_NOC_1_arcache);
    mp_CPM_PCIE_NOC_1_transactor->ARID(CPM_PCIE_NOC_1_arid);
    mp_CPM_PCIE_NOC_1_transactor->ARLEN(CPM_PCIE_NOC_1_arlen);
    mp_CPM_PCIE_NOC_1_transactor->ARLOCK(CPM_PCIE_NOC_1_arlock);
    mp_CPM_PCIE_NOC_1_transactor->ARPROT(CPM_PCIE_NOC_1_arprot);
    mp_CPM_PCIE_NOC_1_transactor->ARQOS(CPM_PCIE_NOC_1_arqos);
    mp_CPM_PCIE_NOC_1_transactor->ARSIZE(CPM_PCIE_NOC_1_arsize);
    mp_CPM_PCIE_NOC_1_transactor->ARUSER(CPM_PCIE_NOC_1_aruser);
    mp_CPM_PCIE_NOC_1_transactor->ARVALID(CPM_PCIE_NOC_1_arvalid);
    mp_CPM_PCIE_NOC_1_transactor->AWADDR(CPM_PCIE_NOC_1_awaddr);
    mp_CPM_PCIE_NOC_1_transactor->AWBURST(CPM_PCIE_NOC_1_awburst);
    mp_CPM_PCIE_NOC_1_transactor->AWCACHE(CPM_PCIE_NOC_1_awcache);
    mp_CPM_PCIE_NOC_1_transactor->AWID(CPM_PCIE_NOC_1_awid);
    mp_CPM_PCIE_NOC_1_transactor->AWLEN(CPM_PCIE_NOC_1_awlen);
    mp_CPM_PCIE_NOC_1_transactor->AWLOCK(CPM_PCIE_NOC_1_awlock);
    mp_CPM_PCIE_NOC_1_transactor->AWPROT(CPM_PCIE_NOC_1_awprot);
    mp_CPM_PCIE_NOC_1_transactor->AWQOS(CPM_PCIE_NOC_1_awqos);
    mp_CPM_PCIE_NOC_1_transactor->AWSIZE(CPM_PCIE_NOC_1_awsize);
    mp_CPM_PCIE_NOC_1_transactor->AWUSER(CPM_PCIE_NOC_1_awuser);
    mp_CPM_PCIE_NOC_1_transactor->AWVALID(CPM_PCIE_NOC_1_awvalid);
    mp_CPM_PCIE_NOC_1_transactor->BREADY(CPM_PCIE_NOC_1_bready);
    mp_CPM_PCIE_NOC_1_transactor->RREADY(CPM_PCIE_NOC_1_rready);
    mp_CPM_PCIE_NOC_1_transactor->WDATA(CPM_PCIE_NOC_1_wdata);
    mp_CPM_PCIE_NOC_1_transactor->WLAST(CPM_PCIE_NOC_1_wlast);
    mp_CPM_PCIE_NOC_1_transactor->WSTRB(CPM_PCIE_NOC_1_wstrb);
    mp_CPM_PCIE_NOC_1_transactor->WVALID(CPM_PCIE_NOC_1_wvalid);
    mp_CPM_PCIE_NOC_1_transactor->ARREADY(CPM_PCIE_NOC_1_arready);
    mp_CPM_PCIE_NOC_1_transactor->AWREADY(CPM_PCIE_NOC_1_awready);
    mp_CPM_PCIE_NOC_1_transactor->BID(CPM_PCIE_NOC_1_bid);
    mp_CPM_PCIE_NOC_1_transactor->BRESP(CPM_PCIE_NOC_1_bresp);
    mp_CPM_PCIE_NOC_1_transactor->BVALID(CPM_PCIE_NOC_1_bvalid);
    mp_CPM_PCIE_NOC_1_transactor->RDATA(CPM_PCIE_NOC_1_rdata);
    mp_CPM_PCIE_NOC_1_transactor->RID(CPM_PCIE_NOC_1_rid);
    mp_CPM_PCIE_NOC_1_transactor->RLAST(CPM_PCIE_NOC_1_rlast);
    mp_CPM_PCIE_NOC_1_transactor->RRESP(CPM_PCIE_NOC_1_rresp);
    mp_CPM_PCIE_NOC_1_transactor->RVALID(CPM_PCIE_NOC_1_rvalid);
    mp_CPM_PCIE_NOC_1_transactor->RUSER(CPM_PCIE_NOC_1_ruser);
    mp_CPM_PCIE_NOC_1_transactor->WUSER(CPM_PCIE_NOC_1_wuser);
    mp_CPM_PCIE_NOC_1_transactor->WREADY(CPM_PCIE_NOC_1_wready);
    mp_CPM_PCIE_NOC_1_transactor->CLK(cpm_pcie_noc_axi1_clk);
    m_CPM_PCIE_NOC_1_transactor_rst_signal.write(1);
    mp_CPM_PCIE_NOC_1_transactor->RST(m_CPM_PCIE_NOC_1_transactor_rst_signal);

    // CPM_PCIE_NOC_1' transactor sockets

    mp_impl->CPM_PCIE_NOC_1_tlm_aximm_read_socket->bind(*(mp_CPM_PCIE_NOC_1_transactor->rd_socket));
    mp_impl->CPM_PCIE_NOC_1_tlm_aximm_write_socket->bind(*(mp_CPM_PCIE_NOC_1_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'dma1_st_rx_msg' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("cpm_qdma_ep_part_versal_cips_0_0", "dma1_st_rx_msg_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'dma1_st_rx_msg' transactor parameters
    xsc::common_cpp::properties dma1_st_rx_msg_transactor_param_props;
    dma1_st_rx_msg_transactor_param_props.addLong("TDATA_NUM_BYTES", "4");
    dma1_st_rx_msg_transactor_param_props.addLong("TDEST_WIDTH", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("TID_WIDTH", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("TUSER_WIDTH", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_TREADY", "1");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_TSTRB", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_TKEEP", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_TLAST", "1");
    dma1_st_rx_msg_transactor_param_props.addLong("FREQ_HZ", "429162384");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_RESET", "1");
    dma1_st_rx_msg_transactor_param_props.addFloat("PHASE", "0.0");
    dma1_st_rx_msg_transactor_param_props.addString("CLK_DOMAIN", "bd_a532_pspmc_0_0_pl0_ref_clk");
    dma1_st_rx_msg_transactor_param_props.addString("LAYERED_METADATA", "undef");
    dma1_st_rx_msg_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_dma1_st_rx_msg_transactor = new xtlm::xaxis_xtlm2pin_t<4,1,1,1,1,1>("dma1_st_rx_msg_transactor", dma1_st_rx_msg_transactor_param_props);

    // dma1_st_rx_msg' transactor ports

    mp_dma1_st_rx_msg_transactor->TLAST(dma1_st_rx_msg_tlast);
    mp_dma1_st_rx_msg_transactor->TVALID(dma1_st_rx_msg_tvalid);
    mp_dma1_st_rx_msg_transactor->TREADY(dma1_st_rx_msg_tready);
    mp_dma1_st_rx_msg_transactor->TDATA(dma1_st_rx_msg_tdata);
    mp_dma1_st_rx_msg_transactor->CLK(dma1_intrfc_clk);
    mp_dma1_st_rx_msg_transactor->RST(dma1_axi_aresetn);

    // dma1_st_rx_msg' transactor sockets

    mp_impl->dma1_st_rx_msg_tlm_axis_socket->bind(*(mp_dma1_st_rx_msg_transactor->socket));
  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
cpm_qdma_ep_part_versal_cips_0_0::cpm_qdma_ep_part_versal_cips_0_0(const sc_core::sc_module_name& nm) : cpm_qdma_ep_part_versal_cips_0_0_sc(nm), pl0_ref_clk("pl0_ref_clk"), pl1_ref_clk("pl1_ref_clk"), pl0_resetn("pl0_resetn"), m_axi_fpd_aclk("m_axi_fpd_aclk"), cpm_pcie_noc_axi0_clk("cpm_pcie_noc_axi0_clk"), cpm_pcie_noc_axi1_clk("cpm_pcie_noc_axi1_clk"), dma1_intrfc_clk("dma1_intrfc_clk"), cpm_misc_irq("cpm_misc_irq"), cpm_cor_irq("cpm_cor_irq"), cpm_uncor_irq("cpm_uncor_irq"), cpm_irq0("cpm_irq0"), cpm_irq1("cpm_irq1"), dma1_axi_aresetn("dma1_axi_aresetn"), dma1_intrfc_resetn("dma1_intrfc_resetn"), M_AXI_FPD_awid("M_AXI_FPD_awid"), M_AXI_FPD_awaddr("M_AXI_FPD_awaddr"), M_AXI_FPD_awlen("M_AXI_FPD_awlen"), M_AXI_FPD_awsize("M_AXI_FPD_awsize"), M_AXI_FPD_awburst("M_AXI_FPD_awburst"), M_AXI_FPD_awlock("M_AXI_FPD_awlock"), M_AXI_FPD_awcache("M_AXI_FPD_awcache"), M_AXI_FPD_awprot("M_AXI_FPD_awprot"), M_AXI_FPD_awvalid("M_AXI_FPD_awvalid"), M_AXI_FPD_awuser("M_AXI_FPD_awuser"), M_AXI_FPD_awready("M_AXI_FPD_awready"), M_AXI_FPD_wlast("M_AXI_FPD_wlast"), M_AXI_FPD_wvalid("M_AXI_FPD_wvalid"), M_AXI_FPD_wready("M_AXI_FPD_wready"), M_AXI_FPD_bid("M_AXI_FPD_bid"), M_AXI_FPD_bresp("M_AXI_FPD_bresp"), M_AXI_FPD_bvalid("M_AXI_FPD_bvalid"), M_AXI_FPD_bready("M_AXI_FPD_bready"), M_AXI_FPD_arid("M_AXI_FPD_arid"), M_AXI_FPD_araddr("M_AXI_FPD_araddr"), M_AXI_FPD_arlen("M_AXI_FPD_arlen"), M_AXI_FPD_arsize("M_AXI_FPD_arsize"), M_AXI_FPD_arburst("M_AXI_FPD_arburst"), M_AXI_FPD_arlock("M_AXI_FPD_arlock"), M_AXI_FPD_arcache("M_AXI_FPD_arcache"), M_AXI_FPD_arprot("M_AXI_FPD_arprot"), M_AXI_FPD_arvalid("M_AXI_FPD_arvalid"), M_AXI_FPD_aruser("M_AXI_FPD_aruser"), M_AXI_FPD_arready("M_AXI_FPD_arready"), M_AXI_FPD_rid("M_AXI_FPD_rid"), M_AXI_FPD_rresp("M_AXI_FPD_rresp"), M_AXI_FPD_rlast("M_AXI_FPD_rlast"), M_AXI_FPD_rvalid("M_AXI_FPD_rvalid"), M_AXI_FPD_rready("M_AXI_FPD_rready"), M_AXI_FPD_awqos("M_AXI_FPD_awqos"), M_AXI_FPD_arqos("M_AXI_FPD_arqos"), M_AXI_FPD_wdata("M_AXI_FPD_wdata"), M_AXI_FPD_wstrb("M_AXI_FPD_wstrb"), M_AXI_FPD_rdata("M_AXI_FPD_rdata"), CPM_PCIE_NOC_0_araddr("CPM_PCIE_NOC_0_araddr"), CPM_PCIE_NOC_0_arburst("CPM_PCIE_NOC_0_arburst"), CPM_PCIE_NOC_0_arcache("CPM_PCIE_NOC_0_arcache"), CPM_PCIE_NOC_0_arid("CPM_PCIE_NOC_0_arid"), CPM_PCIE_NOC_0_arlen("CPM_PCIE_NOC_0_arlen"), CPM_PCIE_NOC_0_arlock("CPM_PCIE_NOC_0_arlock"), CPM_PCIE_NOC_0_arprot("CPM_PCIE_NOC_0_arprot"), CPM_PCIE_NOC_0_arqos("CPM_PCIE_NOC_0_arqos"), CPM_PCIE_NOC_0_arsize("CPM_PCIE_NOC_0_arsize"), CPM_PCIE_NOC_0_aruser("CPM_PCIE_NOC_0_aruser"), CPM_PCIE_NOC_0_arvalid("CPM_PCIE_NOC_0_arvalid"), CPM_PCIE_NOC_0_awaddr("CPM_PCIE_NOC_0_awaddr"), CPM_PCIE_NOC_0_awburst("CPM_PCIE_NOC_0_awburst"), CPM_PCIE_NOC_0_awcache("CPM_PCIE_NOC_0_awcache"), CPM_PCIE_NOC_0_awid("CPM_PCIE_NOC_0_awid"), CPM_PCIE_NOC_0_awlen("CPM_PCIE_NOC_0_awlen"), CPM_PCIE_NOC_0_awlock("CPM_PCIE_NOC_0_awlock"), CPM_PCIE_NOC_0_awprot("CPM_PCIE_NOC_0_awprot"), CPM_PCIE_NOC_0_awqos("CPM_PCIE_NOC_0_awqos"), CPM_PCIE_NOC_0_awsize("CPM_PCIE_NOC_0_awsize"), CPM_PCIE_NOC_0_awuser("CPM_PCIE_NOC_0_awuser"), CPM_PCIE_NOC_0_awvalid("CPM_PCIE_NOC_0_awvalid"), CPM_PCIE_NOC_0_bready("CPM_PCIE_NOC_0_bready"), CPM_PCIE_NOC_0_rready("CPM_PCIE_NOC_0_rready"), CPM_PCIE_NOC_0_wdata("CPM_PCIE_NOC_0_wdata"), CPM_PCIE_NOC_0_wlast("CPM_PCIE_NOC_0_wlast"), CPM_PCIE_NOC_0_wstrb("CPM_PCIE_NOC_0_wstrb"), CPM_PCIE_NOC_0_wvalid("CPM_PCIE_NOC_0_wvalid"), CPM_PCIE_NOC_0_arready("CPM_PCIE_NOC_0_arready"), CPM_PCIE_NOC_0_awready("CPM_PCIE_NOC_0_awready"), CPM_PCIE_NOC_0_bid("CPM_PCIE_NOC_0_bid"), CPM_PCIE_NOC_0_bresp("CPM_PCIE_NOC_0_bresp"), CPM_PCIE_NOC_0_bvalid("CPM_PCIE_NOC_0_bvalid"), CPM_PCIE_NOC_0_rdata("CPM_PCIE_NOC_0_rdata"), CPM_PCIE_NOC_0_rid("CPM_PCIE_NOC_0_rid"), CPM_PCIE_NOC_0_rlast("CPM_PCIE_NOC_0_rlast"), CPM_PCIE_NOC_0_rresp("CPM_PCIE_NOC_0_rresp"), CPM_PCIE_NOC_0_rvalid("CPM_PCIE_NOC_0_rvalid"), CPM_PCIE_NOC_0_ruser("CPM_PCIE_NOC_0_ruser"), CPM_PCIE_NOC_0_wuser("CPM_PCIE_NOC_0_wuser"), CPM_PCIE_NOC_0_wready("CPM_PCIE_NOC_0_wready"), CPM_PCIE_NOC_1_araddr("CPM_PCIE_NOC_1_araddr"), CPM_PCIE_NOC_1_arburst("CPM_PCIE_NOC_1_arburst"), CPM_PCIE_NOC_1_arcache("CPM_PCIE_NOC_1_arcache"), CPM_PCIE_NOC_1_arid("CPM_PCIE_NOC_1_arid"), CPM_PCIE_NOC_1_arlen("CPM_PCIE_NOC_1_arlen"), CPM_PCIE_NOC_1_arlock("CPM_PCIE_NOC_1_arlock"), CPM_PCIE_NOC_1_arprot("CPM_PCIE_NOC_1_arprot"), CPM_PCIE_NOC_1_arqos("CPM_PCIE_NOC_1_arqos"), CPM_PCIE_NOC_1_arsize("CPM_PCIE_NOC_1_arsize"), CPM_PCIE_NOC_1_aruser("CPM_PCIE_NOC_1_aruser"), CPM_PCIE_NOC_1_arvalid("CPM_PCIE_NOC_1_arvalid"), CPM_PCIE_NOC_1_awaddr("CPM_PCIE_NOC_1_awaddr"), CPM_PCIE_NOC_1_awburst("CPM_PCIE_NOC_1_awburst"), CPM_PCIE_NOC_1_awcache("CPM_PCIE_NOC_1_awcache"), CPM_PCIE_NOC_1_awid("CPM_PCIE_NOC_1_awid"), CPM_PCIE_NOC_1_awlen("CPM_PCIE_NOC_1_awlen"), CPM_PCIE_NOC_1_awlock("CPM_PCIE_NOC_1_awlock"), CPM_PCIE_NOC_1_awprot("CPM_PCIE_NOC_1_awprot"), CPM_PCIE_NOC_1_awqos("CPM_PCIE_NOC_1_awqos"), CPM_PCIE_NOC_1_awsize("CPM_PCIE_NOC_1_awsize"), CPM_PCIE_NOC_1_awuser("CPM_PCIE_NOC_1_awuser"), CPM_PCIE_NOC_1_awvalid("CPM_PCIE_NOC_1_awvalid"), CPM_PCIE_NOC_1_bready("CPM_PCIE_NOC_1_bready"), CPM_PCIE_NOC_1_rready("CPM_PCIE_NOC_1_rready"), CPM_PCIE_NOC_1_wdata("CPM_PCIE_NOC_1_wdata"), CPM_PCIE_NOC_1_wlast("CPM_PCIE_NOC_1_wlast"), CPM_PCIE_NOC_1_wstrb("CPM_PCIE_NOC_1_wstrb"), CPM_PCIE_NOC_1_wvalid("CPM_PCIE_NOC_1_wvalid"), CPM_PCIE_NOC_1_arready("CPM_PCIE_NOC_1_arready"), CPM_PCIE_NOC_1_awready("CPM_PCIE_NOC_1_awready"), CPM_PCIE_NOC_1_bid("CPM_PCIE_NOC_1_bid"), CPM_PCIE_NOC_1_bresp("CPM_PCIE_NOC_1_bresp"), CPM_PCIE_NOC_1_bvalid("CPM_PCIE_NOC_1_bvalid"), CPM_PCIE_NOC_1_rdata("CPM_PCIE_NOC_1_rdata"), CPM_PCIE_NOC_1_rid("CPM_PCIE_NOC_1_rid"), CPM_PCIE_NOC_1_rlast("CPM_PCIE_NOC_1_rlast"), CPM_PCIE_NOC_1_rresp("CPM_PCIE_NOC_1_rresp"), CPM_PCIE_NOC_1_rvalid("CPM_PCIE_NOC_1_rvalid"), CPM_PCIE_NOC_1_ruser("CPM_PCIE_NOC_1_ruser"), CPM_PCIE_NOC_1_wuser("CPM_PCIE_NOC_1_wuser"), CPM_PCIE_NOC_1_wready("CPM_PCIE_NOC_1_wready"), dma1_mgmt_cpl_vld("dma1_mgmt_cpl_vld"), dma1_mgmt_req_rdy("dma1_mgmt_req_rdy"), dma1_mgmt_cpl_rdy("dma1_mgmt_cpl_rdy"), dma1_mgmt_req_vld("dma1_mgmt_req_vld"), dma1_mgmt_cpl_sts("dma1_mgmt_cpl_sts"), dma1_mgmt_cpl_dat("dma1_mgmt_cpl_dat"), dma1_mgmt_req_cmd("dma1_mgmt_req_cmd"), dma1_mgmt_req_fnc("dma1_mgmt_req_fnc"), dma1_mgmt_req_msc("dma1_mgmt_req_msc"), dma1_mgmt_req_adr("dma1_mgmt_req_adr"), dma1_mgmt_req_dat("dma1_mgmt_req_dat"), dma1_st_rx_msg_tlast("dma1_st_rx_msg_tlast"), dma1_st_rx_msg_tvalid("dma1_st_rx_msg_tvalid"), dma1_st_rx_msg_tready("dma1_st_rx_msg_tready"), dma1_st_rx_msg_tdata("dma1_st_rx_msg_tdata"), dma1_c2h_byp_in_mm_0_ready("dma1_c2h_byp_in_mm_0_ready"), dma1_c2h_byp_in_mm_0_sdi("dma1_c2h_byp_in_mm_0_sdi"), dma1_c2h_byp_in_mm_0_valid("dma1_c2h_byp_in_mm_0_valid"), dma1_c2h_byp_in_mm_0_error("dma1_c2h_byp_in_mm_0_error"), dma1_c2h_byp_in_mm_0_no_dma("dma1_c2h_byp_in_mm_0_no_dma"), dma1_c2h_byp_in_mm_0_mrkr_req("dma1_c2h_byp_in_mm_0_mrkr_req"), dma1_c2h_byp_in_mm_0_len("dma1_c2h_byp_in_mm_0_len"), dma1_c2h_byp_in_mm_0_qid("dma1_c2h_byp_in_mm_0_qid"), dma1_c2h_byp_in_mm_0_func("dma1_c2h_byp_in_mm_0_func"), dma1_c2h_byp_in_mm_0_cidx("dma1_c2h_byp_in_mm_0_cidx"), dma1_c2h_byp_in_mm_0_radr("dma1_c2h_byp_in_mm_0_radr"), dma1_c2h_byp_in_mm_0_wadr("dma1_c2h_byp_in_mm_0_wadr"), dma1_c2h_byp_in_mm_0_port_id("dma1_c2h_byp_in_mm_0_port_id"), dma1_c2h_byp_in_mm_1_ready("dma1_c2h_byp_in_mm_1_ready"), dma1_c2h_byp_in_mm_1_sdi("dma1_c2h_byp_in_mm_1_sdi"), dma1_c2h_byp_in_mm_1_valid("dma1_c2h_byp_in_mm_1_valid"), dma1_c2h_byp_in_mm_1_error("dma1_c2h_byp_in_mm_1_error"), dma1_c2h_byp_in_mm_1_no_dma("dma1_c2h_byp_in_mm_1_no_dma"), dma1_c2h_byp_in_mm_1_mrkr_req("dma1_c2h_byp_in_mm_1_mrkr_req"), dma1_c2h_byp_in_mm_1_len("dma1_c2h_byp_in_mm_1_len"), dma1_c2h_byp_in_mm_1_qid("dma1_c2h_byp_in_mm_1_qid"), dma1_c2h_byp_in_mm_1_func("dma1_c2h_byp_in_mm_1_func"), dma1_c2h_byp_in_mm_1_cidx("dma1_c2h_byp_in_mm_1_cidx"), dma1_c2h_byp_in_mm_1_radr("dma1_c2h_byp_in_mm_1_radr"), dma1_c2h_byp_in_mm_1_wadr("dma1_c2h_byp_in_mm_1_wadr"), dma1_c2h_byp_in_mm_1_port_id("dma1_c2h_byp_in_mm_1_port_id"), dma1_c2h_byp_in_st_csh_ready("dma1_c2h_byp_in_st_csh_ready"), dma1_c2h_byp_in_st_csh_valid("dma1_c2h_byp_in_st_csh_valid"), dma1_c2h_byp_in_st_csh_error("dma1_c2h_byp_in_st_csh_error"), dma1_c2h_byp_in_st_csh_qid("dma1_c2h_byp_in_st_csh_qid"), dma1_c2h_byp_in_st_csh_func("dma1_c2h_byp_in_st_csh_func"), dma1_c2h_byp_in_st_csh_addr("dma1_c2h_byp_in_st_csh_addr"), dma1_c2h_byp_in_st_csh_port_id("dma1_c2h_byp_in_st_csh_port_id"), dma1_c2h_byp_in_st_csh_pfch_tag("dma1_c2h_byp_in_st_csh_pfch_tag"), dma1_c2h_byp_out_valid("dma1_c2h_byp_out_valid"), dma1_c2h_byp_out_error("dma1_c2h_byp_out_error"), dma1_c2h_byp_out_st_mm("dma1_c2h_byp_out_st_mm"), dma1_c2h_byp_out_mm_chn("dma1_c2h_byp_out_mm_chn"), dma1_c2h_byp_out_ready("dma1_c2h_byp_out_ready"), dma1_c2h_byp_out_fmt("dma1_c2h_byp_out_fmt"), dma1_c2h_byp_out_qid("dma1_c2h_byp_out_qid"), dma1_c2h_byp_out_dsc("dma1_c2h_byp_out_dsc"), dma1_c2h_byp_out_func("dma1_c2h_byp_out_func"), dma1_c2h_byp_out_cidx("dma1_c2h_byp_out_cidx"), dma1_c2h_byp_out_dsc_sz("dma1_c2h_byp_out_dsc_sz"), dma1_c2h_byp_out_port_id("dma1_c2h_byp_out_port_id"), dma1_c2h_byp_out_pfch_tag("dma1_c2h_byp_out_pfch_tag"), dma1_h2c_byp_in_mm_0_ready("dma1_h2c_byp_in_mm_0_ready"), dma1_h2c_byp_in_mm_0_sdi("dma1_h2c_byp_in_mm_0_sdi"), dma1_h2c_byp_in_mm_0_valid("dma1_h2c_byp_in_mm_0_valid"), dma1_h2c_byp_in_mm_0_error("dma1_h2c_byp_in_mm_0_error"), dma1_h2c_byp_in_mm_0_no_dma("dma1_h2c_byp_in_mm_0_no_dma"), dma1_h2c_byp_in_mm_0_mrkr_req("dma1_h2c_byp_in_mm_0_mrkr_req"), dma1_h2c_byp_in_mm_0_len("dma1_h2c_byp_in_mm_0_len"), dma1_h2c_byp_in_mm_0_qid("dma1_h2c_byp_in_mm_0_qid"), dma1_h2c_byp_in_mm_0_func("dma1_h2c_byp_in_mm_0_func"), dma1_h2c_byp_in_mm_0_cidx("dma1_h2c_byp_in_mm_0_cidx"), dma1_h2c_byp_in_mm_0_radr("dma1_h2c_byp_in_mm_0_radr"), dma1_h2c_byp_in_mm_0_wadr("dma1_h2c_byp_in_mm_0_wadr"), dma1_h2c_byp_in_mm_0_port_id("dma1_h2c_byp_in_mm_0_port_id"), dma1_h2c_byp_in_mm_1_ready("dma1_h2c_byp_in_mm_1_ready"), dma1_h2c_byp_in_mm_1_sdi("dma1_h2c_byp_in_mm_1_sdi"), dma1_h2c_byp_in_mm_1_valid("dma1_h2c_byp_in_mm_1_valid"), dma1_h2c_byp_in_mm_1_error("dma1_h2c_byp_in_mm_1_error"), dma1_h2c_byp_in_mm_1_no_dma("dma1_h2c_byp_in_mm_1_no_dma"), dma1_h2c_byp_in_mm_1_mrkr_req("dma1_h2c_byp_in_mm_1_mrkr_req"), dma1_h2c_byp_in_mm_1_len("dma1_h2c_byp_in_mm_1_len"), dma1_h2c_byp_in_mm_1_qid("dma1_h2c_byp_in_mm_1_qid"), dma1_h2c_byp_in_mm_1_func("dma1_h2c_byp_in_mm_1_func"), dma1_h2c_byp_in_mm_1_cidx("dma1_h2c_byp_in_mm_1_cidx"), dma1_h2c_byp_in_mm_1_radr("dma1_h2c_byp_in_mm_1_radr"), dma1_h2c_byp_in_mm_1_wadr("dma1_h2c_byp_in_mm_1_wadr"), dma1_h2c_byp_in_mm_1_port_id("dma1_h2c_byp_in_mm_1_port_id"), dma1_h2c_byp_in_st_ready("dma1_h2c_byp_in_st_ready"), dma1_h2c_byp_in_st_eop("dma1_h2c_byp_in_st_eop"), dma1_h2c_byp_in_st_sdi("dma1_h2c_byp_in_st_sdi"), dma1_h2c_byp_in_st_sop("dma1_h2c_byp_in_st_sop"), dma1_h2c_byp_in_st_valid("dma1_h2c_byp_in_st_valid"), dma1_h2c_byp_in_st_error("dma1_h2c_byp_in_st_error"), dma1_h2c_byp_in_st_no_dma("dma1_h2c_byp_in_st_no_dma"), dma1_h2c_byp_in_st_mrkr_req("dma1_h2c_byp_in_st_mrkr_req"), dma1_h2c_byp_in_st_len("dma1_h2c_byp_in_st_len"), dma1_h2c_byp_in_st_qid("dma1_h2c_byp_in_st_qid"), dma1_h2c_byp_in_st_func("dma1_h2c_byp_in_st_func"), dma1_h2c_byp_in_st_addr("dma1_h2c_byp_in_st_addr"), dma1_h2c_byp_in_st_cidx("dma1_h2c_byp_in_st_cidx"), dma1_h2c_byp_in_st_port_id("dma1_h2c_byp_in_st_port_id"), dma1_h2c_byp_out_valid("dma1_h2c_byp_out_valid"), dma1_h2c_byp_out_error("dma1_h2c_byp_out_error"), dma1_h2c_byp_out_st_mm("dma1_h2c_byp_out_st_mm"), dma1_h2c_byp_out_mm_chn("dma1_h2c_byp_out_mm_chn"), dma1_h2c_byp_out_ready("dma1_h2c_byp_out_ready"), dma1_h2c_byp_out_fmt("dma1_h2c_byp_out_fmt"), dma1_h2c_byp_out_qid("dma1_h2c_byp_out_qid"), dma1_h2c_byp_out_dsc("dma1_h2c_byp_out_dsc"), dma1_h2c_byp_out_func("dma1_h2c_byp_out_func"), dma1_h2c_byp_out_cidx("dma1_h2c_byp_out_cidx"), dma1_h2c_byp_out_dsc_sz("dma1_h2c_byp_out_dsc_sz"), dma1_h2c_byp_out_port_id("dma1_h2c_byp_out_port_id"), dma1_axis_c2h_dmawr_cmp("dma1_axis_c2h_dmawr_cmp"), dma1_axis_c2h_dmawr_target_vch("dma1_axis_c2h_dmawr_target_vch"), dma1_axis_c2h_dmawr_port_id("dma1_axis_c2h_dmawr_port_id"), dma1_s_axis_c2h_tready("dma1_s_axis_c2h_tready"), dma1_s_axis_c2h_tlast("dma1_s_axis_c2h_tlast"), dma1_s_axis_c2h_tvalid("dma1_s_axis_c2h_tvalid"), dma1_s_axis_c2h_tcrc("dma1_s_axis_c2h_tcrc"), dma1_s_axis_c2h_tdata("dma1_s_axis_c2h_tdata"), dma1_s_axis_c2h_mty("dma1_s_axis_c2h_mty"), dma1_s_axis_c2h_ecc("dma1_s_axis_c2h_ecc"), dma1_s_axis_c2h_ctrl_marker("dma1_s_axis_c2h_ctrl_marker"), dma1_s_axis_c2h_ctrl_has_cmpt("dma1_s_axis_c2h_ctrl_has_cmpt"), dma1_s_axis_c2h_ctrl_len("dma1_s_axis_c2h_ctrl_len"), dma1_s_axis_c2h_ctrl_qid("dma1_s_axis_c2h_ctrl_qid"), dma1_s_axis_c2h_ctrl_port_id("dma1_s_axis_c2h_ctrl_port_id"), dma1_s_axis_c2h_cmpt_marker("dma1_s_axis_c2h_cmpt_marker"), dma1_s_axis_c2h_cmpt_user_trig("dma1_s_axis_c2h_cmpt_user_trig"), dma1_s_axis_c2h_cmpt_size("dma1_s_axis_c2h_cmpt_size"), dma1_s_axis_c2h_cmpt_qid("dma1_s_axis_c2h_cmpt_qid"), dma1_s_axis_c2h_cmpt_no_wrb_marker("dma1_s_axis_c2h_cmpt_no_wrb_marker"), dma1_s_axis_c2h_cmpt_port_id("dma1_s_axis_c2h_cmpt_port_id"), dma1_s_axis_c2h_cmpt_col_idx("dma1_s_axis_c2h_cmpt_col_idx"), dma1_s_axis_c2h_cmpt_err_idx("dma1_s_axis_c2h_cmpt_err_idx"), dma1_s_axis_c2h_cmpt_wait_pld_pkt_id("dma1_s_axis_c2h_cmpt_wait_pld_pkt_id"), dma1_s_axis_c2h_cmpt_tready("dma1_s_axis_c2h_cmpt_tready"), dma1_s_axis_c2h_cmpt_tvalid("dma1_s_axis_c2h_cmpt_tvalid"), dma1_s_axis_c2h_cmpt_dpar("dma1_s_axis_c2h_cmpt_dpar"), dma1_s_axis_c2h_cmpt_data("dma1_s_axis_c2h_cmpt_data"), dma1_s_axis_c2h_cmpt_cmpt_type("dma1_s_axis_c2h_cmpt_cmpt_type"), dma1_m_axis_h2c_tlast("dma1_m_axis_h2c_tlast"), dma1_m_axis_h2c_err("dma1_m_axis_h2c_err"), dma1_m_axis_h2c_tvalid("dma1_m_axis_h2c_tvalid"), dma1_m_axis_h2c_tdata("dma1_m_axis_h2c_tdata"), dma1_m_axis_h2c_zero_byte("dma1_m_axis_h2c_zero_byte"), dma1_m_axis_h2c_tready("dma1_m_axis_h2c_tready"), dma1_m_axis_h2c_tcrc("dma1_m_axis_h2c_tcrc"), dma1_m_axis_h2c_mty("dma1_m_axis_h2c_mty"), dma1_m_axis_h2c_qid("dma1_m_axis_h2c_qid"), dma1_m_axis_h2c_mdata("dma1_m_axis_h2c_mdata"), dma1_m_axis_h2c_port_id("dma1_m_axis_h2c_port_id"), dma1_axis_c2h_status_last("dma1_axis_c2h_status_last"), dma1_axis_c2h_status_drop("dma1_axis_c2h_status_drop"), dma1_axis_c2h_status_error("dma1_axis_c2h_status_error"), dma1_axis_c2h_status_valid("dma1_axis_c2h_status_valid"), dma1_axis_c2h_status_status_cmp("dma1_axis_c2h_status_status_cmp"), dma1_axis_c2h_status_qid("dma1_axis_c2h_status_qid"), dma1_qsts_out_vld("dma1_qsts_out_vld"), dma1_qsts_out_op("dma1_qsts_out_op"), dma1_qsts_out_rdy("dma1_qsts_out_rdy"), dma1_qsts_out_qid("dma1_qsts_out_qid"), dma1_qsts_out_data("dma1_qsts_out_data"), dma1_qsts_out_port_id("dma1_qsts_out_port_id"), dma1_dsc_crdt_in_rdy("dma1_dsc_crdt_in_rdy"), dma1_dsc_crdt_in_dir("dma1_dsc_crdt_in_dir"), dma1_dsc_crdt_in_valid("dma1_dsc_crdt_in_valid"), dma1_dsc_crdt_in_fence("dma1_dsc_crdt_in_fence"), dma1_dsc_crdt_in_qid("dma1_dsc_crdt_in_qid"), dma1_dsc_crdt_in_crdt("dma1_dsc_crdt_in_crdt"), dma1_usr_irq_ack("dma1_usr_irq_ack"), dma1_usr_irq_fail("dma1_usr_irq_fail"), dma1_usr_irq_valid("dma1_usr_irq_valid"), dma1_usr_irq_vec("dma1_usr_irq_vec"), dma1_usr_irq_fnc("dma1_usr_irq_fnc"), dma1_tm_dsc_sts_mm("dma1_tm_dsc_sts_mm"), dma1_tm_dsc_sts_qen("dma1_tm_dsc_sts_qen"), dma1_tm_dsc_sts_byp("dma1_tm_dsc_sts_byp"), dma1_tm_dsc_sts_dir("dma1_tm_dsc_sts_dir"), dma1_tm_dsc_sts_error("dma1_tm_dsc_sts_error"), dma1_tm_dsc_sts_valid("dma1_tm_dsc_sts_valid"), dma1_tm_dsc_sts_qinv("dma1_tm_dsc_sts_qinv"), dma1_tm_dsc_sts_irq_arm("dma1_tm_dsc_sts_irq_arm"), dma1_tm_dsc_sts_rdy("dma1_tm_dsc_sts_rdy"), dma1_tm_dsc_sts_qid("dma1_tm_dsc_sts_qid"), dma1_tm_dsc_sts_avl("dma1_tm_dsc_sts_avl"), dma1_tm_dsc_sts_pidx("dma1_tm_dsc_sts_pidx"), dma1_tm_dsc_sts_port_id("dma1_tm_dsc_sts_port_id"), dma1_usr_flr_set("dma1_usr_flr_set"), dma1_usr_flr_clear("dma1_usr_flr_clear"), dma1_usr_flr_fnc("dma1_usr_flr_fnc"), dma1_usr_flr_done_vld("dma1_usr_flr_done_vld"), dma1_usr_flr_done_fnc("dma1_usr_flr_done_fnc"), PCIE1_GT_grx_n("PCIE1_GT_grx_n"), PCIE1_GT_gtx_n("PCIE1_GT_gtx_n"), PCIE1_GT_grx_p("PCIE1_GT_grx_p"), PCIE1_GT_gtx_p("PCIE1_GT_gtx_p"), gt_refclk1_clk_n("gt_refclk1_clk_n"), gt_refclk1_clk_p("gt_refclk1_clk_p"), pcie1_pipe_ep_tx_0("pcie1_pipe_ep_tx_0"), pcie1_pipe_ep_rx_0("pcie1_pipe_ep_rx_0"), pcie1_pipe_ep_tx_1("pcie1_pipe_ep_tx_1"), pcie1_pipe_ep_rx_1("pcie1_pipe_ep_rx_1"), pcie1_pipe_ep_tx_2("pcie1_pipe_ep_tx_2"), pcie1_pipe_ep_rx_2("pcie1_pipe_ep_rx_2"), pcie1_pipe_ep_tx_3("pcie1_pipe_ep_tx_3"), pcie1_pipe_ep_rx_3("pcie1_pipe_ep_rx_3"), pcie1_pipe_ep_tx_4("pcie1_pipe_ep_tx_4"), pcie1_pipe_ep_rx_4("pcie1_pipe_ep_rx_4"), pcie1_pipe_ep_tx_5("pcie1_pipe_ep_tx_5"), pcie1_pipe_ep_rx_5("pcie1_pipe_ep_rx_5"), pcie1_pipe_ep_tx_6("pcie1_pipe_ep_tx_6"), pcie1_pipe_ep_rx_6("pcie1_pipe_ep_rx_6"), pcie1_pipe_ep_tx_7("pcie1_pipe_ep_tx_7"), pcie1_pipe_ep_rx_7("pcie1_pipe_ep_rx_7"), pcie1_pipe_ep_tx_8("pcie1_pipe_ep_tx_8"), pcie1_pipe_ep_rx_8("pcie1_pipe_ep_rx_8"), pcie1_pipe_ep_tx_9("pcie1_pipe_ep_tx_9"), pcie1_pipe_ep_rx_9("pcie1_pipe_ep_rx_9"), pcie1_pipe_ep_tx_10("pcie1_pipe_ep_tx_10"), pcie1_pipe_ep_rx_10("pcie1_pipe_ep_rx_10"), pcie1_pipe_ep_tx_11("pcie1_pipe_ep_tx_11"), pcie1_pipe_ep_rx_11("pcie1_pipe_ep_rx_11"), pcie1_pipe_ep_tx_12("pcie1_pipe_ep_tx_12"), pcie1_pipe_ep_rx_12("pcie1_pipe_ep_rx_12"), pcie1_pipe_ep_tx_13("pcie1_pipe_ep_tx_13"), pcie1_pipe_ep_rx_13("pcie1_pipe_ep_rx_13"), pcie1_pipe_ep_tx_14("pcie1_pipe_ep_tx_14"), pcie1_pipe_ep_rx_14("pcie1_pipe_ep_rx_14"), pcie1_pipe_ep_tx_15("pcie1_pipe_ep_tx_15"), pcie1_pipe_ep_rx_15("pcie1_pipe_ep_rx_15"), pcie1_pipe_ep_commands_in("pcie1_pipe_ep_commands_in"), pcie1_pipe_ep_commands_out("pcie1_pipe_ep_commands_out")
{

  // initialize pins
  mp_impl->pl0_ref_clk(pl0_ref_clk);
  mp_impl->pl1_ref_clk(pl1_ref_clk);
  mp_impl->pl0_resetn(pl0_resetn);
  mp_impl->m_axi_fpd_aclk(m_axi_fpd_aclk);
  mp_impl->cpm_pcie_noc_axi0_clk(cpm_pcie_noc_axi0_clk);
  mp_impl->cpm_pcie_noc_axi1_clk(cpm_pcie_noc_axi1_clk);
  mp_impl->dma1_intrfc_clk(dma1_intrfc_clk);
  mp_impl->cpm_misc_irq(cpm_misc_irq);
  mp_impl->cpm_cor_irq(cpm_cor_irq);
  mp_impl->cpm_uncor_irq(cpm_uncor_irq);
  mp_impl->cpm_irq0(cpm_irq0);
  mp_impl->cpm_irq1(cpm_irq1);
  mp_impl->dma1_axi_aresetn(dma1_axi_aresetn);
  mp_impl->dma1_intrfc_resetn(dma1_intrfc_resetn);
  mp_impl->dma1_mgmt_cpl_vld(dma1_mgmt_cpl_vld);
  mp_impl->dma1_mgmt_req_rdy(dma1_mgmt_req_rdy);
  mp_impl->dma1_mgmt_cpl_rdy(dma1_mgmt_cpl_rdy);
  mp_impl->dma1_mgmt_req_vld(dma1_mgmt_req_vld);
  mp_impl->dma1_mgmt_cpl_sts(dma1_mgmt_cpl_sts);
  mp_impl->dma1_mgmt_cpl_dat(dma1_mgmt_cpl_dat);
  mp_impl->dma1_mgmt_req_cmd(dma1_mgmt_req_cmd);
  mp_impl->dma1_mgmt_req_fnc(dma1_mgmt_req_fnc);
  mp_impl->dma1_mgmt_req_msc(dma1_mgmt_req_msc);
  mp_impl->dma1_mgmt_req_adr(dma1_mgmt_req_adr);
  mp_impl->dma1_mgmt_req_dat(dma1_mgmt_req_dat);
  mp_impl->dma1_c2h_byp_in_mm_0_ready(dma1_c2h_byp_in_mm_0_ready);
  mp_impl->dma1_c2h_byp_in_mm_0_sdi(dma1_c2h_byp_in_mm_0_sdi);
  mp_impl->dma1_c2h_byp_in_mm_0_valid(dma1_c2h_byp_in_mm_0_valid);
  mp_impl->dma1_c2h_byp_in_mm_0_error(dma1_c2h_byp_in_mm_0_error);
  mp_impl->dma1_c2h_byp_in_mm_0_no_dma(dma1_c2h_byp_in_mm_0_no_dma);
  mp_impl->dma1_c2h_byp_in_mm_0_mrkr_req(dma1_c2h_byp_in_mm_0_mrkr_req);
  mp_impl->dma1_c2h_byp_in_mm_0_len(dma1_c2h_byp_in_mm_0_len);
  mp_impl->dma1_c2h_byp_in_mm_0_qid(dma1_c2h_byp_in_mm_0_qid);
  mp_impl->dma1_c2h_byp_in_mm_0_func(dma1_c2h_byp_in_mm_0_func);
  mp_impl->dma1_c2h_byp_in_mm_0_cidx(dma1_c2h_byp_in_mm_0_cidx);
  mp_impl->dma1_c2h_byp_in_mm_0_radr(dma1_c2h_byp_in_mm_0_radr);
  mp_impl->dma1_c2h_byp_in_mm_0_wadr(dma1_c2h_byp_in_mm_0_wadr);
  mp_impl->dma1_c2h_byp_in_mm_0_port_id(dma1_c2h_byp_in_mm_0_port_id);
  mp_impl->dma1_c2h_byp_in_mm_1_ready(dma1_c2h_byp_in_mm_1_ready);
  mp_impl->dma1_c2h_byp_in_mm_1_sdi(dma1_c2h_byp_in_mm_1_sdi);
  mp_impl->dma1_c2h_byp_in_mm_1_valid(dma1_c2h_byp_in_mm_1_valid);
  mp_impl->dma1_c2h_byp_in_mm_1_error(dma1_c2h_byp_in_mm_1_error);
  mp_impl->dma1_c2h_byp_in_mm_1_no_dma(dma1_c2h_byp_in_mm_1_no_dma);
  mp_impl->dma1_c2h_byp_in_mm_1_mrkr_req(dma1_c2h_byp_in_mm_1_mrkr_req);
  mp_impl->dma1_c2h_byp_in_mm_1_len(dma1_c2h_byp_in_mm_1_len);
  mp_impl->dma1_c2h_byp_in_mm_1_qid(dma1_c2h_byp_in_mm_1_qid);
  mp_impl->dma1_c2h_byp_in_mm_1_func(dma1_c2h_byp_in_mm_1_func);
  mp_impl->dma1_c2h_byp_in_mm_1_cidx(dma1_c2h_byp_in_mm_1_cidx);
  mp_impl->dma1_c2h_byp_in_mm_1_radr(dma1_c2h_byp_in_mm_1_radr);
  mp_impl->dma1_c2h_byp_in_mm_1_wadr(dma1_c2h_byp_in_mm_1_wadr);
  mp_impl->dma1_c2h_byp_in_mm_1_port_id(dma1_c2h_byp_in_mm_1_port_id);
  mp_impl->dma1_c2h_byp_in_st_csh_ready(dma1_c2h_byp_in_st_csh_ready);
  mp_impl->dma1_c2h_byp_in_st_csh_valid(dma1_c2h_byp_in_st_csh_valid);
  mp_impl->dma1_c2h_byp_in_st_csh_error(dma1_c2h_byp_in_st_csh_error);
  mp_impl->dma1_c2h_byp_in_st_csh_qid(dma1_c2h_byp_in_st_csh_qid);
  mp_impl->dma1_c2h_byp_in_st_csh_func(dma1_c2h_byp_in_st_csh_func);
  mp_impl->dma1_c2h_byp_in_st_csh_addr(dma1_c2h_byp_in_st_csh_addr);
  mp_impl->dma1_c2h_byp_in_st_csh_port_id(dma1_c2h_byp_in_st_csh_port_id);
  mp_impl->dma1_c2h_byp_in_st_csh_pfch_tag(dma1_c2h_byp_in_st_csh_pfch_tag);
  mp_impl->dma1_c2h_byp_out_valid(dma1_c2h_byp_out_valid);
  mp_impl->dma1_c2h_byp_out_error(dma1_c2h_byp_out_error);
  mp_impl->dma1_c2h_byp_out_st_mm(dma1_c2h_byp_out_st_mm);
  mp_impl->dma1_c2h_byp_out_mm_chn(dma1_c2h_byp_out_mm_chn);
  mp_impl->dma1_c2h_byp_out_ready(dma1_c2h_byp_out_ready);
  mp_impl->dma1_c2h_byp_out_fmt(dma1_c2h_byp_out_fmt);
  mp_impl->dma1_c2h_byp_out_qid(dma1_c2h_byp_out_qid);
  mp_impl->dma1_c2h_byp_out_dsc(dma1_c2h_byp_out_dsc);
  mp_impl->dma1_c2h_byp_out_func(dma1_c2h_byp_out_func);
  mp_impl->dma1_c2h_byp_out_cidx(dma1_c2h_byp_out_cidx);
  mp_impl->dma1_c2h_byp_out_dsc_sz(dma1_c2h_byp_out_dsc_sz);
  mp_impl->dma1_c2h_byp_out_port_id(dma1_c2h_byp_out_port_id);
  mp_impl->dma1_c2h_byp_out_pfch_tag(dma1_c2h_byp_out_pfch_tag);
  mp_impl->dma1_h2c_byp_in_mm_0_ready(dma1_h2c_byp_in_mm_0_ready);
  mp_impl->dma1_h2c_byp_in_mm_0_sdi(dma1_h2c_byp_in_mm_0_sdi);
  mp_impl->dma1_h2c_byp_in_mm_0_valid(dma1_h2c_byp_in_mm_0_valid);
  mp_impl->dma1_h2c_byp_in_mm_0_error(dma1_h2c_byp_in_mm_0_error);
  mp_impl->dma1_h2c_byp_in_mm_0_no_dma(dma1_h2c_byp_in_mm_0_no_dma);
  mp_impl->dma1_h2c_byp_in_mm_0_mrkr_req(dma1_h2c_byp_in_mm_0_mrkr_req);
  mp_impl->dma1_h2c_byp_in_mm_0_len(dma1_h2c_byp_in_mm_0_len);
  mp_impl->dma1_h2c_byp_in_mm_0_qid(dma1_h2c_byp_in_mm_0_qid);
  mp_impl->dma1_h2c_byp_in_mm_0_func(dma1_h2c_byp_in_mm_0_func);
  mp_impl->dma1_h2c_byp_in_mm_0_cidx(dma1_h2c_byp_in_mm_0_cidx);
  mp_impl->dma1_h2c_byp_in_mm_0_radr(dma1_h2c_byp_in_mm_0_radr);
  mp_impl->dma1_h2c_byp_in_mm_0_wadr(dma1_h2c_byp_in_mm_0_wadr);
  mp_impl->dma1_h2c_byp_in_mm_0_port_id(dma1_h2c_byp_in_mm_0_port_id);
  mp_impl->dma1_h2c_byp_in_mm_1_ready(dma1_h2c_byp_in_mm_1_ready);
  mp_impl->dma1_h2c_byp_in_mm_1_sdi(dma1_h2c_byp_in_mm_1_sdi);
  mp_impl->dma1_h2c_byp_in_mm_1_valid(dma1_h2c_byp_in_mm_1_valid);
  mp_impl->dma1_h2c_byp_in_mm_1_error(dma1_h2c_byp_in_mm_1_error);
  mp_impl->dma1_h2c_byp_in_mm_1_no_dma(dma1_h2c_byp_in_mm_1_no_dma);
  mp_impl->dma1_h2c_byp_in_mm_1_mrkr_req(dma1_h2c_byp_in_mm_1_mrkr_req);
  mp_impl->dma1_h2c_byp_in_mm_1_len(dma1_h2c_byp_in_mm_1_len);
  mp_impl->dma1_h2c_byp_in_mm_1_qid(dma1_h2c_byp_in_mm_1_qid);
  mp_impl->dma1_h2c_byp_in_mm_1_func(dma1_h2c_byp_in_mm_1_func);
  mp_impl->dma1_h2c_byp_in_mm_1_cidx(dma1_h2c_byp_in_mm_1_cidx);
  mp_impl->dma1_h2c_byp_in_mm_1_radr(dma1_h2c_byp_in_mm_1_radr);
  mp_impl->dma1_h2c_byp_in_mm_1_wadr(dma1_h2c_byp_in_mm_1_wadr);
  mp_impl->dma1_h2c_byp_in_mm_1_port_id(dma1_h2c_byp_in_mm_1_port_id);
  mp_impl->dma1_h2c_byp_in_st_ready(dma1_h2c_byp_in_st_ready);
  mp_impl->dma1_h2c_byp_in_st_eop(dma1_h2c_byp_in_st_eop);
  mp_impl->dma1_h2c_byp_in_st_sdi(dma1_h2c_byp_in_st_sdi);
  mp_impl->dma1_h2c_byp_in_st_sop(dma1_h2c_byp_in_st_sop);
  mp_impl->dma1_h2c_byp_in_st_valid(dma1_h2c_byp_in_st_valid);
  mp_impl->dma1_h2c_byp_in_st_error(dma1_h2c_byp_in_st_error);
  mp_impl->dma1_h2c_byp_in_st_no_dma(dma1_h2c_byp_in_st_no_dma);
  mp_impl->dma1_h2c_byp_in_st_mrkr_req(dma1_h2c_byp_in_st_mrkr_req);
  mp_impl->dma1_h2c_byp_in_st_len(dma1_h2c_byp_in_st_len);
  mp_impl->dma1_h2c_byp_in_st_qid(dma1_h2c_byp_in_st_qid);
  mp_impl->dma1_h2c_byp_in_st_func(dma1_h2c_byp_in_st_func);
  mp_impl->dma1_h2c_byp_in_st_addr(dma1_h2c_byp_in_st_addr);
  mp_impl->dma1_h2c_byp_in_st_cidx(dma1_h2c_byp_in_st_cidx);
  mp_impl->dma1_h2c_byp_in_st_port_id(dma1_h2c_byp_in_st_port_id);
  mp_impl->dma1_h2c_byp_out_valid(dma1_h2c_byp_out_valid);
  mp_impl->dma1_h2c_byp_out_error(dma1_h2c_byp_out_error);
  mp_impl->dma1_h2c_byp_out_st_mm(dma1_h2c_byp_out_st_mm);
  mp_impl->dma1_h2c_byp_out_mm_chn(dma1_h2c_byp_out_mm_chn);
  mp_impl->dma1_h2c_byp_out_ready(dma1_h2c_byp_out_ready);
  mp_impl->dma1_h2c_byp_out_fmt(dma1_h2c_byp_out_fmt);
  mp_impl->dma1_h2c_byp_out_qid(dma1_h2c_byp_out_qid);
  mp_impl->dma1_h2c_byp_out_dsc(dma1_h2c_byp_out_dsc);
  mp_impl->dma1_h2c_byp_out_func(dma1_h2c_byp_out_func);
  mp_impl->dma1_h2c_byp_out_cidx(dma1_h2c_byp_out_cidx);
  mp_impl->dma1_h2c_byp_out_dsc_sz(dma1_h2c_byp_out_dsc_sz);
  mp_impl->dma1_h2c_byp_out_port_id(dma1_h2c_byp_out_port_id);
  mp_impl->dma1_axis_c2h_dmawr_cmp(dma1_axis_c2h_dmawr_cmp);
  mp_impl->dma1_axis_c2h_dmawr_target_vch(dma1_axis_c2h_dmawr_target_vch);
  mp_impl->dma1_axis_c2h_dmawr_port_id(dma1_axis_c2h_dmawr_port_id);
  mp_impl->dma1_s_axis_c2h_tready(dma1_s_axis_c2h_tready);
  mp_impl->dma1_s_axis_c2h_tlast(dma1_s_axis_c2h_tlast);
  mp_impl->dma1_s_axis_c2h_tvalid(dma1_s_axis_c2h_tvalid);
  mp_impl->dma1_s_axis_c2h_tcrc(dma1_s_axis_c2h_tcrc);
  mp_impl->dma1_s_axis_c2h_tdata(dma1_s_axis_c2h_tdata);
  mp_impl->dma1_s_axis_c2h_mty(dma1_s_axis_c2h_mty);
  mp_impl->dma1_s_axis_c2h_ecc(dma1_s_axis_c2h_ecc);
  mp_impl->dma1_s_axis_c2h_ctrl_marker(dma1_s_axis_c2h_ctrl_marker);
  mp_impl->dma1_s_axis_c2h_ctrl_has_cmpt(dma1_s_axis_c2h_ctrl_has_cmpt);
  mp_impl->dma1_s_axis_c2h_ctrl_len(dma1_s_axis_c2h_ctrl_len);
  mp_impl->dma1_s_axis_c2h_ctrl_qid(dma1_s_axis_c2h_ctrl_qid);
  mp_impl->dma1_s_axis_c2h_ctrl_port_id(dma1_s_axis_c2h_ctrl_port_id);
  mp_impl->dma1_s_axis_c2h_cmpt_marker(dma1_s_axis_c2h_cmpt_marker);
  mp_impl->dma1_s_axis_c2h_cmpt_user_trig(dma1_s_axis_c2h_cmpt_user_trig);
  mp_impl->dma1_s_axis_c2h_cmpt_size(dma1_s_axis_c2h_cmpt_size);
  mp_impl->dma1_s_axis_c2h_cmpt_qid(dma1_s_axis_c2h_cmpt_qid);
  mp_impl->dma1_s_axis_c2h_cmpt_no_wrb_marker(dma1_s_axis_c2h_cmpt_no_wrb_marker);
  mp_impl->dma1_s_axis_c2h_cmpt_port_id(dma1_s_axis_c2h_cmpt_port_id);
  mp_impl->dma1_s_axis_c2h_cmpt_col_idx(dma1_s_axis_c2h_cmpt_col_idx);
  mp_impl->dma1_s_axis_c2h_cmpt_err_idx(dma1_s_axis_c2h_cmpt_err_idx);
  mp_impl->dma1_s_axis_c2h_cmpt_wait_pld_pkt_id(dma1_s_axis_c2h_cmpt_wait_pld_pkt_id);
  mp_impl->dma1_s_axis_c2h_cmpt_tready(dma1_s_axis_c2h_cmpt_tready);
  mp_impl->dma1_s_axis_c2h_cmpt_tvalid(dma1_s_axis_c2h_cmpt_tvalid);
  mp_impl->dma1_s_axis_c2h_cmpt_dpar(dma1_s_axis_c2h_cmpt_dpar);
  mp_impl->dma1_s_axis_c2h_cmpt_data(dma1_s_axis_c2h_cmpt_data);
  mp_impl->dma1_s_axis_c2h_cmpt_cmpt_type(dma1_s_axis_c2h_cmpt_cmpt_type);
  mp_impl->dma1_m_axis_h2c_tlast(dma1_m_axis_h2c_tlast);
  mp_impl->dma1_m_axis_h2c_err(dma1_m_axis_h2c_err);
  mp_impl->dma1_m_axis_h2c_tvalid(dma1_m_axis_h2c_tvalid);
  mp_impl->dma1_m_axis_h2c_tdata(dma1_m_axis_h2c_tdata);
  mp_impl->dma1_m_axis_h2c_zero_byte(dma1_m_axis_h2c_zero_byte);
  mp_impl->dma1_m_axis_h2c_tready(dma1_m_axis_h2c_tready);
  mp_impl->dma1_m_axis_h2c_tcrc(dma1_m_axis_h2c_tcrc);
  mp_impl->dma1_m_axis_h2c_mty(dma1_m_axis_h2c_mty);
  mp_impl->dma1_m_axis_h2c_qid(dma1_m_axis_h2c_qid);
  mp_impl->dma1_m_axis_h2c_mdata(dma1_m_axis_h2c_mdata);
  mp_impl->dma1_m_axis_h2c_port_id(dma1_m_axis_h2c_port_id);
  mp_impl->dma1_axis_c2h_status_last(dma1_axis_c2h_status_last);
  mp_impl->dma1_axis_c2h_status_drop(dma1_axis_c2h_status_drop);
  mp_impl->dma1_axis_c2h_status_error(dma1_axis_c2h_status_error);
  mp_impl->dma1_axis_c2h_status_valid(dma1_axis_c2h_status_valid);
  mp_impl->dma1_axis_c2h_status_status_cmp(dma1_axis_c2h_status_status_cmp);
  mp_impl->dma1_axis_c2h_status_qid(dma1_axis_c2h_status_qid);
  mp_impl->dma1_qsts_out_vld(dma1_qsts_out_vld);
  mp_impl->dma1_qsts_out_op(dma1_qsts_out_op);
  mp_impl->dma1_qsts_out_rdy(dma1_qsts_out_rdy);
  mp_impl->dma1_qsts_out_qid(dma1_qsts_out_qid);
  mp_impl->dma1_qsts_out_data(dma1_qsts_out_data);
  mp_impl->dma1_qsts_out_port_id(dma1_qsts_out_port_id);
  mp_impl->dma1_dsc_crdt_in_rdy(dma1_dsc_crdt_in_rdy);
  mp_impl->dma1_dsc_crdt_in_dir(dma1_dsc_crdt_in_dir);
  mp_impl->dma1_dsc_crdt_in_valid(dma1_dsc_crdt_in_valid);
  mp_impl->dma1_dsc_crdt_in_fence(dma1_dsc_crdt_in_fence);
  mp_impl->dma1_dsc_crdt_in_qid(dma1_dsc_crdt_in_qid);
  mp_impl->dma1_dsc_crdt_in_crdt(dma1_dsc_crdt_in_crdt);
  mp_impl->dma1_usr_irq_ack(dma1_usr_irq_ack);
  mp_impl->dma1_usr_irq_fail(dma1_usr_irq_fail);
  mp_impl->dma1_usr_irq_valid(dma1_usr_irq_valid);
  mp_impl->dma1_usr_irq_vec(dma1_usr_irq_vec);
  mp_impl->dma1_usr_irq_fnc(dma1_usr_irq_fnc);
  mp_impl->dma1_tm_dsc_sts_mm(dma1_tm_dsc_sts_mm);
  mp_impl->dma1_tm_dsc_sts_qen(dma1_tm_dsc_sts_qen);
  mp_impl->dma1_tm_dsc_sts_byp(dma1_tm_dsc_sts_byp);
  mp_impl->dma1_tm_dsc_sts_dir(dma1_tm_dsc_sts_dir);
  mp_impl->dma1_tm_dsc_sts_error(dma1_tm_dsc_sts_error);
  mp_impl->dma1_tm_dsc_sts_valid(dma1_tm_dsc_sts_valid);
  mp_impl->dma1_tm_dsc_sts_qinv(dma1_tm_dsc_sts_qinv);
  mp_impl->dma1_tm_dsc_sts_irq_arm(dma1_tm_dsc_sts_irq_arm);
  mp_impl->dma1_tm_dsc_sts_rdy(dma1_tm_dsc_sts_rdy);
  mp_impl->dma1_tm_dsc_sts_qid(dma1_tm_dsc_sts_qid);
  mp_impl->dma1_tm_dsc_sts_avl(dma1_tm_dsc_sts_avl);
  mp_impl->dma1_tm_dsc_sts_pidx(dma1_tm_dsc_sts_pidx);
  mp_impl->dma1_tm_dsc_sts_port_id(dma1_tm_dsc_sts_port_id);
  mp_impl->dma1_usr_flr_set(dma1_usr_flr_set);
  mp_impl->dma1_usr_flr_clear(dma1_usr_flr_clear);
  mp_impl->dma1_usr_flr_fnc(dma1_usr_flr_fnc);
  mp_impl->dma1_usr_flr_done_vld(dma1_usr_flr_done_vld);
  mp_impl->dma1_usr_flr_done_fnc(dma1_usr_flr_done_fnc);
  mp_impl->PCIE1_GT_grx_n(PCIE1_GT_grx_n);
  mp_impl->PCIE1_GT_gtx_n(PCIE1_GT_gtx_n);
  mp_impl->PCIE1_GT_grx_p(PCIE1_GT_grx_p);
  mp_impl->PCIE1_GT_gtx_p(PCIE1_GT_gtx_p);
  mp_impl->gt_refclk1_clk_n(gt_refclk1_clk_n);
  mp_impl->gt_refclk1_clk_p(gt_refclk1_clk_p);
  mp_impl->pcie1_pipe_ep_tx_0(pcie1_pipe_ep_tx_0);
  mp_impl->pcie1_pipe_ep_rx_0(pcie1_pipe_ep_rx_0);
  mp_impl->pcie1_pipe_ep_tx_1(pcie1_pipe_ep_tx_1);
  mp_impl->pcie1_pipe_ep_rx_1(pcie1_pipe_ep_rx_1);
  mp_impl->pcie1_pipe_ep_tx_2(pcie1_pipe_ep_tx_2);
  mp_impl->pcie1_pipe_ep_rx_2(pcie1_pipe_ep_rx_2);
  mp_impl->pcie1_pipe_ep_tx_3(pcie1_pipe_ep_tx_3);
  mp_impl->pcie1_pipe_ep_rx_3(pcie1_pipe_ep_rx_3);
  mp_impl->pcie1_pipe_ep_tx_4(pcie1_pipe_ep_tx_4);
  mp_impl->pcie1_pipe_ep_rx_4(pcie1_pipe_ep_rx_4);
  mp_impl->pcie1_pipe_ep_tx_5(pcie1_pipe_ep_tx_5);
  mp_impl->pcie1_pipe_ep_rx_5(pcie1_pipe_ep_rx_5);
  mp_impl->pcie1_pipe_ep_tx_6(pcie1_pipe_ep_tx_6);
  mp_impl->pcie1_pipe_ep_rx_6(pcie1_pipe_ep_rx_6);
  mp_impl->pcie1_pipe_ep_tx_7(pcie1_pipe_ep_tx_7);
  mp_impl->pcie1_pipe_ep_rx_7(pcie1_pipe_ep_rx_7);
  mp_impl->pcie1_pipe_ep_tx_8(pcie1_pipe_ep_tx_8);
  mp_impl->pcie1_pipe_ep_rx_8(pcie1_pipe_ep_rx_8);
  mp_impl->pcie1_pipe_ep_tx_9(pcie1_pipe_ep_tx_9);
  mp_impl->pcie1_pipe_ep_rx_9(pcie1_pipe_ep_rx_9);
  mp_impl->pcie1_pipe_ep_tx_10(pcie1_pipe_ep_tx_10);
  mp_impl->pcie1_pipe_ep_rx_10(pcie1_pipe_ep_rx_10);
  mp_impl->pcie1_pipe_ep_tx_11(pcie1_pipe_ep_tx_11);
  mp_impl->pcie1_pipe_ep_rx_11(pcie1_pipe_ep_rx_11);
  mp_impl->pcie1_pipe_ep_tx_12(pcie1_pipe_ep_tx_12);
  mp_impl->pcie1_pipe_ep_rx_12(pcie1_pipe_ep_rx_12);
  mp_impl->pcie1_pipe_ep_tx_13(pcie1_pipe_ep_tx_13);
  mp_impl->pcie1_pipe_ep_rx_13(pcie1_pipe_ep_rx_13);
  mp_impl->pcie1_pipe_ep_tx_14(pcie1_pipe_ep_tx_14);
  mp_impl->pcie1_pipe_ep_rx_14(pcie1_pipe_ep_rx_14);
  mp_impl->pcie1_pipe_ep_tx_15(pcie1_pipe_ep_tx_15);
  mp_impl->pcie1_pipe_ep_rx_15(pcie1_pipe_ep_rx_15);
  mp_impl->pcie1_pipe_ep_commands_in(pcie1_pipe_ep_commands_in);
  mp_impl->pcie1_pipe_ep_commands_out(pcie1_pipe_ep_commands_out);

  // initialize transactors
  mp_M_AXI_FPD_transactor = NULL;
  mp_CPM_PCIE_NOC_0_transactor = NULL;
  mp_CPM_PCIE_NOC_1_transactor = NULL;
  mp_dma1_st_rx_msg_transactor = NULL;

  // initialize socket stubs

}

void cpm_qdma_ep_part_versal_cips_0_0::before_end_of_elaboration()
{
  // configure 'M_AXI_FPD' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("cpm_qdma_ep_part_versal_cips_0_0", "M_AXI_FPD_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXI_FPD' transactor parameters
    xsc::common_cpp::properties M_AXI_FPD_transactor_param_props;
    M_AXI_FPD_transactor_param_props.addLong("DATA_WIDTH", "128");
    M_AXI_FPD_transactor_param_props.addLong("FREQ_HZ", "429162384");
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
    M_AXI_FPD_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_FPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_FPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_FPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_FPD_transactor_param_props.addString("CLK_DOMAIN", "bd_a532_pspmc_0_0_pl0_ref_clk");
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
    m_M_AXI_FPD_transactor_rst_signal.write(1);
    mp_M_AXI_FPD_transactor->RST(m_M_AXI_FPD_transactor_rst_signal);

    // M_AXI_FPD' transactor sockets

    mp_impl->M_AXI_FPD_tlm_aximm_read_socket->bind(*(mp_M_AXI_FPD_transactor->rd_socket));
    mp_impl->M_AXI_FPD_tlm_aximm_write_socket->bind(*(mp_M_AXI_FPD_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'CPM_PCIE_NOC_0' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("cpm_qdma_ep_part_versal_cips_0_0", "CPM_PCIE_NOC_0_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'CPM_PCIE_NOC_0' transactor parameters
    xsc::common_cpp::properties CPM_PCIE_NOC_0_transactor_param_props;
    CPM_PCIE_NOC_0_transactor_param_props.addLong("DATA_WIDTH", "128");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("FREQ_HZ", "1000000000");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("ID_WIDTH", "16");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("ADDR_WIDTH", "64");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("WUSER_WIDTH", "17");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("RUSER_WIDTH", "17");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("BUSER_WIDTH", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_BURST", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_LOCK", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_PROT", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_CACHE", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_QOS", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_REGION", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_WSTRB", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_BRESP", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_RRESP", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_SIZE", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_RESET", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addFloat("PHASE", "0.0");
    CPM_PCIE_NOC_0_transactor_param_props.addString("PROTOCOL", "AXI4");
    CPM_PCIE_NOC_0_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    CPM_PCIE_NOC_0_transactor_param_props.addString("CLK_DOMAIN", "bd_a532_pspmc_0_0_cpm_pcie_noc_axi0_clk");
    CPM_PCIE_NOC_0_transactor_param_props.addString("CATEGORY", "noc");
    CPM_PCIE_NOC_0_transactor_param_props.addString("MY_CATEGORY", "ps_pcie");
    CPM_PCIE_NOC_0_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_PCIE_TO_NOC_NMU");
    CPM_PCIE_NOC_0_transactor_param_props.addString("HD_TANDEM", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addString("INDEX", "0");

    mp_CPM_PCIE_NOC_0_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,17>("CPM_PCIE_NOC_0_transactor", CPM_PCIE_NOC_0_transactor_param_props);

    // CPM_PCIE_NOC_0' transactor ports

    mp_CPM_PCIE_NOC_0_transactor->ARADDR(CPM_PCIE_NOC_0_araddr);
    mp_CPM_PCIE_NOC_0_transactor->ARBURST(CPM_PCIE_NOC_0_arburst);
    mp_CPM_PCIE_NOC_0_transactor->ARCACHE(CPM_PCIE_NOC_0_arcache);
    mp_CPM_PCIE_NOC_0_transactor->ARID(CPM_PCIE_NOC_0_arid);
    mp_CPM_PCIE_NOC_0_transactor->ARLEN(CPM_PCIE_NOC_0_arlen);
    mp_CPM_PCIE_NOC_0_transactor->ARLOCK(CPM_PCIE_NOC_0_arlock);
    mp_CPM_PCIE_NOC_0_transactor->ARPROT(CPM_PCIE_NOC_0_arprot);
    mp_CPM_PCIE_NOC_0_transactor->ARQOS(CPM_PCIE_NOC_0_arqos);
    mp_CPM_PCIE_NOC_0_transactor->ARSIZE(CPM_PCIE_NOC_0_arsize);
    mp_CPM_PCIE_NOC_0_transactor->ARUSER(CPM_PCIE_NOC_0_aruser);
    mp_CPM_PCIE_NOC_0_transactor->ARVALID(CPM_PCIE_NOC_0_arvalid);
    mp_CPM_PCIE_NOC_0_transactor->AWADDR(CPM_PCIE_NOC_0_awaddr);
    mp_CPM_PCIE_NOC_0_transactor->AWBURST(CPM_PCIE_NOC_0_awburst);
    mp_CPM_PCIE_NOC_0_transactor->AWCACHE(CPM_PCIE_NOC_0_awcache);
    mp_CPM_PCIE_NOC_0_transactor->AWID(CPM_PCIE_NOC_0_awid);
    mp_CPM_PCIE_NOC_0_transactor->AWLEN(CPM_PCIE_NOC_0_awlen);
    mp_CPM_PCIE_NOC_0_transactor->AWLOCK(CPM_PCIE_NOC_0_awlock);
    mp_CPM_PCIE_NOC_0_transactor->AWPROT(CPM_PCIE_NOC_0_awprot);
    mp_CPM_PCIE_NOC_0_transactor->AWQOS(CPM_PCIE_NOC_0_awqos);
    mp_CPM_PCIE_NOC_0_transactor->AWSIZE(CPM_PCIE_NOC_0_awsize);
    mp_CPM_PCIE_NOC_0_transactor->AWUSER(CPM_PCIE_NOC_0_awuser);
    mp_CPM_PCIE_NOC_0_transactor->AWVALID(CPM_PCIE_NOC_0_awvalid);
    mp_CPM_PCIE_NOC_0_transactor->BREADY(CPM_PCIE_NOC_0_bready);
    mp_CPM_PCIE_NOC_0_transactor->RREADY(CPM_PCIE_NOC_0_rready);
    mp_CPM_PCIE_NOC_0_transactor->WDATA(CPM_PCIE_NOC_0_wdata);
    mp_CPM_PCIE_NOC_0_transactor->WLAST(CPM_PCIE_NOC_0_wlast);
    mp_CPM_PCIE_NOC_0_transactor->WSTRB(CPM_PCIE_NOC_0_wstrb);
    mp_CPM_PCIE_NOC_0_transactor->WVALID(CPM_PCIE_NOC_0_wvalid);
    mp_CPM_PCIE_NOC_0_transactor->ARREADY(CPM_PCIE_NOC_0_arready);
    mp_CPM_PCIE_NOC_0_transactor->AWREADY(CPM_PCIE_NOC_0_awready);
    mp_CPM_PCIE_NOC_0_transactor->BID(CPM_PCIE_NOC_0_bid);
    mp_CPM_PCIE_NOC_0_transactor->BRESP(CPM_PCIE_NOC_0_bresp);
    mp_CPM_PCIE_NOC_0_transactor->BVALID(CPM_PCIE_NOC_0_bvalid);
    mp_CPM_PCIE_NOC_0_transactor->RDATA(CPM_PCIE_NOC_0_rdata);
    mp_CPM_PCIE_NOC_0_transactor->RID(CPM_PCIE_NOC_0_rid);
    mp_CPM_PCIE_NOC_0_transactor->RLAST(CPM_PCIE_NOC_0_rlast);
    mp_CPM_PCIE_NOC_0_transactor->RRESP(CPM_PCIE_NOC_0_rresp);
    mp_CPM_PCIE_NOC_0_transactor->RVALID(CPM_PCIE_NOC_0_rvalid);
    mp_CPM_PCIE_NOC_0_transactor->RUSER(CPM_PCIE_NOC_0_ruser);
    mp_CPM_PCIE_NOC_0_transactor->WUSER(CPM_PCIE_NOC_0_wuser);
    mp_CPM_PCIE_NOC_0_transactor->WREADY(CPM_PCIE_NOC_0_wready);
    mp_CPM_PCIE_NOC_0_transactor->CLK(cpm_pcie_noc_axi0_clk);
    m_CPM_PCIE_NOC_0_transactor_rst_signal.write(1);
    mp_CPM_PCIE_NOC_0_transactor->RST(m_CPM_PCIE_NOC_0_transactor_rst_signal);

    // CPM_PCIE_NOC_0' transactor sockets

    mp_impl->CPM_PCIE_NOC_0_tlm_aximm_read_socket->bind(*(mp_CPM_PCIE_NOC_0_transactor->rd_socket));
    mp_impl->CPM_PCIE_NOC_0_tlm_aximm_write_socket->bind(*(mp_CPM_PCIE_NOC_0_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'CPM_PCIE_NOC_1' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("cpm_qdma_ep_part_versal_cips_0_0", "CPM_PCIE_NOC_1_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'CPM_PCIE_NOC_1' transactor parameters
    xsc::common_cpp::properties CPM_PCIE_NOC_1_transactor_param_props;
    CPM_PCIE_NOC_1_transactor_param_props.addLong("DATA_WIDTH", "128");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("FREQ_HZ", "1000000000");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("ID_WIDTH", "16");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("ADDR_WIDTH", "64");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("WUSER_WIDTH", "17");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("RUSER_WIDTH", "17");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("BUSER_WIDTH", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_BURST", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_LOCK", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_PROT", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_CACHE", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_QOS", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_REGION", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_WSTRB", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_BRESP", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_RRESP", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_SIZE", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_RESET", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addFloat("PHASE", "0.0");
    CPM_PCIE_NOC_1_transactor_param_props.addString("PROTOCOL", "AXI4");
    CPM_PCIE_NOC_1_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    CPM_PCIE_NOC_1_transactor_param_props.addString("CLK_DOMAIN", "bd_a532_pspmc_0_0_cpm_pcie_noc_axi1_clk");
    CPM_PCIE_NOC_1_transactor_param_props.addString("CATEGORY", "noc");
    CPM_PCIE_NOC_1_transactor_param_props.addString("MY_CATEGORY", "ps_pcie");
    CPM_PCIE_NOC_1_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_PCIE_TO_NOC_NMU");
    CPM_PCIE_NOC_1_transactor_param_props.addString("HD_TANDEM", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addString("INDEX", "1");

    mp_CPM_PCIE_NOC_1_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,17>("CPM_PCIE_NOC_1_transactor", CPM_PCIE_NOC_1_transactor_param_props);

    // CPM_PCIE_NOC_1' transactor ports

    mp_CPM_PCIE_NOC_1_transactor->ARADDR(CPM_PCIE_NOC_1_araddr);
    mp_CPM_PCIE_NOC_1_transactor->ARBURST(CPM_PCIE_NOC_1_arburst);
    mp_CPM_PCIE_NOC_1_transactor->ARCACHE(CPM_PCIE_NOC_1_arcache);
    mp_CPM_PCIE_NOC_1_transactor->ARID(CPM_PCIE_NOC_1_arid);
    mp_CPM_PCIE_NOC_1_transactor->ARLEN(CPM_PCIE_NOC_1_arlen);
    mp_CPM_PCIE_NOC_1_transactor->ARLOCK(CPM_PCIE_NOC_1_arlock);
    mp_CPM_PCIE_NOC_1_transactor->ARPROT(CPM_PCIE_NOC_1_arprot);
    mp_CPM_PCIE_NOC_1_transactor->ARQOS(CPM_PCIE_NOC_1_arqos);
    mp_CPM_PCIE_NOC_1_transactor->ARSIZE(CPM_PCIE_NOC_1_arsize);
    mp_CPM_PCIE_NOC_1_transactor->ARUSER(CPM_PCIE_NOC_1_aruser);
    mp_CPM_PCIE_NOC_1_transactor->ARVALID(CPM_PCIE_NOC_1_arvalid);
    mp_CPM_PCIE_NOC_1_transactor->AWADDR(CPM_PCIE_NOC_1_awaddr);
    mp_CPM_PCIE_NOC_1_transactor->AWBURST(CPM_PCIE_NOC_1_awburst);
    mp_CPM_PCIE_NOC_1_transactor->AWCACHE(CPM_PCIE_NOC_1_awcache);
    mp_CPM_PCIE_NOC_1_transactor->AWID(CPM_PCIE_NOC_1_awid);
    mp_CPM_PCIE_NOC_1_transactor->AWLEN(CPM_PCIE_NOC_1_awlen);
    mp_CPM_PCIE_NOC_1_transactor->AWLOCK(CPM_PCIE_NOC_1_awlock);
    mp_CPM_PCIE_NOC_1_transactor->AWPROT(CPM_PCIE_NOC_1_awprot);
    mp_CPM_PCIE_NOC_1_transactor->AWQOS(CPM_PCIE_NOC_1_awqos);
    mp_CPM_PCIE_NOC_1_transactor->AWSIZE(CPM_PCIE_NOC_1_awsize);
    mp_CPM_PCIE_NOC_1_transactor->AWUSER(CPM_PCIE_NOC_1_awuser);
    mp_CPM_PCIE_NOC_1_transactor->AWVALID(CPM_PCIE_NOC_1_awvalid);
    mp_CPM_PCIE_NOC_1_transactor->BREADY(CPM_PCIE_NOC_1_bready);
    mp_CPM_PCIE_NOC_1_transactor->RREADY(CPM_PCIE_NOC_1_rready);
    mp_CPM_PCIE_NOC_1_transactor->WDATA(CPM_PCIE_NOC_1_wdata);
    mp_CPM_PCIE_NOC_1_transactor->WLAST(CPM_PCIE_NOC_1_wlast);
    mp_CPM_PCIE_NOC_1_transactor->WSTRB(CPM_PCIE_NOC_1_wstrb);
    mp_CPM_PCIE_NOC_1_transactor->WVALID(CPM_PCIE_NOC_1_wvalid);
    mp_CPM_PCIE_NOC_1_transactor->ARREADY(CPM_PCIE_NOC_1_arready);
    mp_CPM_PCIE_NOC_1_transactor->AWREADY(CPM_PCIE_NOC_1_awready);
    mp_CPM_PCIE_NOC_1_transactor->BID(CPM_PCIE_NOC_1_bid);
    mp_CPM_PCIE_NOC_1_transactor->BRESP(CPM_PCIE_NOC_1_bresp);
    mp_CPM_PCIE_NOC_1_transactor->BVALID(CPM_PCIE_NOC_1_bvalid);
    mp_CPM_PCIE_NOC_1_transactor->RDATA(CPM_PCIE_NOC_1_rdata);
    mp_CPM_PCIE_NOC_1_transactor->RID(CPM_PCIE_NOC_1_rid);
    mp_CPM_PCIE_NOC_1_transactor->RLAST(CPM_PCIE_NOC_1_rlast);
    mp_CPM_PCIE_NOC_1_transactor->RRESP(CPM_PCIE_NOC_1_rresp);
    mp_CPM_PCIE_NOC_1_transactor->RVALID(CPM_PCIE_NOC_1_rvalid);
    mp_CPM_PCIE_NOC_1_transactor->RUSER(CPM_PCIE_NOC_1_ruser);
    mp_CPM_PCIE_NOC_1_transactor->WUSER(CPM_PCIE_NOC_1_wuser);
    mp_CPM_PCIE_NOC_1_transactor->WREADY(CPM_PCIE_NOC_1_wready);
    mp_CPM_PCIE_NOC_1_transactor->CLK(cpm_pcie_noc_axi1_clk);
    m_CPM_PCIE_NOC_1_transactor_rst_signal.write(1);
    mp_CPM_PCIE_NOC_1_transactor->RST(m_CPM_PCIE_NOC_1_transactor_rst_signal);

    // CPM_PCIE_NOC_1' transactor sockets

    mp_impl->CPM_PCIE_NOC_1_tlm_aximm_read_socket->bind(*(mp_CPM_PCIE_NOC_1_transactor->rd_socket));
    mp_impl->CPM_PCIE_NOC_1_tlm_aximm_write_socket->bind(*(mp_CPM_PCIE_NOC_1_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'dma1_st_rx_msg' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("cpm_qdma_ep_part_versal_cips_0_0", "dma1_st_rx_msg_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'dma1_st_rx_msg' transactor parameters
    xsc::common_cpp::properties dma1_st_rx_msg_transactor_param_props;
    dma1_st_rx_msg_transactor_param_props.addLong("TDATA_NUM_BYTES", "4");
    dma1_st_rx_msg_transactor_param_props.addLong("TDEST_WIDTH", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("TID_WIDTH", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("TUSER_WIDTH", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_TREADY", "1");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_TSTRB", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_TKEEP", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_TLAST", "1");
    dma1_st_rx_msg_transactor_param_props.addLong("FREQ_HZ", "429162384");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_RESET", "1");
    dma1_st_rx_msg_transactor_param_props.addFloat("PHASE", "0.0");
    dma1_st_rx_msg_transactor_param_props.addString("CLK_DOMAIN", "bd_a532_pspmc_0_0_pl0_ref_clk");
    dma1_st_rx_msg_transactor_param_props.addString("LAYERED_METADATA", "undef");
    dma1_st_rx_msg_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_dma1_st_rx_msg_transactor = new xtlm::xaxis_xtlm2pin_t<4,1,1,1,1,1>("dma1_st_rx_msg_transactor", dma1_st_rx_msg_transactor_param_props);

    // dma1_st_rx_msg' transactor ports

    mp_dma1_st_rx_msg_transactor->TLAST(dma1_st_rx_msg_tlast);
    mp_dma1_st_rx_msg_transactor->TVALID(dma1_st_rx_msg_tvalid);
    mp_dma1_st_rx_msg_transactor->TREADY(dma1_st_rx_msg_tready);
    mp_dma1_st_rx_msg_transactor->TDATA(dma1_st_rx_msg_tdata);
    mp_dma1_st_rx_msg_transactor->CLK(dma1_intrfc_clk);
    mp_dma1_st_rx_msg_transactor->RST(dma1_axi_aresetn);

    // dma1_st_rx_msg' transactor sockets

    mp_impl->dma1_st_rx_msg_tlm_axis_socket->bind(*(mp_dma1_st_rx_msg_transactor->socket));
  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
cpm_qdma_ep_part_versal_cips_0_0::cpm_qdma_ep_part_versal_cips_0_0(const sc_core::sc_module_name& nm) : cpm_qdma_ep_part_versal_cips_0_0_sc(nm), pl0_ref_clk("pl0_ref_clk"), pl1_ref_clk("pl1_ref_clk"), pl0_resetn("pl0_resetn"), m_axi_fpd_aclk("m_axi_fpd_aclk"), cpm_pcie_noc_axi0_clk("cpm_pcie_noc_axi0_clk"), cpm_pcie_noc_axi1_clk("cpm_pcie_noc_axi1_clk"), dma1_intrfc_clk("dma1_intrfc_clk"), cpm_misc_irq("cpm_misc_irq"), cpm_cor_irq("cpm_cor_irq"), cpm_uncor_irq("cpm_uncor_irq"), cpm_irq0("cpm_irq0"), cpm_irq1("cpm_irq1"), dma1_axi_aresetn("dma1_axi_aresetn"), dma1_intrfc_resetn("dma1_intrfc_resetn"), M_AXI_FPD_awid("M_AXI_FPD_awid"), M_AXI_FPD_awaddr("M_AXI_FPD_awaddr"), M_AXI_FPD_awlen("M_AXI_FPD_awlen"), M_AXI_FPD_awsize("M_AXI_FPD_awsize"), M_AXI_FPD_awburst("M_AXI_FPD_awburst"), M_AXI_FPD_awlock("M_AXI_FPD_awlock"), M_AXI_FPD_awcache("M_AXI_FPD_awcache"), M_AXI_FPD_awprot("M_AXI_FPD_awprot"), M_AXI_FPD_awvalid("M_AXI_FPD_awvalid"), M_AXI_FPD_awuser("M_AXI_FPD_awuser"), M_AXI_FPD_awready("M_AXI_FPD_awready"), M_AXI_FPD_wlast("M_AXI_FPD_wlast"), M_AXI_FPD_wvalid("M_AXI_FPD_wvalid"), M_AXI_FPD_wready("M_AXI_FPD_wready"), M_AXI_FPD_bid("M_AXI_FPD_bid"), M_AXI_FPD_bresp("M_AXI_FPD_bresp"), M_AXI_FPD_bvalid("M_AXI_FPD_bvalid"), M_AXI_FPD_bready("M_AXI_FPD_bready"), M_AXI_FPD_arid("M_AXI_FPD_arid"), M_AXI_FPD_araddr("M_AXI_FPD_araddr"), M_AXI_FPD_arlen("M_AXI_FPD_arlen"), M_AXI_FPD_arsize("M_AXI_FPD_arsize"), M_AXI_FPD_arburst("M_AXI_FPD_arburst"), M_AXI_FPD_arlock("M_AXI_FPD_arlock"), M_AXI_FPD_arcache("M_AXI_FPD_arcache"), M_AXI_FPD_arprot("M_AXI_FPD_arprot"), M_AXI_FPD_arvalid("M_AXI_FPD_arvalid"), M_AXI_FPD_aruser("M_AXI_FPD_aruser"), M_AXI_FPD_arready("M_AXI_FPD_arready"), M_AXI_FPD_rid("M_AXI_FPD_rid"), M_AXI_FPD_rresp("M_AXI_FPD_rresp"), M_AXI_FPD_rlast("M_AXI_FPD_rlast"), M_AXI_FPD_rvalid("M_AXI_FPD_rvalid"), M_AXI_FPD_rready("M_AXI_FPD_rready"), M_AXI_FPD_awqos("M_AXI_FPD_awqos"), M_AXI_FPD_arqos("M_AXI_FPD_arqos"), M_AXI_FPD_wdata("M_AXI_FPD_wdata"), M_AXI_FPD_wstrb("M_AXI_FPD_wstrb"), M_AXI_FPD_rdata("M_AXI_FPD_rdata"), CPM_PCIE_NOC_0_araddr("CPM_PCIE_NOC_0_araddr"), CPM_PCIE_NOC_0_arburst("CPM_PCIE_NOC_0_arburst"), CPM_PCIE_NOC_0_arcache("CPM_PCIE_NOC_0_arcache"), CPM_PCIE_NOC_0_arid("CPM_PCIE_NOC_0_arid"), CPM_PCIE_NOC_0_arlen("CPM_PCIE_NOC_0_arlen"), CPM_PCIE_NOC_0_arlock("CPM_PCIE_NOC_0_arlock"), CPM_PCIE_NOC_0_arprot("CPM_PCIE_NOC_0_arprot"), CPM_PCIE_NOC_0_arqos("CPM_PCIE_NOC_0_arqos"), CPM_PCIE_NOC_0_arsize("CPM_PCIE_NOC_0_arsize"), CPM_PCIE_NOC_0_aruser("CPM_PCIE_NOC_0_aruser"), CPM_PCIE_NOC_0_arvalid("CPM_PCIE_NOC_0_arvalid"), CPM_PCIE_NOC_0_awaddr("CPM_PCIE_NOC_0_awaddr"), CPM_PCIE_NOC_0_awburst("CPM_PCIE_NOC_0_awburst"), CPM_PCIE_NOC_0_awcache("CPM_PCIE_NOC_0_awcache"), CPM_PCIE_NOC_0_awid("CPM_PCIE_NOC_0_awid"), CPM_PCIE_NOC_0_awlen("CPM_PCIE_NOC_0_awlen"), CPM_PCIE_NOC_0_awlock("CPM_PCIE_NOC_0_awlock"), CPM_PCIE_NOC_0_awprot("CPM_PCIE_NOC_0_awprot"), CPM_PCIE_NOC_0_awqos("CPM_PCIE_NOC_0_awqos"), CPM_PCIE_NOC_0_awsize("CPM_PCIE_NOC_0_awsize"), CPM_PCIE_NOC_0_awuser("CPM_PCIE_NOC_0_awuser"), CPM_PCIE_NOC_0_awvalid("CPM_PCIE_NOC_0_awvalid"), CPM_PCIE_NOC_0_bready("CPM_PCIE_NOC_0_bready"), CPM_PCIE_NOC_0_rready("CPM_PCIE_NOC_0_rready"), CPM_PCIE_NOC_0_wdata("CPM_PCIE_NOC_0_wdata"), CPM_PCIE_NOC_0_wlast("CPM_PCIE_NOC_0_wlast"), CPM_PCIE_NOC_0_wstrb("CPM_PCIE_NOC_0_wstrb"), CPM_PCIE_NOC_0_wvalid("CPM_PCIE_NOC_0_wvalid"), CPM_PCIE_NOC_0_arready("CPM_PCIE_NOC_0_arready"), CPM_PCIE_NOC_0_awready("CPM_PCIE_NOC_0_awready"), CPM_PCIE_NOC_0_bid("CPM_PCIE_NOC_0_bid"), CPM_PCIE_NOC_0_bresp("CPM_PCIE_NOC_0_bresp"), CPM_PCIE_NOC_0_bvalid("CPM_PCIE_NOC_0_bvalid"), CPM_PCIE_NOC_0_rdata("CPM_PCIE_NOC_0_rdata"), CPM_PCIE_NOC_0_rid("CPM_PCIE_NOC_0_rid"), CPM_PCIE_NOC_0_rlast("CPM_PCIE_NOC_0_rlast"), CPM_PCIE_NOC_0_rresp("CPM_PCIE_NOC_0_rresp"), CPM_PCIE_NOC_0_rvalid("CPM_PCIE_NOC_0_rvalid"), CPM_PCIE_NOC_0_ruser("CPM_PCIE_NOC_0_ruser"), CPM_PCIE_NOC_0_wuser("CPM_PCIE_NOC_0_wuser"), CPM_PCIE_NOC_0_wready("CPM_PCIE_NOC_0_wready"), CPM_PCIE_NOC_1_araddr("CPM_PCIE_NOC_1_araddr"), CPM_PCIE_NOC_1_arburst("CPM_PCIE_NOC_1_arburst"), CPM_PCIE_NOC_1_arcache("CPM_PCIE_NOC_1_arcache"), CPM_PCIE_NOC_1_arid("CPM_PCIE_NOC_1_arid"), CPM_PCIE_NOC_1_arlen("CPM_PCIE_NOC_1_arlen"), CPM_PCIE_NOC_1_arlock("CPM_PCIE_NOC_1_arlock"), CPM_PCIE_NOC_1_arprot("CPM_PCIE_NOC_1_arprot"), CPM_PCIE_NOC_1_arqos("CPM_PCIE_NOC_1_arqos"), CPM_PCIE_NOC_1_arsize("CPM_PCIE_NOC_1_arsize"), CPM_PCIE_NOC_1_aruser("CPM_PCIE_NOC_1_aruser"), CPM_PCIE_NOC_1_arvalid("CPM_PCIE_NOC_1_arvalid"), CPM_PCIE_NOC_1_awaddr("CPM_PCIE_NOC_1_awaddr"), CPM_PCIE_NOC_1_awburst("CPM_PCIE_NOC_1_awburst"), CPM_PCIE_NOC_1_awcache("CPM_PCIE_NOC_1_awcache"), CPM_PCIE_NOC_1_awid("CPM_PCIE_NOC_1_awid"), CPM_PCIE_NOC_1_awlen("CPM_PCIE_NOC_1_awlen"), CPM_PCIE_NOC_1_awlock("CPM_PCIE_NOC_1_awlock"), CPM_PCIE_NOC_1_awprot("CPM_PCIE_NOC_1_awprot"), CPM_PCIE_NOC_1_awqos("CPM_PCIE_NOC_1_awqos"), CPM_PCIE_NOC_1_awsize("CPM_PCIE_NOC_1_awsize"), CPM_PCIE_NOC_1_awuser("CPM_PCIE_NOC_1_awuser"), CPM_PCIE_NOC_1_awvalid("CPM_PCIE_NOC_1_awvalid"), CPM_PCIE_NOC_1_bready("CPM_PCIE_NOC_1_bready"), CPM_PCIE_NOC_1_rready("CPM_PCIE_NOC_1_rready"), CPM_PCIE_NOC_1_wdata("CPM_PCIE_NOC_1_wdata"), CPM_PCIE_NOC_1_wlast("CPM_PCIE_NOC_1_wlast"), CPM_PCIE_NOC_1_wstrb("CPM_PCIE_NOC_1_wstrb"), CPM_PCIE_NOC_1_wvalid("CPM_PCIE_NOC_1_wvalid"), CPM_PCIE_NOC_1_arready("CPM_PCIE_NOC_1_arready"), CPM_PCIE_NOC_1_awready("CPM_PCIE_NOC_1_awready"), CPM_PCIE_NOC_1_bid("CPM_PCIE_NOC_1_bid"), CPM_PCIE_NOC_1_bresp("CPM_PCIE_NOC_1_bresp"), CPM_PCIE_NOC_1_bvalid("CPM_PCIE_NOC_1_bvalid"), CPM_PCIE_NOC_1_rdata("CPM_PCIE_NOC_1_rdata"), CPM_PCIE_NOC_1_rid("CPM_PCIE_NOC_1_rid"), CPM_PCIE_NOC_1_rlast("CPM_PCIE_NOC_1_rlast"), CPM_PCIE_NOC_1_rresp("CPM_PCIE_NOC_1_rresp"), CPM_PCIE_NOC_1_rvalid("CPM_PCIE_NOC_1_rvalid"), CPM_PCIE_NOC_1_ruser("CPM_PCIE_NOC_1_ruser"), CPM_PCIE_NOC_1_wuser("CPM_PCIE_NOC_1_wuser"), CPM_PCIE_NOC_1_wready("CPM_PCIE_NOC_1_wready"), dma1_mgmt_cpl_vld("dma1_mgmt_cpl_vld"), dma1_mgmt_req_rdy("dma1_mgmt_req_rdy"), dma1_mgmt_cpl_rdy("dma1_mgmt_cpl_rdy"), dma1_mgmt_req_vld("dma1_mgmt_req_vld"), dma1_mgmt_cpl_sts("dma1_mgmt_cpl_sts"), dma1_mgmt_cpl_dat("dma1_mgmt_cpl_dat"), dma1_mgmt_req_cmd("dma1_mgmt_req_cmd"), dma1_mgmt_req_fnc("dma1_mgmt_req_fnc"), dma1_mgmt_req_msc("dma1_mgmt_req_msc"), dma1_mgmt_req_adr("dma1_mgmt_req_adr"), dma1_mgmt_req_dat("dma1_mgmt_req_dat"), dma1_st_rx_msg_tlast("dma1_st_rx_msg_tlast"), dma1_st_rx_msg_tvalid("dma1_st_rx_msg_tvalid"), dma1_st_rx_msg_tready("dma1_st_rx_msg_tready"), dma1_st_rx_msg_tdata("dma1_st_rx_msg_tdata"), dma1_c2h_byp_in_mm_0_ready("dma1_c2h_byp_in_mm_0_ready"), dma1_c2h_byp_in_mm_0_sdi("dma1_c2h_byp_in_mm_0_sdi"), dma1_c2h_byp_in_mm_0_valid("dma1_c2h_byp_in_mm_0_valid"), dma1_c2h_byp_in_mm_0_error("dma1_c2h_byp_in_mm_0_error"), dma1_c2h_byp_in_mm_0_no_dma("dma1_c2h_byp_in_mm_0_no_dma"), dma1_c2h_byp_in_mm_0_mrkr_req("dma1_c2h_byp_in_mm_0_mrkr_req"), dma1_c2h_byp_in_mm_0_len("dma1_c2h_byp_in_mm_0_len"), dma1_c2h_byp_in_mm_0_qid("dma1_c2h_byp_in_mm_0_qid"), dma1_c2h_byp_in_mm_0_func("dma1_c2h_byp_in_mm_0_func"), dma1_c2h_byp_in_mm_0_cidx("dma1_c2h_byp_in_mm_0_cidx"), dma1_c2h_byp_in_mm_0_radr("dma1_c2h_byp_in_mm_0_radr"), dma1_c2h_byp_in_mm_0_wadr("dma1_c2h_byp_in_mm_0_wadr"), dma1_c2h_byp_in_mm_0_port_id("dma1_c2h_byp_in_mm_0_port_id"), dma1_c2h_byp_in_mm_1_ready("dma1_c2h_byp_in_mm_1_ready"), dma1_c2h_byp_in_mm_1_sdi("dma1_c2h_byp_in_mm_1_sdi"), dma1_c2h_byp_in_mm_1_valid("dma1_c2h_byp_in_mm_1_valid"), dma1_c2h_byp_in_mm_1_error("dma1_c2h_byp_in_mm_1_error"), dma1_c2h_byp_in_mm_1_no_dma("dma1_c2h_byp_in_mm_1_no_dma"), dma1_c2h_byp_in_mm_1_mrkr_req("dma1_c2h_byp_in_mm_1_mrkr_req"), dma1_c2h_byp_in_mm_1_len("dma1_c2h_byp_in_mm_1_len"), dma1_c2h_byp_in_mm_1_qid("dma1_c2h_byp_in_mm_1_qid"), dma1_c2h_byp_in_mm_1_func("dma1_c2h_byp_in_mm_1_func"), dma1_c2h_byp_in_mm_1_cidx("dma1_c2h_byp_in_mm_1_cidx"), dma1_c2h_byp_in_mm_1_radr("dma1_c2h_byp_in_mm_1_radr"), dma1_c2h_byp_in_mm_1_wadr("dma1_c2h_byp_in_mm_1_wadr"), dma1_c2h_byp_in_mm_1_port_id("dma1_c2h_byp_in_mm_1_port_id"), dma1_c2h_byp_in_st_csh_ready("dma1_c2h_byp_in_st_csh_ready"), dma1_c2h_byp_in_st_csh_valid("dma1_c2h_byp_in_st_csh_valid"), dma1_c2h_byp_in_st_csh_error("dma1_c2h_byp_in_st_csh_error"), dma1_c2h_byp_in_st_csh_qid("dma1_c2h_byp_in_st_csh_qid"), dma1_c2h_byp_in_st_csh_func("dma1_c2h_byp_in_st_csh_func"), dma1_c2h_byp_in_st_csh_addr("dma1_c2h_byp_in_st_csh_addr"), dma1_c2h_byp_in_st_csh_port_id("dma1_c2h_byp_in_st_csh_port_id"), dma1_c2h_byp_in_st_csh_pfch_tag("dma1_c2h_byp_in_st_csh_pfch_tag"), dma1_c2h_byp_out_valid("dma1_c2h_byp_out_valid"), dma1_c2h_byp_out_error("dma1_c2h_byp_out_error"), dma1_c2h_byp_out_st_mm("dma1_c2h_byp_out_st_mm"), dma1_c2h_byp_out_mm_chn("dma1_c2h_byp_out_mm_chn"), dma1_c2h_byp_out_ready("dma1_c2h_byp_out_ready"), dma1_c2h_byp_out_fmt("dma1_c2h_byp_out_fmt"), dma1_c2h_byp_out_qid("dma1_c2h_byp_out_qid"), dma1_c2h_byp_out_dsc("dma1_c2h_byp_out_dsc"), dma1_c2h_byp_out_func("dma1_c2h_byp_out_func"), dma1_c2h_byp_out_cidx("dma1_c2h_byp_out_cidx"), dma1_c2h_byp_out_dsc_sz("dma1_c2h_byp_out_dsc_sz"), dma1_c2h_byp_out_port_id("dma1_c2h_byp_out_port_id"), dma1_c2h_byp_out_pfch_tag("dma1_c2h_byp_out_pfch_tag"), dma1_h2c_byp_in_mm_0_ready("dma1_h2c_byp_in_mm_0_ready"), dma1_h2c_byp_in_mm_0_sdi("dma1_h2c_byp_in_mm_0_sdi"), dma1_h2c_byp_in_mm_0_valid("dma1_h2c_byp_in_mm_0_valid"), dma1_h2c_byp_in_mm_0_error("dma1_h2c_byp_in_mm_0_error"), dma1_h2c_byp_in_mm_0_no_dma("dma1_h2c_byp_in_mm_0_no_dma"), dma1_h2c_byp_in_mm_0_mrkr_req("dma1_h2c_byp_in_mm_0_mrkr_req"), dma1_h2c_byp_in_mm_0_len("dma1_h2c_byp_in_mm_0_len"), dma1_h2c_byp_in_mm_0_qid("dma1_h2c_byp_in_mm_0_qid"), dma1_h2c_byp_in_mm_0_func("dma1_h2c_byp_in_mm_0_func"), dma1_h2c_byp_in_mm_0_cidx("dma1_h2c_byp_in_mm_0_cidx"), dma1_h2c_byp_in_mm_0_radr("dma1_h2c_byp_in_mm_0_radr"), dma1_h2c_byp_in_mm_0_wadr("dma1_h2c_byp_in_mm_0_wadr"), dma1_h2c_byp_in_mm_0_port_id("dma1_h2c_byp_in_mm_0_port_id"), dma1_h2c_byp_in_mm_1_ready("dma1_h2c_byp_in_mm_1_ready"), dma1_h2c_byp_in_mm_1_sdi("dma1_h2c_byp_in_mm_1_sdi"), dma1_h2c_byp_in_mm_1_valid("dma1_h2c_byp_in_mm_1_valid"), dma1_h2c_byp_in_mm_1_error("dma1_h2c_byp_in_mm_1_error"), dma1_h2c_byp_in_mm_1_no_dma("dma1_h2c_byp_in_mm_1_no_dma"), dma1_h2c_byp_in_mm_1_mrkr_req("dma1_h2c_byp_in_mm_1_mrkr_req"), dma1_h2c_byp_in_mm_1_len("dma1_h2c_byp_in_mm_1_len"), dma1_h2c_byp_in_mm_1_qid("dma1_h2c_byp_in_mm_1_qid"), dma1_h2c_byp_in_mm_1_func("dma1_h2c_byp_in_mm_1_func"), dma1_h2c_byp_in_mm_1_cidx("dma1_h2c_byp_in_mm_1_cidx"), dma1_h2c_byp_in_mm_1_radr("dma1_h2c_byp_in_mm_1_radr"), dma1_h2c_byp_in_mm_1_wadr("dma1_h2c_byp_in_mm_1_wadr"), dma1_h2c_byp_in_mm_1_port_id("dma1_h2c_byp_in_mm_1_port_id"), dma1_h2c_byp_in_st_ready("dma1_h2c_byp_in_st_ready"), dma1_h2c_byp_in_st_eop("dma1_h2c_byp_in_st_eop"), dma1_h2c_byp_in_st_sdi("dma1_h2c_byp_in_st_sdi"), dma1_h2c_byp_in_st_sop("dma1_h2c_byp_in_st_sop"), dma1_h2c_byp_in_st_valid("dma1_h2c_byp_in_st_valid"), dma1_h2c_byp_in_st_error("dma1_h2c_byp_in_st_error"), dma1_h2c_byp_in_st_no_dma("dma1_h2c_byp_in_st_no_dma"), dma1_h2c_byp_in_st_mrkr_req("dma1_h2c_byp_in_st_mrkr_req"), dma1_h2c_byp_in_st_len("dma1_h2c_byp_in_st_len"), dma1_h2c_byp_in_st_qid("dma1_h2c_byp_in_st_qid"), dma1_h2c_byp_in_st_func("dma1_h2c_byp_in_st_func"), dma1_h2c_byp_in_st_addr("dma1_h2c_byp_in_st_addr"), dma1_h2c_byp_in_st_cidx("dma1_h2c_byp_in_st_cidx"), dma1_h2c_byp_in_st_port_id("dma1_h2c_byp_in_st_port_id"), dma1_h2c_byp_out_valid("dma1_h2c_byp_out_valid"), dma1_h2c_byp_out_error("dma1_h2c_byp_out_error"), dma1_h2c_byp_out_st_mm("dma1_h2c_byp_out_st_mm"), dma1_h2c_byp_out_mm_chn("dma1_h2c_byp_out_mm_chn"), dma1_h2c_byp_out_ready("dma1_h2c_byp_out_ready"), dma1_h2c_byp_out_fmt("dma1_h2c_byp_out_fmt"), dma1_h2c_byp_out_qid("dma1_h2c_byp_out_qid"), dma1_h2c_byp_out_dsc("dma1_h2c_byp_out_dsc"), dma1_h2c_byp_out_func("dma1_h2c_byp_out_func"), dma1_h2c_byp_out_cidx("dma1_h2c_byp_out_cidx"), dma1_h2c_byp_out_dsc_sz("dma1_h2c_byp_out_dsc_sz"), dma1_h2c_byp_out_port_id("dma1_h2c_byp_out_port_id"), dma1_axis_c2h_dmawr_cmp("dma1_axis_c2h_dmawr_cmp"), dma1_axis_c2h_dmawr_target_vch("dma1_axis_c2h_dmawr_target_vch"), dma1_axis_c2h_dmawr_port_id("dma1_axis_c2h_dmawr_port_id"), dma1_s_axis_c2h_tready("dma1_s_axis_c2h_tready"), dma1_s_axis_c2h_tlast("dma1_s_axis_c2h_tlast"), dma1_s_axis_c2h_tvalid("dma1_s_axis_c2h_tvalid"), dma1_s_axis_c2h_tcrc("dma1_s_axis_c2h_tcrc"), dma1_s_axis_c2h_tdata("dma1_s_axis_c2h_tdata"), dma1_s_axis_c2h_mty("dma1_s_axis_c2h_mty"), dma1_s_axis_c2h_ecc("dma1_s_axis_c2h_ecc"), dma1_s_axis_c2h_ctrl_marker("dma1_s_axis_c2h_ctrl_marker"), dma1_s_axis_c2h_ctrl_has_cmpt("dma1_s_axis_c2h_ctrl_has_cmpt"), dma1_s_axis_c2h_ctrl_len("dma1_s_axis_c2h_ctrl_len"), dma1_s_axis_c2h_ctrl_qid("dma1_s_axis_c2h_ctrl_qid"), dma1_s_axis_c2h_ctrl_port_id("dma1_s_axis_c2h_ctrl_port_id"), dma1_s_axis_c2h_cmpt_marker("dma1_s_axis_c2h_cmpt_marker"), dma1_s_axis_c2h_cmpt_user_trig("dma1_s_axis_c2h_cmpt_user_trig"), dma1_s_axis_c2h_cmpt_size("dma1_s_axis_c2h_cmpt_size"), dma1_s_axis_c2h_cmpt_qid("dma1_s_axis_c2h_cmpt_qid"), dma1_s_axis_c2h_cmpt_no_wrb_marker("dma1_s_axis_c2h_cmpt_no_wrb_marker"), dma1_s_axis_c2h_cmpt_port_id("dma1_s_axis_c2h_cmpt_port_id"), dma1_s_axis_c2h_cmpt_col_idx("dma1_s_axis_c2h_cmpt_col_idx"), dma1_s_axis_c2h_cmpt_err_idx("dma1_s_axis_c2h_cmpt_err_idx"), dma1_s_axis_c2h_cmpt_wait_pld_pkt_id("dma1_s_axis_c2h_cmpt_wait_pld_pkt_id"), dma1_s_axis_c2h_cmpt_tready("dma1_s_axis_c2h_cmpt_tready"), dma1_s_axis_c2h_cmpt_tvalid("dma1_s_axis_c2h_cmpt_tvalid"), dma1_s_axis_c2h_cmpt_dpar("dma1_s_axis_c2h_cmpt_dpar"), dma1_s_axis_c2h_cmpt_data("dma1_s_axis_c2h_cmpt_data"), dma1_s_axis_c2h_cmpt_cmpt_type("dma1_s_axis_c2h_cmpt_cmpt_type"), dma1_m_axis_h2c_tlast("dma1_m_axis_h2c_tlast"), dma1_m_axis_h2c_err("dma1_m_axis_h2c_err"), dma1_m_axis_h2c_tvalid("dma1_m_axis_h2c_tvalid"), dma1_m_axis_h2c_tdata("dma1_m_axis_h2c_tdata"), dma1_m_axis_h2c_zero_byte("dma1_m_axis_h2c_zero_byte"), dma1_m_axis_h2c_tready("dma1_m_axis_h2c_tready"), dma1_m_axis_h2c_tcrc("dma1_m_axis_h2c_tcrc"), dma1_m_axis_h2c_mty("dma1_m_axis_h2c_mty"), dma1_m_axis_h2c_qid("dma1_m_axis_h2c_qid"), dma1_m_axis_h2c_mdata("dma1_m_axis_h2c_mdata"), dma1_m_axis_h2c_port_id("dma1_m_axis_h2c_port_id"), dma1_axis_c2h_status_last("dma1_axis_c2h_status_last"), dma1_axis_c2h_status_drop("dma1_axis_c2h_status_drop"), dma1_axis_c2h_status_error("dma1_axis_c2h_status_error"), dma1_axis_c2h_status_valid("dma1_axis_c2h_status_valid"), dma1_axis_c2h_status_status_cmp("dma1_axis_c2h_status_status_cmp"), dma1_axis_c2h_status_qid("dma1_axis_c2h_status_qid"), dma1_qsts_out_vld("dma1_qsts_out_vld"), dma1_qsts_out_op("dma1_qsts_out_op"), dma1_qsts_out_rdy("dma1_qsts_out_rdy"), dma1_qsts_out_qid("dma1_qsts_out_qid"), dma1_qsts_out_data("dma1_qsts_out_data"), dma1_qsts_out_port_id("dma1_qsts_out_port_id"), dma1_dsc_crdt_in_rdy("dma1_dsc_crdt_in_rdy"), dma1_dsc_crdt_in_dir("dma1_dsc_crdt_in_dir"), dma1_dsc_crdt_in_valid("dma1_dsc_crdt_in_valid"), dma1_dsc_crdt_in_fence("dma1_dsc_crdt_in_fence"), dma1_dsc_crdt_in_qid("dma1_dsc_crdt_in_qid"), dma1_dsc_crdt_in_crdt("dma1_dsc_crdt_in_crdt"), dma1_usr_irq_ack("dma1_usr_irq_ack"), dma1_usr_irq_fail("dma1_usr_irq_fail"), dma1_usr_irq_valid("dma1_usr_irq_valid"), dma1_usr_irq_vec("dma1_usr_irq_vec"), dma1_usr_irq_fnc("dma1_usr_irq_fnc"), dma1_tm_dsc_sts_mm("dma1_tm_dsc_sts_mm"), dma1_tm_dsc_sts_qen("dma1_tm_dsc_sts_qen"), dma1_tm_dsc_sts_byp("dma1_tm_dsc_sts_byp"), dma1_tm_dsc_sts_dir("dma1_tm_dsc_sts_dir"), dma1_tm_dsc_sts_error("dma1_tm_dsc_sts_error"), dma1_tm_dsc_sts_valid("dma1_tm_dsc_sts_valid"), dma1_tm_dsc_sts_qinv("dma1_tm_dsc_sts_qinv"), dma1_tm_dsc_sts_irq_arm("dma1_tm_dsc_sts_irq_arm"), dma1_tm_dsc_sts_rdy("dma1_tm_dsc_sts_rdy"), dma1_tm_dsc_sts_qid("dma1_tm_dsc_sts_qid"), dma1_tm_dsc_sts_avl("dma1_tm_dsc_sts_avl"), dma1_tm_dsc_sts_pidx("dma1_tm_dsc_sts_pidx"), dma1_tm_dsc_sts_port_id("dma1_tm_dsc_sts_port_id"), dma1_usr_flr_set("dma1_usr_flr_set"), dma1_usr_flr_clear("dma1_usr_flr_clear"), dma1_usr_flr_fnc("dma1_usr_flr_fnc"), dma1_usr_flr_done_vld("dma1_usr_flr_done_vld"), dma1_usr_flr_done_fnc("dma1_usr_flr_done_fnc"), PCIE1_GT_grx_n("PCIE1_GT_grx_n"), PCIE1_GT_gtx_n("PCIE1_GT_gtx_n"), PCIE1_GT_grx_p("PCIE1_GT_grx_p"), PCIE1_GT_gtx_p("PCIE1_GT_gtx_p"), gt_refclk1_clk_n("gt_refclk1_clk_n"), gt_refclk1_clk_p("gt_refclk1_clk_p"), pcie1_pipe_ep_tx_0("pcie1_pipe_ep_tx_0"), pcie1_pipe_ep_rx_0("pcie1_pipe_ep_rx_0"), pcie1_pipe_ep_tx_1("pcie1_pipe_ep_tx_1"), pcie1_pipe_ep_rx_1("pcie1_pipe_ep_rx_1"), pcie1_pipe_ep_tx_2("pcie1_pipe_ep_tx_2"), pcie1_pipe_ep_rx_2("pcie1_pipe_ep_rx_2"), pcie1_pipe_ep_tx_3("pcie1_pipe_ep_tx_3"), pcie1_pipe_ep_rx_3("pcie1_pipe_ep_rx_3"), pcie1_pipe_ep_tx_4("pcie1_pipe_ep_tx_4"), pcie1_pipe_ep_rx_4("pcie1_pipe_ep_rx_4"), pcie1_pipe_ep_tx_5("pcie1_pipe_ep_tx_5"), pcie1_pipe_ep_rx_5("pcie1_pipe_ep_rx_5"), pcie1_pipe_ep_tx_6("pcie1_pipe_ep_tx_6"), pcie1_pipe_ep_rx_6("pcie1_pipe_ep_rx_6"), pcie1_pipe_ep_tx_7("pcie1_pipe_ep_tx_7"), pcie1_pipe_ep_rx_7("pcie1_pipe_ep_rx_7"), pcie1_pipe_ep_tx_8("pcie1_pipe_ep_tx_8"), pcie1_pipe_ep_rx_8("pcie1_pipe_ep_rx_8"), pcie1_pipe_ep_tx_9("pcie1_pipe_ep_tx_9"), pcie1_pipe_ep_rx_9("pcie1_pipe_ep_rx_9"), pcie1_pipe_ep_tx_10("pcie1_pipe_ep_tx_10"), pcie1_pipe_ep_rx_10("pcie1_pipe_ep_rx_10"), pcie1_pipe_ep_tx_11("pcie1_pipe_ep_tx_11"), pcie1_pipe_ep_rx_11("pcie1_pipe_ep_rx_11"), pcie1_pipe_ep_tx_12("pcie1_pipe_ep_tx_12"), pcie1_pipe_ep_rx_12("pcie1_pipe_ep_rx_12"), pcie1_pipe_ep_tx_13("pcie1_pipe_ep_tx_13"), pcie1_pipe_ep_rx_13("pcie1_pipe_ep_rx_13"), pcie1_pipe_ep_tx_14("pcie1_pipe_ep_tx_14"), pcie1_pipe_ep_rx_14("pcie1_pipe_ep_rx_14"), pcie1_pipe_ep_tx_15("pcie1_pipe_ep_tx_15"), pcie1_pipe_ep_rx_15("pcie1_pipe_ep_rx_15"), pcie1_pipe_ep_commands_in("pcie1_pipe_ep_commands_in"), pcie1_pipe_ep_commands_out("pcie1_pipe_ep_commands_out")
{

  // initialize pins
  mp_impl->pl0_ref_clk(pl0_ref_clk);
  mp_impl->pl1_ref_clk(pl1_ref_clk);
  mp_impl->pl0_resetn(pl0_resetn);
  mp_impl->m_axi_fpd_aclk(m_axi_fpd_aclk);
  mp_impl->cpm_pcie_noc_axi0_clk(cpm_pcie_noc_axi0_clk);
  mp_impl->cpm_pcie_noc_axi1_clk(cpm_pcie_noc_axi1_clk);
  mp_impl->dma1_intrfc_clk(dma1_intrfc_clk);
  mp_impl->cpm_misc_irq(cpm_misc_irq);
  mp_impl->cpm_cor_irq(cpm_cor_irq);
  mp_impl->cpm_uncor_irq(cpm_uncor_irq);
  mp_impl->cpm_irq0(cpm_irq0);
  mp_impl->cpm_irq1(cpm_irq1);
  mp_impl->dma1_axi_aresetn(dma1_axi_aresetn);
  mp_impl->dma1_intrfc_resetn(dma1_intrfc_resetn);
  mp_impl->dma1_mgmt_cpl_vld(dma1_mgmt_cpl_vld);
  mp_impl->dma1_mgmt_req_rdy(dma1_mgmt_req_rdy);
  mp_impl->dma1_mgmt_cpl_rdy(dma1_mgmt_cpl_rdy);
  mp_impl->dma1_mgmt_req_vld(dma1_mgmt_req_vld);
  mp_impl->dma1_mgmt_cpl_sts(dma1_mgmt_cpl_sts);
  mp_impl->dma1_mgmt_cpl_dat(dma1_mgmt_cpl_dat);
  mp_impl->dma1_mgmt_req_cmd(dma1_mgmt_req_cmd);
  mp_impl->dma1_mgmt_req_fnc(dma1_mgmt_req_fnc);
  mp_impl->dma1_mgmt_req_msc(dma1_mgmt_req_msc);
  mp_impl->dma1_mgmt_req_adr(dma1_mgmt_req_adr);
  mp_impl->dma1_mgmt_req_dat(dma1_mgmt_req_dat);
  mp_impl->dma1_c2h_byp_in_mm_0_ready(dma1_c2h_byp_in_mm_0_ready);
  mp_impl->dma1_c2h_byp_in_mm_0_sdi(dma1_c2h_byp_in_mm_0_sdi);
  mp_impl->dma1_c2h_byp_in_mm_0_valid(dma1_c2h_byp_in_mm_0_valid);
  mp_impl->dma1_c2h_byp_in_mm_0_error(dma1_c2h_byp_in_mm_0_error);
  mp_impl->dma1_c2h_byp_in_mm_0_no_dma(dma1_c2h_byp_in_mm_0_no_dma);
  mp_impl->dma1_c2h_byp_in_mm_0_mrkr_req(dma1_c2h_byp_in_mm_0_mrkr_req);
  mp_impl->dma1_c2h_byp_in_mm_0_len(dma1_c2h_byp_in_mm_0_len);
  mp_impl->dma1_c2h_byp_in_mm_0_qid(dma1_c2h_byp_in_mm_0_qid);
  mp_impl->dma1_c2h_byp_in_mm_0_func(dma1_c2h_byp_in_mm_0_func);
  mp_impl->dma1_c2h_byp_in_mm_0_cidx(dma1_c2h_byp_in_mm_0_cidx);
  mp_impl->dma1_c2h_byp_in_mm_0_radr(dma1_c2h_byp_in_mm_0_radr);
  mp_impl->dma1_c2h_byp_in_mm_0_wadr(dma1_c2h_byp_in_mm_0_wadr);
  mp_impl->dma1_c2h_byp_in_mm_0_port_id(dma1_c2h_byp_in_mm_0_port_id);
  mp_impl->dma1_c2h_byp_in_mm_1_ready(dma1_c2h_byp_in_mm_1_ready);
  mp_impl->dma1_c2h_byp_in_mm_1_sdi(dma1_c2h_byp_in_mm_1_sdi);
  mp_impl->dma1_c2h_byp_in_mm_1_valid(dma1_c2h_byp_in_mm_1_valid);
  mp_impl->dma1_c2h_byp_in_mm_1_error(dma1_c2h_byp_in_mm_1_error);
  mp_impl->dma1_c2h_byp_in_mm_1_no_dma(dma1_c2h_byp_in_mm_1_no_dma);
  mp_impl->dma1_c2h_byp_in_mm_1_mrkr_req(dma1_c2h_byp_in_mm_1_mrkr_req);
  mp_impl->dma1_c2h_byp_in_mm_1_len(dma1_c2h_byp_in_mm_1_len);
  mp_impl->dma1_c2h_byp_in_mm_1_qid(dma1_c2h_byp_in_mm_1_qid);
  mp_impl->dma1_c2h_byp_in_mm_1_func(dma1_c2h_byp_in_mm_1_func);
  mp_impl->dma1_c2h_byp_in_mm_1_cidx(dma1_c2h_byp_in_mm_1_cidx);
  mp_impl->dma1_c2h_byp_in_mm_1_radr(dma1_c2h_byp_in_mm_1_radr);
  mp_impl->dma1_c2h_byp_in_mm_1_wadr(dma1_c2h_byp_in_mm_1_wadr);
  mp_impl->dma1_c2h_byp_in_mm_1_port_id(dma1_c2h_byp_in_mm_1_port_id);
  mp_impl->dma1_c2h_byp_in_st_csh_ready(dma1_c2h_byp_in_st_csh_ready);
  mp_impl->dma1_c2h_byp_in_st_csh_valid(dma1_c2h_byp_in_st_csh_valid);
  mp_impl->dma1_c2h_byp_in_st_csh_error(dma1_c2h_byp_in_st_csh_error);
  mp_impl->dma1_c2h_byp_in_st_csh_qid(dma1_c2h_byp_in_st_csh_qid);
  mp_impl->dma1_c2h_byp_in_st_csh_func(dma1_c2h_byp_in_st_csh_func);
  mp_impl->dma1_c2h_byp_in_st_csh_addr(dma1_c2h_byp_in_st_csh_addr);
  mp_impl->dma1_c2h_byp_in_st_csh_port_id(dma1_c2h_byp_in_st_csh_port_id);
  mp_impl->dma1_c2h_byp_in_st_csh_pfch_tag(dma1_c2h_byp_in_st_csh_pfch_tag);
  mp_impl->dma1_c2h_byp_out_valid(dma1_c2h_byp_out_valid);
  mp_impl->dma1_c2h_byp_out_error(dma1_c2h_byp_out_error);
  mp_impl->dma1_c2h_byp_out_st_mm(dma1_c2h_byp_out_st_mm);
  mp_impl->dma1_c2h_byp_out_mm_chn(dma1_c2h_byp_out_mm_chn);
  mp_impl->dma1_c2h_byp_out_ready(dma1_c2h_byp_out_ready);
  mp_impl->dma1_c2h_byp_out_fmt(dma1_c2h_byp_out_fmt);
  mp_impl->dma1_c2h_byp_out_qid(dma1_c2h_byp_out_qid);
  mp_impl->dma1_c2h_byp_out_dsc(dma1_c2h_byp_out_dsc);
  mp_impl->dma1_c2h_byp_out_func(dma1_c2h_byp_out_func);
  mp_impl->dma1_c2h_byp_out_cidx(dma1_c2h_byp_out_cidx);
  mp_impl->dma1_c2h_byp_out_dsc_sz(dma1_c2h_byp_out_dsc_sz);
  mp_impl->dma1_c2h_byp_out_port_id(dma1_c2h_byp_out_port_id);
  mp_impl->dma1_c2h_byp_out_pfch_tag(dma1_c2h_byp_out_pfch_tag);
  mp_impl->dma1_h2c_byp_in_mm_0_ready(dma1_h2c_byp_in_mm_0_ready);
  mp_impl->dma1_h2c_byp_in_mm_0_sdi(dma1_h2c_byp_in_mm_0_sdi);
  mp_impl->dma1_h2c_byp_in_mm_0_valid(dma1_h2c_byp_in_mm_0_valid);
  mp_impl->dma1_h2c_byp_in_mm_0_error(dma1_h2c_byp_in_mm_0_error);
  mp_impl->dma1_h2c_byp_in_mm_0_no_dma(dma1_h2c_byp_in_mm_0_no_dma);
  mp_impl->dma1_h2c_byp_in_mm_0_mrkr_req(dma1_h2c_byp_in_mm_0_mrkr_req);
  mp_impl->dma1_h2c_byp_in_mm_0_len(dma1_h2c_byp_in_mm_0_len);
  mp_impl->dma1_h2c_byp_in_mm_0_qid(dma1_h2c_byp_in_mm_0_qid);
  mp_impl->dma1_h2c_byp_in_mm_0_func(dma1_h2c_byp_in_mm_0_func);
  mp_impl->dma1_h2c_byp_in_mm_0_cidx(dma1_h2c_byp_in_mm_0_cidx);
  mp_impl->dma1_h2c_byp_in_mm_0_radr(dma1_h2c_byp_in_mm_0_radr);
  mp_impl->dma1_h2c_byp_in_mm_0_wadr(dma1_h2c_byp_in_mm_0_wadr);
  mp_impl->dma1_h2c_byp_in_mm_0_port_id(dma1_h2c_byp_in_mm_0_port_id);
  mp_impl->dma1_h2c_byp_in_mm_1_ready(dma1_h2c_byp_in_mm_1_ready);
  mp_impl->dma1_h2c_byp_in_mm_1_sdi(dma1_h2c_byp_in_mm_1_sdi);
  mp_impl->dma1_h2c_byp_in_mm_1_valid(dma1_h2c_byp_in_mm_1_valid);
  mp_impl->dma1_h2c_byp_in_mm_1_error(dma1_h2c_byp_in_mm_1_error);
  mp_impl->dma1_h2c_byp_in_mm_1_no_dma(dma1_h2c_byp_in_mm_1_no_dma);
  mp_impl->dma1_h2c_byp_in_mm_1_mrkr_req(dma1_h2c_byp_in_mm_1_mrkr_req);
  mp_impl->dma1_h2c_byp_in_mm_1_len(dma1_h2c_byp_in_mm_1_len);
  mp_impl->dma1_h2c_byp_in_mm_1_qid(dma1_h2c_byp_in_mm_1_qid);
  mp_impl->dma1_h2c_byp_in_mm_1_func(dma1_h2c_byp_in_mm_1_func);
  mp_impl->dma1_h2c_byp_in_mm_1_cidx(dma1_h2c_byp_in_mm_1_cidx);
  mp_impl->dma1_h2c_byp_in_mm_1_radr(dma1_h2c_byp_in_mm_1_radr);
  mp_impl->dma1_h2c_byp_in_mm_1_wadr(dma1_h2c_byp_in_mm_1_wadr);
  mp_impl->dma1_h2c_byp_in_mm_1_port_id(dma1_h2c_byp_in_mm_1_port_id);
  mp_impl->dma1_h2c_byp_in_st_ready(dma1_h2c_byp_in_st_ready);
  mp_impl->dma1_h2c_byp_in_st_eop(dma1_h2c_byp_in_st_eop);
  mp_impl->dma1_h2c_byp_in_st_sdi(dma1_h2c_byp_in_st_sdi);
  mp_impl->dma1_h2c_byp_in_st_sop(dma1_h2c_byp_in_st_sop);
  mp_impl->dma1_h2c_byp_in_st_valid(dma1_h2c_byp_in_st_valid);
  mp_impl->dma1_h2c_byp_in_st_error(dma1_h2c_byp_in_st_error);
  mp_impl->dma1_h2c_byp_in_st_no_dma(dma1_h2c_byp_in_st_no_dma);
  mp_impl->dma1_h2c_byp_in_st_mrkr_req(dma1_h2c_byp_in_st_mrkr_req);
  mp_impl->dma1_h2c_byp_in_st_len(dma1_h2c_byp_in_st_len);
  mp_impl->dma1_h2c_byp_in_st_qid(dma1_h2c_byp_in_st_qid);
  mp_impl->dma1_h2c_byp_in_st_func(dma1_h2c_byp_in_st_func);
  mp_impl->dma1_h2c_byp_in_st_addr(dma1_h2c_byp_in_st_addr);
  mp_impl->dma1_h2c_byp_in_st_cidx(dma1_h2c_byp_in_st_cidx);
  mp_impl->dma1_h2c_byp_in_st_port_id(dma1_h2c_byp_in_st_port_id);
  mp_impl->dma1_h2c_byp_out_valid(dma1_h2c_byp_out_valid);
  mp_impl->dma1_h2c_byp_out_error(dma1_h2c_byp_out_error);
  mp_impl->dma1_h2c_byp_out_st_mm(dma1_h2c_byp_out_st_mm);
  mp_impl->dma1_h2c_byp_out_mm_chn(dma1_h2c_byp_out_mm_chn);
  mp_impl->dma1_h2c_byp_out_ready(dma1_h2c_byp_out_ready);
  mp_impl->dma1_h2c_byp_out_fmt(dma1_h2c_byp_out_fmt);
  mp_impl->dma1_h2c_byp_out_qid(dma1_h2c_byp_out_qid);
  mp_impl->dma1_h2c_byp_out_dsc(dma1_h2c_byp_out_dsc);
  mp_impl->dma1_h2c_byp_out_func(dma1_h2c_byp_out_func);
  mp_impl->dma1_h2c_byp_out_cidx(dma1_h2c_byp_out_cidx);
  mp_impl->dma1_h2c_byp_out_dsc_sz(dma1_h2c_byp_out_dsc_sz);
  mp_impl->dma1_h2c_byp_out_port_id(dma1_h2c_byp_out_port_id);
  mp_impl->dma1_axis_c2h_dmawr_cmp(dma1_axis_c2h_dmawr_cmp);
  mp_impl->dma1_axis_c2h_dmawr_target_vch(dma1_axis_c2h_dmawr_target_vch);
  mp_impl->dma1_axis_c2h_dmawr_port_id(dma1_axis_c2h_dmawr_port_id);
  mp_impl->dma1_s_axis_c2h_tready(dma1_s_axis_c2h_tready);
  mp_impl->dma1_s_axis_c2h_tlast(dma1_s_axis_c2h_tlast);
  mp_impl->dma1_s_axis_c2h_tvalid(dma1_s_axis_c2h_tvalid);
  mp_impl->dma1_s_axis_c2h_tcrc(dma1_s_axis_c2h_tcrc);
  mp_impl->dma1_s_axis_c2h_tdata(dma1_s_axis_c2h_tdata);
  mp_impl->dma1_s_axis_c2h_mty(dma1_s_axis_c2h_mty);
  mp_impl->dma1_s_axis_c2h_ecc(dma1_s_axis_c2h_ecc);
  mp_impl->dma1_s_axis_c2h_ctrl_marker(dma1_s_axis_c2h_ctrl_marker);
  mp_impl->dma1_s_axis_c2h_ctrl_has_cmpt(dma1_s_axis_c2h_ctrl_has_cmpt);
  mp_impl->dma1_s_axis_c2h_ctrl_len(dma1_s_axis_c2h_ctrl_len);
  mp_impl->dma1_s_axis_c2h_ctrl_qid(dma1_s_axis_c2h_ctrl_qid);
  mp_impl->dma1_s_axis_c2h_ctrl_port_id(dma1_s_axis_c2h_ctrl_port_id);
  mp_impl->dma1_s_axis_c2h_cmpt_marker(dma1_s_axis_c2h_cmpt_marker);
  mp_impl->dma1_s_axis_c2h_cmpt_user_trig(dma1_s_axis_c2h_cmpt_user_trig);
  mp_impl->dma1_s_axis_c2h_cmpt_size(dma1_s_axis_c2h_cmpt_size);
  mp_impl->dma1_s_axis_c2h_cmpt_qid(dma1_s_axis_c2h_cmpt_qid);
  mp_impl->dma1_s_axis_c2h_cmpt_no_wrb_marker(dma1_s_axis_c2h_cmpt_no_wrb_marker);
  mp_impl->dma1_s_axis_c2h_cmpt_port_id(dma1_s_axis_c2h_cmpt_port_id);
  mp_impl->dma1_s_axis_c2h_cmpt_col_idx(dma1_s_axis_c2h_cmpt_col_idx);
  mp_impl->dma1_s_axis_c2h_cmpt_err_idx(dma1_s_axis_c2h_cmpt_err_idx);
  mp_impl->dma1_s_axis_c2h_cmpt_wait_pld_pkt_id(dma1_s_axis_c2h_cmpt_wait_pld_pkt_id);
  mp_impl->dma1_s_axis_c2h_cmpt_tready(dma1_s_axis_c2h_cmpt_tready);
  mp_impl->dma1_s_axis_c2h_cmpt_tvalid(dma1_s_axis_c2h_cmpt_tvalid);
  mp_impl->dma1_s_axis_c2h_cmpt_dpar(dma1_s_axis_c2h_cmpt_dpar);
  mp_impl->dma1_s_axis_c2h_cmpt_data(dma1_s_axis_c2h_cmpt_data);
  mp_impl->dma1_s_axis_c2h_cmpt_cmpt_type(dma1_s_axis_c2h_cmpt_cmpt_type);
  mp_impl->dma1_m_axis_h2c_tlast(dma1_m_axis_h2c_tlast);
  mp_impl->dma1_m_axis_h2c_err(dma1_m_axis_h2c_err);
  mp_impl->dma1_m_axis_h2c_tvalid(dma1_m_axis_h2c_tvalid);
  mp_impl->dma1_m_axis_h2c_tdata(dma1_m_axis_h2c_tdata);
  mp_impl->dma1_m_axis_h2c_zero_byte(dma1_m_axis_h2c_zero_byte);
  mp_impl->dma1_m_axis_h2c_tready(dma1_m_axis_h2c_tready);
  mp_impl->dma1_m_axis_h2c_tcrc(dma1_m_axis_h2c_tcrc);
  mp_impl->dma1_m_axis_h2c_mty(dma1_m_axis_h2c_mty);
  mp_impl->dma1_m_axis_h2c_qid(dma1_m_axis_h2c_qid);
  mp_impl->dma1_m_axis_h2c_mdata(dma1_m_axis_h2c_mdata);
  mp_impl->dma1_m_axis_h2c_port_id(dma1_m_axis_h2c_port_id);
  mp_impl->dma1_axis_c2h_status_last(dma1_axis_c2h_status_last);
  mp_impl->dma1_axis_c2h_status_drop(dma1_axis_c2h_status_drop);
  mp_impl->dma1_axis_c2h_status_error(dma1_axis_c2h_status_error);
  mp_impl->dma1_axis_c2h_status_valid(dma1_axis_c2h_status_valid);
  mp_impl->dma1_axis_c2h_status_status_cmp(dma1_axis_c2h_status_status_cmp);
  mp_impl->dma1_axis_c2h_status_qid(dma1_axis_c2h_status_qid);
  mp_impl->dma1_qsts_out_vld(dma1_qsts_out_vld);
  mp_impl->dma1_qsts_out_op(dma1_qsts_out_op);
  mp_impl->dma1_qsts_out_rdy(dma1_qsts_out_rdy);
  mp_impl->dma1_qsts_out_qid(dma1_qsts_out_qid);
  mp_impl->dma1_qsts_out_data(dma1_qsts_out_data);
  mp_impl->dma1_qsts_out_port_id(dma1_qsts_out_port_id);
  mp_impl->dma1_dsc_crdt_in_rdy(dma1_dsc_crdt_in_rdy);
  mp_impl->dma1_dsc_crdt_in_dir(dma1_dsc_crdt_in_dir);
  mp_impl->dma1_dsc_crdt_in_valid(dma1_dsc_crdt_in_valid);
  mp_impl->dma1_dsc_crdt_in_fence(dma1_dsc_crdt_in_fence);
  mp_impl->dma1_dsc_crdt_in_qid(dma1_dsc_crdt_in_qid);
  mp_impl->dma1_dsc_crdt_in_crdt(dma1_dsc_crdt_in_crdt);
  mp_impl->dma1_usr_irq_ack(dma1_usr_irq_ack);
  mp_impl->dma1_usr_irq_fail(dma1_usr_irq_fail);
  mp_impl->dma1_usr_irq_valid(dma1_usr_irq_valid);
  mp_impl->dma1_usr_irq_vec(dma1_usr_irq_vec);
  mp_impl->dma1_usr_irq_fnc(dma1_usr_irq_fnc);
  mp_impl->dma1_tm_dsc_sts_mm(dma1_tm_dsc_sts_mm);
  mp_impl->dma1_tm_dsc_sts_qen(dma1_tm_dsc_sts_qen);
  mp_impl->dma1_tm_dsc_sts_byp(dma1_tm_dsc_sts_byp);
  mp_impl->dma1_tm_dsc_sts_dir(dma1_tm_dsc_sts_dir);
  mp_impl->dma1_tm_dsc_sts_error(dma1_tm_dsc_sts_error);
  mp_impl->dma1_tm_dsc_sts_valid(dma1_tm_dsc_sts_valid);
  mp_impl->dma1_tm_dsc_sts_qinv(dma1_tm_dsc_sts_qinv);
  mp_impl->dma1_tm_dsc_sts_irq_arm(dma1_tm_dsc_sts_irq_arm);
  mp_impl->dma1_tm_dsc_sts_rdy(dma1_tm_dsc_sts_rdy);
  mp_impl->dma1_tm_dsc_sts_qid(dma1_tm_dsc_sts_qid);
  mp_impl->dma1_tm_dsc_sts_avl(dma1_tm_dsc_sts_avl);
  mp_impl->dma1_tm_dsc_sts_pidx(dma1_tm_dsc_sts_pidx);
  mp_impl->dma1_tm_dsc_sts_port_id(dma1_tm_dsc_sts_port_id);
  mp_impl->dma1_usr_flr_set(dma1_usr_flr_set);
  mp_impl->dma1_usr_flr_clear(dma1_usr_flr_clear);
  mp_impl->dma1_usr_flr_fnc(dma1_usr_flr_fnc);
  mp_impl->dma1_usr_flr_done_vld(dma1_usr_flr_done_vld);
  mp_impl->dma1_usr_flr_done_fnc(dma1_usr_flr_done_fnc);
  mp_impl->PCIE1_GT_grx_n(PCIE1_GT_grx_n);
  mp_impl->PCIE1_GT_gtx_n(PCIE1_GT_gtx_n);
  mp_impl->PCIE1_GT_grx_p(PCIE1_GT_grx_p);
  mp_impl->PCIE1_GT_gtx_p(PCIE1_GT_gtx_p);
  mp_impl->gt_refclk1_clk_n(gt_refclk1_clk_n);
  mp_impl->gt_refclk1_clk_p(gt_refclk1_clk_p);
  mp_impl->pcie1_pipe_ep_tx_0(pcie1_pipe_ep_tx_0);
  mp_impl->pcie1_pipe_ep_rx_0(pcie1_pipe_ep_rx_0);
  mp_impl->pcie1_pipe_ep_tx_1(pcie1_pipe_ep_tx_1);
  mp_impl->pcie1_pipe_ep_rx_1(pcie1_pipe_ep_rx_1);
  mp_impl->pcie1_pipe_ep_tx_2(pcie1_pipe_ep_tx_2);
  mp_impl->pcie1_pipe_ep_rx_2(pcie1_pipe_ep_rx_2);
  mp_impl->pcie1_pipe_ep_tx_3(pcie1_pipe_ep_tx_3);
  mp_impl->pcie1_pipe_ep_rx_3(pcie1_pipe_ep_rx_3);
  mp_impl->pcie1_pipe_ep_tx_4(pcie1_pipe_ep_tx_4);
  mp_impl->pcie1_pipe_ep_rx_4(pcie1_pipe_ep_rx_4);
  mp_impl->pcie1_pipe_ep_tx_5(pcie1_pipe_ep_tx_5);
  mp_impl->pcie1_pipe_ep_rx_5(pcie1_pipe_ep_rx_5);
  mp_impl->pcie1_pipe_ep_tx_6(pcie1_pipe_ep_tx_6);
  mp_impl->pcie1_pipe_ep_rx_6(pcie1_pipe_ep_rx_6);
  mp_impl->pcie1_pipe_ep_tx_7(pcie1_pipe_ep_tx_7);
  mp_impl->pcie1_pipe_ep_rx_7(pcie1_pipe_ep_rx_7);
  mp_impl->pcie1_pipe_ep_tx_8(pcie1_pipe_ep_tx_8);
  mp_impl->pcie1_pipe_ep_rx_8(pcie1_pipe_ep_rx_8);
  mp_impl->pcie1_pipe_ep_tx_9(pcie1_pipe_ep_tx_9);
  mp_impl->pcie1_pipe_ep_rx_9(pcie1_pipe_ep_rx_9);
  mp_impl->pcie1_pipe_ep_tx_10(pcie1_pipe_ep_tx_10);
  mp_impl->pcie1_pipe_ep_rx_10(pcie1_pipe_ep_rx_10);
  mp_impl->pcie1_pipe_ep_tx_11(pcie1_pipe_ep_tx_11);
  mp_impl->pcie1_pipe_ep_rx_11(pcie1_pipe_ep_rx_11);
  mp_impl->pcie1_pipe_ep_tx_12(pcie1_pipe_ep_tx_12);
  mp_impl->pcie1_pipe_ep_rx_12(pcie1_pipe_ep_rx_12);
  mp_impl->pcie1_pipe_ep_tx_13(pcie1_pipe_ep_tx_13);
  mp_impl->pcie1_pipe_ep_rx_13(pcie1_pipe_ep_rx_13);
  mp_impl->pcie1_pipe_ep_tx_14(pcie1_pipe_ep_tx_14);
  mp_impl->pcie1_pipe_ep_rx_14(pcie1_pipe_ep_rx_14);
  mp_impl->pcie1_pipe_ep_tx_15(pcie1_pipe_ep_tx_15);
  mp_impl->pcie1_pipe_ep_rx_15(pcie1_pipe_ep_rx_15);
  mp_impl->pcie1_pipe_ep_commands_in(pcie1_pipe_ep_commands_in);
  mp_impl->pcie1_pipe_ep_commands_out(pcie1_pipe_ep_commands_out);

  // initialize transactors
  mp_M_AXI_FPD_transactor = NULL;
  mp_CPM_PCIE_NOC_0_transactor = NULL;
  mp_CPM_PCIE_NOC_1_transactor = NULL;
  mp_dma1_st_rx_msg_transactor = NULL;

  // initialize socket stubs

}

void cpm_qdma_ep_part_versal_cips_0_0::before_end_of_elaboration()
{
  // configure 'M_AXI_FPD' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("cpm_qdma_ep_part_versal_cips_0_0", "M_AXI_FPD_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXI_FPD' transactor parameters
    xsc::common_cpp::properties M_AXI_FPD_transactor_param_props;
    M_AXI_FPD_transactor_param_props.addLong("DATA_WIDTH", "128");
    M_AXI_FPD_transactor_param_props.addLong("FREQ_HZ", "429162384");
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
    M_AXI_FPD_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_FPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_FPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_FPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_FPD_transactor_param_props.addString("CLK_DOMAIN", "bd_a532_pspmc_0_0_pl0_ref_clk");
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
    m_M_AXI_FPD_transactor_rst_signal.write(1);
    mp_M_AXI_FPD_transactor->RST(m_M_AXI_FPD_transactor_rst_signal);

    // M_AXI_FPD' transactor sockets

    mp_impl->M_AXI_FPD_tlm_aximm_read_socket->bind(*(mp_M_AXI_FPD_transactor->rd_socket));
    mp_impl->M_AXI_FPD_tlm_aximm_write_socket->bind(*(mp_M_AXI_FPD_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'CPM_PCIE_NOC_0' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("cpm_qdma_ep_part_versal_cips_0_0", "CPM_PCIE_NOC_0_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'CPM_PCIE_NOC_0' transactor parameters
    xsc::common_cpp::properties CPM_PCIE_NOC_0_transactor_param_props;
    CPM_PCIE_NOC_0_transactor_param_props.addLong("DATA_WIDTH", "128");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("FREQ_HZ", "1000000000");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("ID_WIDTH", "16");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("ADDR_WIDTH", "64");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("WUSER_WIDTH", "17");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("RUSER_WIDTH", "17");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("BUSER_WIDTH", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_BURST", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_LOCK", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_PROT", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_CACHE", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_QOS", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_REGION", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_WSTRB", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_BRESP", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_RRESP", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_SIZE", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_RESET", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addFloat("PHASE", "0.0");
    CPM_PCIE_NOC_0_transactor_param_props.addString("PROTOCOL", "AXI4");
    CPM_PCIE_NOC_0_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    CPM_PCIE_NOC_0_transactor_param_props.addString("CLK_DOMAIN", "bd_a532_pspmc_0_0_cpm_pcie_noc_axi0_clk");
    CPM_PCIE_NOC_0_transactor_param_props.addString("CATEGORY", "noc");
    CPM_PCIE_NOC_0_transactor_param_props.addString("MY_CATEGORY", "ps_pcie");
    CPM_PCIE_NOC_0_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_PCIE_TO_NOC_NMU");
    CPM_PCIE_NOC_0_transactor_param_props.addString("HD_TANDEM", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addString("INDEX", "0");

    mp_CPM_PCIE_NOC_0_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,17>("CPM_PCIE_NOC_0_transactor", CPM_PCIE_NOC_0_transactor_param_props);

    // CPM_PCIE_NOC_0' transactor ports

    mp_CPM_PCIE_NOC_0_transactor->ARADDR(CPM_PCIE_NOC_0_araddr);
    mp_CPM_PCIE_NOC_0_transactor->ARBURST(CPM_PCIE_NOC_0_arburst);
    mp_CPM_PCIE_NOC_0_transactor->ARCACHE(CPM_PCIE_NOC_0_arcache);
    mp_CPM_PCIE_NOC_0_transactor->ARID(CPM_PCIE_NOC_0_arid);
    mp_CPM_PCIE_NOC_0_transactor->ARLEN(CPM_PCIE_NOC_0_arlen);
    mp_CPM_PCIE_NOC_0_transactor->ARLOCK(CPM_PCIE_NOC_0_arlock);
    mp_CPM_PCIE_NOC_0_transactor->ARPROT(CPM_PCIE_NOC_0_arprot);
    mp_CPM_PCIE_NOC_0_transactor->ARQOS(CPM_PCIE_NOC_0_arqos);
    mp_CPM_PCIE_NOC_0_transactor->ARSIZE(CPM_PCIE_NOC_0_arsize);
    mp_CPM_PCIE_NOC_0_transactor->ARUSER(CPM_PCIE_NOC_0_aruser);
    mp_CPM_PCIE_NOC_0_transactor->ARVALID(CPM_PCIE_NOC_0_arvalid);
    mp_CPM_PCIE_NOC_0_transactor->AWADDR(CPM_PCIE_NOC_0_awaddr);
    mp_CPM_PCIE_NOC_0_transactor->AWBURST(CPM_PCIE_NOC_0_awburst);
    mp_CPM_PCIE_NOC_0_transactor->AWCACHE(CPM_PCIE_NOC_0_awcache);
    mp_CPM_PCIE_NOC_0_transactor->AWID(CPM_PCIE_NOC_0_awid);
    mp_CPM_PCIE_NOC_0_transactor->AWLEN(CPM_PCIE_NOC_0_awlen);
    mp_CPM_PCIE_NOC_0_transactor->AWLOCK(CPM_PCIE_NOC_0_awlock);
    mp_CPM_PCIE_NOC_0_transactor->AWPROT(CPM_PCIE_NOC_0_awprot);
    mp_CPM_PCIE_NOC_0_transactor->AWQOS(CPM_PCIE_NOC_0_awqos);
    mp_CPM_PCIE_NOC_0_transactor->AWSIZE(CPM_PCIE_NOC_0_awsize);
    mp_CPM_PCIE_NOC_0_transactor->AWUSER(CPM_PCIE_NOC_0_awuser);
    mp_CPM_PCIE_NOC_0_transactor->AWVALID(CPM_PCIE_NOC_0_awvalid);
    mp_CPM_PCIE_NOC_0_transactor->BREADY(CPM_PCIE_NOC_0_bready);
    mp_CPM_PCIE_NOC_0_transactor->RREADY(CPM_PCIE_NOC_0_rready);
    mp_CPM_PCIE_NOC_0_transactor->WDATA(CPM_PCIE_NOC_0_wdata);
    mp_CPM_PCIE_NOC_0_transactor->WLAST(CPM_PCIE_NOC_0_wlast);
    mp_CPM_PCIE_NOC_0_transactor->WSTRB(CPM_PCIE_NOC_0_wstrb);
    mp_CPM_PCIE_NOC_0_transactor->WVALID(CPM_PCIE_NOC_0_wvalid);
    mp_CPM_PCIE_NOC_0_transactor->ARREADY(CPM_PCIE_NOC_0_arready);
    mp_CPM_PCIE_NOC_0_transactor->AWREADY(CPM_PCIE_NOC_0_awready);
    mp_CPM_PCIE_NOC_0_transactor->BID(CPM_PCIE_NOC_0_bid);
    mp_CPM_PCIE_NOC_0_transactor->BRESP(CPM_PCIE_NOC_0_bresp);
    mp_CPM_PCIE_NOC_0_transactor->BVALID(CPM_PCIE_NOC_0_bvalid);
    mp_CPM_PCIE_NOC_0_transactor->RDATA(CPM_PCIE_NOC_0_rdata);
    mp_CPM_PCIE_NOC_0_transactor->RID(CPM_PCIE_NOC_0_rid);
    mp_CPM_PCIE_NOC_0_transactor->RLAST(CPM_PCIE_NOC_0_rlast);
    mp_CPM_PCIE_NOC_0_transactor->RRESP(CPM_PCIE_NOC_0_rresp);
    mp_CPM_PCIE_NOC_0_transactor->RVALID(CPM_PCIE_NOC_0_rvalid);
    mp_CPM_PCIE_NOC_0_transactor->RUSER(CPM_PCIE_NOC_0_ruser);
    mp_CPM_PCIE_NOC_0_transactor->WUSER(CPM_PCIE_NOC_0_wuser);
    mp_CPM_PCIE_NOC_0_transactor->WREADY(CPM_PCIE_NOC_0_wready);
    mp_CPM_PCIE_NOC_0_transactor->CLK(cpm_pcie_noc_axi0_clk);
    m_CPM_PCIE_NOC_0_transactor_rst_signal.write(1);
    mp_CPM_PCIE_NOC_0_transactor->RST(m_CPM_PCIE_NOC_0_transactor_rst_signal);

    // CPM_PCIE_NOC_0' transactor sockets

    mp_impl->CPM_PCIE_NOC_0_tlm_aximm_read_socket->bind(*(mp_CPM_PCIE_NOC_0_transactor->rd_socket));
    mp_impl->CPM_PCIE_NOC_0_tlm_aximm_write_socket->bind(*(mp_CPM_PCIE_NOC_0_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'CPM_PCIE_NOC_1' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("cpm_qdma_ep_part_versal_cips_0_0", "CPM_PCIE_NOC_1_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'CPM_PCIE_NOC_1' transactor parameters
    xsc::common_cpp::properties CPM_PCIE_NOC_1_transactor_param_props;
    CPM_PCIE_NOC_1_transactor_param_props.addLong("DATA_WIDTH", "128");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("FREQ_HZ", "1000000000");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("ID_WIDTH", "16");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("ADDR_WIDTH", "64");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("WUSER_WIDTH", "17");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("RUSER_WIDTH", "17");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("BUSER_WIDTH", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_BURST", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_LOCK", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_PROT", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_CACHE", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_QOS", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_REGION", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_WSTRB", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_BRESP", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_RRESP", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_SIZE", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_RESET", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addFloat("PHASE", "0.0");
    CPM_PCIE_NOC_1_transactor_param_props.addString("PROTOCOL", "AXI4");
    CPM_PCIE_NOC_1_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    CPM_PCIE_NOC_1_transactor_param_props.addString("CLK_DOMAIN", "bd_a532_pspmc_0_0_cpm_pcie_noc_axi1_clk");
    CPM_PCIE_NOC_1_transactor_param_props.addString("CATEGORY", "noc");
    CPM_PCIE_NOC_1_transactor_param_props.addString("MY_CATEGORY", "ps_pcie");
    CPM_PCIE_NOC_1_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_PCIE_TO_NOC_NMU");
    CPM_PCIE_NOC_1_transactor_param_props.addString("HD_TANDEM", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addString("INDEX", "1");

    mp_CPM_PCIE_NOC_1_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,17>("CPM_PCIE_NOC_1_transactor", CPM_PCIE_NOC_1_transactor_param_props);

    // CPM_PCIE_NOC_1' transactor ports

    mp_CPM_PCIE_NOC_1_transactor->ARADDR(CPM_PCIE_NOC_1_araddr);
    mp_CPM_PCIE_NOC_1_transactor->ARBURST(CPM_PCIE_NOC_1_arburst);
    mp_CPM_PCIE_NOC_1_transactor->ARCACHE(CPM_PCIE_NOC_1_arcache);
    mp_CPM_PCIE_NOC_1_transactor->ARID(CPM_PCIE_NOC_1_arid);
    mp_CPM_PCIE_NOC_1_transactor->ARLEN(CPM_PCIE_NOC_1_arlen);
    mp_CPM_PCIE_NOC_1_transactor->ARLOCK(CPM_PCIE_NOC_1_arlock);
    mp_CPM_PCIE_NOC_1_transactor->ARPROT(CPM_PCIE_NOC_1_arprot);
    mp_CPM_PCIE_NOC_1_transactor->ARQOS(CPM_PCIE_NOC_1_arqos);
    mp_CPM_PCIE_NOC_1_transactor->ARSIZE(CPM_PCIE_NOC_1_arsize);
    mp_CPM_PCIE_NOC_1_transactor->ARUSER(CPM_PCIE_NOC_1_aruser);
    mp_CPM_PCIE_NOC_1_transactor->ARVALID(CPM_PCIE_NOC_1_arvalid);
    mp_CPM_PCIE_NOC_1_transactor->AWADDR(CPM_PCIE_NOC_1_awaddr);
    mp_CPM_PCIE_NOC_1_transactor->AWBURST(CPM_PCIE_NOC_1_awburst);
    mp_CPM_PCIE_NOC_1_transactor->AWCACHE(CPM_PCIE_NOC_1_awcache);
    mp_CPM_PCIE_NOC_1_transactor->AWID(CPM_PCIE_NOC_1_awid);
    mp_CPM_PCIE_NOC_1_transactor->AWLEN(CPM_PCIE_NOC_1_awlen);
    mp_CPM_PCIE_NOC_1_transactor->AWLOCK(CPM_PCIE_NOC_1_awlock);
    mp_CPM_PCIE_NOC_1_transactor->AWPROT(CPM_PCIE_NOC_1_awprot);
    mp_CPM_PCIE_NOC_1_transactor->AWQOS(CPM_PCIE_NOC_1_awqos);
    mp_CPM_PCIE_NOC_1_transactor->AWSIZE(CPM_PCIE_NOC_1_awsize);
    mp_CPM_PCIE_NOC_1_transactor->AWUSER(CPM_PCIE_NOC_1_awuser);
    mp_CPM_PCIE_NOC_1_transactor->AWVALID(CPM_PCIE_NOC_1_awvalid);
    mp_CPM_PCIE_NOC_1_transactor->BREADY(CPM_PCIE_NOC_1_bready);
    mp_CPM_PCIE_NOC_1_transactor->RREADY(CPM_PCIE_NOC_1_rready);
    mp_CPM_PCIE_NOC_1_transactor->WDATA(CPM_PCIE_NOC_1_wdata);
    mp_CPM_PCIE_NOC_1_transactor->WLAST(CPM_PCIE_NOC_1_wlast);
    mp_CPM_PCIE_NOC_1_transactor->WSTRB(CPM_PCIE_NOC_1_wstrb);
    mp_CPM_PCIE_NOC_1_transactor->WVALID(CPM_PCIE_NOC_1_wvalid);
    mp_CPM_PCIE_NOC_1_transactor->ARREADY(CPM_PCIE_NOC_1_arready);
    mp_CPM_PCIE_NOC_1_transactor->AWREADY(CPM_PCIE_NOC_1_awready);
    mp_CPM_PCIE_NOC_1_transactor->BID(CPM_PCIE_NOC_1_bid);
    mp_CPM_PCIE_NOC_1_transactor->BRESP(CPM_PCIE_NOC_1_bresp);
    mp_CPM_PCIE_NOC_1_transactor->BVALID(CPM_PCIE_NOC_1_bvalid);
    mp_CPM_PCIE_NOC_1_transactor->RDATA(CPM_PCIE_NOC_1_rdata);
    mp_CPM_PCIE_NOC_1_transactor->RID(CPM_PCIE_NOC_1_rid);
    mp_CPM_PCIE_NOC_1_transactor->RLAST(CPM_PCIE_NOC_1_rlast);
    mp_CPM_PCIE_NOC_1_transactor->RRESP(CPM_PCIE_NOC_1_rresp);
    mp_CPM_PCIE_NOC_1_transactor->RVALID(CPM_PCIE_NOC_1_rvalid);
    mp_CPM_PCIE_NOC_1_transactor->RUSER(CPM_PCIE_NOC_1_ruser);
    mp_CPM_PCIE_NOC_1_transactor->WUSER(CPM_PCIE_NOC_1_wuser);
    mp_CPM_PCIE_NOC_1_transactor->WREADY(CPM_PCIE_NOC_1_wready);
    mp_CPM_PCIE_NOC_1_transactor->CLK(cpm_pcie_noc_axi1_clk);
    m_CPM_PCIE_NOC_1_transactor_rst_signal.write(1);
    mp_CPM_PCIE_NOC_1_transactor->RST(m_CPM_PCIE_NOC_1_transactor_rst_signal);

    // CPM_PCIE_NOC_1' transactor sockets

    mp_impl->CPM_PCIE_NOC_1_tlm_aximm_read_socket->bind(*(mp_CPM_PCIE_NOC_1_transactor->rd_socket));
    mp_impl->CPM_PCIE_NOC_1_tlm_aximm_write_socket->bind(*(mp_CPM_PCIE_NOC_1_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'dma1_st_rx_msg' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("cpm_qdma_ep_part_versal_cips_0_0", "dma1_st_rx_msg_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'dma1_st_rx_msg' transactor parameters
    xsc::common_cpp::properties dma1_st_rx_msg_transactor_param_props;
    dma1_st_rx_msg_transactor_param_props.addLong("TDATA_NUM_BYTES", "4");
    dma1_st_rx_msg_transactor_param_props.addLong("TDEST_WIDTH", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("TID_WIDTH", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("TUSER_WIDTH", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_TREADY", "1");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_TSTRB", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_TKEEP", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_TLAST", "1");
    dma1_st_rx_msg_transactor_param_props.addLong("FREQ_HZ", "429162384");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_RESET", "1");
    dma1_st_rx_msg_transactor_param_props.addFloat("PHASE", "0.0");
    dma1_st_rx_msg_transactor_param_props.addString("CLK_DOMAIN", "bd_a532_pspmc_0_0_pl0_ref_clk");
    dma1_st_rx_msg_transactor_param_props.addString("LAYERED_METADATA", "undef");
    dma1_st_rx_msg_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_dma1_st_rx_msg_transactor = new xtlm::xaxis_xtlm2pin_t<4,1,1,1,1,1>("dma1_st_rx_msg_transactor", dma1_st_rx_msg_transactor_param_props);

    // dma1_st_rx_msg' transactor ports

    mp_dma1_st_rx_msg_transactor->TLAST(dma1_st_rx_msg_tlast);
    mp_dma1_st_rx_msg_transactor->TVALID(dma1_st_rx_msg_tvalid);
    mp_dma1_st_rx_msg_transactor->TREADY(dma1_st_rx_msg_tready);
    mp_dma1_st_rx_msg_transactor->TDATA(dma1_st_rx_msg_tdata);
    mp_dma1_st_rx_msg_transactor->CLK(dma1_intrfc_clk);
    mp_dma1_st_rx_msg_transactor->RST(dma1_axi_aresetn);

    // dma1_st_rx_msg' transactor sockets

    mp_impl->dma1_st_rx_msg_tlm_axis_socket->bind(*(mp_dma1_st_rx_msg_transactor->socket));
  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
cpm_qdma_ep_part_versal_cips_0_0::cpm_qdma_ep_part_versal_cips_0_0(const sc_core::sc_module_name& nm) : cpm_qdma_ep_part_versal_cips_0_0_sc(nm),  pl0_ref_clk("pl0_ref_clk"), pl1_ref_clk("pl1_ref_clk"), pl0_resetn("pl0_resetn"), m_axi_fpd_aclk("m_axi_fpd_aclk"), cpm_pcie_noc_axi0_clk("cpm_pcie_noc_axi0_clk"), cpm_pcie_noc_axi1_clk("cpm_pcie_noc_axi1_clk"), dma1_intrfc_clk("dma1_intrfc_clk"), cpm_misc_irq("cpm_misc_irq"), cpm_cor_irq("cpm_cor_irq"), cpm_uncor_irq("cpm_uncor_irq"), cpm_irq0("cpm_irq0"), cpm_irq1("cpm_irq1"), dma1_axi_aresetn("dma1_axi_aresetn"), dma1_intrfc_resetn("dma1_intrfc_resetn"), M_AXI_FPD_awid("M_AXI_FPD_awid"), M_AXI_FPD_awaddr("M_AXI_FPD_awaddr"), M_AXI_FPD_awlen("M_AXI_FPD_awlen"), M_AXI_FPD_awsize("M_AXI_FPD_awsize"), M_AXI_FPD_awburst("M_AXI_FPD_awburst"), M_AXI_FPD_awlock("M_AXI_FPD_awlock"), M_AXI_FPD_awcache("M_AXI_FPD_awcache"), M_AXI_FPD_awprot("M_AXI_FPD_awprot"), M_AXI_FPD_awvalid("M_AXI_FPD_awvalid"), M_AXI_FPD_awuser("M_AXI_FPD_awuser"), M_AXI_FPD_awready("M_AXI_FPD_awready"), M_AXI_FPD_wlast("M_AXI_FPD_wlast"), M_AXI_FPD_wvalid("M_AXI_FPD_wvalid"), M_AXI_FPD_wready("M_AXI_FPD_wready"), M_AXI_FPD_bid("M_AXI_FPD_bid"), M_AXI_FPD_bresp("M_AXI_FPD_bresp"), M_AXI_FPD_bvalid("M_AXI_FPD_bvalid"), M_AXI_FPD_bready("M_AXI_FPD_bready"), M_AXI_FPD_arid("M_AXI_FPD_arid"), M_AXI_FPD_araddr("M_AXI_FPD_araddr"), M_AXI_FPD_arlen("M_AXI_FPD_arlen"), M_AXI_FPD_arsize("M_AXI_FPD_arsize"), M_AXI_FPD_arburst("M_AXI_FPD_arburst"), M_AXI_FPD_arlock("M_AXI_FPD_arlock"), M_AXI_FPD_arcache("M_AXI_FPD_arcache"), M_AXI_FPD_arprot("M_AXI_FPD_arprot"), M_AXI_FPD_arvalid("M_AXI_FPD_arvalid"), M_AXI_FPD_aruser("M_AXI_FPD_aruser"), M_AXI_FPD_arready("M_AXI_FPD_arready"), M_AXI_FPD_rid("M_AXI_FPD_rid"), M_AXI_FPD_rresp("M_AXI_FPD_rresp"), M_AXI_FPD_rlast("M_AXI_FPD_rlast"), M_AXI_FPD_rvalid("M_AXI_FPD_rvalid"), M_AXI_FPD_rready("M_AXI_FPD_rready"), M_AXI_FPD_awqos("M_AXI_FPD_awqos"), M_AXI_FPD_arqos("M_AXI_FPD_arqos"), M_AXI_FPD_wdata("M_AXI_FPD_wdata"), M_AXI_FPD_wstrb("M_AXI_FPD_wstrb"), M_AXI_FPD_rdata("M_AXI_FPD_rdata"), CPM_PCIE_NOC_0_araddr("CPM_PCIE_NOC_0_araddr"), CPM_PCIE_NOC_0_arburst("CPM_PCIE_NOC_0_arburst"), CPM_PCIE_NOC_0_arcache("CPM_PCIE_NOC_0_arcache"), CPM_PCIE_NOC_0_arid("CPM_PCIE_NOC_0_arid"), CPM_PCIE_NOC_0_arlen("CPM_PCIE_NOC_0_arlen"), CPM_PCIE_NOC_0_arlock("CPM_PCIE_NOC_0_arlock"), CPM_PCIE_NOC_0_arprot("CPM_PCIE_NOC_0_arprot"), CPM_PCIE_NOC_0_arqos("CPM_PCIE_NOC_0_arqos"), CPM_PCIE_NOC_0_arsize("CPM_PCIE_NOC_0_arsize"), CPM_PCIE_NOC_0_aruser("CPM_PCIE_NOC_0_aruser"), CPM_PCIE_NOC_0_arvalid("CPM_PCIE_NOC_0_arvalid"), CPM_PCIE_NOC_0_awaddr("CPM_PCIE_NOC_0_awaddr"), CPM_PCIE_NOC_0_awburst("CPM_PCIE_NOC_0_awburst"), CPM_PCIE_NOC_0_awcache("CPM_PCIE_NOC_0_awcache"), CPM_PCIE_NOC_0_awid("CPM_PCIE_NOC_0_awid"), CPM_PCIE_NOC_0_awlen("CPM_PCIE_NOC_0_awlen"), CPM_PCIE_NOC_0_awlock("CPM_PCIE_NOC_0_awlock"), CPM_PCIE_NOC_0_awprot("CPM_PCIE_NOC_0_awprot"), CPM_PCIE_NOC_0_awqos("CPM_PCIE_NOC_0_awqos"), CPM_PCIE_NOC_0_awsize("CPM_PCIE_NOC_0_awsize"), CPM_PCIE_NOC_0_awuser("CPM_PCIE_NOC_0_awuser"), CPM_PCIE_NOC_0_awvalid("CPM_PCIE_NOC_0_awvalid"), CPM_PCIE_NOC_0_bready("CPM_PCIE_NOC_0_bready"), CPM_PCIE_NOC_0_rready("CPM_PCIE_NOC_0_rready"), CPM_PCIE_NOC_0_wdata("CPM_PCIE_NOC_0_wdata"), CPM_PCIE_NOC_0_wlast("CPM_PCIE_NOC_0_wlast"), CPM_PCIE_NOC_0_wstrb("CPM_PCIE_NOC_0_wstrb"), CPM_PCIE_NOC_0_wvalid("CPM_PCIE_NOC_0_wvalid"), CPM_PCIE_NOC_0_arready("CPM_PCIE_NOC_0_arready"), CPM_PCIE_NOC_0_awready("CPM_PCIE_NOC_0_awready"), CPM_PCIE_NOC_0_bid("CPM_PCIE_NOC_0_bid"), CPM_PCIE_NOC_0_bresp("CPM_PCIE_NOC_0_bresp"), CPM_PCIE_NOC_0_bvalid("CPM_PCIE_NOC_0_bvalid"), CPM_PCIE_NOC_0_rdata("CPM_PCIE_NOC_0_rdata"), CPM_PCIE_NOC_0_rid("CPM_PCIE_NOC_0_rid"), CPM_PCIE_NOC_0_rlast("CPM_PCIE_NOC_0_rlast"), CPM_PCIE_NOC_0_rresp("CPM_PCIE_NOC_0_rresp"), CPM_PCIE_NOC_0_rvalid("CPM_PCIE_NOC_0_rvalid"), CPM_PCIE_NOC_0_ruser("CPM_PCIE_NOC_0_ruser"), CPM_PCIE_NOC_0_wuser("CPM_PCIE_NOC_0_wuser"), CPM_PCIE_NOC_0_wready("CPM_PCIE_NOC_0_wready"), CPM_PCIE_NOC_1_araddr("CPM_PCIE_NOC_1_araddr"), CPM_PCIE_NOC_1_arburst("CPM_PCIE_NOC_1_arburst"), CPM_PCIE_NOC_1_arcache("CPM_PCIE_NOC_1_arcache"), CPM_PCIE_NOC_1_arid("CPM_PCIE_NOC_1_arid"), CPM_PCIE_NOC_1_arlen("CPM_PCIE_NOC_1_arlen"), CPM_PCIE_NOC_1_arlock("CPM_PCIE_NOC_1_arlock"), CPM_PCIE_NOC_1_arprot("CPM_PCIE_NOC_1_arprot"), CPM_PCIE_NOC_1_arqos("CPM_PCIE_NOC_1_arqos"), CPM_PCIE_NOC_1_arsize("CPM_PCIE_NOC_1_arsize"), CPM_PCIE_NOC_1_aruser("CPM_PCIE_NOC_1_aruser"), CPM_PCIE_NOC_1_arvalid("CPM_PCIE_NOC_1_arvalid"), CPM_PCIE_NOC_1_awaddr("CPM_PCIE_NOC_1_awaddr"), CPM_PCIE_NOC_1_awburst("CPM_PCIE_NOC_1_awburst"), CPM_PCIE_NOC_1_awcache("CPM_PCIE_NOC_1_awcache"), CPM_PCIE_NOC_1_awid("CPM_PCIE_NOC_1_awid"), CPM_PCIE_NOC_1_awlen("CPM_PCIE_NOC_1_awlen"), CPM_PCIE_NOC_1_awlock("CPM_PCIE_NOC_1_awlock"), CPM_PCIE_NOC_1_awprot("CPM_PCIE_NOC_1_awprot"), CPM_PCIE_NOC_1_awqos("CPM_PCIE_NOC_1_awqos"), CPM_PCIE_NOC_1_awsize("CPM_PCIE_NOC_1_awsize"), CPM_PCIE_NOC_1_awuser("CPM_PCIE_NOC_1_awuser"), CPM_PCIE_NOC_1_awvalid("CPM_PCIE_NOC_1_awvalid"), CPM_PCIE_NOC_1_bready("CPM_PCIE_NOC_1_bready"), CPM_PCIE_NOC_1_rready("CPM_PCIE_NOC_1_rready"), CPM_PCIE_NOC_1_wdata("CPM_PCIE_NOC_1_wdata"), CPM_PCIE_NOC_1_wlast("CPM_PCIE_NOC_1_wlast"), CPM_PCIE_NOC_1_wstrb("CPM_PCIE_NOC_1_wstrb"), CPM_PCIE_NOC_1_wvalid("CPM_PCIE_NOC_1_wvalid"), CPM_PCIE_NOC_1_arready("CPM_PCIE_NOC_1_arready"), CPM_PCIE_NOC_1_awready("CPM_PCIE_NOC_1_awready"), CPM_PCIE_NOC_1_bid("CPM_PCIE_NOC_1_bid"), CPM_PCIE_NOC_1_bresp("CPM_PCIE_NOC_1_bresp"), CPM_PCIE_NOC_1_bvalid("CPM_PCIE_NOC_1_bvalid"), CPM_PCIE_NOC_1_rdata("CPM_PCIE_NOC_1_rdata"), CPM_PCIE_NOC_1_rid("CPM_PCIE_NOC_1_rid"), CPM_PCIE_NOC_1_rlast("CPM_PCIE_NOC_1_rlast"), CPM_PCIE_NOC_1_rresp("CPM_PCIE_NOC_1_rresp"), CPM_PCIE_NOC_1_rvalid("CPM_PCIE_NOC_1_rvalid"), CPM_PCIE_NOC_1_ruser("CPM_PCIE_NOC_1_ruser"), CPM_PCIE_NOC_1_wuser("CPM_PCIE_NOC_1_wuser"), CPM_PCIE_NOC_1_wready("CPM_PCIE_NOC_1_wready"), dma1_mgmt_cpl_vld("dma1_mgmt_cpl_vld"), dma1_mgmt_req_rdy("dma1_mgmt_req_rdy"), dma1_mgmt_cpl_rdy("dma1_mgmt_cpl_rdy"), dma1_mgmt_req_vld("dma1_mgmt_req_vld"), dma1_mgmt_cpl_sts("dma1_mgmt_cpl_sts"), dma1_mgmt_cpl_dat("dma1_mgmt_cpl_dat"), dma1_mgmt_req_cmd("dma1_mgmt_req_cmd"), dma1_mgmt_req_fnc("dma1_mgmt_req_fnc"), dma1_mgmt_req_msc("dma1_mgmt_req_msc"), dma1_mgmt_req_adr("dma1_mgmt_req_adr"), dma1_mgmt_req_dat("dma1_mgmt_req_dat"), dma1_st_rx_msg_tlast("dma1_st_rx_msg_tlast"), dma1_st_rx_msg_tvalid("dma1_st_rx_msg_tvalid"), dma1_st_rx_msg_tready("dma1_st_rx_msg_tready"), dma1_st_rx_msg_tdata("dma1_st_rx_msg_tdata"), dma1_c2h_byp_in_mm_0_ready("dma1_c2h_byp_in_mm_0_ready"), dma1_c2h_byp_in_mm_0_sdi("dma1_c2h_byp_in_mm_0_sdi"), dma1_c2h_byp_in_mm_0_valid("dma1_c2h_byp_in_mm_0_valid"), dma1_c2h_byp_in_mm_0_error("dma1_c2h_byp_in_mm_0_error"), dma1_c2h_byp_in_mm_0_no_dma("dma1_c2h_byp_in_mm_0_no_dma"), dma1_c2h_byp_in_mm_0_mrkr_req("dma1_c2h_byp_in_mm_0_mrkr_req"), dma1_c2h_byp_in_mm_0_len("dma1_c2h_byp_in_mm_0_len"), dma1_c2h_byp_in_mm_0_qid("dma1_c2h_byp_in_mm_0_qid"), dma1_c2h_byp_in_mm_0_func("dma1_c2h_byp_in_mm_0_func"), dma1_c2h_byp_in_mm_0_cidx("dma1_c2h_byp_in_mm_0_cidx"), dma1_c2h_byp_in_mm_0_radr("dma1_c2h_byp_in_mm_0_radr"), dma1_c2h_byp_in_mm_0_wadr("dma1_c2h_byp_in_mm_0_wadr"), dma1_c2h_byp_in_mm_0_port_id("dma1_c2h_byp_in_mm_0_port_id"), dma1_c2h_byp_in_mm_1_ready("dma1_c2h_byp_in_mm_1_ready"), dma1_c2h_byp_in_mm_1_sdi("dma1_c2h_byp_in_mm_1_sdi"), dma1_c2h_byp_in_mm_1_valid("dma1_c2h_byp_in_mm_1_valid"), dma1_c2h_byp_in_mm_1_error("dma1_c2h_byp_in_mm_1_error"), dma1_c2h_byp_in_mm_1_no_dma("dma1_c2h_byp_in_mm_1_no_dma"), dma1_c2h_byp_in_mm_1_mrkr_req("dma1_c2h_byp_in_mm_1_mrkr_req"), dma1_c2h_byp_in_mm_1_len("dma1_c2h_byp_in_mm_1_len"), dma1_c2h_byp_in_mm_1_qid("dma1_c2h_byp_in_mm_1_qid"), dma1_c2h_byp_in_mm_1_func("dma1_c2h_byp_in_mm_1_func"), dma1_c2h_byp_in_mm_1_cidx("dma1_c2h_byp_in_mm_1_cidx"), dma1_c2h_byp_in_mm_1_radr("dma1_c2h_byp_in_mm_1_radr"), dma1_c2h_byp_in_mm_1_wadr("dma1_c2h_byp_in_mm_1_wadr"), dma1_c2h_byp_in_mm_1_port_id("dma1_c2h_byp_in_mm_1_port_id"), dma1_c2h_byp_in_st_csh_ready("dma1_c2h_byp_in_st_csh_ready"), dma1_c2h_byp_in_st_csh_valid("dma1_c2h_byp_in_st_csh_valid"), dma1_c2h_byp_in_st_csh_error("dma1_c2h_byp_in_st_csh_error"), dma1_c2h_byp_in_st_csh_qid("dma1_c2h_byp_in_st_csh_qid"), dma1_c2h_byp_in_st_csh_func("dma1_c2h_byp_in_st_csh_func"), dma1_c2h_byp_in_st_csh_addr("dma1_c2h_byp_in_st_csh_addr"), dma1_c2h_byp_in_st_csh_port_id("dma1_c2h_byp_in_st_csh_port_id"), dma1_c2h_byp_in_st_csh_pfch_tag("dma1_c2h_byp_in_st_csh_pfch_tag"), dma1_c2h_byp_out_valid("dma1_c2h_byp_out_valid"), dma1_c2h_byp_out_error("dma1_c2h_byp_out_error"), dma1_c2h_byp_out_st_mm("dma1_c2h_byp_out_st_mm"), dma1_c2h_byp_out_mm_chn("dma1_c2h_byp_out_mm_chn"), dma1_c2h_byp_out_ready("dma1_c2h_byp_out_ready"), dma1_c2h_byp_out_fmt("dma1_c2h_byp_out_fmt"), dma1_c2h_byp_out_qid("dma1_c2h_byp_out_qid"), dma1_c2h_byp_out_dsc("dma1_c2h_byp_out_dsc"), dma1_c2h_byp_out_func("dma1_c2h_byp_out_func"), dma1_c2h_byp_out_cidx("dma1_c2h_byp_out_cidx"), dma1_c2h_byp_out_dsc_sz("dma1_c2h_byp_out_dsc_sz"), dma1_c2h_byp_out_port_id("dma1_c2h_byp_out_port_id"), dma1_c2h_byp_out_pfch_tag("dma1_c2h_byp_out_pfch_tag"), dma1_h2c_byp_in_mm_0_ready("dma1_h2c_byp_in_mm_0_ready"), dma1_h2c_byp_in_mm_0_sdi("dma1_h2c_byp_in_mm_0_sdi"), dma1_h2c_byp_in_mm_0_valid("dma1_h2c_byp_in_mm_0_valid"), dma1_h2c_byp_in_mm_0_error("dma1_h2c_byp_in_mm_0_error"), dma1_h2c_byp_in_mm_0_no_dma("dma1_h2c_byp_in_mm_0_no_dma"), dma1_h2c_byp_in_mm_0_mrkr_req("dma1_h2c_byp_in_mm_0_mrkr_req"), dma1_h2c_byp_in_mm_0_len("dma1_h2c_byp_in_mm_0_len"), dma1_h2c_byp_in_mm_0_qid("dma1_h2c_byp_in_mm_0_qid"), dma1_h2c_byp_in_mm_0_func("dma1_h2c_byp_in_mm_0_func"), dma1_h2c_byp_in_mm_0_cidx("dma1_h2c_byp_in_mm_0_cidx"), dma1_h2c_byp_in_mm_0_radr("dma1_h2c_byp_in_mm_0_radr"), dma1_h2c_byp_in_mm_0_wadr("dma1_h2c_byp_in_mm_0_wadr"), dma1_h2c_byp_in_mm_0_port_id("dma1_h2c_byp_in_mm_0_port_id"), dma1_h2c_byp_in_mm_1_ready("dma1_h2c_byp_in_mm_1_ready"), dma1_h2c_byp_in_mm_1_sdi("dma1_h2c_byp_in_mm_1_sdi"), dma1_h2c_byp_in_mm_1_valid("dma1_h2c_byp_in_mm_1_valid"), dma1_h2c_byp_in_mm_1_error("dma1_h2c_byp_in_mm_1_error"), dma1_h2c_byp_in_mm_1_no_dma("dma1_h2c_byp_in_mm_1_no_dma"), dma1_h2c_byp_in_mm_1_mrkr_req("dma1_h2c_byp_in_mm_1_mrkr_req"), dma1_h2c_byp_in_mm_1_len("dma1_h2c_byp_in_mm_1_len"), dma1_h2c_byp_in_mm_1_qid("dma1_h2c_byp_in_mm_1_qid"), dma1_h2c_byp_in_mm_1_func("dma1_h2c_byp_in_mm_1_func"), dma1_h2c_byp_in_mm_1_cidx("dma1_h2c_byp_in_mm_1_cidx"), dma1_h2c_byp_in_mm_1_radr("dma1_h2c_byp_in_mm_1_radr"), dma1_h2c_byp_in_mm_1_wadr("dma1_h2c_byp_in_mm_1_wadr"), dma1_h2c_byp_in_mm_1_port_id("dma1_h2c_byp_in_mm_1_port_id"), dma1_h2c_byp_in_st_ready("dma1_h2c_byp_in_st_ready"), dma1_h2c_byp_in_st_eop("dma1_h2c_byp_in_st_eop"), dma1_h2c_byp_in_st_sdi("dma1_h2c_byp_in_st_sdi"), dma1_h2c_byp_in_st_sop("dma1_h2c_byp_in_st_sop"), dma1_h2c_byp_in_st_valid("dma1_h2c_byp_in_st_valid"), dma1_h2c_byp_in_st_error("dma1_h2c_byp_in_st_error"), dma1_h2c_byp_in_st_no_dma("dma1_h2c_byp_in_st_no_dma"), dma1_h2c_byp_in_st_mrkr_req("dma1_h2c_byp_in_st_mrkr_req"), dma1_h2c_byp_in_st_len("dma1_h2c_byp_in_st_len"), dma1_h2c_byp_in_st_qid("dma1_h2c_byp_in_st_qid"), dma1_h2c_byp_in_st_func("dma1_h2c_byp_in_st_func"), dma1_h2c_byp_in_st_addr("dma1_h2c_byp_in_st_addr"), dma1_h2c_byp_in_st_cidx("dma1_h2c_byp_in_st_cidx"), dma1_h2c_byp_in_st_port_id("dma1_h2c_byp_in_st_port_id"), dma1_h2c_byp_out_valid("dma1_h2c_byp_out_valid"), dma1_h2c_byp_out_error("dma1_h2c_byp_out_error"), dma1_h2c_byp_out_st_mm("dma1_h2c_byp_out_st_mm"), dma1_h2c_byp_out_mm_chn("dma1_h2c_byp_out_mm_chn"), dma1_h2c_byp_out_ready("dma1_h2c_byp_out_ready"), dma1_h2c_byp_out_fmt("dma1_h2c_byp_out_fmt"), dma1_h2c_byp_out_qid("dma1_h2c_byp_out_qid"), dma1_h2c_byp_out_dsc("dma1_h2c_byp_out_dsc"), dma1_h2c_byp_out_func("dma1_h2c_byp_out_func"), dma1_h2c_byp_out_cidx("dma1_h2c_byp_out_cidx"), dma1_h2c_byp_out_dsc_sz("dma1_h2c_byp_out_dsc_sz"), dma1_h2c_byp_out_port_id("dma1_h2c_byp_out_port_id"), dma1_axis_c2h_dmawr_cmp("dma1_axis_c2h_dmawr_cmp"), dma1_axis_c2h_dmawr_target_vch("dma1_axis_c2h_dmawr_target_vch"), dma1_axis_c2h_dmawr_port_id("dma1_axis_c2h_dmawr_port_id"), dma1_s_axis_c2h_tready("dma1_s_axis_c2h_tready"), dma1_s_axis_c2h_tlast("dma1_s_axis_c2h_tlast"), dma1_s_axis_c2h_tvalid("dma1_s_axis_c2h_tvalid"), dma1_s_axis_c2h_tcrc("dma1_s_axis_c2h_tcrc"), dma1_s_axis_c2h_tdata("dma1_s_axis_c2h_tdata"), dma1_s_axis_c2h_mty("dma1_s_axis_c2h_mty"), dma1_s_axis_c2h_ecc("dma1_s_axis_c2h_ecc"), dma1_s_axis_c2h_ctrl_marker("dma1_s_axis_c2h_ctrl_marker"), dma1_s_axis_c2h_ctrl_has_cmpt("dma1_s_axis_c2h_ctrl_has_cmpt"), dma1_s_axis_c2h_ctrl_len("dma1_s_axis_c2h_ctrl_len"), dma1_s_axis_c2h_ctrl_qid("dma1_s_axis_c2h_ctrl_qid"), dma1_s_axis_c2h_ctrl_port_id("dma1_s_axis_c2h_ctrl_port_id"), dma1_s_axis_c2h_cmpt_marker("dma1_s_axis_c2h_cmpt_marker"), dma1_s_axis_c2h_cmpt_user_trig("dma1_s_axis_c2h_cmpt_user_trig"), dma1_s_axis_c2h_cmpt_size("dma1_s_axis_c2h_cmpt_size"), dma1_s_axis_c2h_cmpt_qid("dma1_s_axis_c2h_cmpt_qid"), dma1_s_axis_c2h_cmpt_no_wrb_marker("dma1_s_axis_c2h_cmpt_no_wrb_marker"), dma1_s_axis_c2h_cmpt_port_id("dma1_s_axis_c2h_cmpt_port_id"), dma1_s_axis_c2h_cmpt_col_idx("dma1_s_axis_c2h_cmpt_col_idx"), dma1_s_axis_c2h_cmpt_err_idx("dma1_s_axis_c2h_cmpt_err_idx"), dma1_s_axis_c2h_cmpt_wait_pld_pkt_id("dma1_s_axis_c2h_cmpt_wait_pld_pkt_id"), dma1_s_axis_c2h_cmpt_tready("dma1_s_axis_c2h_cmpt_tready"), dma1_s_axis_c2h_cmpt_tvalid("dma1_s_axis_c2h_cmpt_tvalid"), dma1_s_axis_c2h_cmpt_dpar("dma1_s_axis_c2h_cmpt_dpar"), dma1_s_axis_c2h_cmpt_data("dma1_s_axis_c2h_cmpt_data"), dma1_s_axis_c2h_cmpt_cmpt_type("dma1_s_axis_c2h_cmpt_cmpt_type"), dma1_m_axis_h2c_tlast("dma1_m_axis_h2c_tlast"), dma1_m_axis_h2c_err("dma1_m_axis_h2c_err"), dma1_m_axis_h2c_tvalid("dma1_m_axis_h2c_tvalid"), dma1_m_axis_h2c_tdata("dma1_m_axis_h2c_tdata"), dma1_m_axis_h2c_zero_byte("dma1_m_axis_h2c_zero_byte"), dma1_m_axis_h2c_tready("dma1_m_axis_h2c_tready"), dma1_m_axis_h2c_tcrc("dma1_m_axis_h2c_tcrc"), dma1_m_axis_h2c_mty("dma1_m_axis_h2c_mty"), dma1_m_axis_h2c_qid("dma1_m_axis_h2c_qid"), dma1_m_axis_h2c_mdata("dma1_m_axis_h2c_mdata"), dma1_m_axis_h2c_port_id("dma1_m_axis_h2c_port_id"), dma1_axis_c2h_status_last("dma1_axis_c2h_status_last"), dma1_axis_c2h_status_drop("dma1_axis_c2h_status_drop"), dma1_axis_c2h_status_error("dma1_axis_c2h_status_error"), dma1_axis_c2h_status_valid("dma1_axis_c2h_status_valid"), dma1_axis_c2h_status_status_cmp("dma1_axis_c2h_status_status_cmp"), dma1_axis_c2h_status_qid("dma1_axis_c2h_status_qid"), dma1_qsts_out_vld("dma1_qsts_out_vld"), dma1_qsts_out_op("dma1_qsts_out_op"), dma1_qsts_out_rdy("dma1_qsts_out_rdy"), dma1_qsts_out_qid("dma1_qsts_out_qid"), dma1_qsts_out_data("dma1_qsts_out_data"), dma1_qsts_out_port_id("dma1_qsts_out_port_id"), dma1_dsc_crdt_in_rdy("dma1_dsc_crdt_in_rdy"), dma1_dsc_crdt_in_dir("dma1_dsc_crdt_in_dir"), dma1_dsc_crdt_in_valid("dma1_dsc_crdt_in_valid"), dma1_dsc_crdt_in_fence("dma1_dsc_crdt_in_fence"), dma1_dsc_crdt_in_qid("dma1_dsc_crdt_in_qid"), dma1_dsc_crdt_in_crdt("dma1_dsc_crdt_in_crdt"), dma1_usr_irq_ack("dma1_usr_irq_ack"), dma1_usr_irq_fail("dma1_usr_irq_fail"), dma1_usr_irq_valid("dma1_usr_irq_valid"), dma1_usr_irq_vec("dma1_usr_irq_vec"), dma1_usr_irq_fnc("dma1_usr_irq_fnc"), dma1_tm_dsc_sts_mm("dma1_tm_dsc_sts_mm"), dma1_tm_dsc_sts_qen("dma1_tm_dsc_sts_qen"), dma1_tm_dsc_sts_byp("dma1_tm_dsc_sts_byp"), dma1_tm_dsc_sts_dir("dma1_tm_dsc_sts_dir"), dma1_tm_dsc_sts_error("dma1_tm_dsc_sts_error"), dma1_tm_dsc_sts_valid("dma1_tm_dsc_sts_valid"), dma1_tm_dsc_sts_qinv("dma1_tm_dsc_sts_qinv"), dma1_tm_dsc_sts_irq_arm("dma1_tm_dsc_sts_irq_arm"), dma1_tm_dsc_sts_rdy("dma1_tm_dsc_sts_rdy"), dma1_tm_dsc_sts_qid("dma1_tm_dsc_sts_qid"), dma1_tm_dsc_sts_avl("dma1_tm_dsc_sts_avl"), dma1_tm_dsc_sts_pidx("dma1_tm_dsc_sts_pidx"), dma1_tm_dsc_sts_port_id("dma1_tm_dsc_sts_port_id"), dma1_usr_flr_set("dma1_usr_flr_set"), dma1_usr_flr_clear("dma1_usr_flr_clear"), dma1_usr_flr_fnc("dma1_usr_flr_fnc"), dma1_usr_flr_done_vld("dma1_usr_flr_done_vld"), dma1_usr_flr_done_fnc("dma1_usr_flr_done_fnc"), PCIE1_GT_grx_n("PCIE1_GT_grx_n"), PCIE1_GT_gtx_n("PCIE1_GT_gtx_n"), PCIE1_GT_grx_p("PCIE1_GT_grx_p"), PCIE1_GT_gtx_p("PCIE1_GT_gtx_p"), gt_refclk1_clk_n("gt_refclk1_clk_n"), gt_refclk1_clk_p("gt_refclk1_clk_p"), pcie1_pipe_ep_tx_0("pcie1_pipe_ep_tx_0"), pcie1_pipe_ep_rx_0("pcie1_pipe_ep_rx_0"), pcie1_pipe_ep_tx_1("pcie1_pipe_ep_tx_1"), pcie1_pipe_ep_rx_1("pcie1_pipe_ep_rx_1"), pcie1_pipe_ep_tx_2("pcie1_pipe_ep_tx_2"), pcie1_pipe_ep_rx_2("pcie1_pipe_ep_rx_2"), pcie1_pipe_ep_tx_3("pcie1_pipe_ep_tx_3"), pcie1_pipe_ep_rx_3("pcie1_pipe_ep_rx_3"), pcie1_pipe_ep_tx_4("pcie1_pipe_ep_tx_4"), pcie1_pipe_ep_rx_4("pcie1_pipe_ep_rx_4"), pcie1_pipe_ep_tx_5("pcie1_pipe_ep_tx_5"), pcie1_pipe_ep_rx_5("pcie1_pipe_ep_rx_5"), pcie1_pipe_ep_tx_6("pcie1_pipe_ep_tx_6"), pcie1_pipe_ep_rx_6("pcie1_pipe_ep_rx_6"), pcie1_pipe_ep_tx_7("pcie1_pipe_ep_tx_7"), pcie1_pipe_ep_rx_7("pcie1_pipe_ep_rx_7"), pcie1_pipe_ep_tx_8("pcie1_pipe_ep_tx_8"), pcie1_pipe_ep_rx_8("pcie1_pipe_ep_rx_8"), pcie1_pipe_ep_tx_9("pcie1_pipe_ep_tx_9"), pcie1_pipe_ep_rx_9("pcie1_pipe_ep_rx_9"), pcie1_pipe_ep_tx_10("pcie1_pipe_ep_tx_10"), pcie1_pipe_ep_rx_10("pcie1_pipe_ep_rx_10"), pcie1_pipe_ep_tx_11("pcie1_pipe_ep_tx_11"), pcie1_pipe_ep_rx_11("pcie1_pipe_ep_rx_11"), pcie1_pipe_ep_tx_12("pcie1_pipe_ep_tx_12"), pcie1_pipe_ep_rx_12("pcie1_pipe_ep_rx_12"), pcie1_pipe_ep_tx_13("pcie1_pipe_ep_tx_13"), pcie1_pipe_ep_rx_13("pcie1_pipe_ep_rx_13"), pcie1_pipe_ep_tx_14("pcie1_pipe_ep_tx_14"), pcie1_pipe_ep_rx_14("pcie1_pipe_ep_rx_14"), pcie1_pipe_ep_tx_15("pcie1_pipe_ep_tx_15"), pcie1_pipe_ep_rx_15("pcie1_pipe_ep_rx_15"), pcie1_pipe_ep_commands_in("pcie1_pipe_ep_commands_in"), pcie1_pipe_ep_commands_out("pcie1_pipe_ep_commands_out")
{
  // initialize pins
  mp_impl->pl0_ref_clk(pl0_ref_clk);
  mp_impl->pl1_ref_clk(pl1_ref_clk);
  mp_impl->pl0_resetn(pl0_resetn);
  mp_impl->m_axi_fpd_aclk(m_axi_fpd_aclk);
  mp_impl->cpm_pcie_noc_axi0_clk(cpm_pcie_noc_axi0_clk);
  mp_impl->cpm_pcie_noc_axi1_clk(cpm_pcie_noc_axi1_clk);
  mp_impl->dma1_intrfc_clk(dma1_intrfc_clk);
  mp_impl->cpm_misc_irq(cpm_misc_irq);
  mp_impl->cpm_cor_irq(cpm_cor_irq);
  mp_impl->cpm_uncor_irq(cpm_uncor_irq);
  mp_impl->cpm_irq0(cpm_irq0);
  mp_impl->cpm_irq1(cpm_irq1);
  mp_impl->dma1_axi_aresetn(dma1_axi_aresetn);
  mp_impl->dma1_intrfc_resetn(dma1_intrfc_resetn);
  mp_impl->dma1_mgmt_cpl_vld(dma1_mgmt_cpl_vld);
  mp_impl->dma1_mgmt_req_rdy(dma1_mgmt_req_rdy);
  mp_impl->dma1_mgmt_cpl_rdy(dma1_mgmt_cpl_rdy);
  mp_impl->dma1_mgmt_req_vld(dma1_mgmt_req_vld);
  mp_impl->dma1_mgmt_cpl_sts(dma1_mgmt_cpl_sts);
  mp_impl->dma1_mgmt_cpl_dat(dma1_mgmt_cpl_dat);
  mp_impl->dma1_mgmt_req_cmd(dma1_mgmt_req_cmd);
  mp_impl->dma1_mgmt_req_fnc(dma1_mgmt_req_fnc);
  mp_impl->dma1_mgmt_req_msc(dma1_mgmt_req_msc);
  mp_impl->dma1_mgmt_req_adr(dma1_mgmt_req_adr);
  mp_impl->dma1_mgmt_req_dat(dma1_mgmt_req_dat);
  mp_impl->dma1_c2h_byp_in_mm_0_ready(dma1_c2h_byp_in_mm_0_ready);
  mp_impl->dma1_c2h_byp_in_mm_0_sdi(dma1_c2h_byp_in_mm_0_sdi);
  mp_impl->dma1_c2h_byp_in_mm_0_valid(dma1_c2h_byp_in_mm_0_valid);
  mp_impl->dma1_c2h_byp_in_mm_0_error(dma1_c2h_byp_in_mm_0_error);
  mp_impl->dma1_c2h_byp_in_mm_0_no_dma(dma1_c2h_byp_in_mm_0_no_dma);
  mp_impl->dma1_c2h_byp_in_mm_0_mrkr_req(dma1_c2h_byp_in_mm_0_mrkr_req);
  mp_impl->dma1_c2h_byp_in_mm_0_len(dma1_c2h_byp_in_mm_0_len);
  mp_impl->dma1_c2h_byp_in_mm_0_qid(dma1_c2h_byp_in_mm_0_qid);
  mp_impl->dma1_c2h_byp_in_mm_0_func(dma1_c2h_byp_in_mm_0_func);
  mp_impl->dma1_c2h_byp_in_mm_0_cidx(dma1_c2h_byp_in_mm_0_cidx);
  mp_impl->dma1_c2h_byp_in_mm_0_radr(dma1_c2h_byp_in_mm_0_radr);
  mp_impl->dma1_c2h_byp_in_mm_0_wadr(dma1_c2h_byp_in_mm_0_wadr);
  mp_impl->dma1_c2h_byp_in_mm_0_port_id(dma1_c2h_byp_in_mm_0_port_id);
  mp_impl->dma1_c2h_byp_in_mm_1_ready(dma1_c2h_byp_in_mm_1_ready);
  mp_impl->dma1_c2h_byp_in_mm_1_sdi(dma1_c2h_byp_in_mm_1_sdi);
  mp_impl->dma1_c2h_byp_in_mm_1_valid(dma1_c2h_byp_in_mm_1_valid);
  mp_impl->dma1_c2h_byp_in_mm_1_error(dma1_c2h_byp_in_mm_1_error);
  mp_impl->dma1_c2h_byp_in_mm_1_no_dma(dma1_c2h_byp_in_mm_1_no_dma);
  mp_impl->dma1_c2h_byp_in_mm_1_mrkr_req(dma1_c2h_byp_in_mm_1_mrkr_req);
  mp_impl->dma1_c2h_byp_in_mm_1_len(dma1_c2h_byp_in_mm_1_len);
  mp_impl->dma1_c2h_byp_in_mm_1_qid(dma1_c2h_byp_in_mm_1_qid);
  mp_impl->dma1_c2h_byp_in_mm_1_func(dma1_c2h_byp_in_mm_1_func);
  mp_impl->dma1_c2h_byp_in_mm_1_cidx(dma1_c2h_byp_in_mm_1_cidx);
  mp_impl->dma1_c2h_byp_in_mm_1_radr(dma1_c2h_byp_in_mm_1_radr);
  mp_impl->dma1_c2h_byp_in_mm_1_wadr(dma1_c2h_byp_in_mm_1_wadr);
  mp_impl->dma1_c2h_byp_in_mm_1_port_id(dma1_c2h_byp_in_mm_1_port_id);
  mp_impl->dma1_c2h_byp_in_st_csh_ready(dma1_c2h_byp_in_st_csh_ready);
  mp_impl->dma1_c2h_byp_in_st_csh_valid(dma1_c2h_byp_in_st_csh_valid);
  mp_impl->dma1_c2h_byp_in_st_csh_error(dma1_c2h_byp_in_st_csh_error);
  mp_impl->dma1_c2h_byp_in_st_csh_qid(dma1_c2h_byp_in_st_csh_qid);
  mp_impl->dma1_c2h_byp_in_st_csh_func(dma1_c2h_byp_in_st_csh_func);
  mp_impl->dma1_c2h_byp_in_st_csh_addr(dma1_c2h_byp_in_st_csh_addr);
  mp_impl->dma1_c2h_byp_in_st_csh_port_id(dma1_c2h_byp_in_st_csh_port_id);
  mp_impl->dma1_c2h_byp_in_st_csh_pfch_tag(dma1_c2h_byp_in_st_csh_pfch_tag);
  mp_impl->dma1_c2h_byp_out_valid(dma1_c2h_byp_out_valid);
  mp_impl->dma1_c2h_byp_out_error(dma1_c2h_byp_out_error);
  mp_impl->dma1_c2h_byp_out_st_mm(dma1_c2h_byp_out_st_mm);
  mp_impl->dma1_c2h_byp_out_mm_chn(dma1_c2h_byp_out_mm_chn);
  mp_impl->dma1_c2h_byp_out_ready(dma1_c2h_byp_out_ready);
  mp_impl->dma1_c2h_byp_out_fmt(dma1_c2h_byp_out_fmt);
  mp_impl->dma1_c2h_byp_out_qid(dma1_c2h_byp_out_qid);
  mp_impl->dma1_c2h_byp_out_dsc(dma1_c2h_byp_out_dsc);
  mp_impl->dma1_c2h_byp_out_func(dma1_c2h_byp_out_func);
  mp_impl->dma1_c2h_byp_out_cidx(dma1_c2h_byp_out_cidx);
  mp_impl->dma1_c2h_byp_out_dsc_sz(dma1_c2h_byp_out_dsc_sz);
  mp_impl->dma1_c2h_byp_out_port_id(dma1_c2h_byp_out_port_id);
  mp_impl->dma1_c2h_byp_out_pfch_tag(dma1_c2h_byp_out_pfch_tag);
  mp_impl->dma1_h2c_byp_in_mm_0_ready(dma1_h2c_byp_in_mm_0_ready);
  mp_impl->dma1_h2c_byp_in_mm_0_sdi(dma1_h2c_byp_in_mm_0_sdi);
  mp_impl->dma1_h2c_byp_in_mm_0_valid(dma1_h2c_byp_in_mm_0_valid);
  mp_impl->dma1_h2c_byp_in_mm_0_error(dma1_h2c_byp_in_mm_0_error);
  mp_impl->dma1_h2c_byp_in_mm_0_no_dma(dma1_h2c_byp_in_mm_0_no_dma);
  mp_impl->dma1_h2c_byp_in_mm_0_mrkr_req(dma1_h2c_byp_in_mm_0_mrkr_req);
  mp_impl->dma1_h2c_byp_in_mm_0_len(dma1_h2c_byp_in_mm_0_len);
  mp_impl->dma1_h2c_byp_in_mm_0_qid(dma1_h2c_byp_in_mm_0_qid);
  mp_impl->dma1_h2c_byp_in_mm_0_func(dma1_h2c_byp_in_mm_0_func);
  mp_impl->dma1_h2c_byp_in_mm_0_cidx(dma1_h2c_byp_in_mm_0_cidx);
  mp_impl->dma1_h2c_byp_in_mm_0_radr(dma1_h2c_byp_in_mm_0_radr);
  mp_impl->dma1_h2c_byp_in_mm_0_wadr(dma1_h2c_byp_in_mm_0_wadr);
  mp_impl->dma1_h2c_byp_in_mm_0_port_id(dma1_h2c_byp_in_mm_0_port_id);
  mp_impl->dma1_h2c_byp_in_mm_1_ready(dma1_h2c_byp_in_mm_1_ready);
  mp_impl->dma1_h2c_byp_in_mm_1_sdi(dma1_h2c_byp_in_mm_1_sdi);
  mp_impl->dma1_h2c_byp_in_mm_1_valid(dma1_h2c_byp_in_mm_1_valid);
  mp_impl->dma1_h2c_byp_in_mm_1_error(dma1_h2c_byp_in_mm_1_error);
  mp_impl->dma1_h2c_byp_in_mm_1_no_dma(dma1_h2c_byp_in_mm_1_no_dma);
  mp_impl->dma1_h2c_byp_in_mm_1_mrkr_req(dma1_h2c_byp_in_mm_1_mrkr_req);
  mp_impl->dma1_h2c_byp_in_mm_1_len(dma1_h2c_byp_in_mm_1_len);
  mp_impl->dma1_h2c_byp_in_mm_1_qid(dma1_h2c_byp_in_mm_1_qid);
  mp_impl->dma1_h2c_byp_in_mm_1_func(dma1_h2c_byp_in_mm_1_func);
  mp_impl->dma1_h2c_byp_in_mm_1_cidx(dma1_h2c_byp_in_mm_1_cidx);
  mp_impl->dma1_h2c_byp_in_mm_1_radr(dma1_h2c_byp_in_mm_1_radr);
  mp_impl->dma1_h2c_byp_in_mm_1_wadr(dma1_h2c_byp_in_mm_1_wadr);
  mp_impl->dma1_h2c_byp_in_mm_1_port_id(dma1_h2c_byp_in_mm_1_port_id);
  mp_impl->dma1_h2c_byp_in_st_ready(dma1_h2c_byp_in_st_ready);
  mp_impl->dma1_h2c_byp_in_st_eop(dma1_h2c_byp_in_st_eop);
  mp_impl->dma1_h2c_byp_in_st_sdi(dma1_h2c_byp_in_st_sdi);
  mp_impl->dma1_h2c_byp_in_st_sop(dma1_h2c_byp_in_st_sop);
  mp_impl->dma1_h2c_byp_in_st_valid(dma1_h2c_byp_in_st_valid);
  mp_impl->dma1_h2c_byp_in_st_error(dma1_h2c_byp_in_st_error);
  mp_impl->dma1_h2c_byp_in_st_no_dma(dma1_h2c_byp_in_st_no_dma);
  mp_impl->dma1_h2c_byp_in_st_mrkr_req(dma1_h2c_byp_in_st_mrkr_req);
  mp_impl->dma1_h2c_byp_in_st_len(dma1_h2c_byp_in_st_len);
  mp_impl->dma1_h2c_byp_in_st_qid(dma1_h2c_byp_in_st_qid);
  mp_impl->dma1_h2c_byp_in_st_func(dma1_h2c_byp_in_st_func);
  mp_impl->dma1_h2c_byp_in_st_addr(dma1_h2c_byp_in_st_addr);
  mp_impl->dma1_h2c_byp_in_st_cidx(dma1_h2c_byp_in_st_cidx);
  mp_impl->dma1_h2c_byp_in_st_port_id(dma1_h2c_byp_in_st_port_id);
  mp_impl->dma1_h2c_byp_out_valid(dma1_h2c_byp_out_valid);
  mp_impl->dma1_h2c_byp_out_error(dma1_h2c_byp_out_error);
  mp_impl->dma1_h2c_byp_out_st_mm(dma1_h2c_byp_out_st_mm);
  mp_impl->dma1_h2c_byp_out_mm_chn(dma1_h2c_byp_out_mm_chn);
  mp_impl->dma1_h2c_byp_out_ready(dma1_h2c_byp_out_ready);
  mp_impl->dma1_h2c_byp_out_fmt(dma1_h2c_byp_out_fmt);
  mp_impl->dma1_h2c_byp_out_qid(dma1_h2c_byp_out_qid);
  mp_impl->dma1_h2c_byp_out_dsc(dma1_h2c_byp_out_dsc);
  mp_impl->dma1_h2c_byp_out_func(dma1_h2c_byp_out_func);
  mp_impl->dma1_h2c_byp_out_cidx(dma1_h2c_byp_out_cidx);
  mp_impl->dma1_h2c_byp_out_dsc_sz(dma1_h2c_byp_out_dsc_sz);
  mp_impl->dma1_h2c_byp_out_port_id(dma1_h2c_byp_out_port_id);
  mp_impl->dma1_axis_c2h_dmawr_cmp(dma1_axis_c2h_dmawr_cmp);
  mp_impl->dma1_axis_c2h_dmawr_target_vch(dma1_axis_c2h_dmawr_target_vch);
  mp_impl->dma1_axis_c2h_dmawr_port_id(dma1_axis_c2h_dmawr_port_id);
  mp_impl->dma1_s_axis_c2h_tready(dma1_s_axis_c2h_tready);
  mp_impl->dma1_s_axis_c2h_tlast(dma1_s_axis_c2h_tlast);
  mp_impl->dma1_s_axis_c2h_tvalid(dma1_s_axis_c2h_tvalid);
  mp_impl->dma1_s_axis_c2h_tcrc(dma1_s_axis_c2h_tcrc);
  mp_impl->dma1_s_axis_c2h_tdata(dma1_s_axis_c2h_tdata);
  mp_impl->dma1_s_axis_c2h_mty(dma1_s_axis_c2h_mty);
  mp_impl->dma1_s_axis_c2h_ecc(dma1_s_axis_c2h_ecc);
  mp_impl->dma1_s_axis_c2h_ctrl_marker(dma1_s_axis_c2h_ctrl_marker);
  mp_impl->dma1_s_axis_c2h_ctrl_has_cmpt(dma1_s_axis_c2h_ctrl_has_cmpt);
  mp_impl->dma1_s_axis_c2h_ctrl_len(dma1_s_axis_c2h_ctrl_len);
  mp_impl->dma1_s_axis_c2h_ctrl_qid(dma1_s_axis_c2h_ctrl_qid);
  mp_impl->dma1_s_axis_c2h_ctrl_port_id(dma1_s_axis_c2h_ctrl_port_id);
  mp_impl->dma1_s_axis_c2h_cmpt_marker(dma1_s_axis_c2h_cmpt_marker);
  mp_impl->dma1_s_axis_c2h_cmpt_user_trig(dma1_s_axis_c2h_cmpt_user_trig);
  mp_impl->dma1_s_axis_c2h_cmpt_size(dma1_s_axis_c2h_cmpt_size);
  mp_impl->dma1_s_axis_c2h_cmpt_qid(dma1_s_axis_c2h_cmpt_qid);
  mp_impl->dma1_s_axis_c2h_cmpt_no_wrb_marker(dma1_s_axis_c2h_cmpt_no_wrb_marker);
  mp_impl->dma1_s_axis_c2h_cmpt_port_id(dma1_s_axis_c2h_cmpt_port_id);
  mp_impl->dma1_s_axis_c2h_cmpt_col_idx(dma1_s_axis_c2h_cmpt_col_idx);
  mp_impl->dma1_s_axis_c2h_cmpt_err_idx(dma1_s_axis_c2h_cmpt_err_idx);
  mp_impl->dma1_s_axis_c2h_cmpt_wait_pld_pkt_id(dma1_s_axis_c2h_cmpt_wait_pld_pkt_id);
  mp_impl->dma1_s_axis_c2h_cmpt_tready(dma1_s_axis_c2h_cmpt_tready);
  mp_impl->dma1_s_axis_c2h_cmpt_tvalid(dma1_s_axis_c2h_cmpt_tvalid);
  mp_impl->dma1_s_axis_c2h_cmpt_dpar(dma1_s_axis_c2h_cmpt_dpar);
  mp_impl->dma1_s_axis_c2h_cmpt_data(dma1_s_axis_c2h_cmpt_data);
  mp_impl->dma1_s_axis_c2h_cmpt_cmpt_type(dma1_s_axis_c2h_cmpt_cmpt_type);
  mp_impl->dma1_m_axis_h2c_tlast(dma1_m_axis_h2c_tlast);
  mp_impl->dma1_m_axis_h2c_err(dma1_m_axis_h2c_err);
  mp_impl->dma1_m_axis_h2c_tvalid(dma1_m_axis_h2c_tvalid);
  mp_impl->dma1_m_axis_h2c_tdata(dma1_m_axis_h2c_tdata);
  mp_impl->dma1_m_axis_h2c_zero_byte(dma1_m_axis_h2c_zero_byte);
  mp_impl->dma1_m_axis_h2c_tready(dma1_m_axis_h2c_tready);
  mp_impl->dma1_m_axis_h2c_tcrc(dma1_m_axis_h2c_tcrc);
  mp_impl->dma1_m_axis_h2c_mty(dma1_m_axis_h2c_mty);
  mp_impl->dma1_m_axis_h2c_qid(dma1_m_axis_h2c_qid);
  mp_impl->dma1_m_axis_h2c_mdata(dma1_m_axis_h2c_mdata);
  mp_impl->dma1_m_axis_h2c_port_id(dma1_m_axis_h2c_port_id);
  mp_impl->dma1_axis_c2h_status_last(dma1_axis_c2h_status_last);
  mp_impl->dma1_axis_c2h_status_drop(dma1_axis_c2h_status_drop);
  mp_impl->dma1_axis_c2h_status_error(dma1_axis_c2h_status_error);
  mp_impl->dma1_axis_c2h_status_valid(dma1_axis_c2h_status_valid);
  mp_impl->dma1_axis_c2h_status_status_cmp(dma1_axis_c2h_status_status_cmp);
  mp_impl->dma1_axis_c2h_status_qid(dma1_axis_c2h_status_qid);
  mp_impl->dma1_qsts_out_vld(dma1_qsts_out_vld);
  mp_impl->dma1_qsts_out_op(dma1_qsts_out_op);
  mp_impl->dma1_qsts_out_rdy(dma1_qsts_out_rdy);
  mp_impl->dma1_qsts_out_qid(dma1_qsts_out_qid);
  mp_impl->dma1_qsts_out_data(dma1_qsts_out_data);
  mp_impl->dma1_qsts_out_port_id(dma1_qsts_out_port_id);
  mp_impl->dma1_dsc_crdt_in_rdy(dma1_dsc_crdt_in_rdy);
  mp_impl->dma1_dsc_crdt_in_dir(dma1_dsc_crdt_in_dir);
  mp_impl->dma1_dsc_crdt_in_valid(dma1_dsc_crdt_in_valid);
  mp_impl->dma1_dsc_crdt_in_fence(dma1_dsc_crdt_in_fence);
  mp_impl->dma1_dsc_crdt_in_qid(dma1_dsc_crdt_in_qid);
  mp_impl->dma1_dsc_crdt_in_crdt(dma1_dsc_crdt_in_crdt);
  mp_impl->dma1_usr_irq_ack(dma1_usr_irq_ack);
  mp_impl->dma1_usr_irq_fail(dma1_usr_irq_fail);
  mp_impl->dma1_usr_irq_valid(dma1_usr_irq_valid);
  mp_impl->dma1_usr_irq_vec(dma1_usr_irq_vec);
  mp_impl->dma1_usr_irq_fnc(dma1_usr_irq_fnc);
  mp_impl->dma1_tm_dsc_sts_mm(dma1_tm_dsc_sts_mm);
  mp_impl->dma1_tm_dsc_sts_qen(dma1_tm_dsc_sts_qen);
  mp_impl->dma1_tm_dsc_sts_byp(dma1_tm_dsc_sts_byp);
  mp_impl->dma1_tm_dsc_sts_dir(dma1_tm_dsc_sts_dir);
  mp_impl->dma1_tm_dsc_sts_error(dma1_tm_dsc_sts_error);
  mp_impl->dma1_tm_dsc_sts_valid(dma1_tm_dsc_sts_valid);
  mp_impl->dma1_tm_dsc_sts_qinv(dma1_tm_dsc_sts_qinv);
  mp_impl->dma1_tm_dsc_sts_irq_arm(dma1_tm_dsc_sts_irq_arm);
  mp_impl->dma1_tm_dsc_sts_rdy(dma1_tm_dsc_sts_rdy);
  mp_impl->dma1_tm_dsc_sts_qid(dma1_tm_dsc_sts_qid);
  mp_impl->dma1_tm_dsc_sts_avl(dma1_tm_dsc_sts_avl);
  mp_impl->dma1_tm_dsc_sts_pidx(dma1_tm_dsc_sts_pidx);
  mp_impl->dma1_tm_dsc_sts_port_id(dma1_tm_dsc_sts_port_id);
  mp_impl->dma1_usr_flr_set(dma1_usr_flr_set);
  mp_impl->dma1_usr_flr_clear(dma1_usr_flr_clear);
  mp_impl->dma1_usr_flr_fnc(dma1_usr_flr_fnc);
  mp_impl->dma1_usr_flr_done_vld(dma1_usr_flr_done_vld);
  mp_impl->dma1_usr_flr_done_fnc(dma1_usr_flr_done_fnc);
  mp_impl->PCIE1_GT_grx_n(PCIE1_GT_grx_n);
  mp_impl->PCIE1_GT_gtx_n(PCIE1_GT_gtx_n);
  mp_impl->PCIE1_GT_grx_p(PCIE1_GT_grx_p);
  mp_impl->PCIE1_GT_gtx_p(PCIE1_GT_gtx_p);
  mp_impl->gt_refclk1_clk_n(gt_refclk1_clk_n);
  mp_impl->gt_refclk1_clk_p(gt_refclk1_clk_p);
  mp_impl->pcie1_pipe_ep_tx_0(pcie1_pipe_ep_tx_0);
  mp_impl->pcie1_pipe_ep_rx_0(pcie1_pipe_ep_rx_0);
  mp_impl->pcie1_pipe_ep_tx_1(pcie1_pipe_ep_tx_1);
  mp_impl->pcie1_pipe_ep_rx_1(pcie1_pipe_ep_rx_1);
  mp_impl->pcie1_pipe_ep_tx_2(pcie1_pipe_ep_tx_2);
  mp_impl->pcie1_pipe_ep_rx_2(pcie1_pipe_ep_rx_2);
  mp_impl->pcie1_pipe_ep_tx_3(pcie1_pipe_ep_tx_3);
  mp_impl->pcie1_pipe_ep_rx_3(pcie1_pipe_ep_rx_3);
  mp_impl->pcie1_pipe_ep_tx_4(pcie1_pipe_ep_tx_4);
  mp_impl->pcie1_pipe_ep_rx_4(pcie1_pipe_ep_rx_4);
  mp_impl->pcie1_pipe_ep_tx_5(pcie1_pipe_ep_tx_5);
  mp_impl->pcie1_pipe_ep_rx_5(pcie1_pipe_ep_rx_5);
  mp_impl->pcie1_pipe_ep_tx_6(pcie1_pipe_ep_tx_6);
  mp_impl->pcie1_pipe_ep_rx_6(pcie1_pipe_ep_rx_6);
  mp_impl->pcie1_pipe_ep_tx_7(pcie1_pipe_ep_tx_7);
  mp_impl->pcie1_pipe_ep_rx_7(pcie1_pipe_ep_rx_7);
  mp_impl->pcie1_pipe_ep_tx_8(pcie1_pipe_ep_tx_8);
  mp_impl->pcie1_pipe_ep_rx_8(pcie1_pipe_ep_rx_8);
  mp_impl->pcie1_pipe_ep_tx_9(pcie1_pipe_ep_tx_9);
  mp_impl->pcie1_pipe_ep_rx_9(pcie1_pipe_ep_rx_9);
  mp_impl->pcie1_pipe_ep_tx_10(pcie1_pipe_ep_tx_10);
  mp_impl->pcie1_pipe_ep_rx_10(pcie1_pipe_ep_rx_10);
  mp_impl->pcie1_pipe_ep_tx_11(pcie1_pipe_ep_tx_11);
  mp_impl->pcie1_pipe_ep_rx_11(pcie1_pipe_ep_rx_11);
  mp_impl->pcie1_pipe_ep_tx_12(pcie1_pipe_ep_tx_12);
  mp_impl->pcie1_pipe_ep_rx_12(pcie1_pipe_ep_rx_12);
  mp_impl->pcie1_pipe_ep_tx_13(pcie1_pipe_ep_tx_13);
  mp_impl->pcie1_pipe_ep_rx_13(pcie1_pipe_ep_rx_13);
  mp_impl->pcie1_pipe_ep_tx_14(pcie1_pipe_ep_tx_14);
  mp_impl->pcie1_pipe_ep_rx_14(pcie1_pipe_ep_rx_14);
  mp_impl->pcie1_pipe_ep_tx_15(pcie1_pipe_ep_tx_15);
  mp_impl->pcie1_pipe_ep_rx_15(pcie1_pipe_ep_rx_15);
  mp_impl->pcie1_pipe_ep_commands_in(pcie1_pipe_ep_commands_in);
  mp_impl->pcie1_pipe_ep_commands_out(pcie1_pipe_ep_commands_out);

  // initialize transactors
  mp_M_AXI_FPD_transactor = NULL;
  mp_CPM_PCIE_NOC_0_transactor = NULL;
  mp_CPM_PCIE_NOC_1_transactor = NULL;
  mp_dma1_st_rx_msg_transactor = NULL;

  // Instantiate Socket Stubs

  // configure M_AXI_FPD_transactor
    xsc::common_cpp::properties M_AXI_FPD_transactor_param_props;
    M_AXI_FPD_transactor_param_props.addLong("DATA_WIDTH", "128");
    M_AXI_FPD_transactor_param_props.addLong("FREQ_HZ", "429162384");
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
    M_AXI_FPD_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_FPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_FPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_FPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_FPD_transactor_param_props.addString("CLK_DOMAIN", "bd_a532_pspmc_0_0_pl0_ref_clk");
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
  m_M_AXI_FPD_transactor_rst_signal.write(1);
  mp_M_AXI_FPD_transactor->RST(m_M_AXI_FPD_transactor_rst_signal);
  // configure CPM_PCIE_NOC_0_transactor
    xsc::common_cpp::properties CPM_PCIE_NOC_0_transactor_param_props;
    CPM_PCIE_NOC_0_transactor_param_props.addLong("DATA_WIDTH", "128");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("FREQ_HZ", "1000000000");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("ID_WIDTH", "16");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("ADDR_WIDTH", "64");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("WUSER_WIDTH", "17");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("RUSER_WIDTH", "17");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("BUSER_WIDTH", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_BURST", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_LOCK", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_PROT", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_CACHE", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_QOS", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_REGION", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_WSTRB", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_BRESP", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_RRESP", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_SIZE", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_RESET", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addFloat("PHASE", "0.0");
    CPM_PCIE_NOC_0_transactor_param_props.addString("PROTOCOL", "AXI4");
    CPM_PCIE_NOC_0_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    CPM_PCIE_NOC_0_transactor_param_props.addString("CLK_DOMAIN", "bd_a532_pspmc_0_0_cpm_pcie_noc_axi0_clk");
    CPM_PCIE_NOC_0_transactor_param_props.addString("CATEGORY", "noc");
    CPM_PCIE_NOC_0_transactor_param_props.addString("MY_CATEGORY", "ps_pcie");
    CPM_PCIE_NOC_0_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_PCIE_TO_NOC_NMU");
    CPM_PCIE_NOC_0_transactor_param_props.addString("HD_TANDEM", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addString("INDEX", "0");

    mp_CPM_PCIE_NOC_0_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,17>("CPM_PCIE_NOC_0_transactor", CPM_PCIE_NOC_0_transactor_param_props);
  mp_CPM_PCIE_NOC_0_transactor->ARADDR(CPM_PCIE_NOC_0_araddr);
  mp_CPM_PCIE_NOC_0_transactor->ARBURST(CPM_PCIE_NOC_0_arburst);
  mp_CPM_PCIE_NOC_0_transactor->ARCACHE(CPM_PCIE_NOC_0_arcache);
  mp_CPM_PCIE_NOC_0_transactor->ARID(CPM_PCIE_NOC_0_arid);
  mp_CPM_PCIE_NOC_0_transactor->ARLEN(CPM_PCIE_NOC_0_arlen);
  mp_CPM_PCIE_NOC_0_transactor->ARLOCK(CPM_PCIE_NOC_0_arlock);
  mp_CPM_PCIE_NOC_0_transactor->ARPROT(CPM_PCIE_NOC_0_arprot);
  mp_CPM_PCIE_NOC_0_transactor->ARQOS(CPM_PCIE_NOC_0_arqos);
  mp_CPM_PCIE_NOC_0_transactor->ARSIZE(CPM_PCIE_NOC_0_arsize);
  mp_CPM_PCIE_NOC_0_transactor->ARUSER(CPM_PCIE_NOC_0_aruser);
  mp_CPM_PCIE_NOC_0_transactor->ARVALID(CPM_PCIE_NOC_0_arvalid);
  mp_CPM_PCIE_NOC_0_transactor->AWADDR(CPM_PCIE_NOC_0_awaddr);
  mp_CPM_PCIE_NOC_0_transactor->AWBURST(CPM_PCIE_NOC_0_awburst);
  mp_CPM_PCIE_NOC_0_transactor->AWCACHE(CPM_PCIE_NOC_0_awcache);
  mp_CPM_PCIE_NOC_0_transactor->AWID(CPM_PCIE_NOC_0_awid);
  mp_CPM_PCIE_NOC_0_transactor->AWLEN(CPM_PCIE_NOC_0_awlen);
  mp_CPM_PCIE_NOC_0_transactor->AWLOCK(CPM_PCIE_NOC_0_awlock);
  mp_CPM_PCIE_NOC_0_transactor->AWPROT(CPM_PCIE_NOC_0_awprot);
  mp_CPM_PCIE_NOC_0_transactor->AWQOS(CPM_PCIE_NOC_0_awqos);
  mp_CPM_PCIE_NOC_0_transactor->AWSIZE(CPM_PCIE_NOC_0_awsize);
  mp_CPM_PCIE_NOC_0_transactor->AWUSER(CPM_PCIE_NOC_0_awuser);
  mp_CPM_PCIE_NOC_0_transactor->AWVALID(CPM_PCIE_NOC_0_awvalid);
  mp_CPM_PCIE_NOC_0_transactor->BREADY(CPM_PCIE_NOC_0_bready);
  mp_CPM_PCIE_NOC_0_transactor->RREADY(CPM_PCIE_NOC_0_rready);
  mp_CPM_PCIE_NOC_0_transactor->WDATA(CPM_PCIE_NOC_0_wdata);
  mp_CPM_PCIE_NOC_0_transactor->WLAST(CPM_PCIE_NOC_0_wlast);
  mp_CPM_PCIE_NOC_0_transactor->WSTRB(CPM_PCIE_NOC_0_wstrb);
  mp_CPM_PCIE_NOC_0_transactor->WVALID(CPM_PCIE_NOC_0_wvalid);
  mp_CPM_PCIE_NOC_0_transactor->ARREADY(CPM_PCIE_NOC_0_arready);
  mp_CPM_PCIE_NOC_0_transactor->AWREADY(CPM_PCIE_NOC_0_awready);
  mp_CPM_PCIE_NOC_0_transactor->BID(CPM_PCIE_NOC_0_bid);
  mp_CPM_PCIE_NOC_0_transactor->BRESP(CPM_PCIE_NOC_0_bresp);
  mp_CPM_PCIE_NOC_0_transactor->BVALID(CPM_PCIE_NOC_0_bvalid);
  mp_CPM_PCIE_NOC_0_transactor->RDATA(CPM_PCIE_NOC_0_rdata);
  mp_CPM_PCIE_NOC_0_transactor->RID(CPM_PCIE_NOC_0_rid);
  mp_CPM_PCIE_NOC_0_transactor->RLAST(CPM_PCIE_NOC_0_rlast);
  mp_CPM_PCIE_NOC_0_transactor->RRESP(CPM_PCIE_NOC_0_rresp);
  mp_CPM_PCIE_NOC_0_transactor->RVALID(CPM_PCIE_NOC_0_rvalid);
  mp_CPM_PCIE_NOC_0_transactor->RUSER(CPM_PCIE_NOC_0_ruser);
  mp_CPM_PCIE_NOC_0_transactor->WUSER(CPM_PCIE_NOC_0_wuser);
  mp_CPM_PCIE_NOC_0_transactor->WREADY(CPM_PCIE_NOC_0_wready);
  mp_CPM_PCIE_NOC_0_transactor->CLK(cpm_pcie_noc_axi0_clk);
  m_CPM_PCIE_NOC_0_transactor_rst_signal.write(1);
  mp_CPM_PCIE_NOC_0_transactor->RST(m_CPM_PCIE_NOC_0_transactor_rst_signal);
  // configure CPM_PCIE_NOC_1_transactor
    xsc::common_cpp::properties CPM_PCIE_NOC_1_transactor_param_props;
    CPM_PCIE_NOC_1_transactor_param_props.addLong("DATA_WIDTH", "128");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("FREQ_HZ", "1000000000");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("ID_WIDTH", "16");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("ADDR_WIDTH", "64");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("WUSER_WIDTH", "17");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("RUSER_WIDTH", "17");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("BUSER_WIDTH", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_BURST", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_LOCK", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_PROT", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_CACHE", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_QOS", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_REGION", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_WSTRB", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_BRESP", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_RRESP", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_SIZE", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_RESET", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addFloat("PHASE", "0.0");
    CPM_PCIE_NOC_1_transactor_param_props.addString("PROTOCOL", "AXI4");
    CPM_PCIE_NOC_1_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    CPM_PCIE_NOC_1_transactor_param_props.addString("CLK_DOMAIN", "bd_a532_pspmc_0_0_cpm_pcie_noc_axi1_clk");
    CPM_PCIE_NOC_1_transactor_param_props.addString("CATEGORY", "noc");
    CPM_PCIE_NOC_1_transactor_param_props.addString("MY_CATEGORY", "ps_pcie");
    CPM_PCIE_NOC_1_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_PCIE_TO_NOC_NMU");
    CPM_PCIE_NOC_1_transactor_param_props.addString("HD_TANDEM", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addString("INDEX", "1");

    mp_CPM_PCIE_NOC_1_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,17>("CPM_PCIE_NOC_1_transactor", CPM_PCIE_NOC_1_transactor_param_props);
  mp_CPM_PCIE_NOC_1_transactor->ARADDR(CPM_PCIE_NOC_1_araddr);
  mp_CPM_PCIE_NOC_1_transactor->ARBURST(CPM_PCIE_NOC_1_arburst);
  mp_CPM_PCIE_NOC_1_transactor->ARCACHE(CPM_PCIE_NOC_1_arcache);
  mp_CPM_PCIE_NOC_1_transactor->ARID(CPM_PCIE_NOC_1_arid);
  mp_CPM_PCIE_NOC_1_transactor->ARLEN(CPM_PCIE_NOC_1_arlen);
  mp_CPM_PCIE_NOC_1_transactor->ARLOCK(CPM_PCIE_NOC_1_arlock);
  mp_CPM_PCIE_NOC_1_transactor->ARPROT(CPM_PCIE_NOC_1_arprot);
  mp_CPM_PCIE_NOC_1_transactor->ARQOS(CPM_PCIE_NOC_1_arqos);
  mp_CPM_PCIE_NOC_1_transactor->ARSIZE(CPM_PCIE_NOC_1_arsize);
  mp_CPM_PCIE_NOC_1_transactor->ARUSER(CPM_PCIE_NOC_1_aruser);
  mp_CPM_PCIE_NOC_1_transactor->ARVALID(CPM_PCIE_NOC_1_arvalid);
  mp_CPM_PCIE_NOC_1_transactor->AWADDR(CPM_PCIE_NOC_1_awaddr);
  mp_CPM_PCIE_NOC_1_transactor->AWBURST(CPM_PCIE_NOC_1_awburst);
  mp_CPM_PCIE_NOC_1_transactor->AWCACHE(CPM_PCIE_NOC_1_awcache);
  mp_CPM_PCIE_NOC_1_transactor->AWID(CPM_PCIE_NOC_1_awid);
  mp_CPM_PCIE_NOC_1_transactor->AWLEN(CPM_PCIE_NOC_1_awlen);
  mp_CPM_PCIE_NOC_1_transactor->AWLOCK(CPM_PCIE_NOC_1_awlock);
  mp_CPM_PCIE_NOC_1_transactor->AWPROT(CPM_PCIE_NOC_1_awprot);
  mp_CPM_PCIE_NOC_1_transactor->AWQOS(CPM_PCIE_NOC_1_awqos);
  mp_CPM_PCIE_NOC_1_transactor->AWSIZE(CPM_PCIE_NOC_1_awsize);
  mp_CPM_PCIE_NOC_1_transactor->AWUSER(CPM_PCIE_NOC_1_awuser);
  mp_CPM_PCIE_NOC_1_transactor->AWVALID(CPM_PCIE_NOC_1_awvalid);
  mp_CPM_PCIE_NOC_1_transactor->BREADY(CPM_PCIE_NOC_1_bready);
  mp_CPM_PCIE_NOC_1_transactor->RREADY(CPM_PCIE_NOC_1_rready);
  mp_CPM_PCIE_NOC_1_transactor->WDATA(CPM_PCIE_NOC_1_wdata);
  mp_CPM_PCIE_NOC_1_transactor->WLAST(CPM_PCIE_NOC_1_wlast);
  mp_CPM_PCIE_NOC_1_transactor->WSTRB(CPM_PCIE_NOC_1_wstrb);
  mp_CPM_PCIE_NOC_1_transactor->WVALID(CPM_PCIE_NOC_1_wvalid);
  mp_CPM_PCIE_NOC_1_transactor->ARREADY(CPM_PCIE_NOC_1_arready);
  mp_CPM_PCIE_NOC_1_transactor->AWREADY(CPM_PCIE_NOC_1_awready);
  mp_CPM_PCIE_NOC_1_transactor->BID(CPM_PCIE_NOC_1_bid);
  mp_CPM_PCIE_NOC_1_transactor->BRESP(CPM_PCIE_NOC_1_bresp);
  mp_CPM_PCIE_NOC_1_transactor->BVALID(CPM_PCIE_NOC_1_bvalid);
  mp_CPM_PCIE_NOC_1_transactor->RDATA(CPM_PCIE_NOC_1_rdata);
  mp_CPM_PCIE_NOC_1_transactor->RID(CPM_PCIE_NOC_1_rid);
  mp_CPM_PCIE_NOC_1_transactor->RLAST(CPM_PCIE_NOC_1_rlast);
  mp_CPM_PCIE_NOC_1_transactor->RRESP(CPM_PCIE_NOC_1_rresp);
  mp_CPM_PCIE_NOC_1_transactor->RVALID(CPM_PCIE_NOC_1_rvalid);
  mp_CPM_PCIE_NOC_1_transactor->RUSER(CPM_PCIE_NOC_1_ruser);
  mp_CPM_PCIE_NOC_1_transactor->WUSER(CPM_PCIE_NOC_1_wuser);
  mp_CPM_PCIE_NOC_1_transactor->WREADY(CPM_PCIE_NOC_1_wready);
  mp_CPM_PCIE_NOC_1_transactor->CLK(cpm_pcie_noc_axi1_clk);
  m_CPM_PCIE_NOC_1_transactor_rst_signal.write(1);
  mp_CPM_PCIE_NOC_1_transactor->RST(m_CPM_PCIE_NOC_1_transactor_rst_signal);
  // configure dma1_st_rx_msg_transactor
    xsc::common_cpp::properties dma1_st_rx_msg_transactor_param_props;
    dma1_st_rx_msg_transactor_param_props.addLong("TDATA_NUM_BYTES", "4");
    dma1_st_rx_msg_transactor_param_props.addLong("TDEST_WIDTH", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("TID_WIDTH", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("TUSER_WIDTH", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_TREADY", "1");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_TSTRB", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_TKEEP", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_TLAST", "1");
    dma1_st_rx_msg_transactor_param_props.addLong("FREQ_HZ", "429162384");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_RESET", "1");
    dma1_st_rx_msg_transactor_param_props.addFloat("PHASE", "0.0");
    dma1_st_rx_msg_transactor_param_props.addString("CLK_DOMAIN", "bd_a532_pspmc_0_0_pl0_ref_clk");
    dma1_st_rx_msg_transactor_param_props.addString("LAYERED_METADATA", "undef");
    dma1_st_rx_msg_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_dma1_st_rx_msg_transactor = new xtlm::xaxis_xtlm2pin_t<4,1,1,1,1,1>("dma1_st_rx_msg_transactor", dma1_st_rx_msg_transactor_param_props);
  mp_dma1_st_rx_msg_transactor->TLAST(dma1_st_rx_msg_tlast);
  mp_dma1_st_rx_msg_transactor->TVALID(dma1_st_rx_msg_tvalid);
  mp_dma1_st_rx_msg_transactor->TREADY(dma1_st_rx_msg_tready);
  mp_dma1_st_rx_msg_transactor->TDATA(dma1_st_rx_msg_tdata);
  mp_dma1_st_rx_msg_transactor->CLK(dma1_intrfc_clk);
  mp_dma1_st_rx_msg_transactor->RST(dma1_axi_aresetn);

  // initialize transactors stubs
  M_AXI_FPD_transactor_initiator_wr_socket_stub = nullptr;
  M_AXI_FPD_transactor_initiator_rd_socket_stub = nullptr;
  CPM_PCIE_NOC_0_transactor_initiator_wr_socket_stub = nullptr;
  CPM_PCIE_NOC_0_transactor_initiator_rd_socket_stub = nullptr;
  CPM_PCIE_NOC_1_transactor_initiator_wr_socket_stub = nullptr;
  CPM_PCIE_NOC_1_transactor_initiator_rd_socket_stub = nullptr;
  dma1_st_rx_msg_transactor_initiator_socket_stub = nullptr;

}

void cpm_qdma_ep_part_versal_cips_0_0::before_end_of_elaboration()
{
  // configure 'M_AXI_FPD' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("cpm_qdma_ep_part_versal_cips_0_0", "M_AXI_FPD_TLM_MODE") != 1)
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

  // configure 'CPM_PCIE_NOC_0' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("cpm_qdma_ep_part_versal_cips_0_0", "CPM_PCIE_NOC_0_TLM_MODE") != 1)
  {
    mp_impl->CPM_PCIE_NOC_0_tlm_aximm_read_socket->bind(*(mp_CPM_PCIE_NOC_0_transactor->rd_socket));
    mp_impl->CPM_PCIE_NOC_0_tlm_aximm_write_socket->bind(*(mp_CPM_PCIE_NOC_0_transactor->wr_socket));
  
  }
  else
  {
    CPM_PCIE_NOC_0_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    CPM_PCIE_NOC_0_transactor_initiator_wr_socket_stub->bind(*(mp_CPM_PCIE_NOC_0_transactor->wr_socket));
    CPM_PCIE_NOC_0_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    CPM_PCIE_NOC_0_transactor_initiator_rd_socket_stub->bind(*(mp_CPM_PCIE_NOC_0_transactor->rd_socket));
    mp_CPM_PCIE_NOC_0_transactor->disable_transactor();
  }

  // configure 'CPM_PCIE_NOC_1' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("cpm_qdma_ep_part_versal_cips_0_0", "CPM_PCIE_NOC_1_TLM_MODE") != 1)
  {
    mp_impl->CPM_PCIE_NOC_1_tlm_aximm_read_socket->bind(*(mp_CPM_PCIE_NOC_1_transactor->rd_socket));
    mp_impl->CPM_PCIE_NOC_1_tlm_aximm_write_socket->bind(*(mp_CPM_PCIE_NOC_1_transactor->wr_socket));
  
  }
  else
  {
    CPM_PCIE_NOC_1_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    CPM_PCIE_NOC_1_transactor_initiator_wr_socket_stub->bind(*(mp_CPM_PCIE_NOC_1_transactor->wr_socket));
    CPM_PCIE_NOC_1_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    CPM_PCIE_NOC_1_transactor_initiator_rd_socket_stub->bind(*(mp_CPM_PCIE_NOC_1_transactor->rd_socket));
    mp_CPM_PCIE_NOC_1_transactor->disable_transactor();
  }

  // configure 'dma1_st_rx_msg' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("cpm_qdma_ep_part_versal_cips_0_0", "dma1_st_rx_msg_TLM_MODE") != 1)
  {
    mp_impl->dma1_st_rx_msg_tlm_axis_socket->bind(*(mp_dma1_st_rx_msg_transactor->socket));
  
  }
  else
  {
    dma1_st_rx_msg_transactor_initiator_socket_stub = new xtlm::xtlm_axis_initiator_stub("socket",0);
    dma1_st_rx_msg_transactor_initiator_socket_stub->bind(*(mp_dma1_st_rx_msg_transactor->socket));
    mp_dma1_st_rx_msg_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
cpm_qdma_ep_part_versal_cips_0_0::cpm_qdma_ep_part_versal_cips_0_0(const sc_core::sc_module_name& nm) : cpm_qdma_ep_part_versal_cips_0_0_sc(nm),  pl0_ref_clk("pl0_ref_clk"), pl1_ref_clk("pl1_ref_clk"), pl0_resetn("pl0_resetn"), m_axi_fpd_aclk("m_axi_fpd_aclk"), cpm_pcie_noc_axi0_clk("cpm_pcie_noc_axi0_clk"), cpm_pcie_noc_axi1_clk("cpm_pcie_noc_axi1_clk"), dma1_intrfc_clk("dma1_intrfc_clk"), cpm_misc_irq("cpm_misc_irq"), cpm_cor_irq("cpm_cor_irq"), cpm_uncor_irq("cpm_uncor_irq"), cpm_irq0("cpm_irq0"), cpm_irq1("cpm_irq1"), dma1_axi_aresetn("dma1_axi_aresetn"), dma1_intrfc_resetn("dma1_intrfc_resetn"), M_AXI_FPD_awid("M_AXI_FPD_awid"), M_AXI_FPD_awaddr("M_AXI_FPD_awaddr"), M_AXI_FPD_awlen("M_AXI_FPD_awlen"), M_AXI_FPD_awsize("M_AXI_FPD_awsize"), M_AXI_FPD_awburst("M_AXI_FPD_awburst"), M_AXI_FPD_awlock("M_AXI_FPD_awlock"), M_AXI_FPD_awcache("M_AXI_FPD_awcache"), M_AXI_FPD_awprot("M_AXI_FPD_awprot"), M_AXI_FPD_awvalid("M_AXI_FPD_awvalid"), M_AXI_FPD_awuser("M_AXI_FPD_awuser"), M_AXI_FPD_awready("M_AXI_FPD_awready"), M_AXI_FPD_wlast("M_AXI_FPD_wlast"), M_AXI_FPD_wvalid("M_AXI_FPD_wvalid"), M_AXI_FPD_wready("M_AXI_FPD_wready"), M_AXI_FPD_bid("M_AXI_FPD_bid"), M_AXI_FPD_bresp("M_AXI_FPD_bresp"), M_AXI_FPD_bvalid("M_AXI_FPD_bvalid"), M_AXI_FPD_bready("M_AXI_FPD_bready"), M_AXI_FPD_arid("M_AXI_FPD_arid"), M_AXI_FPD_araddr("M_AXI_FPD_araddr"), M_AXI_FPD_arlen("M_AXI_FPD_arlen"), M_AXI_FPD_arsize("M_AXI_FPD_arsize"), M_AXI_FPD_arburst("M_AXI_FPD_arburst"), M_AXI_FPD_arlock("M_AXI_FPD_arlock"), M_AXI_FPD_arcache("M_AXI_FPD_arcache"), M_AXI_FPD_arprot("M_AXI_FPD_arprot"), M_AXI_FPD_arvalid("M_AXI_FPD_arvalid"), M_AXI_FPD_aruser("M_AXI_FPD_aruser"), M_AXI_FPD_arready("M_AXI_FPD_arready"), M_AXI_FPD_rid("M_AXI_FPD_rid"), M_AXI_FPD_rresp("M_AXI_FPD_rresp"), M_AXI_FPD_rlast("M_AXI_FPD_rlast"), M_AXI_FPD_rvalid("M_AXI_FPD_rvalid"), M_AXI_FPD_rready("M_AXI_FPD_rready"), M_AXI_FPD_awqos("M_AXI_FPD_awqos"), M_AXI_FPD_arqos("M_AXI_FPD_arqos"), M_AXI_FPD_wdata("M_AXI_FPD_wdata"), M_AXI_FPD_wstrb("M_AXI_FPD_wstrb"), M_AXI_FPD_rdata("M_AXI_FPD_rdata"), CPM_PCIE_NOC_0_araddr("CPM_PCIE_NOC_0_araddr"), CPM_PCIE_NOC_0_arburst("CPM_PCIE_NOC_0_arburst"), CPM_PCIE_NOC_0_arcache("CPM_PCIE_NOC_0_arcache"), CPM_PCIE_NOC_0_arid("CPM_PCIE_NOC_0_arid"), CPM_PCIE_NOC_0_arlen("CPM_PCIE_NOC_0_arlen"), CPM_PCIE_NOC_0_arlock("CPM_PCIE_NOC_0_arlock"), CPM_PCIE_NOC_0_arprot("CPM_PCIE_NOC_0_arprot"), CPM_PCIE_NOC_0_arqos("CPM_PCIE_NOC_0_arqos"), CPM_PCIE_NOC_0_arsize("CPM_PCIE_NOC_0_arsize"), CPM_PCIE_NOC_0_aruser("CPM_PCIE_NOC_0_aruser"), CPM_PCIE_NOC_0_arvalid("CPM_PCIE_NOC_0_arvalid"), CPM_PCIE_NOC_0_awaddr("CPM_PCIE_NOC_0_awaddr"), CPM_PCIE_NOC_0_awburst("CPM_PCIE_NOC_0_awburst"), CPM_PCIE_NOC_0_awcache("CPM_PCIE_NOC_0_awcache"), CPM_PCIE_NOC_0_awid("CPM_PCIE_NOC_0_awid"), CPM_PCIE_NOC_0_awlen("CPM_PCIE_NOC_0_awlen"), CPM_PCIE_NOC_0_awlock("CPM_PCIE_NOC_0_awlock"), CPM_PCIE_NOC_0_awprot("CPM_PCIE_NOC_0_awprot"), CPM_PCIE_NOC_0_awqos("CPM_PCIE_NOC_0_awqos"), CPM_PCIE_NOC_0_awsize("CPM_PCIE_NOC_0_awsize"), CPM_PCIE_NOC_0_awuser("CPM_PCIE_NOC_0_awuser"), CPM_PCIE_NOC_0_awvalid("CPM_PCIE_NOC_0_awvalid"), CPM_PCIE_NOC_0_bready("CPM_PCIE_NOC_0_bready"), CPM_PCIE_NOC_0_rready("CPM_PCIE_NOC_0_rready"), CPM_PCIE_NOC_0_wdata("CPM_PCIE_NOC_0_wdata"), CPM_PCIE_NOC_0_wlast("CPM_PCIE_NOC_0_wlast"), CPM_PCIE_NOC_0_wstrb("CPM_PCIE_NOC_0_wstrb"), CPM_PCIE_NOC_0_wvalid("CPM_PCIE_NOC_0_wvalid"), CPM_PCIE_NOC_0_arready("CPM_PCIE_NOC_0_arready"), CPM_PCIE_NOC_0_awready("CPM_PCIE_NOC_0_awready"), CPM_PCIE_NOC_0_bid("CPM_PCIE_NOC_0_bid"), CPM_PCIE_NOC_0_bresp("CPM_PCIE_NOC_0_bresp"), CPM_PCIE_NOC_0_bvalid("CPM_PCIE_NOC_0_bvalid"), CPM_PCIE_NOC_0_rdata("CPM_PCIE_NOC_0_rdata"), CPM_PCIE_NOC_0_rid("CPM_PCIE_NOC_0_rid"), CPM_PCIE_NOC_0_rlast("CPM_PCIE_NOC_0_rlast"), CPM_PCIE_NOC_0_rresp("CPM_PCIE_NOC_0_rresp"), CPM_PCIE_NOC_0_rvalid("CPM_PCIE_NOC_0_rvalid"), CPM_PCIE_NOC_0_ruser("CPM_PCIE_NOC_0_ruser"), CPM_PCIE_NOC_0_wuser("CPM_PCIE_NOC_0_wuser"), CPM_PCIE_NOC_0_wready("CPM_PCIE_NOC_0_wready"), CPM_PCIE_NOC_1_araddr("CPM_PCIE_NOC_1_araddr"), CPM_PCIE_NOC_1_arburst("CPM_PCIE_NOC_1_arburst"), CPM_PCIE_NOC_1_arcache("CPM_PCIE_NOC_1_arcache"), CPM_PCIE_NOC_1_arid("CPM_PCIE_NOC_1_arid"), CPM_PCIE_NOC_1_arlen("CPM_PCIE_NOC_1_arlen"), CPM_PCIE_NOC_1_arlock("CPM_PCIE_NOC_1_arlock"), CPM_PCIE_NOC_1_arprot("CPM_PCIE_NOC_1_arprot"), CPM_PCIE_NOC_1_arqos("CPM_PCIE_NOC_1_arqos"), CPM_PCIE_NOC_1_arsize("CPM_PCIE_NOC_1_arsize"), CPM_PCIE_NOC_1_aruser("CPM_PCIE_NOC_1_aruser"), CPM_PCIE_NOC_1_arvalid("CPM_PCIE_NOC_1_arvalid"), CPM_PCIE_NOC_1_awaddr("CPM_PCIE_NOC_1_awaddr"), CPM_PCIE_NOC_1_awburst("CPM_PCIE_NOC_1_awburst"), CPM_PCIE_NOC_1_awcache("CPM_PCIE_NOC_1_awcache"), CPM_PCIE_NOC_1_awid("CPM_PCIE_NOC_1_awid"), CPM_PCIE_NOC_1_awlen("CPM_PCIE_NOC_1_awlen"), CPM_PCIE_NOC_1_awlock("CPM_PCIE_NOC_1_awlock"), CPM_PCIE_NOC_1_awprot("CPM_PCIE_NOC_1_awprot"), CPM_PCIE_NOC_1_awqos("CPM_PCIE_NOC_1_awqos"), CPM_PCIE_NOC_1_awsize("CPM_PCIE_NOC_1_awsize"), CPM_PCIE_NOC_1_awuser("CPM_PCIE_NOC_1_awuser"), CPM_PCIE_NOC_1_awvalid("CPM_PCIE_NOC_1_awvalid"), CPM_PCIE_NOC_1_bready("CPM_PCIE_NOC_1_bready"), CPM_PCIE_NOC_1_rready("CPM_PCIE_NOC_1_rready"), CPM_PCIE_NOC_1_wdata("CPM_PCIE_NOC_1_wdata"), CPM_PCIE_NOC_1_wlast("CPM_PCIE_NOC_1_wlast"), CPM_PCIE_NOC_1_wstrb("CPM_PCIE_NOC_1_wstrb"), CPM_PCIE_NOC_1_wvalid("CPM_PCIE_NOC_1_wvalid"), CPM_PCIE_NOC_1_arready("CPM_PCIE_NOC_1_arready"), CPM_PCIE_NOC_1_awready("CPM_PCIE_NOC_1_awready"), CPM_PCIE_NOC_1_bid("CPM_PCIE_NOC_1_bid"), CPM_PCIE_NOC_1_bresp("CPM_PCIE_NOC_1_bresp"), CPM_PCIE_NOC_1_bvalid("CPM_PCIE_NOC_1_bvalid"), CPM_PCIE_NOC_1_rdata("CPM_PCIE_NOC_1_rdata"), CPM_PCIE_NOC_1_rid("CPM_PCIE_NOC_1_rid"), CPM_PCIE_NOC_1_rlast("CPM_PCIE_NOC_1_rlast"), CPM_PCIE_NOC_1_rresp("CPM_PCIE_NOC_1_rresp"), CPM_PCIE_NOC_1_rvalid("CPM_PCIE_NOC_1_rvalid"), CPM_PCIE_NOC_1_ruser("CPM_PCIE_NOC_1_ruser"), CPM_PCIE_NOC_1_wuser("CPM_PCIE_NOC_1_wuser"), CPM_PCIE_NOC_1_wready("CPM_PCIE_NOC_1_wready"), dma1_mgmt_cpl_vld("dma1_mgmt_cpl_vld"), dma1_mgmt_req_rdy("dma1_mgmt_req_rdy"), dma1_mgmt_cpl_rdy("dma1_mgmt_cpl_rdy"), dma1_mgmt_req_vld("dma1_mgmt_req_vld"), dma1_mgmt_cpl_sts("dma1_mgmt_cpl_sts"), dma1_mgmt_cpl_dat("dma1_mgmt_cpl_dat"), dma1_mgmt_req_cmd("dma1_mgmt_req_cmd"), dma1_mgmt_req_fnc("dma1_mgmt_req_fnc"), dma1_mgmt_req_msc("dma1_mgmt_req_msc"), dma1_mgmt_req_adr("dma1_mgmt_req_adr"), dma1_mgmt_req_dat("dma1_mgmt_req_dat"), dma1_st_rx_msg_tlast("dma1_st_rx_msg_tlast"), dma1_st_rx_msg_tvalid("dma1_st_rx_msg_tvalid"), dma1_st_rx_msg_tready("dma1_st_rx_msg_tready"), dma1_st_rx_msg_tdata("dma1_st_rx_msg_tdata"), dma1_c2h_byp_in_mm_0_ready("dma1_c2h_byp_in_mm_0_ready"), dma1_c2h_byp_in_mm_0_sdi("dma1_c2h_byp_in_mm_0_sdi"), dma1_c2h_byp_in_mm_0_valid("dma1_c2h_byp_in_mm_0_valid"), dma1_c2h_byp_in_mm_0_error("dma1_c2h_byp_in_mm_0_error"), dma1_c2h_byp_in_mm_0_no_dma("dma1_c2h_byp_in_mm_0_no_dma"), dma1_c2h_byp_in_mm_0_mrkr_req("dma1_c2h_byp_in_mm_0_mrkr_req"), dma1_c2h_byp_in_mm_0_len("dma1_c2h_byp_in_mm_0_len"), dma1_c2h_byp_in_mm_0_qid("dma1_c2h_byp_in_mm_0_qid"), dma1_c2h_byp_in_mm_0_func("dma1_c2h_byp_in_mm_0_func"), dma1_c2h_byp_in_mm_0_cidx("dma1_c2h_byp_in_mm_0_cidx"), dma1_c2h_byp_in_mm_0_radr("dma1_c2h_byp_in_mm_0_radr"), dma1_c2h_byp_in_mm_0_wadr("dma1_c2h_byp_in_mm_0_wadr"), dma1_c2h_byp_in_mm_0_port_id("dma1_c2h_byp_in_mm_0_port_id"), dma1_c2h_byp_in_mm_1_ready("dma1_c2h_byp_in_mm_1_ready"), dma1_c2h_byp_in_mm_1_sdi("dma1_c2h_byp_in_mm_1_sdi"), dma1_c2h_byp_in_mm_1_valid("dma1_c2h_byp_in_mm_1_valid"), dma1_c2h_byp_in_mm_1_error("dma1_c2h_byp_in_mm_1_error"), dma1_c2h_byp_in_mm_1_no_dma("dma1_c2h_byp_in_mm_1_no_dma"), dma1_c2h_byp_in_mm_1_mrkr_req("dma1_c2h_byp_in_mm_1_mrkr_req"), dma1_c2h_byp_in_mm_1_len("dma1_c2h_byp_in_mm_1_len"), dma1_c2h_byp_in_mm_1_qid("dma1_c2h_byp_in_mm_1_qid"), dma1_c2h_byp_in_mm_1_func("dma1_c2h_byp_in_mm_1_func"), dma1_c2h_byp_in_mm_1_cidx("dma1_c2h_byp_in_mm_1_cidx"), dma1_c2h_byp_in_mm_1_radr("dma1_c2h_byp_in_mm_1_radr"), dma1_c2h_byp_in_mm_1_wadr("dma1_c2h_byp_in_mm_1_wadr"), dma1_c2h_byp_in_mm_1_port_id("dma1_c2h_byp_in_mm_1_port_id"), dma1_c2h_byp_in_st_csh_ready("dma1_c2h_byp_in_st_csh_ready"), dma1_c2h_byp_in_st_csh_valid("dma1_c2h_byp_in_st_csh_valid"), dma1_c2h_byp_in_st_csh_error("dma1_c2h_byp_in_st_csh_error"), dma1_c2h_byp_in_st_csh_qid("dma1_c2h_byp_in_st_csh_qid"), dma1_c2h_byp_in_st_csh_func("dma1_c2h_byp_in_st_csh_func"), dma1_c2h_byp_in_st_csh_addr("dma1_c2h_byp_in_st_csh_addr"), dma1_c2h_byp_in_st_csh_port_id("dma1_c2h_byp_in_st_csh_port_id"), dma1_c2h_byp_in_st_csh_pfch_tag("dma1_c2h_byp_in_st_csh_pfch_tag"), dma1_c2h_byp_out_valid("dma1_c2h_byp_out_valid"), dma1_c2h_byp_out_error("dma1_c2h_byp_out_error"), dma1_c2h_byp_out_st_mm("dma1_c2h_byp_out_st_mm"), dma1_c2h_byp_out_mm_chn("dma1_c2h_byp_out_mm_chn"), dma1_c2h_byp_out_ready("dma1_c2h_byp_out_ready"), dma1_c2h_byp_out_fmt("dma1_c2h_byp_out_fmt"), dma1_c2h_byp_out_qid("dma1_c2h_byp_out_qid"), dma1_c2h_byp_out_dsc("dma1_c2h_byp_out_dsc"), dma1_c2h_byp_out_func("dma1_c2h_byp_out_func"), dma1_c2h_byp_out_cidx("dma1_c2h_byp_out_cidx"), dma1_c2h_byp_out_dsc_sz("dma1_c2h_byp_out_dsc_sz"), dma1_c2h_byp_out_port_id("dma1_c2h_byp_out_port_id"), dma1_c2h_byp_out_pfch_tag("dma1_c2h_byp_out_pfch_tag"), dma1_h2c_byp_in_mm_0_ready("dma1_h2c_byp_in_mm_0_ready"), dma1_h2c_byp_in_mm_0_sdi("dma1_h2c_byp_in_mm_0_sdi"), dma1_h2c_byp_in_mm_0_valid("dma1_h2c_byp_in_mm_0_valid"), dma1_h2c_byp_in_mm_0_error("dma1_h2c_byp_in_mm_0_error"), dma1_h2c_byp_in_mm_0_no_dma("dma1_h2c_byp_in_mm_0_no_dma"), dma1_h2c_byp_in_mm_0_mrkr_req("dma1_h2c_byp_in_mm_0_mrkr_req"), dma1_h2c_byp_in_mm_0_len("dma1_h2c_byp_in_mm_0_len"), dma1_h2c_byp_in_mm_0_qid("dma1_h2c_byp_in_mm_0_qid"), dma1_h2c_byp_in_mm_0_func("dma1_h2c_byp_in_mm_0_func"), dma1_h2c_byp_in_mm_0_cidx("dma1_h2c_byp_in_mm_0_cidx"), dma1_h2c_byp_in_mm_0_radr("dma1_h2c_byp_in_mm_0_radr"), dma1_h2c_byp_in_mm_0_wadr("dma1_h2c_byp_in_mm_0_wadr"), dma1_h2c_byp_in_mm_0_port_id("dma1_h2c_byp_in_mm_0_port_id"), dma1_h2c_byp_in_mm_1_ready("dma1_h2c_byp_in_mm_1_ready"), dma1_h2c_byp_in_mm_1_sdi("dma1_h2c_byp_in_mm_1_sdi"), dma1_h2c_byp_in_mm_1_valid("dma1_h2c_byp_in_mm_1_valid"), dma1_h2c_byp_in_mm_1_error("dma1_h2c_byp_in_mm_1_error"), dma1_h2c_byp_in_mm_1_no_dma("dma1_h2c_byp_in_mm_1_no_dma"), dma1_h2c_byp_in_mm_1_mrkr_req("dma1_h2c_byp_in_mm_1_mrkr_req"), dma1_h2c_byp_in_mm_1_len("dma1_h2c_byp_in_mm_1_len"), dma1_h2c_byp_in_mm_1_qid("dma1_h2c_byp_in_mm_1_qid"), dma1_h2c_byp_in_mm_1_func("dma1_h2c_byp_in_mm_1_func"), dma1_h2c_byp_in_mm_1_cidx("dma1_h2c_byp_in_mm_1_cidx"), dma1_h2c_byp_in_mm_1_radr("dma1_h2c_byp_in_mm_1_radr"), dma1_h2c_byp_in_mm_1_wadr("dma1_h2c_byp_in_mm_1_wadr"), dma1_h2c_byp_in_mm_1_port_id("dma1_h2c_byp_in_mm_1_port_id"), dma1_h2c_byp_in_st_ready("dma1_h2c_byp_in_st_ready"), dma1_h2c_byp_in_st_eop("dma1_h2c_byp_in_st_eop"), dma1_h2c_byp_in_st_sdi("dma1_h2c_byp_in_st_sdi"), dma1_h2c_byp_in_st_sop("dma1_h2c_byp_in_st_sop"), dma1_h2c_byp_in_st_valid("dma1_h2c_byp_in_st_valid"), dma1_h2c_byp_in_st_error("dma1_h2c_byp_in_st_error"), dma1_h2c_byp_in_st_no_dma("dma1_h2c_byp_in_st_no_dma"), dma1_h2c_byp_in_st_mrkr_req("dma1_h2c_byp_in_st_mrkr_req"), dma1_h2c_byp_in_st_len("dma1_h2c_byp_in_st_len"), dma1_h2c_byp_in_st_qid("dma1_h2c_byp_in_st_qid"), dma1_h2c_byp_in_st_func("dma1_h2c_byp_in_st_func"), dma1_h2c_byp_in_st_addr("dma1_h2c_byp_in_st_addr"), dma1_h2c_byp_in_st_cidx("dma1_h2c_byp_in_st_cidx"), dma1_h2c_byp_in_st_port_id("dma1_h2c_byp_in_st_port_id"), dma1_h2c_byp_out_valid("dma1_h2c_byp_out_valid"), dma1_h2c_byp_out_error("dma1_h2c_byp_out_error"), dma1_h2c_byp_out_st_mm("dma1_h2c_byp_out_st_mm"), dma1_h2c_byp_out_mm_chn("dma1_h2c_byp_out_mm_chn"), dma1_h2c_byp_out_ready("dma1_h2c_byp_out_ready"), dma1_h2c_byp_out_fmt("dma1_h2c_byp_out_fmt"), dma1_h2c_byp_out_qid("dma1_h2c_byp_out_qid"), dma1_h2c_byp_out_dsc("dma1_h2c_byp_out_dsc"), dma1_h2c_byp_out_func("dma1_h2c_byp_out_func"), dma1_h2c_byp_out_cidx("dma1_h2c_byp_out_cidx"), dma1_h2c_byp_out_dsc_sz("dma1_h2c_byp_out_dsc_sz"), dma1_h2c_byp_out_port_id("dma1_h2c_byp_out_port_id"), dma1_axis_c2h_dmawr_cmp("dma1_axis_c2h_dmawr_cmp"), dma1_axis_c2h_dmawr_target_vch("dma1_axis_c2h_dmawr_target_vch"), dma1_axis_c2h_dmawr_port_id("dma1_axis_c2h_dmawr_port_id"), dma1_s_axis_c2h_tready("dma1_s_axis_c2h_tready"), dma1_s_axis_c2h_tlast("dma1_s_axis_c2h_tlast"), dma1_s_axis_c2h_tvalid("dma1_s_axis_c2h_tvalid"), dma1_s_axis_c2h_tcrc("dma1_s_axis_c2h_tcrc"), dma1_s_axis_c2h_tdata("dma1_s_axis_c2h_tdata"), dma1_s_axis_c2h_mty("dma1_s_axis_c2h_mty"), dma1_s_axis_c2h_ecc("dma1_s_axis_c2h_ecc"), dma1_s_axis_c2h_ctrl_marker("dma1_s_axis_c2h_ctrl_marker"), dma1_s_axis_c2h_ctrl_has_cmpt("dma1_s_axis_c2h_ctrl_has_cmpt"), dma1_s_axis_c2h_ctrl_len("dma1_s_axis_c2h_ctrl_len"), dma1_s_axis_c2h_ctrl_qid("dma1_s_axis_c2h_ctrl_qid"), dma1_s_axis_c2h_ctrl_port_id("dma1_s_axis_c2h_ctrl_port_id"), dma1_s_axis_c2h_cmpt_marker("dma1_s_axis_c2h_cmpt_marker"), dma1_s_axis_c2h_cmpt_user_trig("dma1_s_axis_c2h_cmpt_user_trig"), dma1_s_axis_c2h_cmpt_size("dma1_s_axis_c2h_cmpt_size"), dma1_s_axis_c2h_cmpt_qid("dma1_s_axis_c2h_cmpt_qid"), dma1_s_axis_c2h_cmpt_no_wrb_marker("dma1_s_axis_c2h_cmpt_no_wrb_marker"), dma1_s_axis_c2h_cmpt_port_id("dma1_s_axis_c2h_cmpt_port_id"), dma1_s_axis_c2h_cmpt_col_idx("dma1_s_axis_c2h_cmpt_col_idx"), dma1_s_axis_c2h_cmpt_err_idx("dma1_s_axis_c2h_cmpt_err_idx"), dma1_s_axis_c2h_cmpt_wait_pld_pkt_id("dma1_s_axis_c2h_cmpt_wait_pld_pkt_id"), dma1_s_axis_c2h_cmpt_tready("dma1_s_axis_c2h_cmpt_tready"), dma1_s_axis_c2h_cmpt_tvalid("dma1_s_axis_c2h_cmpt_tvalid"), dma1_s_axis_c2h_cmpt_dpar("dma1_s_axis_c2h_cmpt_dpar"), dma1_s_axis_c2h_cmpt_data("dma1_s_axis_c2h_cmpt_data"), dma1_s_axis_c2h_cmpt_cmpt_type("dma1_s_axis_c2h_cmpt_cmpt_type"), dma1_m_axis_h2c_tlast("dma1_m_axis_h2c_tlast"), dma1_m_axis_h2c_err("dma1_m_axis_h2c_err"), dma1_m_axis_h2c_tvalid("dma1_m_axis_h2c_tvalid"), dma1_m_axis_h2c_tdata("dma1_m_axis_h2c_tdata"), dma1_m_axis_h2c_zero_byte("dma1_m_axis_h2c_zero_byte"), dma1_m_axis_h2c_tready("dma1_m_axis_h2c_tready"), dma1_m_axis_h2c_tcrc("dma1_m_axis_h2c_tcrc"), dma1_m_axis_h2c_mty("dma1_m_axis_h2c_mty"), dma1_m_axis_h2c_qid("dma1_m_axis_h2c_qid"), dma1_m_axis_h2c_mdata("dma1_m_axis_h2c_mdata"), dma1_m_axis_h2c_port_id("dma1_m_axis_h2c_port_id"), dma1_axis_c2h_status_last("dma1_axis_c2h_status_last"), dma1_axis_c2h_status_drop("dma1_axis_c2h_status_drop"), dma1_axis_c2h_status_error("dma1_axis_c2h_status_error"), dma1_axis_c2h_status_valid("dma1_axis_c2h_status_valid"), dma1_axis_c2h_status_status_cmp("dma1_axis_c2h_status_status_cmp"), dma1_axis_c2h_status_qid("dma1_axis_c2h_status_qid"), dma1_qsts_out_vld("dma1_qsts_out_vld"), dma1_qsts_out_op("dma1_qsts_out_op"), dma1_qsts_out_rdy("dma1_qsts_out_rdy"), dma1_qsts_out_qid("dma1_qsts_out_qid"), dma1_qsts_out_data("dma1_qsts_out_data"), dma1_qsts_out_port_id("dma1_qsts_out_port_id"), dma1_dsc_crdt_in_rdy("dma1_dsc_crdt_in_rdy"), dma1_dsc_crdt_in_dir("dma1_dsc_crdt_in_dir"), dma1_dsc_crdt_in_valid("dma1_dsc_crdt_in_valid"), dma1_dsc_crdt_in_fence("dma1_dsc_crdt_in_fence"), dma1_dsc_crdt_in_qid("dma1_dsc_crdt_in_qid"), dma1_dsc_crdt_in_crdt("dma1_dsc_crdt_in_crdt"), dma1_usr_irq_ack("dma1_usr_irq_ack"), dma1_usr_irq_fail("dma1_usr_irq_fail"), dma1_usr_irq_valid("dma1_usr_irq_valid"), dma1_usr_irq_vec("dma1_usr_irq_vec"), dma1_usr_irq_fnc("dma1_usr_irq_fnc"), dma1_tm_dsc_sts_mm("dma1_tm_dsc_sts_mm"), dma1_tm_dsc_sts_qen("dma1_tm_dsc_sts_qen"), dma1_tm_dsc_sts_byp("dma1_tm_dsc_sts_byp"), dma1_tm_dsc_sts_dir("dma1_tm_dsc_sts_dir"), dma1_tm_dsc_sts_error("dma1_tm_dsc_sts_error"), dma1_tm_dsc_sts_valid("dma1_tm_dsc_sts_valid"), dma1_tm_dsc_sts_qinv("dma1_tm_dsc_sts_qinv"), dma1_tm_dsc_sts_irq_arm("dma1_tm_dsc_sts_irq_arm"), dma1_tm_dsc_sts_rdy("dma1_tm_dsc_sts_rdy"), dma1_tm_dsc_sts_qid("dma1_tm_dsc_sts_qid"), dma1_tm_dsc_sts_avl("dma1_tm_dsc_sts_avl"), dma1_tm_dsc_sts_pidx("dma1_tm_dsc_sts_pidx"), dma1_tm_dsc_sts_port_id("dma1_tm_dsc_sts_port_id"), dma1_usr_flr_set("dma1_usr_flr_set"), dma1_usr_flr_clear("dma1_usr_flr_clear"), dma1_usr_flr_fnc("dma1_usr_flr_fnc"), dma1_usr_flr_done_vld("dma1_usr_flr_done_vld"), dma1_usr_flr_done_fnc("dma1_usr_flr_done_fnc"), PCIE1_GT_grx_n("PCIE1_GT_grx_n"), PCIE1_GT_gtx_n("PCIE1_GT_gtx_n"), PCIE1_GT_grx_p("PCIE1_GT_grx_p"), PCIE1_GT_gtx_p("PCIE1_GT_gtx_p"), gt_refclk1_clk_n("gt_refclk1_clk_n"), gt_refclk1_clk_p("gt_refclk1_clk_p"), pcie1_pipe_ep_tx_0("pcie1_pipe_ep_tx_0"), pcie1_pipe_ep_rx_0("pcie1_pipe_ep_rx_0"), pcie1_pipe_ep_tx_1("pcie1_pipe_ep_tx_1"), pcie1_pipe_ep_rx_1("pcie1_pipe_ep_rx_1"), pcie1_pipe_ep_tx_2("pcie1_pipe_ep_tx_2"), pcie1_pipe_ep_rx_2("pcie1_pipe_ep_rx_2"), pcie1_pipe_ep_tx_3("pcie1_pipe_ep_tx_3"), pcie1_pipe_ep_rx_3("pcie1_pipe_ep_rx_3"), pcie1_pipe_ep_tx_4("pcie1_pipe_ep_tx_4"), pcie1_pipe_ep_rx_4("pcie1_pipe_ep_rx_4"), pcie1_pipe_ep_tx_5("pcie1_pipe_ep_tx_5"), pcie1_pipe_ep_rx_5("pcie1_pipe_ep_rx_5"), pcie1_pipe_ep_tx_6("pcie1_pipe_ep_tx_6"), pcie1_pipe_ep_rx_6("pcie1_pipe_ep_rx_6"), pcie1_pipe_ep_tx_7("pcie1_pipe_ep_tx_7"), pcie1_pipe_ep_rx_7("pcie1_pipe_ep_rx_7"), pcie1_pipe_ep_tx_8("pcie1_pipe_ep_tx_8"), pcie1_pipe_ep_rx_8("pcie1_pipe_ep_rx_8"), pcie1_pipe_ep_tx_9("pcie1_pipe_ep_tx_9"), pcie1_pipe_ep_rx_9("pcie1_pipe_ep_rx_9"), pcie1_pipe_ep_tx_10("pcie1_pipe_ep_tx_10"), pcie1_pipe_ep_rx_10("pcie1_pipe_ep_rx_10"), pcie1_pipe_ep_tx_11("pcie1_pipe_ep_tx_11"), pcie1_pipe_ep_rx_11("pcie1_pipe_ep_rx_11"), pcie1_pipe_ep_tx_12("pcie1_pipe_ep_tx_12"), pcie1_pipe_ep_rx_12("pcie1_pipe_ep_rx_12"), pcie1_pipe_ep_tx_13("pcie1_pipe_ep_tx_13"), pcie1_pipe_ep_rx_13("pcie1_pipe_ep_rx_13"), pcie1_pipe_ep_tx_14("pcie1_pipe_ep_tx_14"), pcie1_pipe_ep_rx_14("pcie1_pipe_ep_rx_14"), pcie1_pipe_ep_tx_15("pcie1_pipe_ep_tx_15"), pcie1_pipe_ep_rx_15("pcie1_pipe_ep_rx_15"), pcie1_pipe_ep_commands_in("pcie1_pipe_ep_commands_in"), pcie1_pipe_ep_commands_out("pcie1_pipe_ep_commands_out")
{
  // initialize pins
  mp_impl->pl0_ref_clk(pl0_ref_clk);
  mp_impl->pl1_ref_clk(pl1_ref_clk);
  mp_impl->pl0_resetn(pl0_resetn);
  mp_impl->m_axi_fpd_aclk(m_axi_fpd_aclk);
  mp_impl->cpm_pcie_noc_axi0_clk(cpm_pcie_noc_axi0_clk);
  mp_impl->cpm_pcie_noc_axi1_clk(cpm_pcie_noc_axi1_clk);
  mp_impl->dma1_intrfc_clk(dma1_intrfc_clk);
  mp_impl->cpm_misc_irq(cpm_misc_irq);
  mp_impl->cpm_cor_irq(cpm_cor_irq);
  mp_impl->cpm_uncor_irq(cpm_uncor_irq);
  mp_impl->cpm_irq0(cpm_irq0);
  mp_impl->cpm_irq1(cpm_irq1);
  mp_impl->dma1_axi_aresetn(dma1_axi_aresetn);
  mp_impl->dma1_intrfc_resetn(dma1_intrfc_resetn);
  mp_impl->dma1_mgmt_cpl_vld(dma1_mgmt_cpl_vld);
  mp_impl->dma1_mgmt_req_rdy(dma1_mgmt_req_rdy);
  mp_impl->dma1_mgmt_cpl_rdy(dma1_mgmt_cpl_rdy);
  mp_impl->dma1_mgmt_req_vld(dma1_mgmt_req_vld);
  mp_impl->dma1_mgmt_cpl_sts(dma1_mgmt_cpl_sts);
  mp_impl->dma1_mgmt_cpl_dat(dma1_mgmt_cpl_dat);
  mp_impl->dma1_mgmt_req_cmd(dma1_mgmt_req_cmd);
  mp_impl->dma1_mgmt_req_fnc(dma1_mgmt_req_fnc);
  mp_impl->dma1_mgmt_req_msc(dma1_mgmt_req_msc);
  mp_impl->dma1_mgmt_req_adr(dma1_mgmt_req_adr);
  mp_impl->dma1_mgmt_req_dat(dma1_mgmt_req_dat);
  mp_impl->dma1_c2h_byp_in_mm_0_ready(dma1_c2h_byp_in_mm_0_ready);
  mp_impl->dma1_c2h_byp_in_mm_0_sdi(dma1_c2h_byp_in_mm_0_sdi);
  mp_impl->dma1_c2h_byp_in_mm_0_valid(dma1_c2h_byp_in_mm_0_valid);
  mp_impl->dma1_c2h_byp_in_mm_0_error(dma1_c2h_byp_in_mm_0_error);
  mp_impl->dma1_c2h_byp_in_mm_0_no_dma(dma1_c2h_byp_in_mm_0_no_dma);
  mp_impl->dma1_c2h_byp_in_mm_0_mrkr_req(dma1_c2h_byp_in_mm_0_mrkr_req);
  mp_impl->dma1_c2h_byp_in_mm_0_len(dma1_c2h_byp_in_mm_0_len);
  mp_impl->dma1_c2h_byp_in_mm_0_qid(dma1_c2h_byp_in_mm_0_qid);
  mp_impl->dma1_c2h_byp_in_mm_0_func(dma1_c2h_byp_in_mm_0_func);
  mp_impl->dma1_c2h_byp_in_mm_0_cidx(dma1_c2h_byp_in_mm_0_cidx);
  mp_impl->dma1_c2h_byp_in_mm_0_radr(dma1_c2h_byp_in_mm_0_radr);
  mp_impl->dma1_c2h_byp_in_mm_0_wadr(dma1_c2h_byp_in_mm_0_wadr);
  mp_impl->dma1_c2h_byp_in_mm_0_port_id(dma1_c2h_byp_in_mm_0_port_id);
  mp_impl->dma1_c2h_byp_in_mm_1_ready(dma1_c2h_byp_in_mm_1_ready);
  mp_impl->dma1_c2h_byp_in_mm_1_sdi(dma1_c2h_byp_in_mm_1_sdi);
  mp_impl->dma1_c2h_byp_in_mm_1_valid(dma1_c2h_byp_in_mm_1_valid);
  mp_impl->dma1_c2h_byp_in_mm_1_error(dma1_c2h_byp_in_mm_1_error);
  mp_impl->dma1_c2h_byp_in_mm_1_no_dma(dma1_c2h_byp_in_mm_1_no_dma);
  mp_impl->dma1_c2h_byp_in_mm_1_mrkr_req(dma1_c2h_byp_in_mm_1_mrkr_req);
  mp_impl->dma1_c2h_byp_in_mm_1_len(dma1_c2h_byp_in_mm_1_len);
  mp_impl->dma1_c2h_byp_in_mm_1_qid(dma1_c2h_byp_in_mm_1_qid);
  mp_impl->dma1_c2h_byp_in_mm_1_func(dma1_c2h_byp_in_mm_1_func);
  mp_impl->dma1_c2h_byp_in_mm_1_cidx(dma1_c2h_byp_in_mm_1_cidx);
  mp_impl->dma1_c2h_byp_in_mm_1_radr(dma1_c2h_byp_in_mm_1_radr);
  mp_impl->dma1_c2h_byp_in_mm_1_wadr(dma1_c2h_byp_in_mm_1_wadr);
  mp_impl->dma1_c2h_byp_in_mm_1_port_id(dma1_c2h_byp_in_mm_1_port_id);
  mp_impl->dma1_c2h_byp_in_st_csh_ready(dma1_c2h_byp_in_st_csh_ready);
  mp_impl->dma1_c2h_byp_in_st_csh_valid(dma1_c2h_byp_in_st_csh_valid);
  mp_impl->dma1_c2h_byp_in_st_csh_error(dma1_c2h_byp_in_st_csh_error);
  mp_impl->dma1_c2h_byp_in_st_csh_qid(dma1_c2h_byp_in_st_csh_qid);
  mp_impl->dma1_c2h_byp_in_st_csh_func(dma1_c2h_byp_in_st_csh_func);
  mp_impl->dma1_c2h_byp_in_st_csh_addr(dma1_c2h_byp_in_st_csh_addr);
  mp_impl->dma1_c2h_byp_in_st_csh_port_id(dma1_c2h_byp_in_st_csh_port_id);
  mp_impl->dma1_c2h_byp_in_st_csh_pfch_tag(dma1_c2h_byp_in_st_csh_pfch_tag);
  mp_impl->dma1_c2h_byp_out_valid(dma1_c2h_byp_out_valid);
  mp_impl->dma1_c2h_byp_out_error(dma1_c2h_byp_out_error);
  mp_impl->dma1_c2h_byp_out_st_mm(dma1_c2h_byp_out_st_mm);
  mp_impl->dma1_c2h_byp_out_mm_chn(dma1_c2h_byp_out_mm_chn);
  mp_impl->dma1_c2h_byp_out_ready(dma1_c2h_byp_out_ready);
  mp_impl->dma1_c2h_byp_out_fmt(dma1_c2h_byp_out_fmt);
  mp_impl->dma1_c2h_byp_out_qid(dma1_c2h_byp_out_qid);
  mp_impl->dma1_c2h_byp_out_dsc(dma1_c2h_byp_out_dsc);
  mp_impl->dma1_c2h_byp_out_func(dma1_c2h_byp_out_func);
  mp_impl->dma1_c2h_byp_out_cidx(dma1_c2h_byp_out_cidx);
  mp_impl->dma1_c2h_byp_out_dsc_sz(dma1_c2h_byp_out_dsc_sz);
  mp_impl->dma1_c2h_byp_out_port_id(dma1_c2h_byp_out_port_id);
  mp_impl->dma1_c2h_byp_out_pfch_tag(dma1_c2h_byp_out_pfch_tag);
  mp_impl->dma1_h2c_byp_in_mm_0_ready(dma1_h2c_byp_in_mm_0_ready);
  mp_impl->dma1_h2c_byp_in_mm_0_sdi(dma1_h2c_byp_in_mm_0_sdi);
  mp_impl->dma1_h2c_byp_in_mm_0_valid(dma1_h2c_byp_in_mm_0_valid);
  mp_impl->dma1_h2c_byp_in_mm_0_error(dma1_h2c_byp_in_mm_0_error);
  mp_impl->dma1_h2c_byp_in_mm_0_no_dma(dma1_h2c_byp_in_mm_0_no_dma);
  mp_impl->dma1_h2c_byp_in_mm_0_mrkr_req(dma1_h2c_byp_in_mm_0_mrkr_req);
  mp_impl->dma1_h2c_byp_in_mm_0_len(dma1_h2c_byp_in_mm_0_len);
  mp_impl->dma1_h2c_byp_in_mm_0_qid(dma1_h2c_byp_in_mm_0_qid);
  mp_impl->dma1_h2c_byp_in_mm_0_func(dma1_h2c_byp_in_mm_0_func);
  mp_impl->dma1_h2c_byp_in_mm_0_cidx(dma1_h2c_byp_in_mm_0_cidx);
  mp_impl->dma1_h2c_byp_in_mm_0_radr(dma1_h2c_byp_in_mm_0_radr);
  mp_impl->dma1_h2c_byp_in_mm_0_wadr(dma1_h2c_byp_in_mm_0_wadr);
  mp_impl->dma1_h2c_byp_in_mm_0_port_id(dma1_h2c_byp_in_mm_0_port_id);
  mp_impl->dma1_h2c_byp_in_mm_1_ready(dma1_h2c_byp_in_mm_1_ready);
  mp_impl->dma1_h2c_byp_in_mm_1_sdi(dma1_h2c_byp_in_mm_1_sdi);
  mp_impl->dma1_h2c_byp_in_mm_1_valid(dma1_h2c_byp_in_mm_1_valid);
  mp_impl->dma1_h2c_byp_in_mm_1_error(dma1_h2c_byp_in_mm_1_error);
  mp_impl->dma1_h2c_byp_in_mm_1_no_dma(dma1_h2c_byp_in_mm_1_no_dma);
  mp_impl->dma1_h2c_byp_in_mm_1_mrkr_req(dma1_h2c_byp_in_mm_1_mrkr_req);
  mp_impl->dma1_h2c_byp_in_mm_1_len(dma1_h2c_byp_in_mm_1_len);
  mp_impl->dma1_h2c_byp_in_mm_1_qid(dma1_h2c_byp_in_mm_1_qid);
  mp_impl->dma1_h2c_byp_in_mm_1_func(dma1_h2c_byp_in_mm_1_func);
  mp_impl->dma1_h2c_byp_in_mm_1_cidx(dma1_h2c_byp_in_mm_1_cidx);
  mp_impl->dma1_h2c_byp_in_mm_1_radr(dma1_h2c_byp_in_mm_1_radr);
  mp_impl->dma1_h2c_byp_in_mm_1_wadr(dma1_h2c_byp_in_mm_1_wadr);
  mp_impl->dma1_h2c_byp_in_mm_1_port_id(dma1_h2c_byp_in_mm_1_port_id);
  mp_impl->dma1_h2c_byp_in_st_ready(dma1_h2c_byp_in_st_ready);
  mp_impl->dma1_h2c_byp_in_st_eop(dma1_h2c_byp_in_st_eop);
  mp_impl->dma1_h2c_byp_in_st_sdi(dma1_h2c_byp_in_st_sdi);
  mp_impl->dma1_h2c_byp_in_st_sop(dma1_h2c_byp_in_st_sop);
  mp_impl->dma1_h2c_byp_in_st_valid(dma1_h2c_byp_in_st_valid);
  mp_impl->dma1_h2c_byp_in_st_error(dma1_h2c_byp_in_st_error);
  mp_impl->dma1_h2c_byp_in_st_no_dma(dma1_h2c_byp_in_st_no_dma);
  mp_impl->dma1_h2c_byp_in_st_mrkr_req(dma1_h2c_byp_in_st_mrkr_req);
  mp_impl->dma1_h2c_byp_in_st_len(dma1_h2c_byp_in_st_len);
  mp_impl->dma1_h2c_byp_in_st_qid(dma1_h2c_byp_in_st_qid);
  mp_impl->dma1_h2c_byp_in_st_func(dma1_h2c_byp_in_st_func);
  mp_impl->dma1_h2c_byp_in_st_addr(dma1_h2c_byp_in_st_addr);
  mp_impl->dma1_h2c_byp_in_st_cidx(dma1_h2c_byp_in_st_cidx);
  mp_impl->dma1_h2c_byp_in_st_port_id(dma1_h2c_byp_in_st_port_id);
  mp_impl->dma1_h2c_byp_out_valid(dma1_h2c_byp_out_valid);
  mp_impl->dma1_h2c_byp_out_error(dma1_h2c_byp_out_error);
  mp_impl->dma1_h2c_byp_out_st_mm(dma1_h2c_byp_out_st_mm);
  mp_impl->dma1_h2c_byp_out_mm_chn(dma1_h2c_byp_out_mm_chn);
  mp_impl->dma1_h2c_byp_out_ready(dma1_h2c_byp_out_ready);
  mp_impl->dma1_h2c_byp_out_fmt(dma1_h2c_byp_out_fmt);
  mp_impl->dma1_h2c_byp_out_qid(dma1_h2c_byp_out_qid);
  mp_impl->dma1_h2c_byp_out_dsc(dma1_h2c_byp_out_dsc);
  mp_impl->dma1_h2c_byp_out_func(dma1_h2c_byp_out_func);
  mp_impl->dma1_h2c_byp_out_cidx(dma1_h2c_byp_out_cidx);
  mp_impl->dma1_h2c_byp_out_dsc_sz(dma1_h2c_byp_out_dsc_sz);
  mp_impl->dma1_h2c_byp_out_port_id(dma1_h2c_byp_out_port_id);
  mp_impl->dma1_axis_c2h_dmawr_cmp(dma1_axis_c2h_dmawr_cmp);
  mp_impl->dma1_axis_c2h_dmawr_target_vch(dma1_axis_c2h_dmawr_target_vch);
  mp_impl->dma1_axis_c2h_dmawr_port_id(dma1_axis_c2h_dmawr_port_id);
  mp_impl->dma1_s_axis_c2h_tready(dma1_s_axis_c2h_tready);
  mp_impl->dma1_s_axis_c2h_tlast(dma1_s_axis_c2h_tlast);
  mp_impl->dma1_s_axis_c2h_tvalid(dma1_s_axis_c2h_tvalid);
  mp_impl->dma1_s_axis_c2h_tcrc(dma1_s_axis_c2h_tcrc);
  mp_impl->dma1_s_axis_c2h_tdata(dma1_s_axis_c2h_tdata);
  mp_impl->dma1_s_axis_c2h_mty(dma1_s_axis_c2h_mty);
  mp_impl->dma1_s_axis_c2h_ecc(dma1_s_axis_c2h_ecc);
  mp_impl->dma1_s_axis_c2h_ctrl_marker(dma1_s_axis_c2h_ctrl_marker);
  mp_impl->dma1_s_axis_c2h_ctrl_has_cmpt(dma1_s_axis_c2h_ctrl_has_cmpt);
  mp_impl->dma1_s_axis_c2h_ctrl_len(dma1_s_axis_c2h_ctrl_len);
  mp_impl->dma1_s_axis_c2h_ctrl_qid(dma1_s_axis_c2h_ctrl_qid);
  mp_impl->dma1_s_axis_c2h_ctrl_port_id(dma1_s_axis_c2h_ctrl_port_id);
  mp_impl->dma1_s_axis_c2h_cmpt_marker(dma1_s_axis_c2h_cmpt_marker);
  mp_impl->dma1_s_axis_c2h_cmpt_user_trig(dma1_s_axis_c2h_cmpt_user_trig);
  mp_impl->dma1_s_axis_c2h_cmpt_size(dma1_s_axis_c2h_cmpt_size);
  mp_impl->dma1_s_axis_c2h_cmpt_qid(dma1_s_axis_c2h_cmpt_qid);
  mp_impl->dma1_s_axis_c2h_cmpt_no_wrb_marker(dma1_s_axis_c2h_cmpt_no_wrb_marker);
  mp_impl->dma1_s_axis_c2h_cmpt_port_id(dma1_s_axis_c2h_cmpt_port_id);
  mp_impl->dma1_s_axis_c2h_cmpt_col_idx(dma1_s_axis_c2h_cmpt_col_idx);
  mp_impl->dma1_s_axis_c2h_cmpt_err_idx(dma1_s_axis_c2h_cmpt_err_idx);
  mp_impl->dma1_s_axis_c2h_cmpt_wait_pld_pkt_id(dma1_s_axis_c2h_cmpt_wait_pld_pkt_id);
  mp_impl->dma1_s_axis_c2h_cmpt_tready(dma1_s_axis_c2h_cmpt_tready);
  mp_impl->dma1_s_axis_c2h_cmpt_tvalid(dma1_s_axis_c2h_cmpt_tvalid);
  mp_impl->dma1_s_axis_c2h_cmpt_dpar(dma1_s_axis_c2h_cmpt_dpar);
  mp_impl->dma1_s_axis_c2h_cmpt_data(dma1_s_axis_c2h_cmpt_data);
  mp_impl->dma1_s_axis_c2h_cmpt_cmpt_type(dma1_s_axis_c2h_cmpt_cmpt_type);
  mp_impl->dma1_m_axis_h2c_tlast(dma1_m_axis_h2c_tlast);
  mp_impl->dma1_m_axis_h2c_err(dma1_m_axis_h2c_err);
  mp_impl->dma1_m_axis_h2c_tvalid(dma1_m_axis_h2c_tvalid);
  mp_impl->dma1_m_axis_h2c_tdata(dma1_m_axis_h2c_tdata);
  mp_impl->dma1_m_axis_h2c_zero_byte(dma1_m_axis_h2c_zero_byte);
  mp_impl->dma1_m_axis_h2c_tready(dma1_m_axis_h2c_tready);
  mp_impl->dma1_m_axis_h2c_tcrc(dma1_m_axis_h2c_tcrc);
  mp_impl->dma1_m_axis_h2c_mty(dma1_m_axis_h2c_mty);
  mp_impl->dma1_m_axis_h2c_qid(dma1_m_axis_h2c_qid);
  mp_impl->dma1_m_axis_h2c_mdata(dma1_m_axis_h2c_mdata);
  mp_impl->dma1_m_axis_h2c_port_id(dma1_m_axis_h2c_port_id);
  mp_impl->dma1_axis_c2h_status_last(dma1_axis_c2h_status_last);
  mp_impl->dma1_axis_c2h_status_drop(dma1_axis_c2h_status_drop);
  mp_impl->dma1_axis_c2h_status_error(dma1_axis_c2h_status_error);
  mp_impl->dma1_axis_c2h_status_valid(dma1_axis_c2h_status_valid);
  mp_impl->dma1_axis_c2h_status_status_cmp(dma1_axis_c2h_status_status_cmp);
  mp_impl->dma1_axis_c2h_status_qid(dma1_axis_c2h_status_qid);
  mp_impl->dma1_qsts_out_vld(dma1_qsts_out_vld);
  mp_impl->dma1_qsts_out_op(dma1_qsts_out_op);
  mp_impl->dma1_qsts_out_rdy(dma1_qsts_out_rdy);
  mp_impl->dma1_qsts_out_qid(dma1_qsts_out_qid);
  mp_impl->dma1_qsts_out_data(dma1_qsts_out_data);
  mp_impl->dma1_qsts_out_port_id(dma1_qsts_out_port_id);
  mp_impl->dma1_dsc_crdt_in_rdy(dma1_dsc_crdt_in_rdy);
  mp_impl->dma1_dsc_crdt_in_dir(dma1_dsc_crdt_in_dir);
  mp_impl->dma1_dsc_crdt_in_valid(dma1_dsc_crdt_in_valid);
  mp_impl->dma1_dsc_crdt_in_fence(dma1_dsc_crdt_in_fence);
  mp_impl->dma1_dsc_crdt_in_qid(dma1_dsc_crdt_in_qid);
  mp_impl->dma1_dsc_crdt_in_crdt(dma1_dsc_crdt_in_crdt);
  mp_impl->dma1_usr_irq_ack(dma1_usr_irq_ack);
  mp_impl->dma1_usr_irq_fail(dma1_usr_irq_fail);
  mp_impl->dma1_usr_irq_valid(dma1_usr_irq_valid);
  mp_impl->dma1_usr_irq_vec(dma1_usr_irq_vec);
  mp_impl->dma1_usr_irq_fnc(dma1_usr_irq_fnc);
  mp_impl->dma1_tm_dsc_sts_mm(dma1_tm_dsc_sts_mm);
  mp_impl->dma1_tm_dsc_sts_qen(dma1_tm_dsc_sts_qen);
  mp_impl->dma1_tm_dsc_sts_byp(dma1_tm_dsc_sts_byp);
  mp_impl->dma1_tm_dsc_sts_dir(dma1_tm_dsc_sts_dir);
  mp_impl->dma1_tm_dsc_sts_error(dma1_tm_dsc_sts_error);
  mp_impl->dma1_tm_dsc_sts_valid(dma1_tm_dsc_sts_valid);
  mp_impl->dma1_tm_dsc_sts_qinv(dma1_tm_dsc_sts_qinv);
  mp_impl->dma1_tm_dsc_sts_irq_arm(dma1_tm_dsc_sts_irq_arm);
  mp_impl->dma1_tm_dsc_sts_rdy(dma1_tm_dsc_sts_rdy);
  mp_impl->dma1_tm_dsc_sts_qid(dma1_tm_dsc_sts_qid);
  mp_impl->dma1_tm_dsc_sts_avl(dma1_tm_dsc_sts_avl);
  mp_impl->dma1_tm_dsc_sts_pidx(dma1_tm_dsc_sts_pidx);
  mp_impl->dma1_tm_dsc_sts_port_id(dma1_tm_dsc_sts_port_id);
  mp_impl->dma1_usr_flr_set(dma1_usr_flr_set);
  mp_impl->dma1_usr_flr_clear(dma1_usr_flr_clear);
  mp_impl->dma1_usr_flr_fnc(dma1_usr_flr_fnc);
  mp_impl->dma1_usr_flr_done_vld(dma1_usr_flr_done_vld);
  mp_impl->dma1_usr_flr_done_fnc(dma1_usr_flr_done_fnc);
  mp_impl->PCIE1_GT_grx_n(PCIE1_GT_grx_n);
  mp_impl->PCIE1_GT_gtx_n(PCIE1_GT_gtx_n);
  mp_impl->PCIE1_GT_grx_p(PCIE1_GT_grx_p);
  mp_impl->PCIE1_GT_gtx_p(PCIE1_GT_gtx_p);
  mp_impl->gt_refclk1_clk_n(gt_refclk1_clk_n);
  mp_impl->gt_refclk1_clk_p(gt_refclk1_clk_p);
  mp_impl->pcie1_pipe_ep_tx_0(pcie1_pipe_ep_tx_0);
  mp_impl->pcie1_pipe_ep_rx_0(pcie1_pipe_ep_rx_0);
  mp_impl->pcie1_pipe_ep_tx_1(pcie1_pipe_ep_tx_1);
  mp_impl->pcie1_pipe_ep_rx_1(pcie1_pipe_ep_rx_1);
  mp_impl->pcie1_pipe_ep_tx_2(pcie1_pipe_ep_tx_2);
  mp_impl->pcie1_pipe_ep_rx_2(pcie1_pipe_ep_rx_2);
  mp_impl->pcie1_pipe_ep_tx_3(pcie1_pipe_ep_tx_3);
  mp_impl->pcie1_pipe_ep_rx_3(pcie1_pipe_ep_rx_3);
  mp_impl->pcie1_pipe_ep_tx_4(pcie1_pipe_ep_tx_4);
  mp_impl->pcie1_pipe_ep_rx_4(pcie1_pipe_ep_rx_4);
  mp_impl->pcie1_pipe_ep_tx_5(pcie1_pipe_ep_tx_5);
  mp_impl->pcie1_pipe_ep_rx_5(pcie1_pipe_ep_rx_5);
  mp_impl->pcie1_pipe_ep_tx_6(pcie1_pipe_ep_tx_6);
  mp_impl->pcie1_pipe_ep_rx_6(pcie1_pipe_ep_rx_6);
  mp_impl->pcie1_pipe_ep_tx_7(pcie1_pipe_ep_tx_7);
  mp_impl->pcie1_pipe_ep_rx_7(pcie1_pipe_ep_rx_7);
  mp_impl->pcie1_pipe_ep_tx_8(pcie1_pipe_ep_tx_8);
  mp_impl->pcie1_pipe_ep_rx_8(pcie1_pipe_ep_rx_8);
  mp_impl->pcie1_pipe_ep_tx_9(pcie1_pipe_ep_tx_9);
  mp_impl->pcie1_pipe_ep_rx_9(pcie1_pipe_ep_rx_9);
  mp_impl->pcie1_pipe_ep_tx_10(pcie1_pipe_ep_tx_10);
  mp_impl->pcie1_pipe_ep_rx_10(pcie1_pipe_ep_rx_10);
  mp_impl->pcie1_pipe_ep_tx_11(pcie1_pipe_ep_tx_11);
  mp_impl->pcie1_pipe_ep_rx_11(pcie1_pipe_ep_rx_11);
  mp_impl->pcie1_pipe_ep_tx_12(pcie1_pipe_ep_tx_12);
  mp_impl->pcie1_pipe_ep_rx_12(pcie1_pipe_ep_rx_12);
  mp_impl->pcie1_pipe_ep_tx_13(pcie1_pipe_ep_tx_13);
  mp_impl->pcie1_pipe_ep_rx_13(pcie1_pipe_ep_rx_13);
  mp_impl->pcie1_pipe_ep_tx_14(pcie1_pipe_ep_tx_14);
  mp_impl->pcie1_pipe_ep_rx_14(pcie1_pipe_ep_rx_14);
  mp_impl->pcie1_pipe_ep_tx_15(pcie1_pipe_ep_tx_15);
  mp_impl->pcie1_pipe_ep_rx_15(pcie1_pipe_ep_rx_15);
  mp_impl->pcie1_pipe_ep_commands_in(pcie1_pipe_ep_commands_in);
  mp_impl->pcie1_pipe_ep_commands_out(pcie1_pipe_ep_commands_out);

  // initialize transactors
  mp_M_AXI_FPD_transactor = NULL;
  mp_CPM_PCIE_NOC_0_transactor = NULL;
  mp_CPM_PCIE_NOC_1_transactor = NULL;
  mp_dma1_st_rx_msg_transactor = NULL;

  // Instantiate Socket Stubs

  // configure M_AXI_FPD_transactor
    xsc::common_cpp::properties M_AXI_FPD_transactor_param_props;
    M_AXI_FPD_transactor_param_props.addLong("DATA_WIDTH", "128");
    M_AXI_FPD_transactor_param_props.addLong("FREQ_HZ", "429162384");
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
    M_AXI_FPD_transactor_param_props.addLong("HAS_RESET", "0");
    M_AXI_FPD_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXI_FPD_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXI_FPD_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXI_FPD_transactor_param_props.addString("CLK_DOMAIN", "bd_a532_pspmc_0_0_pl0_ref_clk");
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
  m_M_AXI_FPD_transactor_rst_signal.write(1);
  mp_M_AXI_FPD_transactor->RST(m_M_AXI_FPD_transactor_rst_signal);
  // configure CPM_PCIE_NOC_0_transactor
    xsc::common_cpp::properties CPM_PCIE_NOC_0_transactor_param_props;
    CPM_PCIE_NOC_0_transactor_param_props.addLong("DATA_WIDTH", "128");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("FREQ_HZ", "1000000000");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("ID_WIDTH", "16");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("ADDR_WIDTH", "64");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("WUSER_WIDTH", "17");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("RUSER_WIDTH", "17");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("BUSER_WIDTH", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_BURST", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_LOCK", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_PROT", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_CACHE", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_QOS", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_REGION", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_WSTRB", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_BRESP", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_RRESP", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_SIZE", "1");
    CPM_PCIE_NOC_0_transactor_param_props.addLong("HAS_RESET", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addFloat("PHASE", "0.0");
    CPM_PCIE_NOC_0_transactor_param_props.addString("PROTOCOL", "AXI4");
    CPM_PCIE_NOC_0_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    CPM_PCIE_NOC_0_transactor_param_props.addString("CLK_DOMAIN", "bd_a532_pspmc_0_0_cpm_pcie_noc_axi0_clk");
    CPM_PCIE_NOC_0_transactor_param_props.addString("CATEGORY", "noc");
    CPM_PCIE_NOC_0_transactor_param_props.addString("MY_CATEGORY", "ps_pcie");
    CPM_PCIE_NOC_0_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_PCIE_TO_NOC_NMU");
    CPM_PCIE_NOC_0_transactor_param_props.addString("HD_TANDEM", "0");
    CPM_PCIE_NOC_0_transactor_param_props.addString("INDEX", "0");

    mp_CPM_PCIE_NOC_0_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,17>("CPM_PCIE_NOC_0_transactor", CPM_PCIE_NOC_0_transactor_param_props);
  mp_CPM_PCIE_NOC_0_transactor->ARADDR(CPM_PCIE_NOC_0_araddr);
  mp_CPM_PCIE_NOC_0_transactor->ARBURST(CPM_PCIE_NOC_0_arburst);
  mp_CPM_PCIE_NOC_0_transactor->ARCACHE(CPM_PCIE_NOC_0_arcache);
  mp_CPM_PCIE_NOC_0_transactor->ARID(CPM_PCIE_NOC_0_arid);
  mp_CPM_PCIE_NOC_0_transactor->ARLEN(CPM_PCIE_NOC_0_arlen);
  mp_CPM_PCIE_NOC_0_transactor->ARLOCK(CPM_PCIE_NOC_0_arlock);
  mp_CPM_PCIE_NOC_0_transactor->ARPROT(CPM_PCIE_NOC_0_arprot);
  mp_CPM_PCIE_NOC_0_transactor->ARQOS(CPM_PCIE_NOC_0_arqos);
  mp_CPM_PCIE_NOC_0_transactor->ARSIZE(CPM_PCIE_NOC_0_arsize);
  mp_CPM_PCIE_NOC_0_transactor->ARUSER(CPM_PCIE_NOC_0_aruser);
  mp_CPM_PCIE_NOC_0_transactor->ARVALID(CPM_PCIE_NOC_0_arvalid);
  mp_CPM_PCIE_NOC_0_transactor->AWADDR(CPM_PCIE_NOC_0_awaddr);
  mp_CPM_PCIE_NOC_0_transactor->AWBURST(CPM_PCIE_NOC_0_awburst);
  mp_CPM_PCIE_NOC_0_transactor->AWCACHE(CPM_PCIE_NOC_0_awcache);
  mp_CPM_PCIE_NOC_0_transactor->AWID(CPM_PCIE_NOC_0_awid);
  mp_CPM_PCIE_NOC_0_transactor->AWLEN(CPM_PCIE_NOC_0_awlen);
  mp_CPM_PCIE_NOC_0_transactor->AWLOCK(CPM_PCIE_NOC_0_awlock);
  mp_CPM_PCIE_NOC_0_transactor->AWPROT(CPM_PCIE_NOC_0_awprot);
  mp_CPM_PCIE_NOC_0_transactor->AWQOS(CPM_PCIE_NOC_0_awqos);
  mp_CPM_PCIE_NOC_0_transactor->AWSIZE(CPM_PCIE_NOC_0_awsize);
  mp_CPM_PCIE_NOC_0_transactor->AWUSER(CPM_PCIE_NOC_0_awuser);
  mp_CPM_PCIE_NOC_0_transactor->AWVALID(CPM_PCIE_NOC_0_awvalid);
  mp_CPM_PCIE_NOC_0_transactor->BREADY(CPM_PCIE_NOC_0_bready);
  mp_CPM_PCIE_NOC_0_transactor->RREADY(CPM_PCIE_NOC_0_rready);
  mp_CPM_PCIE_NOC_0_transactor->WDATA(CPM_PCIE_NOC_0_wdata);
  mp_CPM_PCIE_NOC_0_transactor->WLAST(CPM_PCIE_NOC_0_wlast);
  mp_CPM_PCIE_NOC_0_transactor->WSTRB(CPM_PCIE_NOC_0_wstrb);
  mp_CPM_PCIE_NOC_0_transactor->WVALID(CPM_PCIE_NOC_0_wvalid);
  mp_CPM_PCIE_NOC_0_transactor->ARREADY(CPM_PCIE_NOC_0_arready);
  mp_CPM_PCIE_NOC_0_transactor->AWREADY(CPM_PCIE_NOC_0_awready);
  mp_CPM_PCIE_NOC_0_transactor->BID(CPM_PCIE_NOC_0_bid);
  mp_CPM_PCIE_NOC_0_transactor->BRESP(CPM_PCIE_NOC_0_bresp);
  mp_CPM_PCIE_NOC_0_transactor->BVALID(CPM_PCIE_NOC_0_bvalid);
  mp_CPM_PCIE_NOC_0_transactor->RDATA(CPM_PCIE_NOC_0_rdata);
  mp_CPM_PCIE_NOC_0_transactor->RID(CPM_PCIE_NOC_0_rid);
  mp_CPM_PCIE_NOC_0_transactor->RLAST(CPM_PCIE_NOC_0_rlast);
  mp_CPM_PCIE_NOC_0_transactor->RRESP(CPM_PCIE_NOC_0_rresp);
  mp_CPM_PCIE_NOC_0_transactor->RVALID(CPM_PCIE_NOC_0_rvalid);
  mp_CPM_PCIE_NOC_0_transactor->RUSER(CPM_PCIE_NOC_0_ruser);
  mp_CPM_PCIE_NOC_0_transactor->WUSER(CPM_PCIE_NOC_0_wuser);
  mp_CPM_PCIE_NOC_0_transactor->WREADY(CPM_PCIE_NOC_0_wready);
  mp_CPM_PCIE_NOC_0_transactor->CLK(cpm_pcie_noc_axi0_clk);
  m_CPM_PCIE_NOC_0_transactor_rst_signal.write(1);
  mp_CPM_PCIE_NOC_0_transactor->RST(m_CPM_PCIE_NOC_0_transactor_rst_signal);
  // configure CPM_PCIE_NOC_1_transactor
    xsc::common_cpp::properties CPM_PCIE_NOC_1_transactor_param_props;
    CPM_PCIE_NOC_1_transactor_param_props.addLong("DATA_WIDTH", "128");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("FREQ_HZ", "1000000000");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("ID_WIDTH", "16");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("ADDR_WIDTH", "64");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("AWUSER_WIDTH", "18");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("ARUSER_WIDTH", "18");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("WUSER_WIDTH", "17");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("RUSER_WIDTH", "17");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("BUSER_WIDTH", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_BURST", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_LOCK", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_PROT", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_CACHE", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_QOS", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_REGION", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_WSTRB", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_BRESP", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_RRESP", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "64");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "64");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_SIZE", "1");
    CPM_PCIE_NOC_1_transactor_param_props.addLong("HAS_RESET", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addFloat("PHASE", "0.0");
    CPM_PCIE_NOC_1_transactor_param_props.addString("PROTOCOL", "AXI4");
    CPM_PCIE_NOC_1_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    CPM_PCIE_NOC_1_transactor_param_props.addString("CLK_DOMAIN", "bd_a532_pspmc_0_0_cpm_pcie_noc_axi1_clk");
    CPM_PCIE_NOC_1_transactor_param_props.addString("CATEGORY", "noc");
    CPM_PCIE_NOC_1_transactor_param_props.addString("MY_CATEGORY", "ps_pcie");
    CPM_PCIE_NOC_1_transactor_param_props.addString("PHYSICAL_CHANNEL", "PS_PCIE_TO_NOC_NMU");
    CPM_PCIE_NOC_1_transactor_param_props.addString("HD_TANDEM", "0");
    CPM_PCIE_NOC_1_transactor_param_props.addString("INDEX", "1");

    mp_CPM_PCIE_NOC_1_transactor = new xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,17>("CPM_PCIE_NOC_1_transactor", CPM_PCIE_NOC_1_transactor_param_props);
  mp_CPM_PCIE_NOC_1_transactor->ARADDR(CPM_PCIE_NOC_1_araddr);
  mp_CPM_PCIE_NOC_1_transactor->ARBURST(CPM_PCIE_NOC_1_arburst);
  mp_CPM_PCIE_NOC_1_transactor->ARCACHE(CPM_PCIE_NOC_1_arcache);
  mp_CPM_PCIE_NOC_1_transactor->ARID(CPM_PCIE_NOC_1_arid);
  mp_CPM_PCIE_NOC_1_transactor->ARLEN(CPM_PCIE_NOC_1_arlen);
  mp_CPM_PCIE_NOC_1_transactor->ARLOCK(CPM_PCIE_NOC_1_arlock);
  mp_CPM_PCIE_NOC_1_transactor->ARPROT(CPM_PCIE_NOC_1_arprot);
  mp_CPM_PCIE_NOC_1_transactor->ARQOS(CPM_PCIE_NOC_1_arqos);
  mp_CPM_PCIE_NOC_1_transactor->ARSIZE(CPM_PCIE_NOC_1_arsize);
  mp_CPM_PCIE_NOC_1_transactor->ARUSER(CPM_PCIE_NOC_1_aruser);
  mp_CPM_PCIE_NOC_1_transactor->ARVALID(CPM_PCIE_NOC_1_arvalid);
  mp_CPM_PCIE_NOC_1_transactor->AWADDR(CPM_PCIE_NOC_1_awaddr);
  mp_CPM_PCIE_NOC_1_transactor->AWBURST(CPM_PCIE_NOC_1_awburst);
  mp_CPM_PCIE_NOC_1_transactor->AWCACHE(CPM_PCIE_NOC_1_awcache);
  mp_CPM_PCIE_NOC_1_transactor->AWID(CPM_PCIE_NOC_1_awid);
  mp_CPM_PCIE_NOC_1_transactor->AWLEN(CPM_PCIE_NOC_1_awlen);
  mp_CPM_PCIE_NOC_1_transactor->AWLOCK(CPM_PCIE_NOC_1_awlock);
  mp_CPM_PCIE_NOC_1_transactor->AWPROT(CPM_PCIE_NOC_1_awprot);
  mp_CPM_PCIE_NOC_1_transactor->AWQOS(CPM_PCIE_NOC_1_awqos);
  mp_CPM_PCIE_NOC_1_transactor->AWSIZE(CPM_PCIE_NOC_1_awsize);
  mp_CPM_PCIE_NOC_1_transactor->AWUSER(CPM_PCIE_NOC_1_awuser);
  mp_CPM_PCIE_NOC_1_transactor->AWVALID(CPM_PCIE_NOC_1_awvalid);
  mp_CPM_PCIE_NOC_1_transactor->BREADY(CPM_PCIE_NOC_1_bready);
  mp_CPM_PCIE_NOC_1_transactor->RREADY(CPM_PCIE_NOC_1_rready);
  mp_CPM_PCIE_NOC_1_transactor->WDATA(CPM_PCIE_NOC_1_wdata);
  mp_CPM_PCIE_NOC_1_transactor->WLAST(CPM_PCIE_NOC_1_wlast);
  mp_CPM_PCIE_NOC_1_transactor->WSTRB(CPM_PCIE_NOC_1_wstrb);
  mp_CPM_PCIE_NOC_1_transactor->WVALID(CPM_PCIE_NOC_1_wvalid);
  mp_CPM_PCIE_NOC_1_transactor->ARREADY(CPM_PCIE_NOC_1_arready);
  mp_CPM_PCIE_NOC_1_transactor->AWREADY(CPM_PCIE_NOC_1_awready);
  mp_CPM_PCIE_NOC_1_transactor->BID(CPM_PCIE_NOC_1_bid);
  mp_CPM_PCIE_NOC_1_transactor->BRESP(CPM_PCIE_NOC_1_bresp);
  mp_CPM_PCIE_NOC_1_transactor->BVALID(CPM_PCIE_NOC_1_bvalid);
  mp_CPM_PCIE_NOC_1_transactor->RDATA(CPM_PCIE_NOC_1_rdata);
  mp_CPM_PCIE_NOC_1_transactor->RID(CPM_PCIE_NOC_1_rid);
  mp_CPM_PCIE_NOC_1_transactor->RLAST(CPM_PCIE_NOC_1_rlast);
  mp_CPM_PCIE_NOC_1_transactor->RRESP(CPM_PCIE_NOC_1_rresp);
  mp_CPM_PCIE_NOC_1_transactor->RVALID(CPM_PCIE_NOC_1_rvalid);
  mp_CPM_PCIE_NOC_1_transactor->RUSER(CPM_PCIE_NOC_1_ruser);
  mp_CPM_PCIE_NOC_1_transactor->WUSER(CPM_PCIE_NOC_1_wuser);
  mp_CPM_PCIE_NOC_1_transactor->WREADY(CPM_PCIE_NOC_1_wready);
  mp_CPM_PCIE_NOC_1_transactor->CLK(cpm_pcie_noc_axi1_clk);
  m_CPM_PCIE_NOC_1_transactor_rst_signal.write(1);
  mp_CPM_PCIE_NOC_1_transactor->RST(m_CPM_PCIE_NOC_1_transactor_rst_signal);
  // configure dma1_st_rx_msg_transactor
    xsc::common_cpp::properties dma1_st_rx_msg_transactor_param_props;
    dma1_st_rx_msg_transactor_param_props.addLong("TDATA_NUM_BYTES", "4");
    dma1_st_rx_msg_transactor_param_props.addLong("TDEST_WIDTH", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("TID_WIDTH", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("TUSER_WIDTH", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_TREADY", "1");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_TSTRB", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_TKEEP", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_TLAST", "1");
    dma1_st_rx_msg_transactor_param_props.addLong("FREQ_HZ", "429162384");
    dma1_st_rx_msg_transactor_param_props.addLong("HAS_RESET", "1");
    dma1_st_rx_msg_transactor_param_props.addFloat("PHASE", "0.0");
    dma1_st_rx_msg_transactor_param_props.addString("CLK_DOMAIN", "bd_a532_pspmc_0_0_pl0_ref_clk");
    dma1_st_rx_msg_transactor_param_props.addString("LAYERED_METADATA", "undef");
    dma1_st_rx_msg_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    dma1_st_rx_msg_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_dma1_st_rx_msg_transactor = new xtlm::xaxis_xtlm2pin_t<4,1,1,1,1,1>("dma1_st_rx_msg_transactor", dma1_st_rx_msg_transactor_param_props);
  mp_dma1_st_rx_msg_transactor->TLAST(dma1_st_rx_msg_tlast);
  mp_dma1_st_rx_msg_transactor->TVALID(dma1_st_rx_msg_tvalid);
  mp_dma1_st_rx_msg_transactor->TREADY(dma1_st_rx_msg_tready);
  mp_dma1_st_rx_msg_transactor->TDATA(dma1_st_rx_msg_tdata);
  mp_dma1_st_rx_msg_transactor->CLK(dma1_intrfc_clk);
  mp_dma1_st_rx_msg_transactor->RST(dma1_axi_aresetn);

  // initialize transactors stubs
  M_AXI_FPD_transactor_initiator_wr_socket_stub = nullptr;
  M_AXI_FPD_transactor_initiator_rd_socket_stub = nullptr;
  CPM_PCIE_NOC_0_transactor_initiator_wr_socket_stub = nullptr;
  CPM_PCIE_NOC_0_transactor_initiator_rd_socket_stub = nullptr;
  CPM_PCIE_NOC_1_transactor_initiator_wr_socket_stub = nullptr;
  CPM_PCIE_NOC_1_transactor_initiator_rd_socket_stub = nullptr;
  dma1_st_rx_msg_transactor_initiator_socket_stub = nullptr;

}

void cpm_qdma_ep_part_versal_cips_0_0::before_end_of_elaboration()
{
  // configure 'M_AXI_FPD' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("cpm_qdma_ep_part_versal_cips_0_0", "M_AXI_FPD_TLM_MODE") != 1)
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

  // configure 'CPM_PCIE_NOC_0' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("cpm_qdma_ep_part_versal_cips_0_0", "CPM_PCIE_NOC_0_TLM_MODE") != 1)
  {
    mp_impl->CPM_PCIE_NOC_0_tlm_aximm_read_socket->bind(*(mp_CPM_PCIE_NOC_0_transactor->rd_socket));
    mp_impl->CPM_PCIE_NOC_0_tlm_aximm_write_socket->bind(*(mp_CPM_PCIE_NOC_0_transactor->wr_socket));
  
  }
  else
  {
    CPM_PCIE_NOC_0_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    CPM_PCIE_NOC_0_transactor_initiator_wr_socket_stub->bind(*(mp_CPM_PCIE_NOC_0_transactor->wr_socket));
    CPM_PCIE_NOC_0_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    CPM_PCIE_NOC_0_transactor_initiator_rd_socket_stub->bind(*(mp_CPM_PCIE_NOC_0_transactor->rd_socket));
    mp_CPM_PCIE_NOC_0_transactor->disable_transactor();
  }

  // configure 'CPM_PCIE_NOC_1' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("cpm_qdma_ep_part_versal_cips_0_0", "CPM_PCIE_NOC_1_TLM_MODE") != 1)
  {
    mp_impl->CPM_PCIE_NOC_1_tlm_aximm_read_socket->bind(*(mp_CPM_PCIE_NOC_1_transactor->rd_socket));
    mp_impl->CPM_PCIE_NOC_1_tlm_aximm_write_socket->bind(*(mp_CPM_PCIE_NOC_1_transactor->wr_socket));
  
  }
  else
  {
    CPM_PCIE_NOC_1_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    CPM_PCIE_NOC_1_transactor_initiator_wr_socket_stub->bind(*(mp_CPM_PCIE_NOC_1_transactor->wr_socket));
    CPM_PCIE_NOC_1_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    CPM_PCIE_NOC_1_transactor_initiator_rd_socket_stub->bind(*(mp_CPM_PCIE_NOC_1_transactor->rd_socket));
    mp_CPM_PCIE_NOC_1_transactor->disable_transactor();
  }

  // configure 'dma1_st_rx_msg' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("cpm_qdma_ep_part_versal_cips_0_0", "dma1_st_rx_msg_TLM_MODE") != 1)
  {
    mp_impl->dma1_st_rx_msg_tlm_axis_socket->bind(*(mp_dma1_st_rx_msg_transactor->socket));
  
  }
  else
  {
    dma1_st_rx_msg_transactor_initiator_socket_stub = new xtlm::xtlm_axis_initiator_stub("socket",0);
    dma1_st_rx_msg_transactor_initiator_socket_stub->bind(*(mp_dma1_st_rx_msg_transactor->socket));
    mp_dma1_st_rx_msg_transactor->disable_transactor();
  }

}

#endif // MTI_SYSTEMC




cpm_qdma_ep_part_versal_cips_0_0::~cpm_qdma_ep_part_versal_cips_0_0()
{
  delete mp_M_AXI_FPD_transactor;

  delete mp_CPM_PCIE_NOC_0_transactor;

  delete mp_CPM_PCIE_NOC_1_transactor;

  delete mp_dma1_st_rx_msg_transactor;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(cpm_qdma_ep_part_versal_cips_0_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(cpm_qdma_ep_part_versal_cips_0_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(cpm_qdma_ep_part_versal_cips_0_0);
SC_REGISTER_BV(512);
#endif

