//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_a532_wrapper.bd
//Design : bd_a532_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_a532_wrapper
   (CPM_PCIE_NOC_0_araddr,
    CPM_PCIE_NOC_0_arburst,
    CPM_PCIE_NOC_0_arcache,
    CPM_PCIE_NOC_0_arid,
    CPM_PCIE_NOC_0_arlen,
    CPM_PCIE_NOC_0_arlock,
    CPM_PCIE_NOC_0_arprot,
    CPM_PCIE_NOC_0_arqos,
    CPM_PCIE_NOC_0_arready,
    CPM_PCIE_NOC_0_arsize,
    CPM_PCIE_NOC_0_aruser,
    CPM_PCIE_NOC_0_arvalid,
    CPM_PCIE_NOC_0_awaddr,
    CPM_PCIE_NOC_0_awburst,
    CPM_PCIE_NOC_0_awcache,
    CPM_PCIE_NOC_0_awid,
    CPM_PCIE_NOC_0_awlen,
    CPM_PCIE_NOC_0_awlock,
    CPM_PCIE_NOC_0_awprot,
    CPM_PCIE_NOC_0_awqos,
    CPM_PCIE_NOC_0_awready,
    CPM_PCIE_NOC_0_awsize,
    CPM_PCIE_NOC_0_awuser,
    CPM_PCIE_NOC_0_awvalid,
    CPM_PCIE_NOC_0_bid,
    CPM_PCIE_NOC_0_bready,
    CPM_PCIE_NOC_0_bresp,
    CPM_PCIE_NOC_0_bvalid,
    CPM_PCIE_NOC_0_rdata,
    CPM_PCIE_NOC_0_rid,
    CPM_PCIE_NOC_0_rlast,
    CPM_PCIE_NOC_0_rready,
    CPM_PCIE_NOC_0_rresp,
    CPM_PCIE_NOC_0_ruser,
    CPM_PCIE_NOC_0_rvalid,
    CPM_PCIE_NOC_0_wdata,
    CPM_PCIE_NOC_0_wlast,
    CPM_PCIE_NOC_0_wready,
    CPM_PCIE_NOC_0_wstrb,
    CPM_PCIE_NOC_0_wuser,
    CPM_PCIE_NOC_0_wvalid,
    CPM_PCIE_NOC_1_araddr,
    CPM_PCIE_NOC_1_arburst,
    CPM_PCIE_NOC_1_arcache,
    CPM_PCIE_NOC_1_arid,
    CPM_PCIE_NOC_1_arlen,
    CPM_PCIE_NOC_1_arlock,
    CPM_PCIE_NOC_1_arprot,
    CPM_PCIE_NOC_1_arqos,
    CPM_PCIE_NOC_1_arready,
    CPM_PCIE_NOC_1_arsize,
    CPM_PCIE_NOC_1_aruser,
    CPM_PCIE_NOC_1_arvalid,
    CPM_PCIE_NOC_1_awaddr,
    CPM_PCIE_NOC_1_awburst,
    CPM_PCIE_NOC_1_awcache,
    CPM_PCIE_NOC_1_awid,
    CPM_PCIE_NOC_1_awlen,
    CPM_PCIE_NOC_1_awlock,
    CPM_PCIE_NOC_1_awprot,
    CPM_PCIE_NOC_1_awqos,
    CPM_PCIE_NOC_1_awready,
    CPM_PCIE_NOC_1_awsize,
    CPM_PCIE_NOC_1_awuser,
    CPM_PCIE_NOC_1_awvalid,
    CPM_PCIE_NOC_1_bid,
    CPM_PCIE_NOC_1_bready,
    CPM_PCIE_NOC_1_bresp,
    CPM_PCIE_NOC_1_bvalid,
    CPM_PCIE_NOC_1_rdata,
    CPM_PCIE_NOC_1_rid,
    CPM_PCIE_NOC_1_rlast,
    CPM_PCIE_NOC_1_rready,
    CPM_PCIE_NOC_1_rresp,
    CPM_PCIE_NOC_1_ruser,
    CPM_PCIE_NOC_1_rvalid,
    CPM_PCIE_NOC_1_wdata,
    CPM_PCIE_NOC_1_wlast,
    CPM_PCIE_NOC_1_wready,
    CPM_PCIE_NOC_1_wstrb,
    CPM_PCIE_NOC_1_wuser,
    CPM_PCIE_NOC_1_wvalid,
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
    PCIE1_GT_grx_n,
    PCIE1_GT_grx_p,
    PCIE1_GT_gtx_n,
    PCIE1_GT_gtx_p,
    cpm_cor_irq,
    cpm_irq0,
    cpm_irq1,
    cpm_misc_irq,
    cpm_pcie_noc_axi0_clk,
    cpm_pcie_noc_axi1_clk,
    cpm_uncor_irq,
    dma1_axi_aresetn,
    dma1_axis_c2h_dmawr_cmp,
    dma1_axis_c2h_dmawr_port_id,
    dma1_axis_c2h_dmawr_target_vch,
    dma1_axis_c2h_status_drop,
    dma1_axis_c2h_status_error,
    dma1_axis_c2h_status_last,
    dma1_axis_c2h_status_qid,
    dma1_axis_c2h_status_status_cmp,
    dma1_axis_c2h_status_valid,
    dma1_c2h_byp_in_mm_0_cidx,
    dma1_c2h_byp_in_mm_0_error,
    dma1_c2h_byp_in_mm_0_func,
    dma1_c2h_byp_in_mm_0_len,
    dma1_c2h_byp_in_mm_0_mrkr_req,
    dma1_c2h_byp_in_mm_0_no_dma,
    dma1_c2h_byp_in_mm_0_port_id,
    dma1_c2h_byp_in_mm_0_qid,
    dma1_c2h_byp_in_mm_0_radr,
    dma1_c2h_byp_in_mm_0_ready,
    dma1_c2h_byp_in_mm_0_sdi,
    dma1_c2h_byp_in_mm_0_valid,
    dma1_c2h_byp_in_mm_0_wadr,
    dma1_c2h_byp_in_mm_1_cidx,
    dma1_c2h_byp_in_mm_1_error,
    dma1_c2h_byp_in_mm_1_func,
    dma1_c2h_byp_in_mm_1_len,
    dma1_c2h_byp_in_mm_1_mrkr_req,
    dma1_c2h_byp_in_mm_1_no_dma,
    dma1_c2h_byp_in_mm_1_port_id,
    dma1_c2h_byp_in_mm_1_qid,
    dma1_c2h_byp_in_mm_1_radr,
    dma1_c2h_byp_in_mm_1_ready,
    dma1_c2h_byp_in_mm_1_sdi,
    dma1_c2h_byp_in_mm_1_valid,
    dma1_c2h_byp_in_mm_1_wadr,
    dma1_c2h_byp_in_st_csh_addr,
    dma1_c2h_byp_in_st_csh_error,
    dma1_c2h_byp_in_st_csh_func,
    dma1_c2h_byp_in_st_csh_pfch_tag,
    dma1_c2h_byp_in_st_csh_port_id,
    dma1_c2h_byp_in_st_csh_qid,
    dma1_c2h_byp_in_st_csh_ready,
    dma1_c2h_byp_in_st_csh_valid,
    dma1_c2h_byp_out_cidx,
    dma1_c2h_byp_out_dsc,
    dma1_c2h_byp_out_dsc_sz,
    dma1_c2h_byp_out_error,
    dma1_c2h_byp_out_fmt,
    dma1_c2h_byp_out_func,
    dma1_c2h_byp_out_mm_chn,
    dma1_c2h_byp_out_pfch_tag,
    dma1_c2h_byp_out_port_id,
    dma1_c2h_byp_out_qid,
    dma1_c2h_byp_out_ready,
    dma1_c2h_byp_out_st_mm,
    dma1_c2h_byp_out_valid,
    dma1_dsc_crdt_in_crdt,
    dma1_dsc_crdt_in_dir,
    dma1_dsc_crdt_in_fence,
    dma1_dsc_crdt_in_qid,
    dma1_dsc_crdt_in_rdy,
    dma1_dsc_crdt_in_valid,
    dma1_h2c_byp_in_mm_0_cidx,
    dma1_h2c_byp_in_mm_0_error,
    dma1_h2c_byp_in_mm_0_func,
    dma1_h2c_byp_in_mm_0_len,
    dma1_h2c_byp_in_mm_0_mrkr_req,
    dma1_h2c_byp_in_mm_0_no_dma,
    dma1_h2c_byp_in_mm_0_port_id,
    dma1_h2c_byp_in_mm_0_qid,
    dma1_h2c_byp_in_mm_0_radr,
    dma1_h2c_byp_in_mm_0_ready,
    dma1_h2c_byp_in_mm_0_sdi,
    dma1_h2c_byp_in_mm_0_valid,
    dma1_h2c_byp_in_mm_0_wadr,
    dma1_h2c_byp_in_mm_1_cidx,
    dma1_h2c_byp_in_mm_1_error,
    dma1_h2c_byp_in_mm_1_func,
    dma1_h2c_byp_in_mm_1_len,
    dma1_h2c_byp_in_mm_1_mrkr_req,
    dma1_h2c_byp_in_mm_1_no_dma,
    dma1_h2c_byp_in_mm_1_port_id,
    dma1_h2c_byp_in_mm_1_qid,
    dma1_h2c_byp_in_mm_1_radr,
    dma1_h2c_byp_in_mm_1_ready,
    dma1_h2c_byp_in_mm_1_sdi,
    dma1_h2c_byp_in_mm_1_valid,
    dma1_h2c_byp_in_mm_1_wadr,
    dma1_h2c_byp_in_st_addr,
    dma1_h2c_byp_in_st_cidx,
    dma1_h2c_byp_in_st_eop,
    dma1_h2c_byp_in_st_error,
    dma1_h2c_byp_in_st_func,
    dma1_h2c_byp_in_st_len,
    dma1_h2c_byp_in_st_mrkr_req,
    dma1_h2c_byp_in_st_no_dma,
    dma1_h2c_byp_in_st_port_id,
    dma1_h2c_byp_in_st_qid,
    dma1_h2c_byp_in_st_ready,
    dma1_h2c_byp_in_st_sdi,
    dma1_h2c_byp_in_st_sop,
    dma1_h2c_byp_in_st_valid,
    dma1_h2c_byp_out_cidx,
    dma1_h2c_byp_out_dsc,
    dma1_h2c_byp_out_dsc_sz,
    dma1_h2c_byp_out_error,
    dma1_h2c_byp_out_fmt,
    dma1_h2c_byp_out_func,
    dma1_h2c_byp_out_mm_chn,
    dma1_h2c_byp_out_port_id,
    dma1_h2c_byp_out_qid,
    dma1_h2c_byp_out_ready,
    dma1_h2c_byp_out_st_mm,
    dma1_h2c_byp_out_valid,
    dma1_intrfc_clk,
    dma1_intrfc_resetn,
    dma1_m_axis_h2c_err,
    dma1_m_axis_h2c_mdata,
    dma1_m_axis_h2c_mty,
    dma1_m_axis_h2c_port_id,
    dma1_m_axis_h2c_qid,
    dma1_m_axis_h2c_tcrc,
    dma1_m_axis_h2c_tdata,
    dma1_m_axis_h2c_tlast,
    dma1_m_axis_h2c_tready,
    dma1_m_axis_h2c_tvalid,
    dma1_m_axis_h2c_zero_byte,
    dma1_mgmt_cpl_dat,
    dma1_mgmt_cpl_rdy,
    dma1_mgmt_cpl_sts,
    dma1_mgmt_cpl_vld,
    dma1_mgmt_req_adr,
    dma1_mgmt_req_cmd,
    dma1_mgmt_req_dat,
    dma1_mgmt_req_fnc,
    dma1_mgmt_req_msc,
    dma1_mgmt_req_rdy,
    dma1_mgmt_req_vld,
    dma1_qsts_out_data,
    dma1_qsts_out_op,
    dma1_qsts_out_port_id,
    dma1_qsts_out_qid,
    dma1_qsts_out_rdy,
    dma1_qsts_out_vld,
    dma1_s_axis_c2h_cmpt_cmpt_type,
    dma1_s_axis_c2h_cmpt_col_idx,
    dma1_s_axis_c2h_cmpt_data,
    dma1_s_axis_c2h_cmpt_dpar,
    dma1_s_axis_c2h_cmpt_err_idx,
    dma1_s_axis_c2h_cmpt_marker,
    dma1_s_axis_c2h_cmpt_no_wrb_marker,
    dma1_s_axis_c2h_cmpt_port_id,
    dma1_s_axis_c2h_cmpt_qid,
    dma1_s_axis_c2h_cmpt_size,
    dma1_s_axis_c2h_cmpt_tready,
    dma1_s_axis_c2h_cmpt_tvalid,
    dma1_s_axis_c2h_cmpt_user_trig,
    dma1_s_axis_c2h_cmpt_wait_pld_pkt_id,
    dma1_s_axis_c2h_ctrl_has_cmpt,
    dma1_s_axis_c2h_ctrl_len,
    dma1_s_axis_c2h_ctrl_marker,
    dma1_s_axis_c2h_ctrl_port_id,
    dma1_s_axis_c2h_ctrl_qid,
    dma1_s_axis_c2h_ecc,
    dma1_s_axis_c2h_mty,
    dma1_s_axis_c2h_tcrc,
    dma1_s_axis_c2h_tdata,
    dma1_s_axis_c2h_tlast,
    dma1_s_axis_c2h_tready,
    dma1_s_axis_c2h_tvalid,
    dma1_st_rx_msg_tdata,
    dma1_st_rx_msg_tlast,
    dma1_st_rx_msg_tready,
    dma1_st_rx_msg_tvalid,
    dma1_tm_dsc_sts_avl,
    dma1_tm_dsc_sts_byp,
    dma1_tm_dsc_sts_dir,
    dma1_tm_dsc_sts_error,
    dma1_tm_dsc_sts_irq_arm,
    dma1_tm_dsc_sts_mm,
    dma1_tm_dsc_sts_pidx,
    dma1_tm_dsc_sts_port_id,
    dma1_tm_dsc_sts_qen,
    dma1_tm_dsc_sts_qid,
    dma1_tm_dsc_sts_qinv,
    dma1_tm_dsc_sts_rdy,
    dma1_tm_dsc_sts_valid,
    dma1_usr_flr_clear,
    dma1_usr_flr_done_fnc,
    dma1_usr_flr_done_vld,
    dma1_usr_flr_fnc,
    dma1_usr_flr_set,
    dma1_usr_irq_ack,
    dma1_usr_irq_fail,
    dma1_usr_irq_fnc,
    dma1_usr_irq_valid,
    dma1_usr_irq_vec,
    gt_refclk1_clk_n,
    gt_refclk1_clk_p,
    m_axi_fpd_aclk,
    pcie1_pipe_ep_commands_in,
    pcie1_pipe_ep_commands_out,
    pcie1_pipe_ep_rx_0,
    pcie1_pipe_ep_rx_1,
    pcie1_pipe_ep_rx_10,
    pcie1_pipe_ep_rx_11,
    pcie1_pipe_ep_rx_12,
    pcie1_pipe_ep_rx_13,
    pcie1_pipe_ep_rx_14,
    pcie1_pipe_ep_rx_15,
    pcie1_pipe_ep_rx_2,
    pcie1_pipe_ep_rx_3,
    pcie1_pipe_ep_rx_4,
    pcie1_pipe_ep_rx_5,
    pcie1_pipe_ep_rx_6,
    pcie1_pipe_ep_rx_7,
    pcie1_pipe_ep_rx_8,
    pcie1_pipe_ep_rx_9,
    pcie1_pipe_ep_tx_0,
    pcie1_pipe_ep_tx_1,
    pcie1_pipe_ep_tx_10,
    pcie1_pipe_ep_tx_11,
    pcie1_pipe_ep_tx_12,
    pcie1_pipe_ep_tx_13,
    pcie1_pipe_ep_tx_14,
    pcie1_pipe_ep_tx_15,
    pcie1_pipe_ep_tx_2,
    pcie1_pipe_ep_tx_3,
    pcie1_pipe_ep_tx_4,
    pcie1_pipe_ep_tx_5,
    pcie1_pipe_ep_tx_6,
    pcie1_pipe_ep_tx_7,
    pcie1_pipe_ep_tx_8,
    pcie1_pipe_ep_tx_9,
    pl0_ref_clk,
    pl0_resetn,
    pl1_ref_clk);
  output [63:0]CPM_PCIE_NOC_0_araddr;
  output [1:0]CPM_PCIE_NOC_0_arburst;
  output [3:0]CPM_PCIE_NOC_0_arcache;
  output [15:0]CPM_PCIE_NOC_0_arid;
  output [7:0]CPM_PCIE_NOC_0_arlen;
  output CPM_PCIE_NOC_0_arlock;
  output [2:0]CPM_PCIE_NOC_0_arprot;
  output [3:0]CPM_PCIE_NOC_0_arqos;
  input CPM_PCIE_NOC_0_arready;
  output [2:0]CPM_PCIE_NOC_0_arsize;
  output [17:0]CPM_PCIE_NOC_0_aruser;
  output CPM_PCIE_NOC_0_arvalid;
  output [63:0]CPM_PCIE_NOC_0_awaddr;
  output [1:0]CPM_PCIE_NOC_0_awburst;
  output [3:0]CPM_PCIE_NOC_0_awcache;
  output [15:0]CPM_PCIE_NOC_0_awid;
  output [7:0]CPM_PCIE_NOC_0_awlen;
  output CPM_PCIE_NOC_0_awlock;
  output [2:0]CPM_PCIE_NOC_0_awprot;
  output [3:0]CPM_PCIE_NOC_0_awqos;
  input CPM_PCIE_NOC_0_awready;
  output [2:0]CPM_PCIE_NOC_0_awsize;
  output [17:0]CPM_PCIE_NOC_0_awuser;
  output CPM_PCIE_NOC_0_awvalid;
  input [15:0]CPM_PCIE_NOC_0_bid;
  output CPM_PCIE_NOC_0_bready;
  input [1:0]CPM_PCIE_NOC_0_bresp;
  input CPM_PCIE_NOC_0_bvalid;
  input [127:0]CPM_PCIE_NOC_0_rdata;
  input [15:0]CPM_PCIE_NOC_0_rid;
  input CPM_PCIE_NOC_0_rlast;
  output CPM_PCIE_NOC_0_rready;
  input [1:0]CPM_PCIE_NOC_0_rresp;
  input [16:0]CPM_PCIE_NOC_0_ruser;
  input CPM_PCIE_NOC_0_rvalid;
  output [127:0]CPM_PCIE_NOC_0_wdata;
  output CPM_PCIE_NOC_0_wlast;
  input CPM_PCIE_NOC_0_wready;
  output [15:0]CPM_PCIE_NOC_0_wstrb;
  output [16:0]CPM_PCIE_NOC_0_wuser;
  output CPM_PCIE_NOC_0_wvalid;
  output [63:0]CPM_PCIE_NOC_1_araddr;
  output [1:0]CPM_PCIE_NOC_1_arburst;
  output [3:0]CPM_PCIE_NOC_1_arcache;
  output [15:0]CPM_PCIE_NOC_1_arid;
  output [7:0]CPM_PCIE_NOC_1_arlen;
  output CPM_PCIE_NOC_1_arlock;
  output [2:0]CPM_PCIE_NOC_1_arprot;
  output [3:0]CPM_PCIE_NOC_1_arqos;
  input CPM_PCIE_NOC_1_arready;
  output [2:0]CPM_PCIE_NOC_1_arsize;
  output [17:0]CPM_PCIE_NOC_1_aruser;
  output CPM_PCIE_NOC_1_arvalid;
  output [63:0]CPM_PCIE_NOC_1_awaddr;
  output [1:0]CPM_PCIE_NOC_1_awburst;
  output [3:0]CPM_PCIE_NOC_1_awcache;
  output [15:0]CPM_PCIE_NOC_1_awid;
  output [7:0]CPM_PCIE_NOC_1_awlen;
  output CPM_PCIE_NOC_1_awlock;
  output [2:0]CPM_PCIE_NOC_1_awprot;
  output [3:0]CPM_PCIE_NOC_1_awqos;
  input CPM_PCIE_NOC_1_awready;
  output [2:0]CPM_PCIE_NOC_1_awsize;
  output [17:0]CPM_PCIE_NOC_1_awuser;
  output CPM_PCIE_NOC_1_awvalid;
  input [15:0]CPM_PCIE_NOC_1_bid;
  output CPM_PCIE_NOC_1_bready;
  input [1:0]CPM_PCIE_NOC_1_bresp;
  input CPM_PCIE_NOC_1_bvalid;
  input [127:0]CPM_PCIE_NOC_1_rdata;
  input [15:0]CPM_PCIE_NOC_1_rid;
  input CPM_PCIE_NOC_1_rlast;
  output CPM_PCIE_NOC_1_rready;
  input [1:0]CPM_PCIE_NOC_1_rresp;
  input [16:0]CPM_PCIE_NOC_1_ruser;
  input CPM_PCIE_NOC_1_rvalid;
  output [127:0]CPM_PCIE_NOC_1_wdata;
  output CPM_PCIE_NOC_1_wlast;
  input CPM_PCIE_NOC_1_wready;
  output [15:0]CPM_PCIE_NOC_1_wstrb;
  output [16:0]CPM_PCIE_NOC_1_wuser;
  output CPM_PCIE_NOC_1_wvalid;
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
  input [7:0]PCIE1_GT_grx_n;
  input [7:0]PCIE1_GT_grx_p;
  output [7:0]PCIE1_GT_gtx_n;
  output [7:0]PCIE1_GT_gtx_p;
  output cpm_cor_irq;
  input cpm_irq0;
  input cpm_irq1;
  output cpm_misc_irq;
  output cpm_pcie_noc_axi0_clk;
  output cpm_pcie_noc_axi1_clk;
  output cpm_uncor_irq;
  output dma1_axi_aresetn;
  output dma1_axis_c2h_dmawr_cmp;
  output [2:0]dma1_axis_c2h_dmawr_port_id;
  output dma1_axis_c2h_dmawr_target_vch;
  output dma1_axis_c2h_status_drop;
  output dma1_axis_c2h_status_error;
  output dma1_axis_c2h_status_last;
  output [11:0]dma1_axis_c2h_status_qid;
  output dma1_axis_c2h_status_status_cmp;
  output dma1_axis_c2h_status_valid;
  input [15:0]dma1_c2h_byp_in_mm_0_cidx;
  input dma1_c2h_byp_in_mm_0_error;
  input [11:0]dma1_c2h_byp_in_mm_0_func;
  input [15:0]dma1_c2h_byp_in_mm_0_len;
  input dma1_c2h_byp_in_mm_0_mrkr_req;
  input dma1_c2h_byp_in_mm_0_no_dma;
  input [2:0]dma1_c2h_byp_in_mm_0_port_id;
  input [11:0]dma1_c2h_byp_in_mm_0_qid;
  input [63:0]dma1_c2h_byp_in_mm_0_radr;
  output dma1_c2h_byp_in_mm_0_ready;
  input dma1_c2h_byp_in_mm_0_sdi;
  input dma1_c2h_byp_in_mm_0_valid;
  input [63:0]dma1_c2h_byp_in_mm_0_wadr;
  input [15:0]dma1_c2h_byp_in_mm_1_cidx;
  input dma1_c2h_byp_in_mm_1_error;
  input [11:0]dma1_c2h_byp_in_mm_1_func;
  input [15:0]dma1_c2h_byp_in_mm_1_len;
  input dma1_c2h_byp_in_mm_1_mrkr_req;
  input dma1_c2h_byp_in_mm_1_no_dma;
  input [2:0]dma1_c2h_byp_in_mm_1_port_id;
  input [11:0]dma1_c2h_byp_in_mm_1_qid;
  input [63:0]dma1_c2h_byp_in_mm_1_radr;
  output dma1_c2h_byp_in_mm_1_ready;
  input dma1_c2h_byp_in_mm_1_sdi;
  input dma1_c2h_byp_in_mm_1_valid;
  input [63:0]dma1_c2h_byp_in_mm_1_wadr;
  input [63:0]dma1_c2h_byp_in_st_csh_addr;
  input dma1_c2h_byp_in_st_csh_error;
  input [11:0]dma1_c2h_byp_in_st_csh_func;
  input [6:0]dma1_c2h_byp_in_st_csh_pfch_tag;
  input [2:0]dma1_c2h_byp_in_st_csh_port_id;
  input [11:0]dma1_c2h_byp_in_st_csh_qid;
  output dma1_c2h_byp_in_st_csh_ready;
  input dma1_c2h_byp_in_st_csh_valid;
  output [15:0]dma1_c2h_byp_out_cidx;
  output [255:0]dma1_c2h_byp_out_dsc;
  output [1:0]dma1_c2h_byp_out_dsc_sz;
  output dma1_c2h_byp_out_error;
  output [2:0]dma1_c2h_byp_out_fmt;
  output [11:0]dma1_c2h_byp_out_func;
  output dma1_c2h_byp_out_mm_chn;
  output [6:0]dma1_c2h_byp_out_pfch_tag;
  output [2:0]dma1_c2h_byp_out_port_id;
  output [11:0]dma1_c2h_byp_out_qid;
  input dma1_c2h_byp_out_ready;
  output dma1_c2h_byp_out_st_mm;
  output dma1_c2h_byp_out_valid;
  input [15:0]dma1_dsc_crdt_in_crdt;
  input dma1_dsc_crdt_in_dir;
  input dma1_dsc_crdt_in_fence;
  input [11:0]dma1_dsc_crdt_in_qid;
  output dma1_dsc_crdt_in_rdy;
  input dma1_dsc_crdt_in_valid;
  input [15:0]dma1_h2c_byp_in_mm_0_cidx;
  input dma1_h2c_byp_in_mm_0_error;
  input [11:0]dma1_h2c_byp_in_mm_0_func;
  input [15:0]dma1_h2c_byp_in_mm_0_len;
  input dma1_h2c_byp_in_mm_0_mrkr_req;
  input dma1_h2c_byp_in_mm_0_no_dma;
  input [2:0]dma1_h2c_byp_in_mm_0_port_id;
  input [11:0]dma1_h2c_byp_in_mm_0_qid;
  input [63:0]dma1_h2c_byp_in_mm_0_radr;
  output dma1_h2c_byp_in_mm_0_ready;
  input dma1_h2c_byp_in_mm_0_sdi;
  input dma1_h2c_byp_in_mm_0_valid;
  input [63:0]dma1_h2c_byp_in_mm_0_wadr;
  input [15:0]dma1_h2c_byp_in_mm_1_cidx;
  input dma1_h2c_byp_in_mm_1_error;
  input [11:0]dma1_h2c_byp_in_mm_1_func;
  input [15:0]dma1_h2c_byp_in_mm_1_len;
  input dma1_h2c_byp_in_mm_1_mrkr_req;
  input dma1_h2c_byp_in_mm_1_no_dma;
  input [2:0]dma1_h2c_byp_in_mm_1_port_id;
  input [11:0]dma1_h2c_byp_in_mm_1_qid;
  input [63:0]dma1_h2c_byp_in_mm_1_radr;
  output dma1_h2c_byp_in_mm_1_ready;
  input dma1_h2c_byp_in_mm_1_sdi;
  input dma1_h2c_byp_in_mm_1_valid;
  input [63:0]dma1_h2c_byp_in_mm_1_wadr;
  input [63:0]dma1_h2c_byp_in_st_addr;
  input [15:0]dma1_h2c_byp_in_st_cidx;
  input dma1_h2c_byp_in_st_eop;
  input dma1_h2c_byp_in_st_error;
  input [11:0]dma1_h2c_byp_in_st_func;
  input [15:0]dma1_h2c_byp_in_st_len;
  input dma1_h2c_byp_in_st_mrkr_req;
  input dma1_h2c_byp_in_st_no_dma;
  input [2:0]dma1_h2c_byp_in_st_port_id;
  input [11:0]dma1_h2c_byp_in_st_qid;
  output dma1_h2c_byp_in_st_ready;
  input dma1_h2c_byp_in_st_sdi;
  input dma1_h2c_byp_in_st_sop;
  input dma1_h2c_byp_in_st_valid;
  output [15:0]dma1_h2c_byp_out_cidx;
  output [255:0]dma1_h2c_byp_out_dsc;
  output [1:0]dma1_h2c_byp_out_dsc_sz;
  output dma1_h2c_byp_out_error;
  output [2:0]dma1_h2c_byp_out_fmt;
  output [11:0]dma1_h2c_byp_out_func;
  output dma1_h2c_byp_out_mm_chn;
  output [2:0]dma1_h2c_byp_out_port_id;
  output [11:0]dma1_h2c_byp_out_qid;
  input dma1_h2c_byp_out_ready;
  output dma1_h2c_byp_out_st_mm;
  output dma1_h2c_byp_out_valid;
  input dma1_intrfc_clk;
  input dma1_intrfc_resetn;
  output dma1_m_axis_h2c_err;
  output [31:0]dma1_m_axis_h2c_mdata;
  output [5:0]dma1_m_axis_h2c_mty;
  output [2:0]dma1_m_axis_h2c_port_id;
  output [11:0]dma1_m_axis_h2c_qid;
  output [31:0]dma1_m_axis_h2c_tcrc;
  output [511:0]dma1_m_axis_h2c_tdata;
  output dma1_m_axis_h2c_tlast;
  input dma1_m_axis_h2c_tready;
  output dma1_m_axis_h2c_tvalid;
  output dma1_m_axis_h2c_zero_byte;
  output [31:0]dma1_mgmt_cpl_dat;
  input dma1_mgmt_cpl_rdy;
  output [1:0]dma1_mgmt_cpl_sts;
  output dma1_mgmt_cpl_vld;
  input [31:0]dma1_mgmt_req_adr;
  input [1:0]dma1_mgmt_req_cmd;
  input [31:0]dma1_mgmt_req_dat;
  input [12:0]dma1_mgmt_req_fnc;
  input [5:0]dma1_mgmt_req_msc;
  output dma1_mgmt_req_rdy;
  input dma1_mgmt_req_vld;
  output [63:0]dma1_qsts_out_data;
  output [7:0]dma1_qsts_out_op;
  output [2:0]dma1_qsts_out_port_id;
  output [12:0]dma1_qsts_out_qid;
  input dma1_qsts_out_rdy;
  output dma1_qsts_out_vld;
  input [1:0]dma1_s_axis_c2h_cmpt_cmpt_type;
  input [2:0]dma1_s_axis_c2h_cmpt_col_idx;
  input [511:0]dma1_s_axis_c2h_cmpt_data;
  input [15:0]dma1_s_axis_c2h_cmpt_dpar;
  input [2:0]dma1_s_axis_c2h_cmpt_err_idx;
  input dma1_s_axis_c2h_cmpt_marker;
  input dma1_s_axis_c2h_cmpt_no_wrb_marker;
  input [2:0]dma1_s_axis_c2h_cmpt_port_id;
  input [12:0]dma1_s_axis_c2h_cmpt_qid;
  input [1:0]dma1_s_axis_c2h_cmpt_size;
  output dma1_s_axis_c2h_cmpt_tready;
  input dma1_s_axis_c2h_cmpt_tvalid;
  input dma1_s_axis_c2h_cmpt_user_trig;
  input [15:0]dma1_s_axis_c2h_cmpt_wait_pld_pkt_id;
  input dma1_s_axis_c2h_ctrl_has_cmpt;
  input [15:0]dma1_s_axis_c2h_ctrl_len;
  input dma1_s_axis_c2h_ctrl_marker;
  input [2:0]dma1_s_axis_c2h_ctrl_port_id;
  input [11:0]dma1_s_axis_c2h_ctrl_qid;
  input [6:0]dma1_s_axis_c2h_ecc;
  input [5:0]dma1_s_axis_c2h_mty;
  input [31:0]dma1_s_axis_c2h_tcrc;
  input [511:0]dma1_s_axis_c2h_tdata;
  input dma1_s_axis_c2h_tlast;
  output dma1_s_axis_c2h_tready;
  input dma1_s_axis_c2h_tvalid;
  output [31:0]dma1_st_rx_msg_tdata;
  output dma1_st_rx_msg_tlast;
  input dma1_st_rx_msg_tready;
  output dma1_st_rx_msg_tvalid;
  output [15:0]dma1_tm_dsc_sts_avl;
  output dma1_tm_dsc_sts_byp;
  output dma1_tm_dsc_sts_dir;
  output dma1_tm_dsc_sts_error;
  output dma1_tm_dsc_sts_irq_arm;
  output dma1_tm_dsc_sts_mm;
  output [15:0]dma1_tm_dsc_sts_pidx;
  output [2:0]dma1_tm_dsc_sts_port_id;
  output dma1_tm_dsc_sts_qen;
  output [11:0]dma1_tm_dsc_sts_qid;
  output dma1_tm_dsc_sts_qinv;
  input dma1_tm_dsc_sts_rdy;
  output dma1_tm_dsc_sts_valid;
  output dma1_usr_flr_clear;
  input [12:0]dma1_usr_flr_done_fnc;
  input dma1_usr_flr_done_vld;
  output [12:0]dma1_usr_flr_fnc;
  output dma1_usr_flr_set;
  output dma1_usr_irq_ack;
  output dma1_usr_irq_fail;
  input [12:0]dma1_usr_irq_fnc;
  input dma1_usr_irq_valid;
  input [10:0]dma1_usr_irq_vec;
  input gt_refclk1_clk_n;
  input gt_refclk1_clk_p;
  input m_axi_fpd_aclk;
  input [13:0]pcie1_pipe_ep_commands_in;
  output [13:0]pcie1_pipe_ep_commands_out;
  input [41:0]pcie1_pipe_ep_rx_0;
  input [41:0]pcie1_pipe_ep_rx_1;
  input [41:0]pcie1_pipe_ep_rx_10;
  input [41:0]pcie1_pipe_ep_rx_11;
  input [41:0]pcie1_pipe_ep_rx_12;
  input [41:0]pcie1_pipe_ep_rx_13;
  input [41:0]pcie1_pipe_ep_rx_14;
  input [41:0]pcie1_pipe_ep_rx_15;
  input [41:0]pcie1_pipe_ep_rx_2;
  input [41:0]pcie1_pipe_ep_rx_3;
  input [41:0]pcie1_pipe_ep_rx_4;
  input [41:0]pcie1_pipe_ep_rx_5;
  input [41:0]pcie1_pipe_ep_rx_6;
  input [41:0]pcie1_pipe_ep_rx_7;
  input [41:0]pcie1_pipe_ep_rx_8;
  input [41:0]pcie1_pipe_ep_rx_9;
  output [41:0]pcie1_pipe_ep_tx_0;
  output [41:0]pcie1_pipe_ep_tx_1;
  output [41:0]pcie1_pipe_ep_tx_10;
  output [41:0]pcie1_pipe_ep_tx_11;
  output [41:0]pcie1_pipe_ep_tx_12;
  output [41:0]pcie1_pipe_ep_tx_13;
  output [41:0]pcie1_pipe_ep_tx_14;
  output [41:0]pcie1_pipe_ep_tx_15;
  output [41:0]pcie1_pipe_ep_tx_2;
  output [41:0]pcie1_pipe_ep_tx_3;
  output [41:0]pcie1_pipe_ep_tx_4;
  output [41:0]pcie1_pipe_ep_tx_5;
  output [41:0]pcie1_pipe_ep_tx_6;
  output [41:0]pcie1_pipe_ep_tx_7;
  output [41:0]pcie1_pipe_ep_tx_8;
  output [41:0]pcie1_pipe_ep_tx_9;
  output pl0_ref_clk;
  output pl0_resetn;
  output pl1_ref_clk;

  wire [63:0]CPM_PCIE_NOC_0_araddr;
  wire [1:0]CPM_PCIE_NOC_0_arburst;
  wire [3:0]CPM_PCIE_NOC_0_arcache;
  wire [15:0]CPM_PCIE_NOC_0_arid;
  wire [7:0]CPM_PCIE_NOC_0_arlen;
  wire CPM_PCIE_NOC_0_arlock;
  wire [2:0]CPM_PCIE_NOC_0_arprot;
  wire [3:0]CPM_PCIE_NOC_0_arqos;
  wire CPM_PCIE_NOC_0_arready;
  wire [2:0]CPM_PCIE_NOC_0_arsize;
  wire [17:0]CPM_PCIE_NOC_0_aruser;
  wire CPM_PCIE_NOC_0_arvalid;
  wire [63:0]CPM_PCIE_NOC_0_awaddr;
  wire [1:0]CPM_PCIE_NOC_0_awburst;
  wire [3:0]CPM_PCIE_NOC_0_awcache;
  wire [15:0]CPM_PCIE_NOC_0_awid;
  wire [7:0]CPM_PCIE_NOC_0_awlen;
  wire CPM_PCIE_NOC_0_awlock;
  wire [2:0]CPM_PCIE_NOC_0_awprot;
  wire [3:0]CPM_PCIE_NOC_0_awqos;
  wire CPM_PCIE_NOC_0_awready;
  wire [2:0]CPM_PCIE_NOC_0_awsize;
  wire [17:0]CPM_PCIE_NOC_0_awuser;
  wire CPM_PCIE_NOC_0_awvalid;
  wire [15:0]CPM_PCIE_NOC_0_bid;
  wire CPM_PCIE_NOC_0_bready;
  wire [1:0]CPM_PCIE_NOC_0_bresp;
  wire CPM_PCIE_NOC_0_bvalid;
  wire [127:0]CPM_PCIE_NOC_0_rdata;
  wire [15:0]CPM_PCIE_NOC_0_rid;
  wire CPM_PCIE_NOC_0_rlast;
  wire CPM_PCIE_NOC_0_rready;
  wire [1:0]CPM_PCIE_NOC_0_rresp;
  wire [16:0]CPM_PCIE_NOC_0_ruser;
  wire CPM_PCIE_NOC_0_rvalid;
  wire [127:0]CPM_PCIE_NOC_0_wdata;
  wire CPM_PCIE_NOC_0_wlast;
  wire CPM_PCIE_NOC_0_wready;
  wire [15:0]CPM_PCIE_NOC_0_wstrb;
  wire [16:0]CPM_PCIE_NOC_0_wuser;
  wire CPM_PCIE_NOC_0_wvalid;
  wire [63:0]CPM_PCIE_NOC_1_araddr;
  wire [1:0]CPM_PCIE_NOC_1_arburst;
  wire [3:0]CPM_PCIE_NOC_1_arcache;
  wire [15:0]CPM_PCIE_NOC_1_arid;
  wire [7:0]CPM_PCIE_NOC_1_arlen;
  wire CPM_PCIE_NOC_1_arlock;
  wire [2:0]CPM_PCIE_NOC_1_arprot;
  wire [3:0]CPM_PCIE_NOC_1_arqos;
  wire CPM_PCIE_NOC_1_arready;
  wire [2:0]CPM_PCIE_NOC_1_arsize;
  wire [17:0]CPM_PCIE_NOC_1_aruser;
  wire CPM_PCIE_NOC_1_arvalid;
  wire [63:0]CPM_PCIE_NOC_1_awaddr;
  wire [1:0]CPM_PCIE_NOC_1_awburst;
  wire [3:0]CPM_PCIE_NOC_1_awcache;
  wire [15:0]CPM_PCIE_NOC_1_awid;
  wire [7:0]CPM_PCIE_NOC_1_awlen;
  wire CPM_PCIE_NOC_1_awlock;
  wire [2:0]CPM_PCIE_NOC_1_awprot;
  wire [3:0]CPM_PCIE_NOC_1_awqos;
  wire CPM_PCIE_NOC_1_awready;
  wire [2:0]CPM_PCIE_NOC_1_awsize;
  wire [17:0]CPM_PCIE_NOC_1_awuser;
  wire CPM_PCIE_NOC_1_awvalid;
  wire [15:0]CPM_PCIE_NOC_1_bid;
  wire CPM_PCIE_NOC_1_bready;
  wire [1:0]CPM_PCIE_NOC_1_bresp;
  wire CPM_PCIE_NOC_1_bvalid;
  wire [127:0]CPM_PCIE_NOC_1_rdata;
  wire [15:0]CPM_PCIE_NOC_1_rid;
  wire CPM_PCIE_NOC_1_rlast;
  wire CPM_PCIE_NOC_1_rready;
  wire [1:0]CPM_PCIE_NOC_1_rresp;
  wire [16:0]CPM_PCIE_NOC_1_ruser;
  wire CPM_PCIE_NOC_1_rvalid;
  wire [127:0]CPM_PCIE_NOC_1_wdata;
  wire CPM_PCIE_NOC_1_wlast;
  wire CPM_PCIE_NOC_1_wready;
  wire [15:0]CPM_PCIE_NOC_1_wstrb;
  wire [16:0]CPM_PCIE_NOC_1_wuser;
  wire CPM_PCIE_NOC_1_wvalid;
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
  wire [7:0]PCIE1_GT_grx_n;
  wire [7:0]PCIE1_GT_grx_p;
  wire [7:0]PCIE1_GT_gtx_n;
  wire [7:0]PCIE1_GT_gtx_p;
  wire cpm_cor_irq;
  wire cpm_irq0;
  wire cpm_irq1;
  wire cpm_misc_irq;
  wire cpm_pcie_noc_axi0_clk;
  wire cpm_pcie_noc_axi1_clk;
  wire cpm_uncor_irq;
  wire dma1_axi_aresetn;
  wire dma1_axis_c2h_dmawr_cmp;
  wire [2:0]dma1_axis_c2h_dmawr_port_id;
  wire dma1_axis_c2h_dmawr_target_vch;
  wire dma1_axis_c2h_status_drop;
  wire dma1_axis_c2h_status_error;
  wire dma1_axis_c2h_status_last;
  wire [11:0]dma1_axis_c2h_status_qid;
  wire dma1_axis_c2h_status_status_cmp;
  wire dma1_axis_c2h_status_valid;
  wire [15:0]dma1_c2h_byp_in_mm_0_cidx;
  wire dma1_c2h_byp_in_mm_0_error;
  wire [11:0]dma1_c2h_byp_in_mm_0_func;
  wire [15:0]dma1_c2h_byp_in_mm_0_len;
  wire dma1_c2h_byp_in_mm_0_mrkr_req;
  wire dma1_c2h_byp_in_mm_0_no_dma;
  wire [2:0]dma1_c2h_byp_in_mm_0_port_id;
  wire [11:0]dma1_c2h_byp_in_mm_0_qid;
  wire [63:0]dma1_c2h_byp_in_mm_0_radr;
  wire dma1_c2h_byp_in_mm_0_ready;
  wire dma1_c2h_byp_in_mm_0_sdi;
  wire dma1_c2h_byp_in_mm_0_valid;
  wire [63:0]dma1_c2h_byp_in_mm_0_wadr;
  wire [15:0]dma1_c2h_byp_in_mm_1_cidx;
  wire dma1_c2h_byp_in_mm_1_error;
  wire [11:0]dma1_c2h_byp_in_mm_1_func;
  wire [15:0]dma1_c2h_byp_in_mm_1_len;
  wire dma1_c2h_byp_in_mm_1_mrkr_req;
  wire dma1_c2h_byp_in_mm_1_no_dma;
  wire [2:0]dma1_c2h_byp_in_mm_1_port_id;
  wire [11:0]dma1_c2h_byp_in_mm_1_qid;
  wire [63:0]dma1_c2h_byp_in_mm_1_radr;
  wire dma1_c2h_byp_in_mm_1_ready;
  wire dma1_c2h_byp_in_mm_1_sdi;
  wire dma1_c2h_byp_in_mm_1_valid;
  wire [63:0]dma1_c2h_byp_in_mm_1_wadr;
  wire [63:0]dma1_c2h_byp_in_st_csh_addr;
  wire dma1_c2h_byp_in_st_csh_error;
  wire [11:0]dma1_c2h_byp_in_st_csh_func;
  wire [6:0]dma1_c2h_byp_in_st_csh_pfch_tag;
  wire [2:0]dma1_c2h_byp_in_st_csh_port_id;
  wire [11:0]dma1_c2h_byp_in_st_csh_qid;
  wire dma1_c2h_byp_in_st_csh_ready;
  wire dma1_c2h_byp_in_st_csh_valid;
  wire [15:0]dma1_c2h_byp_out_cidx;
  wire [255:0]dma1_c2h_byp_out_dsc;
  wire [1:0]dma1_c2h_byp_out_dsc_sz;
  wire dma1_c2h_byp_out_error;
  wire [2:0]dma1_c2h_byp_out_fmt;
  wire [11:0]dma1_c2h_byp_out_func;
  wire dma1_c2h_byp_out_mm_chn;
  wire [6:0]dma1_c2h_byp_out_pfch_tag;
  wire [2:0]dma1_c2h_byp_out_port_id;
  wire [11:0]dma1_c2h_byp_out_qid;
  wire dma1_c2h_byp_out_ready;
  wire dma1_c2h_byp_out_st_mm;
  wire dma1_c2h_byp_out_valid;
  wire [15:0]dma1_dsc_crdt_in_crdt;
  wire dma1_dsc_crdt_in_dir;
  wire dma1_dsc_crdt_in_fence;
  wire [11:0]dma1_dsc_crdt_in_qid;
  wire dma1_dsc_crdt_in_rdy;
  wire dma1_dsc_crdt_in_valid;
  wire [15:0]dma1_h2c_byp_in_mm_0_cidx;
  wire dma1_h2c_byp_in_mm_0_error;
  wire [11:0]dma1_h2c_byp_in_mm_0_func;
  wire [15:0]dma1_h2c_byp_in_mm_0_len;
  wire dma1_h2c_byp_in_mm_0_mrkr_req;
  wire dma1_h2c_byp_in_mm_0_no_dma;
  wire [2:0]dma1_h2c_byp_in_mm_0_port_id;
  wire [11:0]dma1_h2c_byp_in_mm_0_qid;
  wire [63:0]dma1_h2c_byp_in_mm_0_radr;
  wire dma1_h2c_byp_in_mm_0_ready;
  wire dma1_h2c_byp_in_mm_0_sdi;
  wire dma1_h2c_byp_in_mm_0_valid;
  wire [63:0]dma1_h2c_byp_in_mm_0_wadr;
  wire [15:0]dma1_h2c_byp_in_mm_1_cidx;
  wire dma1_h2c_byp_in_mm_1_error;
  wire [11:0]dma1_h2c_byp_in_mm_1_func;
  wire [15:0]dma1_h2c_byp_in_mm_1_len;
  wire dma1_h2c_byp_in_mm_1_mrkr_req;
  wire dma1_h2c_byp_in_mm_1_no_dma;
  wire [2:0]dma1_h2c_byp_in_mm_1_port_id;
  wire [11:0]dma1_h2c_byp_in_mm_1_qid;
  wire [63:0]dma1_h2c_byp_in_mm_1_radr;
  wire dma1_h2c_byp_in_mm_1_ready;
  wire dma1_h2c_byp_in_mm_1_sdi;
  wire dma1_h2c_byp_in_mm_1_valid;
  wire [63:0]dma1_h2c_byp_in_mm_1_wadr;
  wire [63:0]dma1_h2c_byp_in_st_addr;
  wire [15:0]dma1_h2c_byp_in_st_cidx;
  wire dma1_h2c_byp_in_st_eop;
  wire dma1_h2c_byp_in_st_error;
  wire [11:0]dma1_h2c_byp_in_st_func;
  wire [15:0]dma1_h2c_byp_in_st_len;
  wire dma1_h2c_byp_in_st_mrkr_req;
  wire dma1_h2c_byp_in_st_no_dma;
  wire [2:0]dma1_h2c_byp_in_st_port_id;
  wire [11:0]dma1_h2c_byp_in_st_qid;
  wire dma1_h2c_byp_in_st_ready;
  wire dma1_h2c_byp_in_st_sdi;
  wire dma1_h2c_byp_in_st_sop;
  wire dma1_h2c_byp_in_st_valid;
  wire [15:0]dma1_h2c_byp_out_cidx;
  wire [255:0]dma1_h2c_byp_out_dsc;
  wire [1:0]dma1_h2c_byp_out_dsc_sz;
  wire dma1_h2c_byp_out_error;
  wire [2:0]dma1_h2c_byp_out_fmt;
  wire [11:0]dma1_h2c_byp_out_func;
  wire dma1_h2c_byp_out_mm_chn;
  wire [2:0]dma1_h2c_byp_out_port_id;
  wire [11:0]dma1_h2c_byp_out_qid;
  wire dma1_h2c_byp_out_ready;
  wire dma1_h2c_byp_out_st_mm;
  wire dma1_h2c_byp_out_valid;
  wire dma1_intrfc_clk;
  wire dma1_intrfc_resetn;
  wire dma1_m_axis_h2c_err;
  wire [31:0]dma1_m_axis_h2c_mdata;
  wire [5:0]dma1_m_axis_h2c_mty;
  wire [2:0]dma1_m_axis_h2c_port_id;
  wire [11:0]dma1_m_axis_h2c_qid;
  wire [31:0]dma1_m_axis_h2c_tcrc;
  wire [511:0]dma1_m_axis_h2c_tdata;
  wire dma1_m_axis_h2c_tlast;
  wire dma1_m_axis_h2c_tready;
  wire dma1_m_axis_h2c_tvalid;
  wire dma1_m_axis_h2c_zero_byte;
  wire [31:0]dma1_mgmt_cpl_dat;
  wire dma1_mgmt_cpl_rdy;
  wire [1:0]dma1_mgmt_cpl_sts;
  wire dma1_mgmt_cpl_vld;
  wire [31:0]dma1_mgmt_req_adr;
  wire [1:0]dma1_mgmt_req_cmd;
  wire [31:0]dma1_mgmt_req_dat;
  wire [12:0]dma1_mgmt_req_fnc;
  wire [5:0]dma1_mgmt_req_msc;
  wire dma1_mgmt_req_rdy;
  wire dma1_mgmt_req_vld;
  wire [63:0]dma1_qsts_out_data;
  wire [7:0]dma1_qsts_out_op;
  wire [2:0]dma1_qsts_out_port_id;
  wire [12:0]dma1_qsts_out_qid;
  wire dma1_qsts_out_rdy;
  wire dma1_qsts_out_vld;
  wire [1:0]dma1_s_axis_c2h_cmpt_cmpt_type;
  wire [2:0]dma1_s_axis_c2h_cmpt_col_idx;
  wire [511:0]dma1_s_axis_c2h_cmpt_data;
  wire [15:0]dma1_s_axis_c2h_cmpt_dpar;
  wire [2:0]dma1_s_axis_c2h_cmpt_err_idx;
  wire dma1_s_axis_c2h_cmpt_marker;
  wire dma1_s_axis_c2h_cmpt_no_wrb_marker;
  wire [2:0]dma1_s_axis_c2h_cmpt_port_id;
  wire [12:0]dma1_s_axis_c2h_cmpt_qid;
  wire [1:0]dma1_s_axis_c2h_cmpt_size;
  wire dma1_s_axis_c2h_cmpt_tready;
  wire dma1_s_axis_c2h_cmpt_tvalid;
  wire dma1_s_axis_c2h_cmpt_user_trig;
  wire [15:0]dma1_s_axis_c2h_cmpt_wait_pld_pkt_id;
  wire dma1_s_axis_c2h_ctrl_has_cmpt;
  wire [15:0]dma1_s_axis_c2h_ctrl_len;
  wire dma1_s_axis_c2h_ctrl_marker;
  wire [2:0]dma1_s_axis_c2h_ctrl_port_id;
  wire [11:0]dma1_s_axis_c2h_ctrl_qid;
  wire [6:0]dma1_s_axis_c2h_ecc;
  wire [5:0]dma1_s_axis_c2h_mty;
  wire [31:0]dma1_s_axis_c2h_tcrc;
  wire [511:0]dma1_s_axis_c2h_tdata;
  wire dma1_s_axis_c2h_tlast;
  wire dma1_s_axis_c2h_tready;
  wire dma1_s_axis_c2h_tvalid;
  wire [31:0]dma1_st_rx_msg_tdata;
  wire dma1_st_rx_msg_tlast;
  wire dma1_st_rx_msg_tready;
  wire dma1_st_rx_msg_tvalid;
  wire [15:0]dma1_tm_dsc_sts_avl;
  wire dma1_tm_dsc_sts_byp;
  wire dma1_tm_dsc_sts_dir;
  wire dma1_tm_dsc_sts_error;
  wire dma1_tm_dsc_sts_irq_arm;
  wire dma1_tm_dsc_sts_mm;
  wire [15:0]dma1_tm_dsc_sts_pidx;
  wire [2:0]dma1_tm_dsc_sts_port_id;
  wire dma1_tm_dsc_sts_qen;
  wire [11:0]dma1_tm_dsc_sts_qid;
  wire dma1_tm_dsc_sts_qinv;
  wire dma1_tm_dsc_sts_rdy;
  wire dma1_tm_dsc_sts_valid;
  wire dma1_usr_flr_clear;
  wire [12:0]dma1_usr_flr_done_fnc;
  wire dma1_usr_flr_done_vld;
  wire [12:0]dma1_usr_flr_fnc;
  wire dma1_usr_flr_set;
  wire dma1_usr_irq_ack;
  wire dma1_usr_irq_fail;
  wire [12:0]dma1_usr_irq_fnc;
  wire dma1_usr_irq_valid;
  wire [10:0]dma1_usr_irq_vec;
  wire gt_refclk1_clk_n;
  wire gt_refclk1_clk_p;
  wire m_axi_fpd_aclk;
  wire [13:0]pcie1_pipe_ep_commands_in;
  wire [13:0]pcie1_pipe_ep_commands_out;
  wire [41:0]pcie1_pipe_ep_rx_0;
  wire [41:0]pcie1_pipe_ep_rx_1;
  wire [41:0]pcie1_pipe_ep_rx_10;
  wire [41:0]pcie1_pipe_ep_rx_11;
  wire [41:0]pcie1_pipe_ep_rx_12;
  wire [41:0]pcie1_pipe_ep_rx_13;
  wire [41:0]pcie1_pipe_ep_rx_14;
  wire [41:0]pcie1_pipe_ep_rx_15;
  wire [41:0]pcie1_pipe_ep_rx_2;
  wire [41:0]pcie1_pipe_ep_rx_3;
  wire [41:0]pcie1_pipe_ep_rx_4;
  wire [41:0]pcie1_pipe_ep_rx_5;
  wire [41:0]pcie1_pipe_ep_rx_6;
  wire [41:0]pcie1_pipe_ep_rx_7;
  wire [41:0]pcie1_pipe_ep_rx_8;
  wire [41:0]pcie1_pipe_ep_rx_9;
  wire [41:0]pcie1_pipe_ep_tx_0;
  wire [41:0]pcie1_pipe_ep_tx_1;
  wire [41:0]pcie1_pipe_ep_tx_10;
  wire [41:0]pcie1_pipe_ep_tx_11;
  wire [41:0]pcie1_pipe_ep_tx_12;
  wire [41:0]pcie1_pipe_ep_tx_13;
  wire [41:0]pcie1_pipe_ep_tx_14;
  wire [41:0]pcie1_pipe_ep_tx_15;
  wire [41:0]pcie1_pipe_ep_tx_2;
  wire [41:0]pcie1_pipe_ep_tx_3;
  wire [41:0]pcie1_pipe_ep_tx_4;
  wire [41:0]pcie1_pipe_ep_tx_5;
  wire [41:0]pcie1_pipe_ep_tx_6;
  wire [41:0]pcie1_pipe_ep_tx_7;
  wire [41:0]pcie1_pipe_ep_tx_8;
  wire [41:0]pcie1_pipe_ep_tx_9;
  wire pl0_ref_clk;
  wire pl0_resetn;
  wire pl1_ref_clk;

  bd_a532 bd_a532_i
       (.CPM_PCIE_NOC_0_araddr(CPM_PCIE_NOC_0_araddr),
        .CPM_PCIE_NOC_0_arburst(CPM_PCIE_NOC_0_arburst),
        .CPM_PCIE_NOC_0_arcache(CPM_PCIE_NOC_0_arcache),
        .CPM_PCIE_NOC_0_arid(CPM_PCIE_NOC_0_arid),
        .CPM_PCIE_NOC_0_arlen(CPM_PCIE_NOC_0_arlen),
        .CPM_PCIE_NOC_0_arlock(CPM_PCIE_NOC_0_arlock),
        .CPM_PCIE_NOC_0_arprot(CPM_PCIE_NOC_0_arprot),
        .CPM_PCIE_NOC_0_arqos(CPM_PCIE_NOC_0_arqos),
        .CPM_PCIE_NOC_0_arready(CPM_PCIE_NOC_0_arready),
        .CPM_PCIE_NOC_0_arsize(CPM_PCIE_NOC_0_arsize),
        .CPM_PCIE_NOC_0_aruser(CPM_PCIE_NOC_0_aruser),
        .CPM_PCIE_NOC_0_arvalid(CPM_PCIE_NOC_0_arvalid),
        .CPM_PCIE_NOC_0_awaddr(CPM_PCIE_NOC_0_awaddr),
        .CPM_PCIE_NOC_0_awburst(CPM_PCIE_NOC_0_awburst),
        .CPM_PCIE_NOC_0_awcache(CPM_PCIE_NOC_0_awcache),
        .CPM_PCIE_NOC_0_awid(CPM_PCIE_NOC_0_awid),
        .CPM_PCIE_NOC_0_awlen(CPM_PCIE_NOC_0_awlen),
        .CPM_PCIE_NOC_0_awlock(CPM_PCIE_NOC_0_awlock),
        .CPM_PCIE_NOC_0_awprot(CPM_PCIE_NOC_0_awprot),
        .CPM_PCIE_NOC_0_awqos(CPM_PCIE_NOC_0_awqos),
        .CPM_PCIE_NOC_0_awready(CPM_PCIE_NOC_0_awready),
        .CPM_PCIE_NOC_0_awsize(CPM_PCIE_NOC_0_awsize),
        .CPM_PCIE_NOC_0_awuser(CPM_PCIE_NOC_0_awuser),
        .CPM_PCIE_NOC_0_awvalid(CPM_PCIE_NOC_0_awvalid),
        .CPM_PCIE_NOC_0_bid(CPM_PCIE_NOC_0_bid),
        .CPM_PCIE_NOC_0_bready(CPM_PCIE_NOC_0_bready),
        .CPM_PCIE_NOC_0_bresp(CPM_PCIE_NOC_0_bresp),
        .CPM_PCIE_NOC_0_bvalid(CPM_PCIE_NOC_0_bvalid),
        .CPM_PCIE_NOC_0_rdata(CPM_PCIE_NOC_0_rdata),
        .CPM_PCIE_NOC_0_rid(CPM_PCIE_NOC_0_rid),
        .CPM_PCIE_NOC_0_rlast(CPM_PCIE_NOC_0_rlast),
        .CPM_PCIE_NOC_0_rready(CPM_PCIE_NOC_0_rready),
        .CPM_PCIE_NOC_0_rresp(CPM_PCIE_NOC_0_rresp),
        .CPM_PCIE_NOC_0_ruser(CPM_PCIE_NOC_0_ruser),
        .CPM_PCIE_NOC_0_rvalid(CPM_PCIE_NOC_0_rvalid),
        .CPM_PCIE_NOC_0_wdata(CPM_PCIE_NOC_0_wdata),
        .CPM_PCIE_NOC_0_wlast(CPM_PCIE_NOC_0_wlast),
        .CPM_PCIE_NOC_0_wready(CPM_PCIE_NOC_0_wready),
        .CPM_PCIE_NOC_0_wstrb(CPM_PCIE_NOC_0_wstrb),
        .CPM_PCIE_NOC_0_wuser(CPM_PCIE_NOC_0_wuser),
        .CPM_PCIE_NOC_0_wvalid(CPM_PCIE_NOC_0_wvalid),
        .CPM_PCIE_NOC_1_araddr(CPM_PCIE_NOC_1_araddr),
        .CPM_PCIE_NOC_1_arburst(CPM_PCIE_NOC_1_arburst),
        .CPM_PCIE_NOC_1_arcache(CPM_PCIE_NOC_1_arcache),
        .CPM_PCIE_NOC_1_arid(CPM_PCIE_NOC_1_arid),
        .CPM_PCIE_NOC_1_arlen(CPM_PCIE_NOC_1_arlen),
        .CPM_PCIE_NOC_1_arlock(CPM_PCIE_NOC_1_arlock),
        .CPM_PCIE_NOC_1_arprot(CPM_PCIE_NOC_1_arprot),
        .CPM_PCIE_NOC_1_arqos(CPM_PCIE_NOC_1_arqos),
        .CPM_PCIE_NOC_1_arready(CPM_PCIE_NOC_1_arready),
        .CPM_PCIE_NOC_1_arsize(CPM_PCIE_NOC_1_arsize),
        .CPM_PCIE_NOC_1_aruser(CPM_PCIE_NOC_1_aruser),
        .CPM_PCIE_NOC_1_arvalid(CPM_PCIE_NOC_1_arvalid),
        .CPM_PCIE_NOC_1_awaddr(CPM_PCIE_NOC_1_awaddr),
        .CPM_PCIE_NOC_1_awburst(CPM_PCIE_NOC_1_awburst),
        .CPM_PCIE_NOC_1_awcache(CPM_PCIE_NOC_1_awcache),
        .CPM_PCIE_NOC_1_awid(CPM_PCIE_NOC_1_awid),
        .CPM_PCIE_NOC_1_awlen(CPM_PCIE_NOC_1_awlen),
        .CPM_PCIE_NOC_1_awlock(CPM_PCIE_NOC_1_awlock),
        .CPM_PCIE_NOC_1_awprot(CPM_PCIE_NOC_1_awprot),
        .CPM_PCIE_NOC_1_awqos(CPM_PCIE_NOC_1_awqos),
        .CPM_PCIE_NOC_1_awready(CPM_PCIE_NOC_1_awready),
        .CPM_PCIE_NOC_1_awsize(CPM_PCIE_NOC_1_awsize),
        .CPM_PCIE_NOC_1_awuser(CPM_PCIE_NOC_1_awuser),
        .CPM_PCIE_NOC_1_awvalid(CPM_PCIE_NOC_1_awvalid),
        .CPM_PCIE_NOC_1_bid(CPM_PCIE_NOC_1_bid),
        .CPM_PCIE_NOC_1_bready(CPM_PCIE_NOC_1_bready),
        .CPM_PCIE_NOC_1_bresp(CPM_PCIE_NOC_1_bresp),
        .CPM_PCIE_NOC_1_bvalid(CPM_PCIE_NOC_1_bvalid),
        .CPM_PCIE_NOC_1_rdata(CPM_PCIE_NOC_1_rdata),
        .CPM_PCIE_NOC_1_rid(CPM_PCIE_NOC_1_rid),
        .CPM_PCIE_NOC_1_rlast(CPM_PCIE_NOC_1_rlast),
        .CPM_PCIE_NOC_1_rready(CPM_PCIE_NOC_1_rready),
        .CPM_PCIE_NOC_1_rresp(CPM_PCIE_NOC_1_rresp),
        .CPM_PCIE_NOC_1_ruser(CPM_PCIE_NOC_1_ruser),
        .CPM_PCIE_NOC_1_rvalid(CPM_PCIE_NOC_1_rvalid),
        .CPM_PCIE_NOC_1_wdata(CPM_PCIE_NOC_1_wdata),
        .CPM_PCIE_NOC_1_wlast(CPM_PCIE_NOC_1_wlast),
        .CPM_PCIE_NOC_1_wready(CPM_PCIE_NOC_1_wready),
        .CPM_PCIE_NOC_1_wstrb(CPM_PCIE_NOC_1_wstrb),
        .CPM_PCIE_NOC_1_wuser(CPM_PCIE_NOC_1_wuser),
        .CPM_PCIE_NOC_1_wvalid(CPM_PCIE_NOC_1_wvalid),
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
        .PCIE1_GT_grx_n(PCIE1_GT_grx_n),
        .PCIE1_GT_grx_p(PCIE1_GT_grx_p),
        .PCIE1_GT_gtx_n(PCIE1_GT_gtx_n),
        .PCIE1_GT_gtx_p(PCIE1_GT_gtx_p),
        .cpm_cor_irq(cpm_cor_irq),
        .cpm_irq0(cpm_irq0),
        .cpm_irq1(cpm_irq1),
        .cpm_misc_irq(cpm_misc_irq),
        .cpm_pcie_noc_axi0_clk(cpm_pcie_noc_axi0_clk),
        .cpm_pcie_noc_axi1_clk(cpm_pcie_noc_axi1_clk),
        .cpm_uncor_irq(cpm_uncor_irq),
        .dma1_axi_aresetn(dma1_axi_aresetn),
        .dma1_axis_c2h_dmawr_cmp(dma1_axis_c2h_dmawr_cmp),
        .dma1_axis_c2h_dmawr_port_id(dma1_axis_c2h_dmawr_port_id),
        .dma1_axis_c2h_dmawr_target_vch(dma1_axis_c2h_dmawr_target_vch),
        .dma1_axis_c2h_status_drop(dma1_axis_c2h_status_drop),
        .dma1_axis_c2h_status_error(dma1_axis_c2h_status_error),
        .dma1_axis_c2h_status_last(dma1_axis_c2h_status_last),
        .dma1_axis_c2h_status_qid(dma1_axis_c2h_status_qid),
        .dma1_axis_c2h_status_status_cmp(dma1_axis_c2h_status_status_cmp),
        .dma1_axis_c2h_status_valid(dma1_axis_c2h_status_valid),
        .dma1_c2h_byp_in_mm_0_cidx(dma1_c2h_byp_in_mm_0_cidx),
        .dma1_c2h_byp_in_mm_0_error(dma1_c2h_byp_in_mm_0_error),
        .dma1_c2h_byp_in_mm_0_func(dma1_c2h_byp_in_mm_0_func),
        .dma1_c2h_byp_in_mm_0_len(dma1_c2h_byp_in_mm_0_len),
        .dma1_c2h_byp_in_mm_0_mrkr_req(dma1_c2h_byp_in_mm_0_mrkr_req),
        .dma1_c2h_byp_in_mm_0_no_dma(dma1_c2h_byp_in_mm_0_no_dma),
        .dma1_c2h_byp_in_mm_0_port_id(dma1_c2h_byp_in_mm_0_port_id),
        .dma1_c2h_byp_in_mm_0_qid(dma1_c2h_byp_in_mm_0_qid),
        .dma1_c2h_byp_in_mm_0_radr(dma1_c2h_byp_in_mm_0_radr),
        .dma1_c2h_byp_in_mm_0_ready(dma1_c2h_byp_in_mm_0_ready),
        .dma1_c2h_byp_in_mm_0_sdi(dma1_c2h_byp_in_mm_0_sdi),
        .dma1_c2h_byp_in_mm_0_valid(dma1_c2h_byp_in_mm_0_valid),
        .dma1_c2h_byp_in_mm_0_wadr(dma1_c2h_byp_in_mm_0_wadr),
        .dma1_c2h_byp_in_mm_1_cidx(dma1_c2h_byp_in_mm_1_cidx),
        .dma1_c2h_byp_in_mm_1_error(dma1_c2h_byp_in_mm_1_error),
        .dma1_c2h_byp_in_mm_1_func(dma1_c2h_byp_in_mm_1_func),
        .dma1_c2h_byp_in_mm_1_len(dma1_c2h_byp_in_mm_1_len),
        .dma1_c2h_byp_in_mm_1_mrkr_req(dma1_c2h_byp_in_mm_1_mrkr_req),
        .dma1_c2h_byp_in_mm_1_no_dma(dma1_c2h_byp_in_mm_1_no_dma),
        .dma1_c2h_byp_in_mm_1_port_id(dma1_c2h_byp_in_mm_1_port_id),
        .dma1_c2h_byp_in_mm_1_qid(dma1_c2h_byp_in_mm_1_qid),
        .dma1_c2h_byp_in_mm_1_radr(dma1_c2h_byp_in_mm_1_radr),
        .dma1_c2h_byp_in_mm_1_ready(dma1_c2h_byp_in_mm_1_ready),
        .dma1_c2h_byp_in_mm_1_sdi(dma1_c2h_byp_in_mm_1_sdi),
        .dma1_c2h_byp_in_mm_1_valid(dma1_c2h_byp_in_mm_1_valid),
        .dma1_c2h_byp_in_mm_1_wadr(dma1_c2h_byp_in_mm_1_wadr),
        .dma1_c2h_byp_in_st_csh_addr(dma1_c2h_byp_in_st_csh_addr),
        .dma1_c2h_byp_in_st_csh_error(dma1_c2h_byp_in_st_csh_error),
        .dma1_c2h_byp_in_st_csh_func(dma1_c2h_byp_in_st_csh_func),
        .dma1_c2h_byp_in_st_csh_pfch_tag(dma1_c2h_byp_in_st_csh_pfch_tag),
        .dma1_c2h_byp_in_st_csh_port_id(dma1_c2h_byp_in_st_csh_port_id),
        .dma1_c2h_byp_in_st_csh_qid(dma1_c2h_byp_in_st_csh_qid),
        .dma1_c2h_byp_in_st_csh_ready(dma1_c2h_byp_in_st_csh_ready),
        .dma1_c2h_byp_in_st_csh_valid(dma1_c2h_byp_in_st_csh_valid),
        .dma1_c2h_byp_out_cidx(dma1_c2h_byp_out_cidx),
        .dma1_c2h_byp_out_dsc(dma1_c2h_byp_out_dsc),
        .dma1_c2h_byp_out_dsc_sz(dma1_c2h_byp_out_dsc_sz),
        .dma1_c2h_byp_out_error(dma1_c2h_byp_out_error),
        .dma1_c2h_byp_out_fmt(dma1_c2h_byp_out_fmt),
        .dma1_c2h_byp_out_func(dma1_c2h_byp_out_func),
        .dma1_c2h_byp_out_mm_chn(dma1_c2h_byp_out_mm_chn),
        .dma1_c2h_byp_out_pfch_tag(dma1_c2h_byp_out_pfch_tag),
        .dma1_c2h_byp_out_port_id(dma1_c2h_byp_out_port_id),
        .dma1_c2h_byp_out_qid(dma1_c2h_byp_out_qid),
        .dma1_c2h_byp_out_ready(dma1_c2h_byp_out_ready),
        .dma1_c2h_byp_out_st_mm(dma1_c2h_byp_out_st_mm),
        .dma1_c2h_byp_out_valid(dma1_c2h_byp_out_valid),
        .dma1_dsc_crdt_in_crdt(dma1_dsc_crdt_in_crdt),
        .dma1_dsc_crdt_in_dir(dma1_dsc_crdt_in_dir),
        .dma1_dsc_crdt_in_fence(dma1_dsc_crdt_in_fence),
        .dma1_dsc_crdt_in_qid(dma1_dsc_crdt_in_qid),
        .dma1_dsc_crdt_in_rdy(dma1_dsc_crdt_in_rdy),
        .dma1_dsc_crdt_in_valid(dma1_dsc_crdt_in_valid),
        .dma1_h2c_byp_in_mm_0_cidx(dma1_h2c_byp_in_mm_0_cidx),
        .dma1_h2c_byp_in_mm_0_error(dma1_h2c_byp_in_mm_0_error),
        .dma1_h2c_byp_in_mm_0_func(dma1_h2c_byp_in_mm_0_func),
        .dma1_h2c_byp_in_mm_0_len(dma1_h2c_byp_in_mm_0_len),
        .dma1_h2c_byp_in_mm_0_mrkr_req(dma1_h2c_byp_in_mm_0_mrkr_req),
        .dma1_h2c_byp_in_mm_0_no_dma(dma1_h2c_byp_in_mm_0_no_dma),
        .dma1_h2c_byp_in_mm_0_port_id(dma1_h2c_byp_in_mm_0_port_id),
        .dma1_h2c_byp_in_mm_0_qid(dma1_h2c_byp_in_mm_0_qid),
        .dma1_h2c_byp_in_mm_0_radr(dma1_h2c_byp_in_mm_0_radr),
        .dma1_h2c_byp_in_mm_0_ready(dma1_h2c_byp_in_mm_0_ready),
        .dma1_h2c_byp_in_mm_0_sdi(dma1_h2c_byp_in_mm_0_sdi),
        .dma1_h2c_byp_in_mm_0_valid(dma1_h2c_byp_in_mm_0_valid),
        .dma1_h2c_byp_in_mm_0_wadr(dma1_h2c_byp_in_mm_0_wadr),
        .dma1_h2c_byp_in_mm_1_cidx(dma1_h2c_byp_in_mm_1_cidx),
        .dma1_h2c_byp_in_mm_1_error(dma1_h2c_byp_in_mm_1_error),
        .dma1_h2c_byp_in_mm_1_func(dma1_h2c_byp_in_mm_1_func),
        .dma1_h2c_byp_in_mm_1_len(dma1_h2c_byp_in_mm_1_len),
        .dma1_h2c_byp_in_mm_1_mrkr_req(dma1_h2c_byp_in_mm_1_mrkr_req),
        .dma1_h2c_byp_in_mm_1_no_dma(dma1_h2c_byp_in_mm_1_no_dma),
        .dma1_h2c_byp_in_mm_1_port_id(dma1_h2c_byp_in_mm_1_port_id),
        .dma1_h2c_byp_in_mm_1_qid(dma1_h2c_byp_in_mm_1_qid),
        .dma1_h2c_byp_in_mm_1_radr(dma1_h2c_byp_in_mm_1_radr),
        .dma1_h2c_byp_in_mm_1_ready(dma1_h2c_byp_in_mm_1_ready),
        .dma1_h2c_byp_in_mm_1_sdi(dma1_h2c_byp_in_mm_1_sdi),
        .dma1_h2c_byp_in_mm_1_valid(dma1_h2c_byp_in_mm_1_valid),
        .dma1_h2c_byp_in_mm_1_wadr(dma1_h2c_byp_in_mm_1_wadr),
        .dma1_h2c_byp_in_st_addr(dma1_h2c_byp_in_st_addr),
        .dma1_h2c_byp_in_st_cidx(dma1_h2c_byp_in_st_cidx),
        .dma1_h2c_byp_in_st_eop(dma1_h2c_byp_in_st_eop),
        .dma1_h2c_byp_in_st_error(dma1_h2c_byp_in_st_error),
        .dma1_h2c_byp_in_st_func(dma1_h2c_byp_in_st_func),
        .dma1_h2c_byp_in_st_len(dma1_h2c_byp_in_st_len),
        .dma1_h2c_byp_in_st_mrkr_req(dma1_h2c_byp_in_st_mrkr_req),
        .dma1_h2c_byp_in_st_no_dma(dma1_h2c_byp_in_st_no_dma),
        .dma1_h2c_byp_in_st_port_id(dma1_h2c_byp_in_st_port_id),
        .dma1_h2c_byp_in_st_qid(dma1_h2c_byp_in_st_qid),
        .dma1_h2c_byp_in_st_ready(dma1_h2c_byp_in_st_ready),
        .dma1_h2c_byp_in_st_sdi(dma1_h2c_byp_in_st_sdi),
        .dma1_h2c_byp_in_st_sop(dma1_h2c_byp_in_st_sop),
        .dma1_h2c_byp_in_st_valid(dma1_h2c_byp_in_st_valid),
        .dma1_h2c_byp_out_cidx(dma1_h2c_byp_out_cidx),
        .dma1_h2c_byp_out_dsc(dma1_h2c_byp_out_dsc),
        .dma1_h2c_byp_out_dsc_sz(dma1_h2c_byp_out_dsc_sz),
        .dma1_h2c_byp_out_error(dma1_h2c_byp_out_error),
        .dma1_h2c_byp_out_fmt(dma1_h2c_byp_out_fmt),
        .dma1_h2c_byp_out_func(dma1_h2c_byp_out_func),
        .dma1_h2c_byp_out_mm_chn(dma1_h2c_byp_out_mm_chn),
        .dma1_h2c_byp_out_port_id(dma1_h2c_byp_out_port_id),
        .dma1_h2c_byp_out_qid(dma1_h2c_byp_out_qid),
        .dma1_h2c_byp_out_ready(dma1_h2c_byp_out_ready),
        .dma1_h2c_byp_out_st_mm(dma1_h2c_byp_out_st_mm),
        .dma1_h2c_byp_out_valid(dma1_h2c_byp_out_valid),
        .dma1_intrfc_clk(dma1_intrfc_clk),
        .dma1_intrfc_resetn(dma1_intrfc_resetn),
        .dma1_m_axis_h2c_err(dma1_m_axis_h2c_err),
        .dma1_m_axis_h2c_mdata(dma1_m_axis_h2c_mdata),
        .dma1_m_axis_h2c_mty(dma1_m_axis_h2c_mty),
        .dma1_m_axis_h2c_port_id(dma1_m_axis_h2c_port_id),
        .dma1_m_axis_h2c_qid(dma1_m_axis_h2c_qid),
        .dma1_m_axis_h2c_tcrc(dma1_m_axis_h2c_tcrc),
        .dma1_m_axis_h2c_tdata(dma1_m_axis_h2c_tdata),
        .dma1_m_axis_h2c_tlast(dma1_m_axis_h2c_tlast),
        .dma1_m_axis_h2c_tready(dma1_m_axis_h2c_tready),
        .dma1_m_axis_h2c_tvalid(dma1_m_axis_h2c_tvalid),
        .dma1_m_axis_h2c_zero_byte(dma1_m_axis_h2c_zero_byte),
        .dma1_mgmt_cpl_dat(dma1_mgmt_cpl_dat),
        .dma1_mgmt_cpl_rdy(dma1_mgmt_cpl_rdy),
        .dma1_mgmt_cpl_sts(dma1_mgmt_cpl_sts),
        .dma1_mgmt_cpl_vld(dma1_mgmt_cpl_vld),
        .dma1_mgmt_req_adr(dma1_mgmt_req_adr),
        .dma1_mgmt_req_cmd(dma1_mgmt_req_cmd),
        .dma1_mgmt_req_dat(dma1_mgmt_req_dat),
        .dma1_mgmt_req_fnc(dma1_mgmt_req_fnc),
        .dma1_mgmt_req_msc(dma1_mgmt_req_msc),
        .dma1_mgmt_req_rdy(dma1_mgmt_req_rdy),
        .dma1_mgmt_req_vld(dma1_mgmt_req_vld),
        .dma1_qsts_out_data(dma1_qsts_out_data),
        .dma1_qsts_out_op(dma1_qsts_out_op),
        .dma1_qsts_out_port_id(dma1_qsts_out_port_id),
        .dma1_qsts_out_qid(dma1_qsts_out_qid),
        .dma1_qsts_out_rdy(dma1_qsts_out_rdy),
        .dma1_qsts_out_vld(dma1_qsts_out_vld),
        .dma1_s_axis_c2h_cmpt_cmpt_type(dma1_s_axis_c2h_cmpt_cmpt_type),
        .dma1_s_axis_c2h_cmpt_col_idx(dma1_s_axis_c2h_cmpt_col_idx),
        .dma1_s_axis_c2h_cmpt_data(dma1_s_axis_c2h_cmpt_data),
        .dma1_s_axis_c2h_cmpt_dpar(dma1_s_axis_c2h_cmpt_dpar),
        .dma1_s_axis_c2h_cmpt_err_idx(dma1_s_axis_c2h_cmpt_err_idx),
        .dma1_s_axis_c2h_cmpt_marker(dma1_s_axis_c2h_cmpt_marker),
        .dma1_s_axis_c2h_cmpt_no_wrb_marker(dma1_s_axis_c2h_cmpt_no_wrb_marker),
        .dma1_s_axis_c2h_cmpt_port_id(dma1_s_axis_c2h_cmpt_port_id),
        .dma1_s_axis_c2h_cmpt_qid(dma1_s_axis_c2h_cmpt_qid),
        .dma1_s_axis_c2h_cmpt_size(dma1_s_axis_c2h_cmpt_size),
        .dma1_s_axis_c2h_cmpt_tready(dma1_s_axis_c2h_cmpt_tready),
        .dma1_s_axis_c2h_cmpt_tvalid(dma1_s_axis_c2h_cmpt_tvalid),
        .dma1_s_axis_c2h_cmpt_user_trig(dma1_s_axis_c2h_cmpt_user_trig),
        .dma1_s_axis_c2h_cmpt_wait_pld_pkt_id(dma1_s_axis_c2h_cmpt_wait_pld_pkt_id),
        .dma1_s_axis_c2h_ctrl_has_cmpt(dma1_s_axis_c2h_ctrl_has_cmpt),
        .dma1_s_axis_c2h_ctrl_len(dma1_s_axis_c2h_ctrl_len),
        .dma1_s_axis_c2h_ctrl_marker(dma1_s_axis_c2h_ctrl_marker),
        .dma1_s_axis_c2h_ctrl_port_id(dma1_s_axis_c2h_ctrl_port_id),
        .dma1_s_axis_c2h_ctrl_qid(dma1_s_axis_c2h_ctrl_qid),
        .dma1_s_axis_c2h_ecc(dma1_s_axis_c2h_ecc),
        .dma1_s_axis_c2h_mty(dma1_s_axis_c2h_mty),
        .dma1_s_axis_c2h_tcrc(dma1_s_axis_c2h_tcrc),
        .dma1_s_axis_c2h_tdata(dma1_s_axis_c2h_tdata),
        .dma1_s_axis_c2h_tlast(dma1_s_axis_c2h_tlast),
        .dma1_s_axis_c2h_tready(dma1_s_axis_c2h_tready),
        .dma1_s_axis_c2h_tvalid(dma1_s_axis_c2h_tvalid),
        .dma1_st_rx_msg_tdata(dma1_st_rx_msg_tdata),
        .dma1_st_rx_msg_tlast(dma1_st_rx_msg_tlast),
        .dma1_st_rx_msg_tready(dma1_st_rx_msg_tready),
        .dma1_st_rx_msg_tvalid(dma1_st_rx_msg_tvalid),
        .dma1_tm_dsc_sts_avl(dma1_tm_dsc_sts_avl),
        .dma1_tm_dsc_sts_byp(dma1_tm_dsc_sts_byp),
        .dma1_tm_dsc_sts_dir(dma1_tm_dsc_sts_dir),
        .dma1_tm_dsc_sts_error(dma1_tm_dsc_sts_error),
        .dma1_tm_dsc_sts_irq_arm(dma1_tm_dsc_sts_irq_arm),
        .dma1_tm_dsc_sts_mm(dma1_tm_dsc_sts_mm),
        .dma1_tm_dsc_sts_pidx(dma1_tm_dsc_sts_pidx),
        .dma1_tm_dsc_sts_port_id(dma1_tm_dsc_sts_port_id),
        .dma1_tm_dsc_sts_qen(dma1_tm_dsc_sts_qen),
        .dma1_tm_dsc_sts_qid(dma1_tm_dsc_sts_qid),
        .dma1_tm_dsc_sts_qinv(dma1_tm_dsc_sts_qinv),
        .dma1_tm_dsc_sts_rdy(dma1_tm_dsc_sts_rdy),
        .dma1_tm_dsc_sts_valid(dma1_tm_dsc_sts_valid),
        .dma1_usr_flr_clear(dma1_usr_flr_clear),
        .dma1_usr_flr_done_fnc(dma1_usr_flr_done_fnc),
        .dma1_usr_flr_done_vld(dma1_usr_flr_done_vld),
        .dma1_usr_flr_fnc(dma1_usr_flr_fnc),
        .dma1_usr_flr_set(dma1_usr_flr_set),
        .dma1_usr_irq_ack(dma1_usr_irq_ack),
        .dma1_usr_irq_fail(dma1_usr_irq_fail),
        .dma1_usr_irq_fnc(dma1_usr_irq_fnc),
        .dma1_usr_irq_valid(dma1_usr_irq_valid),
        .dma1_usr_irq_vec(dma1_usr_irq_vec),
        .gt_refclk1_clk_n(gt_refclk1_clk_n),
        .gt_refclk1_clk_p(gt_refclk1_clk_p),
        .m_axi_fpd_aclk(m_axi_fpd_aclk),
        .pcie1_pipe_ep_commands_in(pcie1_pipe_ep_commands_in),
        .pcie1_pipe_ep_commands_out(pcie1_pipe_ep_commands_out),
        .pcie1_pipe_ep_rx_0(pcie1_pipe_ep_rx_0),
        .pcie1_pipe_ep_rx_1(pcie1_pipe_ep_rx_1),
        .pcie1_pipe_ep_rx_10(pcie1_pipe_ep_rx_10),
        .pcie1_pipe_ep_rx_11(pcie1_pipe_ep_rx_11),
        .pcie1_pipe_ep_rx_12(pcie1_pipe_ep_rx_12),
        .pcie1_pipe_ep_rx_13(pcie1_pipe_ep_rx_13),
        .pcie1_pipe_ep_rx_14(pcie1_pipe_ep_rx_14),
        .pcie1_pipe_ep_rx_15(pcie1_pipe_ep_rx_15),
        .pcie1_pipe_ep_rx_2(pcie1_pipe_ep_rx_2),
        .pcie1_pipe_ep_rx_3(pcie1_pipe_ep_rx_3),
        .pcie1_pipe_ep_rx_4(pcie1_pipe_ep_rx_4),
        .pcie1_pipe_ep_rx_5(pcie1_pipe_ep_rx_5),
        .pcie1_pipe_ep_rx_6(pcie1_pipe_ep_rx_6),
        .pcie1_pipe_ep_rx_7(pcie1_pipe_ep_rx_7),
        .pcie1_pipe_ep_rx_8(pcie1_pipe_ep_rx_8),
        .pcie1_pipe_ep_rx_9(pcie1_pipe_ep_rx_9),
        .pcie1_pipe_ep_tx_0(pcie1_pipe_ep_tx_0),
        .pcie1_pipe_ep_tx_1(pcie1_pipe_ep_tx_1),
        .pcie1_pipe_ep_tx_10(pcie1_pipe_ep_tx_10),
        .pcie1_pipe_ep_tx_11(pcie1_pipe_ep_tx_11),
        .pcie1_pipe_ep_tx_12(pcie1_pipe_ep_tx_12),
        .pcie1_pipe_ep_tx_13(pcie1_pipe_ep_tx_13),
        .pcie1_pipe_ep_tx_14(pcie1_pipe_ep_tx_14),
        .pcie1_pipe_ep_tx_15(pcie1_pipe_ep_tx_15),
        .pcie1_pipe_ep_tx_2(pcie1_pipe_ep_tx_2),
        .pcie1_pipe_ep_tx_3(pcie1_pipe_ep_tx_3),
        .pcie1_pipe_ep_tx_4(pcie1_pipe_ep_tx_4),
        .pcie1_pipe_ep_tx_5(pcie1_pipe_ep_tx_5),
        .pcie1_pipe_ep_tx_6(pcie1_pipe_ep_tx_6),
        .pcie1_pipe_ep_tx_7(pcie1_pipe_ep_tx_7),
        .pcie1_pipe_ep_tx_8(pcie1_pipe_ep_tx_8),
        .pcie1_pipe_ep_tx_9(pcie1_pipe_ep_tx_9),
        .pl0_ref_clk(pl0_ref_clk),
        .pl0_resetn(pl0_resetn),
        .pl1_ref_clk(pl1_ref_clk));
endmodule
