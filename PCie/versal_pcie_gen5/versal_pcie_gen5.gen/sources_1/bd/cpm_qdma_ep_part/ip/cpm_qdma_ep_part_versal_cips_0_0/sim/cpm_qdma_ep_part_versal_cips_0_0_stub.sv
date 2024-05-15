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
// Filename:    cpm_qdma_ep_part_versal_cips_0_0_stub.sv
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
module cpm_qdma_ep_part_versal_cips_0_0 (
  output bit_as_bool pl0_ref_clk,
  output bit_as_bool pl1_ref_clk,
  output bit_as_bool pl0_resetn,
  input bit_as_bool m_axi_fpd_aclk,
  output bit_as_bool cpm_pcie_noc_axi0_clk,
  output bit_as_bool cpm_pcie_noc_axi1_clk,
  input bit_as_bool dma1_intrfc_clk,
  output bit_as_bool cpm_misc_irq,
  output bit_as_bool cpm_cor_irq,
  output bit_as_bool cpm_uncor_irq,
  input bit_as_bool cpm_irq0,
  input bit_as_bool cpm_irq1,
  output bit_as_bool dma1_axi_aresetn,
  input bit_as_bool dma1_intrfc_resetn,
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
  output bit [63 : 0] CPM_PCIE_NOC_0_araddr,
  output bit [1 : 0] CPM_PCIE_NOC_0_arburst,
  output bit [3 : 0] CPM_PCIE_NOC_0_arcache,
  output bit [15 : 0] CPM_PCIE_NOC_0_arid,
  output bit [7 : 0] CPM_PCIE_NOC_0_arlen,
  output bit_as_bool CPM_PCIE_NOC_0_arlock,
  output bit [2 : 0] CPM_PCIE_NOC_0_arprot,
  output bit [3 : 0] CPM_PCIE_NOC_0_arqos,
  output bit [2 : 0] CPM_PCIE_NOC_0_arsize,
  output bit [17 : 0] CPM_PCIE_NOC_0_aruser,
  output bit_as_bool CPM_PCIE_NOC_0_arvalid,
  output bit [63 : 0] CPM_PCIE_NOC_0_awaddr,
  output bit [1 : 0] CPM_PCIE_NOC_0_awburst,
  output bit [3 : 0] CPM_PCIE_NOC_0_awcache,
  output bit [15 : 0] CPM_PCIE_NOC_0_awid,
  output bit [7 : 0] CPM_PCIE_NOC_0_awlen,
  output bit_as_bool CPM_PCIE_NOC_0_awlock,
  output bit [2 : 0] CPM_PCIE_NOC_0_awprot,
  output bit [3 : 0] CPM_PCIE_NOC_0_awqos,
  output bit [2 : 0] CPM_PCIE_NOC_0_awsize,
  output bit [17 : 0] CPM_PCIE_NOC_0_awuser,
  output bit_as_bool CPM_PCIE_NOC_0_awvalid,
  output bit_as_bool CPM_PCIE_NOC_0_bready,
  output bit_as_bool CPM_PCIE_NOC_0_rready,
  output bit [127 : 0] CPM_PCIE_NOC_0_wdata,
  output bit_as_bool CPM_PCIE_NOC_0_wlast,
  output bit [15 : 0] CPM_PCIE_NOC_0_wstrb,
  output bit_as_bool CPM_PCIE_NOC_0_wvalid,
  input bit_as_bool CPM_PCIE_NOC_0_arready,
  input bit_as_bool CPM_PCIE_NOC_0_awready,
  input bit [15 : 0] CPM_PCIE_NOC_0_bid,
  input bit [1 : 0] CPM_PCIE_NOC_0_bresp,
  input bit_as_bool CPM_PCIE_NOC_0_bvalid,
  input bit [127 : 0] CPM_PCIE_NOC_0_rdata,
  input bit [15 : 0] CPM_PCIE_NOC_0_rid,
  input bit_as_bool CPM_PCIE_NOC_0_rlast,
  input bit [1 : 0] CPM_PCIE_NOC_0_rresp,
  input bit_as_bool CPM_PCIE_NOC_0_rvalid,
  input bit [16 : 0] CPM_PCIE_NOC_0_ruser,
  output bit [16 : 0] CPM_PCIE_NOC_0_wuser,
  input bit_as_bool CPM_PCIE_NOC_0_wready,
  output bit [63 : 0] CPM_PCIE_NOC_1_araddr,
  output bit [1 : 0] CPM_PCIE_NOC_1_arburst,
  output bit [3 : 0] CPM_PCIE_NOC_1_arcache,
  output bit [15 : 0] CPM_PCIE_NOC_1_arid,
  output bit [7 : 0] CPM_PCIE_NOC_1_arlen,
  output bit_as_bool CPM_PCIE_NOC_1_arlock,
  output bit [2 : 0] CPM_PCIE_NOC_1_arprot,
  output bit [3 : 0] CPM_PCIE_NOC_1_arqos,
  output bit [2 : 0] CPM_PCIE_NOC_1_arsize,
  output bit [17 : 0] CPM_PCIE_NOC_1_aruser,
  output bit_as_bool CPM_PCIE_NOC_1_arvalid,
  output bit [63 : 0] CPM_PCIE_NOC_1_awaddr,
  output bit [1 : 0] CPM_PCIE_NOC_1_awburst,
  output bit [3 : 0] CPM_PCIE_NOC_1_awcache,
  output bit [15 : 0] CPM_PCIE_NOC_1_awid,
  output bit [7 : 0] CPM_PCIE_NOC_1_awlen,
  output bit_as_bool CPM_PCIE_NOC_1_awlock,
  output bit [2 : 0] CPM_PCIE_NOC_1_awprot,
  output bit [3 : 0] CPM_PCIE_NOC_1_awqos,
  output bit [2 : 0] CPM_PCIE_NOC_1_awsize,
  output bit [17 : 0] CPM_PCIE_NOC_1_awuser,
  output bit_as_bool CPM_PCIE_NOC_1_awvalid,
  output bit_as_bool CPM_PCIE_NOC_1_bready,
  output bit_as_bool CPM_PCIE_NOC_1_rready,
  output bit [127 : 0] CPM_PCIE_NOC_1_wdata,
  output bit_as_bool CPM_PCIE_NOC_1_wlast,
  output bit [15 : 0] CPM_PCIE_NOC_1_wstrb,
  output bit_as_bool CPM_PCIE_NOC_1_wvalid,
  input bit_as_bool CPM_PCIE_NOC_1_arready,
  input bit_as_bool CPM_PCIE_NOC_1_awready,
  input bit [15 : 0] CPM_PCIE_NOC_1_bid,
  input bit [1 : 0] CPM_PCIE_NOC_1_bresp,
  input bit_as_bool CPM_PCIE_NOC_1_bvalid,
  input bit [127 : 0] CPM_PCIE_NOC_1_rdata,
  input bit [15 : 0] CPM_PCIE_NOC_1_rid,
  input bit_as_bool CPM_PCIE_NOC_1_rlast,
  input bit [1 : 0] CPM_PCIE_NOC_1_rresp,
  input bit_as_bool CPM_PCIE_NOC_1_rvalid,
  input bit [16 : 0] CPM_PCIE_NOC_1_ruser,
  output bit [16 : 0] CPM_PCIE_NOC_1_wuser,
  input bit_as_bool CPM_PCIE_NOC_1_wready,
  output bit_as_bool dma1_mgmt_cpl_vld,
  output bit_as_bool dma1_mgmt_req_rdy,
  input bit_as_bool dma1_mgmt_cpl_rdy,
  input bit_as_bool dma1_mgmt_req_vld,
  output bit [1 : 0] dma1_mgmt_cpl_sts,
  output bit [31 : 0] dma1_mgmt_cpl_dat,
  input bit [1 : 0] dma1_mgmt_req_cmd,
  input bit [12 : 0] dma1_mgmt_req_fnc,
  input bit [5 : 0] dma1_mgmt_req_msc,
  input bit [31 : 0] dma1_mgmt_req_adr,
  input bit [31 : 0] dma1_mgmt_req_dat,
  output bit_as_bool dma1_st_rx_msg_tlast,
  output bit_as_bool dma1_st_rx_msg_tvalid,
  input bit_as_bool dma1_st_rx_msg_tready,
  output bit [31 : 0] dma1_st_rx_msg_tdata,
  output bit_as_bool dma1_c2h_byp_in_mm_0_ready,
  input bit_as_bool dma1_c2h_byp_in_mm_0_sdi,
  input bit_as_bool dma1_c2h_byp_in_mm_0_valid,
  input bit_as_bool dma1_c2h_byp_in_mm_0_error,
  input bit_as_bool dma1_c2h_byp_in_mm_0_no_dma,
  input bit_as_bool dma1_c2h_byp_in_mm_0_mrkr_req,
  input bit [15 : 0] dma1_c2h_byp_in_mm_0_len,
  input bit [11 : 0] dma1_c2h_byp_in_mm_0_qid,
  input bit [11 : 0] dma1_c2h_byp_in_mm_0_func,
  input bit [15 : 0] dma1_c2h_byp_in_mm_0_cidx,
  input bit [63 : 0] dma1_c2h_byp_in_mm_0_radr,
  input bit [63 : 0] dma1_c2h_byp_in_mm_0_wadr,
  input bit [2 : 0] dma1_c2h_byp_in_mm_0_port_id,
  output bit_as_bool dma1_c2h_byp_in_mm_1_ready,
  input bit_as_bool dma1_c2h_byp_in_mm_1_sdi,
  input bit_as_bool dma1_c2h_byp_in_mm_1_valid,
  input bit_as_bool dma1_c2h_byp_in_mm_1_error,
  input bit_as_bool dma1_c2h_byp_in_mm_1_no_dma,
  input bit_as_bool dma1_c2h_byp_in_mm_1_mrkr_req,
  input bit [15 : 0] dma1_c2h_byp_in_mm_1_len,
  input bit [11 : 0] dma1_c2h_byp_in_mm_1_qid,
  input bit [11 : 0] dma1_c2h_byp_in_mm_1_func,
  input bit [15 : 0] dma1_c2h_byp_in_mm_1_cidx,
  input bit [63 : 0] dma1_c2h_byp_in_mm_1_radr,
  input bit [63 : 0] dma1_c2h_byp_in_mm_1_wadr,
  input bit [2 : 0] dma1_c2h_byp_in_mm_1_port_id,
  output bit_as_bool dma1_c2h_byp_in_st_csh_ready,
  input bit_as_bool dma1_c2h_byp_in_st_csh_valid,
  input bit_as_bool dma1_c2h_byp_in_st_csh_error,
  input bit [11 : 0] dma1_c2h_byp_in_st_csh_qid,
  input bit [11 : 0] dma1_c2h_byp_in_st_csh_func,
  input bit [63 : 0] dma1_c2h_byp_in_st_csh_addr,
  input bit [2 : 0] dma1_c2h_byp_in_st_csh_port_id,
  input bit [6 : 0] dma1_c2h_byp_in_st_csh_pfch_tag,
  output bit_as_bool dma1_c2h_byp_out_valid,
  output bit_as_bool dma1_c2h_byp_out_error,
  output bit_as_bool dma1_c2h_byp_out_st_mm,
  output bit_as_bool dma1_c2h_byp_out_mm_chn,
  input bit_as_bool dma1_c2h_byp_out_ready,
  output bit [2 : 0] dma1_c2h_byp_out_fmt,
  output bit [11 : 0] dma1_c2h_byp_out_qid,
  output bit [255 : 0] dma1_c2h_byp_out_dsc,
  output bit [11 : 0] dma1_c2h_byp_out_func,
  output bit [15 : 0] dma1_c2h_byp_out_cidx,
  output bit [1 : 0] dma1_c2h_byp_out_dsc_sz,
  output bit [2 : 0] dma1_c2h_byp_out_port_id,
  output bit [6 : 0] dma1_c2h_byp_out_pfch_tag,
  output bit_as_bool dma1_h2c_byp_in_mm_0_ready,
  input bit_as_bool dma1_h2c_byp_in_mm_0_sdi,
  input bit_as_bool dma1_h2c_byp_in_mm_0_valid,
  input bit_as_bool dma1_h2c_byp_in_mm_0_error,
  input bit_as_bool dma1_h2c_byp_in_mm_0_no_dma,
  input bit_as_bool dma1_h2c_byp_in_mm_0_mrkr_req,
  input bit [15 : 0] dma1_h2c_byp_in_mm_0_len,
  input bit [11 : 0] dma1_h2c_byp_in_mm_0_qid,
  input bit [11 : 0] dma1_h2c_byp_in_mm_0_func,
  input bit [15 : 0] dma1_h2c_byp_in_mm_0_cidx,
  input bit [63 : 0] dma1_h2c_byp_in_mm_0_radr,
  input bit [63 : 0] dma1_h2c_byp_in_mm_0_wadr,
  input bit [2 : 0] dma1_h2c_byp_in_mm_0_port_id,
  output bit_as_bool dma1_h2c_byp_in_mm_1_ready,
  input bit_as_bool dma1_h2c_byp_in_mm_1_sdi,
  input bit_as_bool dma1_h2c_byp_in_mm_1_valid,
  input bit_as_bool dma1_h2c_byp_in_mm_1_error,
  input bit_as_bool dma1_h2c_byp_in_mm_1_no_dma,
  input bit_as_bool dma1_h2c_byp_in_mm_1_mrkr_req,
  input bit [15 : 0] dma1_h2c_byp_in_mm_1_len,
  input bit [11 : 0] dma1_h2c_byp_in_mm_1_qid,
  input bit [11 : 0] dma1_h2c_byp_in_mm_1_func,
  input bit [15 : 0] dma1_h2c_byp_in_mm_1_cidx,
  input bit [63 : 0] dma1_h2c_byp_in_mm_1_radr,
  input bit [63 : 0] dma1_h2c_byp_in_mm_1_wadr,
  input bit [2 : 0] dma1_h2c_byp_in_mm_1_port_id,
  output bit_as_bool dma1_h2c_byp_in_st_ready,
  input bit_as_bool dma1_h2c_byp_in_st_eop,
  input bit_as_bool dma1_h2c_byp_in_st_sdi,
  input bit_as_bool dma1_h2c_byp_in_st_sop,
  input bit_as_bool dma1_h2c_byp_in_st_valid,
  input bit_as_bool dma1_h2c_byp_in_st_error,
  input bit_as_bool dma1_h2c_byp_in_st_no_dma,
  input bit_as_bool dma1_h2c_byp_in_st_mrkr_req,
  input bit [15 : 0] dma1_h2c_byp_in_st_len,
  input bit [11 : 0] dma1_h2c_byp_in_st_qid,
  input bit [11 : 0] dma1_h2c_byp_in_st_func,
  input bit [63 : 0] dma1_h2c_byp_in_st_addr,
  input bit [15 : 0] dma1_h2c_byp_in_st_cidx,
  input bit [2 : 0] dma1_h2c_byp_in_st_port_id,
  output bit_as_bool dma1_h2c_byp_out_valid,
  output bit_as_bool dma1_h2c_byp_out_error,
  output bit_as_bool dma1_h2c_byp_out_st_mm,
  output bit_as_bool dma1_h2c_byp_out_mm_chn,
  input bit_as_bool dma1_h2c_byp_out_ready,
  output bit [2 : 0] dma1_h2c_byp_out_fmt,
  output bit [11 : 0] dma1_h2c_byp_out_qid,
  output bit [255 : 0] dma1_h2c_byp_out_dsc,
  output bit [11 : 0] dma1_h2c_byp_out_func,
  output bit [15 : 0] dma1_h2c_byp_out_cidx,
  output bit [1 : 0] dma1_h2c_byp_out_dsc_sz,
  output bit [2 : 0] dma1_h2c_byp_out_port_id,
  output bit_as_bool dma1_axis_c2h_dmawr_cmp,
  output bit_as_bool dma1_axis_c2h_dmawr_target_vch,
  output bit [2 : 0] dma1_axis_c2h_dmawr_port_id,
  output bit_as_bool dma1_s_axis_c2h_tready,
  input bit_as_bool dma1_s_axis_c2h_tlast,
  input bit_as_bool dma1_s_axis_c2h_tvalid,
  input bit [31 : 0] dma1_s_axis_c2h_tcrc,
  input bit [511 : 0] dma1_s_axis_c2h_tdata,
  input bit [5 : 0] dma1_s_axis_c2h_mty,
  input bit [6 : 0] dma1_s_axis_c2h_ecc,
  input bit_as_bool dma1_s_axis_c2h_ctrl_marker,
  input bit_as_bool dma1_s_axis_c2h_ctrl_has_cmpt,
  input bit [15 : 0] dma1_s_axis_c2h_ctrl_len,
  input bit [11 : 0] dma1_s_axis_c2h_ctrl_qid,
  input bit [2 : 0] dma1_s_axis_c2h_ctrl_port_id,
  input bit_as_bool dma1_s_axis_c2h_cmpt_marker,
  input bit_as_bool dma1_s_axis_c2h_cmpt_user_trig,
  input bit [1 : 0] dma1_s_axis_c2h_cmpt_size,
  input bit [12 : 0] dma1_s_axis_c2h_cmpt_qid,
  input bit_as_bool dma1_s_axis_c2h_cmpt_no_wrb_marker,
  input bit [2 : 0] dma1_s_axis_c2h_cmpt_port_id,
  input bit [2 : 0] dma1_s_axis_c2h_cmpt_col_idx,
  input bit [2 : 0] dma1_s_axis_c2h_cmpt_err_idx,
  input bit [15 : 0] dma1_s_axis_c2h_cmpt_wait_pld_pkt_id,
  output bit_as_bool dma1_s_axis_c2h_cmpt_tready,
  input bit_as_bool dma1_s_axis_c2h_cmpt_tvalid,
  input bit [15 : 0] dma1_s_axis_c2h_cmpt_dpar,
  input bit [511 : 0] dma1_s_axis_c2h_cmpt_data,
  input bit [1 : 0] dma1_s_axis_c2h_cmpt_cmpt_type,
  output bit_as_bool dma1_m_axis_h2c_tlast,
  output bit_as_bool dma1_m_axis_h2c_err,
  output bit_as_bool dma1_m_axis_h2c_tvalid,
  output bit [511 : 0] dma1_m_axis_h2c_tdata,
  output bit_as_bool dma1_m_axis_h2c_zero_byte,
  input bit_as_bool dma1_m_axis_h2c_tready,
  output bit [31 : 0] dma1_m_axis_h2c_tcrc,
  output bit [5 : 0] dma1_m_axis_h2c_mty,
  output bit [11 : 0] dma1_m_axis_h2c_qid,
  output bit [31 : 0] dma1_m_axis_h2c_mdata,
  output bit [2 : 0] dma1_m_axis_h2c_port_id,
  output bit_as_bool dma1_axis_c2h_status_last,
  output bit_as_bool dma1_axis_c2h_status_drop,
  output bit_as_bool dma1_axis_c2h_status_error,
  output bit_as_bool dma1_axis_c2h_status_valid,
  output bit_as_bool dma1_axis_c2h_status_status_cmp,
  output bit [11 : 0] dma1_axis_c2h_status_qid,
  output bit_as_bool dma1_qsts_out_vld,
  output bit [7 : 0] dma1_qsts_out_op,
  input bit_as_bool dma1_qsts_out_rdy,
  output bit [12 : 0] dma1_qsts_out_qid,
  output bit [63 : 0] dma1_qsts_out_data,
  output bit [2 : 0] dma1_qsts_out_port_id,
  output bit_as_bool dma1_dsc_crdt_in_rdy,
  input bit_as_bool dma1_dsc_crdt_in_dir,
  input bit_as_bool dma1_dsc_crdt_in_valid,
  input bit_as_bool dma1_dsc_crdt_in_fence,
  input bit [11 : 0] dma1_dsc_crdt_in_qid,
  input bit [15 : 0] dma1_dsc_crdt_in_crdt,
  output bit_as_bool dma1_usr_irq_ack,
  output bit_as_bool dma1_usr_irq_fail,
  input bit_as_bool dma1_usr_irq_valid,
  input bit [10 : 0] dma1_usr_irq_vec,
  input bit [12 : 0] dma1_usr_irq_fnc,
  output bit_as_bool dma1_tm_dsc_sts_mm,
  output bit_as_bool dma1_tm_dsc_sts_qen,
  output bit_as_bool dma1_tm_dsc_sts_byp,
  output bit_as_bool dma1_tm_dsc_sts_dir,
  output bit_as_bool dma1_tm_dsc_sts_error,
  output bit_as_bool dma1_tm_dsc_sts_valid,
  output bit_as_bool dma1_tm_dsc_sts_qinv,
  output bit_as_bool dma1_tm_dsc_sts_irq_arm,
  input bit_as_bool dma1_tm_dsc_sts_rdy,
  output bit [11 : 0] dma1_tm_dsc_sts_qid,
  output bit [15 : 0] dma1_tm_dsc_sts_avl,
  output bit [15 : 0] dma1_tm_dsc_sts_pidx,
  output bit [2 : 0] dma1_tm_dsc_sts_port_id,
  output bit_as_bool dma1_usr_flr_set,
  output bit_as_bool dma1_usr_flr_clear,
  output bit [12 : 0] dma1_usr_flr_fnc,
  input bit_as_bool dma1_usr_flr_done_vld,
  input bit [12 : 0] dma1_usr_flr_done_fnc,
  input bit [7 : 0] PCIE1_GT_grx_n,
  output bit [7 : 0] PCIE1_GT_gtx_n,
  input bit [7 : 0] PCIE1_GT_grx_p,
  output bit [7 : 0] PCIE1_GT_gtx_p,
  input bit_as_bool gt_refclk1_clk_n,
  input bit_as_bool gt_refclk1_clk_p,
  output bit [41 : 0] pcie1_pipe_ep_tx_0,
  input bit [41 : 0] pcie1_pipe_ep_rx_0,
  output bit [41 : 0] pcie1_pipe_ep_tx_1,
  input bit [41 : 0] pcie1_pipe_ep_rx_1,
  output bit [41 : 0] pcie1_pipe_ep_tx_2,
  input bit [41 : 0] pcie1_pipe_ep_rx_2,
  output bit [41 : 0] pcie1_pipe_ep_tx_3,
  input bit [41 : 0] pcie1_pipe_ep_rx_3,
  output bit [41 : 0] pcie1_pipe_ep_tx_4,
  input bit [41 : 0] pcie1_pipe_ep_rx_4,
  output bit [41 : 0] pcie1_pipe_ep_tx_5,
  input bit [41 : 0] pcie1_pipe_ep_rx_5,
  output bit [41 : 0] pcie1_pipe_ep_tx_6,
  input bit [41 : 0] pcie1_pipe_ep_rx_6,
  output bit [41 : 0] pcie1_pipe_ep_tx_7,
  input bit [41 : 0] pcie1_pipe_ep_rx_7,
  output bit [41 : 0] pcie1_pipe_ep_tx_8,
  input bit [41 : 0] pcie1_pipe_ep_rx_8,
  output bit [41 : 0] pcie1_pipe_ep_tx_9,
  input bit [41 : 0] pcie1_pipe_ep_rx_9,
  output bit [41 : 0] pcie1_pipe_ep_tx_10,
  input bit [41 : 0] pcie1_pipe_ep_rx_10,
  output bit [41 : 0] pcie1_pipe_ep_tx_11,
  input bit [41 : 0] pcie1_pipe_ep_rx_11,
  output bit [41 : 0] pcie1_pipe_ep_tx_12,
  input bit [41 : 0] pcie1_pipe_ep_rx_12,
  output bit [41 : 0] pcie1_pipe_ep_tx_13,
  input bit [41 : 0] pcie1_pipe_ep_rx_13,
  output bit [41 : 0] pcie1_pipe_ep_tx_14,
  input bit [41 : 0] pcie1_pipe_ep_rx_14,
  output bit [41 : 0] pcie1_pipe_ep_tx_15,
  input bit [41 : 0] pcie1_pipe_ep_rx_15,
  input bit [13 : 0] pcie1_pipe_ep_commands_in,
  output bit [13 : 0] pcie1_pipe_ep_commands_out
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module cpm_qdma_ep_part_versal_cips_0_0 (pl0_ref_clk,pl1_ref_clk,pl0_resetn,m_axi_fpd_aclk,cpm_pcie_noc_axi0_clk,cpm_pcie_noc_axi1_clk,dma1_intrfc_clk,cpm_misc_irq,cpm_cor_irq,cpm_uncor_irq,cpm_irq0,cpm_irq1,dma1_axi_aresetn,dma1_intrfc_resetn,M_AXI_FPD_awid,M_AXI_FPD_awaddr,M_AXI_FPD_awlen,M_AXI_FPD_awsize,M_AXI_FPD_awburst,M_AXI_FPD_awlock,M_AXI_FPD_awcache,M_AXI_FPD_awprot,M_AXI_FPD_awvalid,M_AXI_FPD_awuser,M_AXI_FPD_awready,M_AXI_FPD_wlast,M_AXI_FPD_wvalid,M_AXI_FPD_wready,M_AXI_FPD_bid,M_AXI_FPD_bresp,M_AXI_FPD_bvalid,M_AXI_FPD_bready,M_AXI_FPD_arid,M_AXI_FPD_araddr,M_AXI_FPD_arlen,M_AXI_FPD_arsize,M_AXI_FPD_arburst,M_AXI_FPD_arlock,M_AXI_FPD_arcache,M_AXI_FPD_arprot,M_AXI_FPD_arvalid,M_AXI_FPD_aruser,M_AXI_FPD_arready,M_AXI_FPD_rid,M_AXI_FPD_rresp,M_AXI_FPD_rlast,M_AXI_FPD_rvalid,M_AXI_FPD_rready,M_AXI_FPD_awqos,M_AXI_FPD_arqos,M_AXI_FPD_wdata,M_AXI_FPD_wstrb,M_AXI_FPD_rdata,CPM_PCIE_NOC_0_araddr,CPM_PCIE_NOC_0_arburst,CPM_PCIE_NOC_0_arcache,CPM_PCIE_NOC_0_arid,CPM_PCIE_NOC_0_arlen,CPM_PCIE_NOC_0_arlock,CPM_PCIE_NOC_0_arprot,CPM_PCIE_NOC_0_arqos,CPM_PCIE_NOC_0_arsize,CPM_PCIE_NOC_0_aruser,CPM_PCIE_NOC_0_arvalid,CPM_PCIE_NOC_0_awaddr,CPM_PCIE_NOC_0_awburst,CPM_PCIE_NOC_0_awcache,CPM_PCIE_NOC_0_awid,CPM_PCIE_NOC_0_awlen,CPM_PCIE_NOC_0_awlock,CPM_PCIE_NOC_0_awprot,CPM_PCIE_NOC_0_awqos,CPM_PCIE_NOC_0_awsize,CPM_PCIE_NOC_0_awuser,CPM_PCIE_NOC_0_awvalid,CPM_PCIE_NOC_0_bready,CPM_PCIE_NOC_0_rready,CPM_PCIE_NOC_0_wdata,CPM_PCIE_NOC_0_wlast,CPM_PCIE_NOC_0_wstrb,CPM_PCIE_NOC_0_wvalid,CPM_PCIE_NOC_0_arready,CPM_PCIE_NOC_0_awready,CPM_PCIE_NOC_0_bid,CPM_PCIE_NOC_0_bresp,CPM_PCIE_NOC_0_bvalid,CPM_PCIE_NOC_0_rdata,CPM_PCIE_NOC_0_rid,CPM_PCIE_NOC_0_rlast,CPM_PCIE_NOC_0_rresp,CPM_PCIE_NOC_0_rvalid,CPM_PCIE_NOC_0_ruser,CPM_PCIE_NOC_0_wuser,CPM_PCIE_NOC_0_wready,CPM_PCIE_NOC_1_araddr,CPM_PCIE_NOC_1_arburst,CPM_PCIE_NOC_1_arcache,CPM_PCIE_NOC_1_arid,CPM_PCIE_NOC_1_arlen,CPM_PCIE_NOC_1_arlock,CPM_PCIE_NOC_1_arprot,CPM_PCIE_NOC_1_arqos,CPM_PCIE_NOC_1_arsize,CPM_PCIE_NOC_1_aruser,CPM_PCIE_NOC_1_arvalid,CPM_PCIE_NOC_1_awaddr,CPM_PCIE_NOC_1_awburst,CPM_PCIE_NOC_1_awcache,CPM_PCIE_NOC_1_awid,CPM_PCIE_NOC_1_awlen,CPM_PCIE_NOC_1_awlock,CPM_PCIE_NOC_1_awprot,CPM_PCIE_NOC_1_awqos,CPM_PCIE_NOC_1_awsize,CPM_PCIE_NOC_1_awuser,CPM_PCIE_NOC_1_awvalid,CPM_PCIE_NOC_1_bready,CPM_PCIE_NOC_1_rready,CPM_PCIE_NOC_1_wdata,CPM_PCIE_NOC_1_wlast,CPM_PCIE_NOC_1_wstrb,CPM_PCIE_NOC_1_wvalid,CPM_PCIE_NOC_1_arready,CPM_PCIE_NOC_1_awready,CPM_PCIE_NOC_1_bid,CPM_PCIE_NOC_1_bresp,CPM_PCIE_NOC_1_bvalid,CPM_PCIE_NOC_1_rdata,CPM_PCIE_NOC_1_rid,CPM_PCIE_NOC_1_rlast,CPM_PCIE_NOC_1_rresp,CPM_PCIE_NOC_1_rvalid,CPM_PCIE_NOC_1_ruser,CPM_PCIE_NOC_1_wuser,CPM_PCIE_NOC_1_wready,dma1_mgmt_cpl_vld,dma1_mgmt_req_rdy,dma1_mgmt_cpl_rdy,dma1_mgmt_req_vld,dma1_mgmt_cpl_sts,dma1_mgmt_cpl_dat,dma1_mgmt_req_cmd,dma1_mgmt_req_fnc,dma1_mgmt_req_msc,dma1_mgmt_req_adr,dma1_mgmt_req_dat,dma1_st_rx_msg_tlast,dma1_st_rx_msg_tvalid,dma1_st_rx_msg_tready,dma1_st_rx_msg_tdata,dma1_c2h_byp_in_mm_0_ready,dma1_c2h_byp_in_mm_0_sdi,dma1_c2h_byp_in_mm_0_valid,dma1_c2h_byp_in_mm_0_error,dma1_c2h_byp_in_mm_0_no_dma,dma1_c2h_byp_in_mm_0_mrkr_req,dma1_c2h_byp_in_mm_0_len,dma1_c2h_byp_in_mm_0_qid,dma1_c2h_byp_in_mm_0_func,dma1_c2h_byp_in_mm_0_cidx,dma1_c2h_byp_in_mm_0_radr,dma1_c2h_byp_in_mm_0_wadr,dma1_c2h_byp_in_mm_0_port_id,dma1_c2h_byp_in_mm_1_ready,dma1_c2h_byp_in_mm_1_sdi,dma1_c2h_byp_in_mm_1_valid,dma1_c2h_byp_in_mm_1_error,dma1_c2h_byp_in_mm_1_no_dma,dma1_c2h_byp_in_mm_1_mrkr_req,dma1_c2h_byp_in_mm_1_len,dma1_c2h_byp_in_mm_1_qid,dma1_c2h_byp_in_mm_1_func,dma1_c2h_byp_in_mm_1_cidx,dma1_c2h_byp_in_mm_1_radr,dma1_c2h_byp_in_mm_1_wadr,dma1_c2h_byp_in_mm_1_port_id,dma1_c2h_byp_in_st_csh_ready,dma1_c2h_byp_in_st_csh_valid,dma1_c2h_byp_in_st_csh_error,dma1_c2h_byp_in_st_csh_qid,dma1_c2h_byp_in_st_csh_func,dma1_c2h_byp_in_st_csh_addr,dma1_c2h_byp_in_st_csh_port_id,dma1_c2h_byp_in_st_csh_pfch_tag,dma1_c2h_byp_out_valid,dma1_c2h_byp_out_error,dma1_c2h_byp_out_st_mm,dma1_c2h_byp_out_mm_chn,dma1_c2h_byp_out_ready,dma1_c2h_byp_out_fmt,dma1_c2h_byp_out_qid,dma1_c2h_byp_out_dsc,dma1_c2h_byp_out_func,dma1_c2h_byp_out_cidx,dma1_c2h_byp_out_dsc_sz,dma1_c2h_byp_out_port_id,dma1_c2h_byp_out_pfch_tag,dma1_h2c_byp_in_mm_0_ready,dma1_h2c_byp_in_mm_0_sdi,dma1_h2c_byp_in_mm_0_valid,dma1_h2c_byp_in_mm_0_error,dma1_h2c_byp_in_mm_0_no_dma,dma1_h2c_byp_in_mm_0_mrkr_req,dma1_h2c_byp_in_mm_0_len,dma1_h2c_byp_in_mm_0_qid,dma1_h2c_byp_in_mm_0_func,dma1_h2c_byp_in_mm_0_cidx,dma1_h2c_byp_in_mm_0_radr,dma1_h2c_byp_in_mm_0_wadr,dma1_h2c_byp_in_mm_0_port_id,dma1_h2c_byp_in_mm_1_ready,dma1_h2c_byp_in_mm_1_sdi,dma1_h2c_byp_in_mm_1_valid,dma1_h2c_byp_in_mm_1_error,dma1_h2c_byp_in_mm_1_no_dma,dma1_h2c_byp_in_mm_1_mrkr_req,dma1_h2c_byp_in_mm_1_len,dma1_h2c_byp_in_mm_1_qid,dma1_h2c_byp_in_mm_1_func,dma1_h2c_byp_in_mm_1_cidx,dma1_h2c_byp_in_mm_1_radr,dma1_h2c_byp_in_mm_1_wadr,dma1_h2c_byp_in_mm_1_port_id,dma1_h2c_byp_in_st_ready,dma1_h2c_byp_in_st_eop,dma1_h2c_byp_in_st_sdi,dma1_h2c_byp_in_st_sop,dma1_h2c_byp_in_st_valid,dma1_h2c_byp_in_st_error,dma1_h2c_byp_in_st_no_dma,dma1_h2c_byp_in_st_mrkr_req,dma1_h2c_byp_in_st_len,dma1_h2c_byp_in_st_qid,dma1_h2c_byp_in_st_func,dma1_h2c_byp_in_st_addr,dma1_h2c_byp_in_st_cidx,dma1_h2c_byp_in_st_port_id,dma1_h2c_byp_out_valid,dma1_h2c_byp_out_error,dma1_h2c_byp_out_st_mm,dma1_h2c_byp_out_mm_chn,dma1_h2c_byp_out_ready,dma1_h2c_byp_out_fmt,dma1_h2c_byp_out_qid,dma1_h2c_byp_out_dsc,dma1_h2c_byp_out_func,dma1_h2c_byp_out_cidx,dma1_h2c_byp_out_dsc_sz,dma1_h2c_byp_out_port_id,dma1_axis_c2h_dmawr_cmp,dma1_axis_c2h_dmawr_target_vch,dma1_axis_c2h_dmawr_port_id,dma1_s_axis_c2h_tready,dma1_s_axis_c2h_tlast,dma1_s_axis_c2h_tvalid,dma1_s_axis_c2h_tcrc,dma1_s_axis_c2h_tdata,dma1_s_axis_c2h_mty,dma1_s_axis_c2h_ecc,dma1_s_axis_c2h_ctrl_marker,dma1_s_axis_c2h_ctrl_has_cmpt,dma1_s_axis_c2h_ctrl_len,dma1_s_axis_c2h_ctrl_qid,dma1_s_axis_c2h_ctrl_port_id,dma1_s_axis_c2h_cmpt_marker,dma1_s_axis_c2h_cmpt_user_trig,dma1_s_axis_c2h_cmpt_size,dma1_s_axis_c2h_cmpt_qid,dma1_s_axis_c2h_cmpt_no_wrb_marker,dma1_s_axis_c2h_cmpt_port_id,dma1_s_axis_c2h_cmpt_col_idx,dma1_s_axis_c2h_cmpt_err_idx,dma1_s_axis_c2h_cmpt_wait_pld_pkt_id,dma1_s_axis_c2h_cmpt_tready,dma1_s_axis_c2h_cmpt_tvalid,dma1_s_axis_c2h_cmpt_dpar,dma1_s_axis_c2h_cmpt_data,dma1_s_axis_c2h_cmpt_cmpt_type,dma1_m_axis_h2c_tlast,dma1_m_axis_h2c_err,dma1_m_axis_h2c_tvalid,dma1_m_axis_h2c_tdata,dma1_m_axis_h2c_zero_byte,dma1_m_axis_h2c_tready,dma1_m_axis_h2c_tcrc,dma1_m_axis_h2c_mty,dma1_m_axis_h2c_qid,dma1_m_axis_h2c_mdata,dma1_m_axis_h2c_port_id,dma1_axis_c2h_status_last,dma1_axis_c2h_status_drop,dma1_axis_c2h_status_error,dma1_axis_c2h_status_valid,dma1_axis_c2h_status_status_cmp,dma1_axis_c2h_status_qid,dma1_qsts_out_vld,dma1_qsts_out_op,dma1_qsts_out_rdy,dma1_qsts_out_qid,dma1_qsts_out_data,dma1_qsts_out_port_id,dma1_dsc_crdt_in_rdy,dma1_dsc_crdt_in_dir,dma1_dsc_crdt_in_valid,dma1_dsc_crdt_in_fence,dma1_dsc_crdt_in_qid,dma1_dsc_crdt_in_crdt,dma1_usr_irq_ack,dma1_usr_irq_fail,dma1_usr_irq_valid,dma1_usr_irq_vec,dma1_usr_irq_fnc,dma1_tm_dsc_sts_mm,dma1_tm_dsc_sts_qen,dma1_tm_dsc_sts_byp,dma1_tm_dsc_sts_dir,dma1_tm_dsc_sts_error,dma1_tm_dsc_sts_valid,dma1_tm_dsc_sts_qinv,dma1_tm_dsc_sts_irq_arm,dma1_tm_dsc_sts_rdy,dma1_tm_dsc_sts_qid,dma1_tm_dsc_sts_avl,dma1_tm_dsc_sts_pidx,dma1_tm_dsc_sts_port_id,dma1_usr_flr_set,dma1_usr_flr_clear,dma1_usr_flr_fnc,dma1_usr_flr_done_vld,dma1_usr_flr_done_fnc,PCIE1_GT_grx_n,PCIE1_GT_gtx_n,PCIE1_GT_grx_p,PCIE1_GT_gtx_p,gt_refclk1_clk_n,gt_refclk1_clk_p,pcie1_pipe_ep_tx_0,pcie1_pipe_ep_rx_0,pcie1_pipe_ep_tx_1,pcie1_pipe_ep_rx_1,pcie1_pipe_ep_tx_2,pcie1_pipe_ep_rx_2,pcie1_pipe_ep_tx_3,pcie1_pipe_ep_rx_3,pcie1_pipe_ep_tx_4,pcie1_pipe_ep_rx_4,pcie1_pipe_ep_tx_5,pcie1_pipe_ep_rx_5,pcie1_pipe_ep_tx_6,pcie1_pipe_ep_rx_6,pcie1_pipe_ep_tx_7,pcie1_pipe_ep_rx_7,pcie1_pipe_ep_tx_8,pcie1_pipe_ep_rx_8,pcie1_pipe_ep_tx_9,pcie1_pipe_ep_rx_9,pcie1_pipe_ep_tx_10,pcie1_pipe_ep_rx_10,pcie1_pipe_ep_tx_11,pcie1_pipe_ep_rx_11,pcie1_pipe_ep_tx_12,pcie1_pipe_ep_rx_12,pcie1_pipe_ep_tx_13,pcie1_pipe_ep_rx_13,pcie1_pipe_ep_tx_14,pcie1_pipe_ep_rx_14,pcie1_pipe_ep_tx_15,pcie1_pipe_ep_rx_15,pcie1_pipe_ep_commands_in,pcie1_pipe_ep_commands_out)
(* integer foreign = "SystemC";
*);
  output wire pl0_ref_clk;
  output wire pl1_ref_clk;
  output wire pl0_resetn;
  input bit m_axi_fpd_aclk;
  output wire cpm_pcie_noc_axi0_clk;
  output wire cpm_pcie_noc_axi1_clk;
  input bit dma1_intrfc_clk;
  output wire cpm_misc_irq;
  output wire cpm_cor_irq;
  output wire cpm_uncor_irq;
  input bit cpm_irq0;
  input bit cpm_irq1;
  output wire dma1_axi_aresetn;
  input bit dma1_intrfc_resetn;
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
  output wire [63 : 0] CPM_PCIE_NOC_0_araddr;
  output wire [1 : 0] CPM_PCIE_NOC_0_arburst;
  output wire [3 : 0] CPM_PCIE_NOC_0_arcache;
  output wire [15 : 0] CPM_PCIE_NOC_0_arid;
  output wire [7 : 0] CPM_PCIE_NOC_0_arlen;
  output wire CPM_PCIE_NOC_0_arlock;
  output wire [2 : 0] CPM_PCIE_NOC_0_arprot;
  output wire [3 : 0] CPM_PCIE_NOC_0_arqos;
  output wire [2 : 0] CPM_PCIE_NOC_0_arsize;
  output wire [17 : 0] CPM_PCIE_NOC_0_aruser;
  output wire CPM_PCIE_NOC_0_arvalid;
  output wire [63 : 0] CPM_PCIE_NOC_0_awaddr;
  output wire [1 : 0] CPM_PCIE_NOC_0_awburst;
  output wire [3 : 0] CPM_PCIE_NOC_0_awcache;
  output wire [15 : 0] CPM_PCIE_NOC_0_awid;
  output wire [7 : 0] CPM_PCIE_NOC_0_awlen;
  output wire CPM_PCIE_NOC_0_awlock;
  output wire [2 : 0] CPM_PCIE_NOC_0_awprot;
  output wire [3 : 0] CPM_PCIE_NOC_0_awqos;
  output wire [2 : 0] CPM_PCIE_NOC_0_awsize;
  output wire [17 : 0] CPM_PCIE_NOC_0_awuser;
  output wire CPM_PCIE_NOC_0_awvalid;
  output wire CPM_PCIE_NOC_0_bready;
  output wire CPM_PCIE_NOC_0_rready;
  output wire [127 : 0] CPM_PCIE_NOC_0_wdata;
  output wire CPM_PCIE_NOC_0_wlast;
  output wire [15 : 0] CPM_PCIE_NOC_0_wstrb;
  output wire CPM_PCIE_NOC_0_wvalid;
  input bit CPM_PCIE_NOC_0_arready;
  input bit CPM_PCIE_NOC_0_awready;
  input bit [15 : 0] CPM_PCIE_NOC_0_bid;
  input bit [1 : 0] CPM_PCIE_NOC_0_bresp;
  input bit CPM_PCIE_NOC_0_bvalid;
  input bit [127 : 0] CPM_PCIE_NOC_0_rdata;
  input bit [15 : 0] CPM_PCIE_NOC_0_rid;
  input bit CPM_PCIE_NOC_0_rlast;
  input bit [1 : 0] CPM_PCIE_NOC_0_rresp;
  input bit CPM_PCIE_NOC_0_rvalid;
  input bit [16 : 0] CPM_PCIE_NOC_0_ruser;
  output wire [16 : 0] CPM_PCIE_NOC_0_wuser;
  input bit CPM_PCIE_NOC_0_wready;
  output wire [63 : 0] CPM_PCIE_NOC_1_araddr;
  output wire [1 : 0] CPM_PCIE_NOC_1_arburst;
  output wire [3 : 0] CPM_PCIE_NOC_1_arcache;
  output wire [15 : 0] CPM_PCIE_NOC_1_arid;
  output wire [7 : 0] CPM_PCIE_NOC_1_arlen;
  output wire CPM_PCIE_NOC_1_arlock;
  output wire [2 : 0] CPM_PCIE_NOC_1_arprot;
  output wire [3 : 0] CPM_PCIE_NOC_1_arqos;
  output wire [2 : 0] CPM_PCIE_NOC_1_arsize;
  output wire [17 : 0] CPM_PCIE_NOC_1_aruser;
  output wire CPM_PCIE_NOC_1_arvalid;
  output wire [63 : 0] CPM_PCIE_NOC_1_awaddr;
  output wire [1 : 0] CPM_PCIE_NOC_1_awburst;
  output wire [3 : 0] CPM_PCIE_NOC_1_awcache;
  output wire [15 : 0] CPM_PCIE_NOC_1_awid;
  output wire [7 : 0] CPM_PCIE_NOC_1_awlen;
  output wire CPM_PCIE_NOC_1_awlock;
  output wire [2 : 0] CPM_PCIE_NOC_1_awprot;
  output wire [3 : 0] CPM_PCIE_NOC_1_awqos;
  output wire [2 : 0] CPM_PCIE_NOC_1_awsize;
  output wire [17 : 0] CPM_PCIE_NOC_1_awuser;
  output wire CPM_PCIE_NOC_1_awvalid;
  output wire CPM_PCIE_NOC_1_bready;
  output wire CPM_PCIE_NOC_1_rready;
  output wire [127 : 0] CPM_PCIE_NOC_1_wdata;
  output wire CPM_PCIE_NOC_1_wlast;
  output wire [15 : 0] CPM_PCIE_NOC_1_wstrb;
  output wire CPM_PCIE_NOC_1_wvalid;
  input bit CPM_PCIE_NOC_1_arready;
  input bit CPM_PCIE_NOC_1_awready;
  input bit [15 : 0] CPM_PCIE_NOC_1_bid;
  input bit [1 : 0] CPM_PCIE_NOC_1_bresp;
  input bit CPM_PCIE_NOC_1_bvalid;
  input bit [127 : 0] CPM_PCIE_NOC_1_rdata;
  input bit [15 : 0] CPM_PCIE_NOC_1_rid;
  input bit CPM_PCIE_NOC_1_rlast;
  input bit [1 : 0] CPM_PCIE_NOC_1_rresp;
  input bit CPM_PCIE_NOC_1_rvalid;
  input bit [16 : 0] CPM_PCIE_NOC_1_ruser;
  output wire [16 : 0] CPM_PCIE_NOC_1_wuser;
  input bit CPM_PCIE_NOC_1_wready;
  output wire dma1_mgmt_cpl_vld;
  output wire dma1_mgmt_req_rdy;
  input bit dma1_mgmt_cpl_rdy;
  input bit dma1_mgmt_req_vld;
  output wire [1 : 0] dma1_mgmt_cpl_sts;
  output wire [31 : 0] dma1_mgmt_cpl_dat;
  input bit [1 : 0] dma1_mgmt_req_cmd;
  input bit [12 : 0] dma1_mgmt_req_fnc;
  input bit [5 : 0] dma1_mgmt_req_msc;
  input bit [31 : 0] dma1_mgmt_req_adr;
  input bit [31 : 0] dma1_mgmt_req_dat;
  output wire dma1_st_rx_msg_tlast;
  output wire dma1_st_rx_msg_tvalid;
  input bit dma1_st_rx_msg_tready;
  output wire [31 : 0] dma1_st_rx_msg_tdata;
  output wire dma1_c2h_byp_in_mm_0_ready;
  input bit dma1_c2h_byp_in_mm_0_sdi;
  input bit dma1_c2h_byp_in_mm_0_valid;
  input bit dma1_c2h_byp_in_mm_0_error;
  input bit dma1_c2h_byp_in_mm_0_no_dma;
  input bit dma1_c2h_byp_in_mm_0_mrkr_req;
  input bit [15 : 0] dma1_c2h_byp_in_mm_0_len;
  input bit [11 : 0] dma1_c2h_byp_in_mm_0_qid;
  input bit [11 : 0] dma1_c2h_byp_in_mm_0_func;
  input bit [15 : 0] dma1_c2h_byp_in_mm_0_cidx;
  input bit [63 : 0] dma1_c2h_byp_in_mm_0_radr;
  input bit [63 : 0] dma1_c2h_byp_in_mm_0_wadr;
  input bit [2 : 0] dma1_c2h_byp_in_mm_0_port_id;
  output wire dma1_c2h_byp_in_mm_1_ready;
  input bit dma1_c2h_byp_in_mm_1_sdi;
  input bit dma1_c2h_byp_in_mm_1_valid;
  input bit dma1_c2h_byp_in_mm_1_error;
  input bit dma1_c2h_byp_in_mm_1_no_dma;
  input bit dma1_c2h_byp_in_mm_1_mrkr_req;
  input bit [15 : 0] dma1_c2h_byp_in_mm_1_len;
  input bit [11 : 0] dma1_c2h_byp_in_mm_1_qid;
  input bit [11 : 0] dma1_c2h_byp_in_mm_1_func;
  input bit [15 : 0] dma1_c2h_byp_in_mm_1_cidx;
  input bit [63 : 0] dma1_c2h_byp_in_mm_1_radr;
  input bit [63 : 0] dma1_c2h_byp_in_mm_1_wadr;
  input bit [2 : 0] dma1_c2h_byp_in_mm_1_port_id;
  output wire dma1_c2h_byp_in_st_csh_ready;
  input bit dma1_c2h_byp_in_st_csh_valid;
  input bit dma1_c2h_byp_in_st_csh_error;
  input bit [11 : 0] dma1_c2h_byp_in_st_csh_qid;
  input bit [11 : 0] dma1_c2h_byp_in_st_csh_func;
  input bit [63 : 0] dma1_c2h_byp_in_st_csh_addr;
  input bit [2 : 0] dma1_c2h_byp_in_st_csh_port_id;
  input bit [6 : 0] dma1_c2h_byp_in_st_csh_pfch_tag;
  output wire dma1_c2h_byp_out_valid;
  output wire dma1_c2h_byp_out_error;
  output wire dma1_c2h_byp_out_st_mm;
  output wire dma1_c2h_byp_out_mm_chn;
  input bit dma1_c2h_byp_out_ready;
  output wire [2 : 0] dma1_c2h_byp_out_fmt;
  output wire [11 : 0] dma1_c2h_byp_out_qid;
  output wire [255 : 0] dma1_c2h_byp_out_dsc;
  output wire [11 : 0] dma1_c2h_byp_out_func;
  output wire [15 : 0] dma1_c2h_byp_out_cidx;
  output wire [1 : 0] dma1_c2h_byp_out_dsc_sz;
  output wire [2 : 0] dma1_c2h_byp_out_port_id;
  output wire [6 : 0] dma1_c2h_byp_out_pfch_tag;
  output wire dma1_h2c_byp_in_mm_0_ready;
  input bit dma1_h2c_byp_in_mm_0_sdi;
  input bit dma1_h2c_byp_in_mm_0_valid;
  input bit dma1_h2c_byp_in_mm_0_error;
  input bit dma1_h2c_byp_in_mm_0_no_dma;
  input bit dma1_h2c_byp_in_mm_0_mrkr_req;
  input bit [15 : 0] dma1_h2c_byp_in_mm_0_len;
  input bit [11 : 0] dma1_h2c_byp_in_mm_0_qid;
  input bit [11 : 0] dma1_h2c_byp_in_mm_0_func;
  input bit [15 : 0] dma1_h2c_byp_in_mm_0_cidx;
  input bit [63 : 0] dma1_h2c_byp_in_mm_0_radr;
  input bit [63 : 0] dma1_h2c_byp_in_mm_0_wadr;
  input bit [2 : 0] dma1_h2c_byp_in_mm_0_port_id;
  output wire dma1_h2c_byp_in_mm_1_ready;
  input bit dma1_h2c_byp_in_mm_1_sdi;
  input bit dma1_h2c_byp_in_mm_1_valid;
  input bit dma1_h2c_byp_in_mm_1_error;
  input bit dma1_h2c_byp_in_mm_1_no_dma;
  input bit dma1_h2c_byp_in_mm_1_mrkr_req;
  input bit [15 : 0] dma1_h2c_byp_in_mm_1_len;
  input bit [11 : 0] dma1_h2c_byp_in_mm_1_qid;
  input bit [11 : 0] dma1_h2c_byp_in_mm_1_func;
  input bit [15 : 0] dma1_h2c_byp_in_mm_1_cidx;
  input bit [63 : 0] dma1_h2c_byp_in_mm_1_radr;
  input bit [63 : 0] dma1_h2c_byp_in_mm_1_wadr;
  input bit [2 : 0] dma1_h2c_byp_in_mm_1_port_id;
  output wire dma1_h2c_byp_in_st_ready;
  input bit dma1_h2c_byp_in_st_eop;
  input bit dma1_h2c_byp_in_st_sdi;
  input bit dma1_h2c_byp_in_st_sop;
  input bit dma1_h2c_byp_in_st_valid;
  input bit dma1_h2c_byp_in_st_error;
  input bit dma1_h2c_byp_in_st_no_dma;
  input bit dma1_h2c_byp_in_st_mrkr_req;
  input bit [15 : 0] dma1_h2c_byp_in_st_len;
  input bit [11 : 0] dma1_h2c_byp_in_st_qid;
  input bit [11 : 0] dma1_h2c_byp_in_st_func;
  input bit [63 : 0] dma1_h2c_byp_in_st_addr;
  input bit [15 : 0] dma1_h2c_byp_in_st_cidx;
  input bit [2 : 0] dma1_h2c_byp_in_st_port_id;
  output wire dma1_h2c_byp_out_valid;
  output wire dma1_h2c_byp_out_error;
  output wire dma1_h2c_byp_out_st_mm;
  output wire dma1_h2c_byp_out_mm_chn;
  input bit dma1_h2c_byp_out_ready;
  output wire [2 : 0] dma1_h2c_byp_out_fmt;
  output wire [11 : 0] dma1_h2c_byp_out_qid;
  output wire [255 : 0] dma1_h2c_byp_out_dsc;
  output wire [11 : 0] dma1_h2c_byp_out_func;
  output wire [15 : 0] dma1_h2c_byp_out_cidx;
  output wire [1 : 0] dma1_h2c_byp_out_dsc_sz;
  output wire [2 : 0] dma1_h2c_byp_out_port_id;
  output wire dma1_axis_c2h_dmawr_cmp;
  output wire dma1_axis_c2h_dmawr_target_vch;
  output wire [2 : 0] dma1_axis_c2h_dmawr_port_id;
  output wire dma1_s_axis_c2h_tready;
  input bit dma1_s_axis_c2h_tlast;
  input bit dma1_s_axis_c2h_tvalid;
  input bit [31 : 0] dma1_s_axis_c2h_tcrc;
  input bit [511 : 0] dma1_s_axis_c2h_tdata;
  input bit [5 : 0] dma1_s_axis_c2h_mty;
  input bit [6 : 0] dma1_s_axis_c2h_ecc;
  input bit dma1_s_axis_c2h_ctrl_marker;
  input bit dma1_s_axis_c2h_ctrl_has_cmpt;
  input bit [15 : 0] dma1_s_axis_c2h_ctrl_len;
  input bit [11 : 0] dma1_s_axis_c2h_ctrl_qid;
  input bit [2 : 0] dma1_s_axis_c2h_ctrl_port_id;
  input bit dma1_s_axis_c2h_cmpt_marker;
  input bit dma1_s_axis_c2h_cmpt_user_trig;
  input bit [1 : 0] dma1_s_axis_c2h_cmpt_size;
  input bit [12 : 0] dma1_s_axis_c2h_cmpt_qid;
  input bit dma1_s_axis_c2h_cmpt_no_wrb_marker;
  input bit [2 : 0] dma1_s_axis_c2h_cmpt_port_id;
  input bit [2 : 0] dma1_s_axis_c2h_cmpt_col_idx;
  input bit [2 : 0] dma1_s_axis_c2h_cmpt_err_idx;
  input bit [15 : 0] dma1_s_axis_c2h_cmpt_wait_pld_pkt_id;
  output wire dma1_s_axis_c2h_cmpt_tready;
  input bit dma1_s_axis_c2h_cmpt_tvalid;
  input bit [15 : 0] dma1_s_axis_c2h_cmpt_dpar;
  input bit [511 : 0] dma1_s_axis_c2h_cmpt_data;
  input bit [1 : 0] dma1_s_axis_c2h_cmpt_cmpt_type;
  output wire dma1_m_axis_h2c_tlast;
  output wire dma1_m_axis_h2c_err;
  output wire dma1_m_axis_h2c_tvalid;
  output wire [511 : 0] dma1_m_axis_h2c_tdata;
  output wire dma1_m_axis_h2c_zero_byte;
  input bit dma1_m_axis_h2c_tready;
  output wire [31 : 0] dma1_m_axis_h2c_tcrc;
  output wire [5 : 0] dma1_m_axis_h2c_mty;
  output wire [11 : 0] dma1_m_axis_h2c_qid;
  output wire [31 : 0] dma1_m_axis_h2c_mdata;
  output wire [2 : 0] dma1_m_axis_h2c_port_id;
  output wire dma1_axis_c2h_status_last;
  output wire dma1_axis_c2h_status_drop;
  output wire dma1_axis_c2h_status_error;
  output wire dma1_axis_c2h_status_valid;
  output wire dma1_axis_c2h_status_status_cmp;
  output wire [11 : 0] dma1_axis_c2h_status_qid;
  output wire dma1_qsts_out_vld;
  output wire [7 : 0] dma1_qsts_out_op;
  input bit dma1_qsts_out_rdy;
  output wire [12 : 0] dma1_qsts_out_qid;
  output wire [63 : 0] dma1_qsts_out_data;
  output wire [2 : 0] dma1_qsts_out_port_id;
  output wire dma1_dsc_crdt_in_rdy;
  input bit dma1_dsc_crdt_in_dir;
  input bit dma1_dsc_crdt_in_valid;
  input bit dma1_dsc_crdt_in_fence;
  input bit [11 : 0] dma1_dsc_crdt_in_qid;
  input bit [15 : 0] dma1_dsc_crdt_in_crdt;
  output wire dma1_usr_irq_ack;
  output wire dma1_usr_irq_fail;
  input bit dma1_usr_irq_valid;
  input bit [10 : 0] dma1_usr_irq_vec;
  input bit [12 : 0] dma1_usr_irq_fnc;
  output wire dma1_tm_dsc_sts_mm;
  output wire dma1_tm_dsc_sts_qen;
  output wire dma1_tm_dsc_sts_byp;
  output wire dma1_tm_dsc_sts_dir;
  output wire dma1_tm_dsc_sts_error;
  output wire dma1_tm_dsc_sts_valid;
  output wire dma1_tm_dsc_sts_qinv;
  output wire dma1_tm_dsc_sts_irq_arm;
  input bit dma1_tm_dsc_sts_rdy;
  output wire [11 : 0] dma1_tm_dsc_sts_qid;
  output wire [15 : 0] dma1_tm_dsc_sts_avl;
  output wire [15 : 0] dma1_tm_dsc_sts_pidx;
  output wire [2 : 0] dma1_tm_dsc_sts_port_id;
  output wire dma1_usr_flr_set;
  output wire dma1_usr_flr_clear;
  output wire [12 : 0] dma1_usr_flr_fnc;
  input bit dma1_usr_flr_done_vld;
  input bit [12 : 0] dma1_usr_flr_done_fnc;
  input bit [7 : 0] PCIE1_GT_grx_n;
  output wire [7 : 0] PCIE1_GT_gtx_n;
  input bit [7 : 0] PCIE1_GT_grx_p;
  output wire [7 : 0] PCIE1_GT_gtx_p;
  input bit gt_refclk1_clk_n;
  input bit gt_refclk1_clk_p;
  output wire [41 : 0] pcie1_pipe_ep_tx_0;
  input bit [41 : 0] pcie1_pipe_ep_rx_0;
  output wire [41 : 0] pcie1_pipe_ep_tx_1;
  input bit [41 : 0] pcie1_pipe_ep_rx_1;
  output wire [41 : 0] pcie1_pipe_ep_tx_2;
  input bit [41 : 0] pcie1_pipe_ep_rx_2;
  output wire [41 : 0] pcie1_pipe_ep_tx_3;
  input bit [41 : 0] pcie1_pipe_ep_rx_3;
  output wire [41 : 0] pcie1_pipe_ep_tx_4;
  input bit [41 : 0] pcie1_pipe_ep_rx_4;
  output wire [41 : 0] pcie1_pipe_ep_tx_5;
  input bit [41 : 0] pcie1_pipe_ep_rx_5;
  output wire [41 : 0] pcie1_pipe_ep_tx_6;
  input bit [41 : 0] pcie1_pipe_ep_rx_6;
  output wire [41 : 0] pcie1_pipe_ep_tx_7;
  input bit [41 : 0] pcie1_pipe_ep_rx_7;
  output wire [41 : 0] pcie1_pipe_ep_tx_8;
  input bit [41 : 0] pcie1_pipe_ep_rx_8;
  output wire [41 : 0] pcie1_pipe_ep_tx_9;
  input bit [41 : 0] pcie1_pipe_ep_rx_9;
  output wire [41 : 0] pcie1_pipe_ep_tx_10;
  input bit [41 : 0] pcie1_pipe_ep_rx_10;
  output wire [41 : 0] pcie1_pipe_ep_tx_11;
  input bit [41 : 0] pcie1_pipe_ep_rx_11;
  output wire [41 : 0] pcie1_pipe_ep_tx_12;
  input bit [41 : 0] pcie1_pipe_ep_rx_12;
  output wire [41 : 0] pcie1_pipe_ep_tx_13;
  input bit [41 : 0] pcie1_pipe_ep_rx_13;
  output wire [41 : 0] pcie1_pipe_ep_tx_14;
  input bit [41 : 0] pcie1_pipe_ep_rx_14;
  output wire [41 : 0] pcie1_pipe_ep_tx_15;
  input bit [41 : 0] pcie1_pipe_ep_rx_15;
  input bit [13 : 0] pcie1_pipe_ep_commands_in;
  output wire [13 : 0] pcie1_pipe_ep_commands_out;
endmodule
`endif
