//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_a532.bd
//Design : bd_a532
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_a532,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_a532,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=None}" *) (* HW_HANDOFF = "cpm_qdma_ep_part_versal_cips_0_0.hwdef" *) 
module bd_a532
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CPM_PCIE_NOC_0, ADDR_WIDTH 64, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY noc, CLK_DOMAIN bd_a532_pspmc_0_0_cpm_pcie_noc_axi0_clk, DATA_WIDTH 128, FREQ_HZ 1000000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, HD_TANDEM 0, ID_WIDTH 16, INDEX 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY ps_pcie, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 64, NUM_WRITE_THREADS 1, PHASE 0.0, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 17, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17" *) output [63:0]CPM_PCIE_NOC_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARBURST" *) output [1:0]CPM_PCIE_NOC_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARCACHE" *) output [3:0]CPM_PCIE_NOC_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARID" *) output [15:0]CPM_PCIE_NOC_0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARLEN" *) output [7:0]CPM_PCIE_NOC_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARLOCK" *) output CPM_PCIE_NOC_0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARPROT" *) output [2:0]CPM_PCIE_NOC_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARQOS" *) output [3:0]CPM_PCIE_NOC_0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARREADY" *) input CPM_PCIE_NOC_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARSIZE" *) output [2:0]CPM_PCIE_NOC_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARUSER" *) output [17:0]CPM_PCIE_NOC_0_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARVALID" *) output CPM_PCIE_NOC_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWADDR" *) output [63:0]CPM_PCIE_NOC_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWBURST" *) output [1:0]CPM_PCIE_NOC_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWCACHE" *) output [3:0]CPM_PCIE_NOC_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWID" *) output [15:0]CPM_PCIE_NOC_0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWLEN" *) output [7:0]CPM_PCIE_NOC_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWLOCK" *) output CPM_PCIE_NOC_0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWPROT" *) output [2:0]CPM_PCIE_NOC_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWQOS" *) output [3:0]CPM_PCIE_NOC_0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWREADY" *) input CPM_PCIE_NOC_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWSIZE" *) output [2:0]CPM_PCIE_NOC_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWUSER" *) output [17:0]CPM_PCIE_NOC_0_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWVALID" *) output CPM_PCIE_NOC_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 BID" *) input [15:0]CPM_PCIE_NOC_0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 BREADY" *) output CPM_PCIE_NOC_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 BRESP" *) input [1:0]CPM_PCIE_NOC_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 BVALID" *) input CPM_PCIE_NOC_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RDATA" *) input [127:0]CPM_PCIE_NOC_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RID" *) input [15:0]CPM_PCIE_NOC_0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RLAST" *) input CPM_PCIE_NOC_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RREADY" *) output CPM_PCIE_NOC_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RRESP" *) input [1:0]CPM_PCIE_NOC_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RUSER" *) input [16:0]CPM_PCIE_NOC_0_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RVALID" *) input CPM_PCIE_NOC_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WDATA" *) output [127:0]CPM_PCIE_NOC_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WLAST" *) output CPM_PCIE_NOC_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WREADY" *) input CPM_PCIE_NOC_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WSTRB" *) output [15:0]CPM_PCIE_NOC_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WUSER" *) output [16:0]CPM_PCIE_NOC_0_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WVALID" *) output CPM_PCIE_NOC_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CPM_PCIE_NOC_1, ADDR_WIDTH 64, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY noc, CLK_DOMAIN bd_a532_pspmc_0_0_cpm_pcie_noc_axi1_clk, DATA_WIDTH 128, FREQ_HZ 1000000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, HD_TANDEM 0, ID_WIDTH 16, INDEX 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY ps_pcie, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 64, NUM_WRITE_THREADS 1, PHASE 0.0, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 17, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17" *) output [63:0]CPM_PCIE_NOC_1_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARBURST" *) output [1:0]CPM_PCIE_NOC_1_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARCACHE" *) output [3:0]CPM_PCIE_NOC_1_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARID" *) output [15:0]CPM_PCIE_NOC_1_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARLEN" *) output [7:0]CPM_PCIE_NOC_1_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARLOCK" *) output CPM_PCIE_NOC_1_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARPROT" *) output [2:0]CPM_PCIE_NOC_1_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARQOS" *) output [3:0]CPM_PCIE_NOC_1_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARREADY" *) input CPM_PCIE_NOC_1_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARSIZE" *) output [2:0]CPM_PCIE_NOC_1_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARUSER" *) output [17:0]CPM_PCIE_NOC_1_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARVALID" *) output CPM_PCIE_NOC_1_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWADDR" *) output [63:0]CPM_PCIE_NOC_1_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWBURST" *) output [1:0]CPM_PCIE_NOC_1_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWCACHE" *) output [3:0]CPM_PCIE_NOC_1_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWID" *) output [15:0]CPM_PCIE_NOC_1_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWLEN" *) output [7:0]CPM_PCIE_NOC_1_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWLOCK" *) output CPM_PCIE_NOC_1_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWPROT" *) output [2:0]CPM_PCIE_NOC_1_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWQOS" *) output [3:0]CPM_PCIE_NOC_1_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWREADY" *) input CPM_PCIE_NOC_1_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWSIZE" *) output [2:0]CPM_PCIE_NOC_1_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWUSER" *) output [17:0]CPM_PCIE_NOC_1_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWVALID" *) output CPM_PCIE_NOC_1_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 BID" *) input [15:0]CPM_PCIE_NOC_1_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 BREADY" *) output CPM_PCIE_NOC_1_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 BRESP" *) input [1:0]CPM_PCIE_NOC_1_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 BVALID" *) input CPM_PCIE_NOC_1_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RDATA" *) input [127:0]CPM_PCIE_NOC_1_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RID" *) input [15:0]CPM_PCIE_NOC_1_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RLAST" *) input CPM_PCIE_NOC_1_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RREADY" *) output CPM_PCIE_NOC_1_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RRESP" *) input [1:0]CPM_PCIE_NOC_1_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RUSER" *) input [16:0]CPM_PCIE_NOC_1_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RVALID" *) input CPM_PCIE_NOC_1_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WDATA" *) output [127:0]CPM_PCIE_NOC_1_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WLAST" *) output CPM_PCIE_NOC_1_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WREADY" *) input CPM_PCIE_NOC_1_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WSTRB" *) output [15:0]CPM_PCIE_NOC_1_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WUSER" *) output [16:0]CPM_PCIE_NOC_1_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WVALID" *) output CPM_PCIE_NOC_1_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_FPD ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_FPD, ADDR_WIDTH 44, ARUSER_WIDTH 16, AWUSER_WIDTH 16, BUSER_WIDTH 0, CATEGORY pl, CLK_DOMAIN bd_a532_pspmc_0_0_pl0_ref_clk, DATA_WIDTH 128, FREQ_HZ 429162384, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY ps, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [43:0]M_AXI_FPD_araddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GRX_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PCIE1_GT, CAN_DEBUG false" *) input [7:0]PCIE1_GT_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GRX_P" *) input [7:0]PCIE1_GT_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GTX_N" *) output [7:0]PCIE1_GT_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GTX_P" *) output [7:0]PCIE1_GT_gtx_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_COR_IRQ INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_COR_IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output cpm_cor_irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_IRQ0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_IRQ0, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) input cpm_irq0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_IRQ1 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_IRQ1, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) input cpm_irq1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_MISC_IRQ INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_MISC_IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output cpm_misc_irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CPM_PCIE_NOC_AXI0_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CPM_PCIE_NOC_AXI0_CLK, ASSOCIATED_BUSIF CPM_PCIE_NOC_0, CLK_DOMAIN bd_a532_pspmc_0_0_cpm_pcie_noc_axi0_clk, FREQ_HZ 1000000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU" *) output cpm_pcie_noc_axi0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CPM_PCIE_NOC_AXI1_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CPM_PCIE_NOC_AXI1_CLK, ASSOCIATED_BUSIF CPM_PCIE_NOC_1, CLK_DOMAIN bd_a532_pspmc_0_0_cpm_pcie_noc_axi1_clk, FREQ_HZ 1000000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU" *) output cpm_pcie_noc_axi1_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_UNCOR_IRQ INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_UNCOR_IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output cpm_uncor_irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DMA1_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DMA1_AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output dma1_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:axis_c2h_dmawr:1.0 dma1_axis_c2h_dmawr cmp" *) output dma1_axis_c2h_dmawr_cmp;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:axis_c2h_dmawr:1.0 dma1_axis_c2h_dmawr port_id" *) output [2:0]dma1_axis_c2h_dmawr_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:axis_c2h_dmawr:1.0 dma1_axis_c2h_dmawr target_vch" *) output dma1_axis_c2h_dmawr_target_vch;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status drop" *) output dma1_axis_c2h_status_drop;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status error" *) output dma1_axis_c2h_status_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status last" *) output dma1_axis_c2h_status_last;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status qid" *) output [11:0]dma1_axis_c2h_status_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status status_cmp" *) output dma1_axis_c2h_status_status_cmp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status valid" *) output dma1_axis_c2h_status_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 cidx" *) input [15:0]dma1_c2h_byp_in_mm_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 error" *) input dma1_c2h_byp_in_mm_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 func" *) input [11:0]dma1_c2h_byp_in_mm_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 len" *) input [15:0]dma1_c2h_byp_in_mm_0_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 mrkr_req" *) input dma1_c2h_byp_in_mm_0_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 no_dma" *) input dma1_c2h_byp_in_mm_0_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 port_id" *) input [2:0]dma1_c2h_byp_in_mm_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 qid" *) input [11:0]dma1_c2h_byp_in_mm_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 radr" *) input [63:0]dma1_c2h_byp_in_mm_0_radr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 ready" *) output dma1_c2h_byp_in_mm_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 sdi" *) input dma1_c2h_byp_in_mm_0_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 valid" *) input dma1_c2h_byp_in_mm_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0 wadr" *) input [63:0]dma1_c2h_byp_in_mm_0_wadr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 cidx" *) input [15:0]dma1_c2h_byp_in_mm_1_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 error" *) input dma1_c2h_byp_in_mm_1_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 func" *) input [11:0]dma1_c2h_byp_in_mm_1_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 len" *) input [15:0]dma1_c2h_byp_in_mm_1_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 mrkr_req" *) input dma1_c2h_byp_in_mm_1_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 no_dma" *) input dma1_c2h_byp_in_mm_1_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 port_id" *) input [2:0]dma1_c2h_byp_in_mm_1_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 qid" *) input [11:0]dma1_c2h_byp_in_mm_1_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 radr" *) input [63:0]dma1_c2h_byp_in_mm_1_radr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 ready" *) output dma1_c2h_byp_in_mm_1_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 sdi" *) input dma1_c2h_byp_in_mm_1_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 valid" *) input dma1_c2h_byp_in_mm_1_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1 wadr" *) input [63:0]dma1_c2h_byp_in_mm_1_wadr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh addr" *) input [63:0]dma1_c2h_byp_in_st_csh_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh error" *) input dma1_c2h_byp_in_st_csh_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh func" *) input [11:0]dma1_c2h_byp_in_st_csh_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh pfch_tag" *) input [6:0]dma1_c2h_byp_in_st_csh_pfch_tag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh port_id" *) input [2:0]dma1_c2h_byp_in_st_csh_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh qid" *) input [11:0]dma1_c2h_byp_in_st_csh_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh ready" *) output dma1_c2h_byp_in_st_csh_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh valid" *) input dma1_c2h_byp_in_st_csh_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out cidx" *) output [15:0]dma1_c2h_byp_out_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out dsc" *) output [255:0]dma1_c2h_byp_out_dsc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out dsc_sz" *) output [1:0]dma1_c2h_byp_out_dsc_sz;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out error" *) output dma1_c2h_byp_out_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out fmt" *) output [2:0]dma1_c2h_byp_out_fmt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out func" *) output [11:0]dma1_c2h_byp_out_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out mm_chn" *) output dma1_c2h_byp_out_mm_chn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out pfch_tag" *) output [6:0]dma1_c2h_byp_out_pfch_tag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out port_id" *) output [2:0]dma1_c2h_byp_out_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out qid" *) output [11:0]dma1_c2h_byp_out_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out ready" *) input dma1_c2h_byp_out_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out st_mm" *) output dma1_c2h_byp_out_st_mm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out valid" *) output dma1_c2h_byp_out_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in crdt" *) input [15:0]dma1_dsc_crdt_in_crdt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in dir" *) input dma1_dsc_crdt_in_dir;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in fence" *) input dma1_dsc_crdt_in_fence;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in qid" *) input [11:0]dma1_dsc_crdt_in_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in rdy" *) output dma1_dsc_crdt_in_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in valid" *) input dma1_dsc_crdt_in_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 cidx" *) input [15:0]dma1_h2c_byp_in_mm_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 error" *) input dma1_h2c_byp_in_mm_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 func" *) input [11:0]dma1_h2c_byp_in_mm_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 len" *) input [15:0]dma1_h2c_byp_in_mm_0_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 mrkr_req" *) input dma1_h2c_byp_in_mm_0_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 no_dma" *) input dma1_h2c_byp_in_mm_0_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 port_id" *) input [2:0]dma1_h2c_byp_in_mm_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 qid" *) input [11:0]dma1_h2c_byp_in_mm_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 radr" *) input [63:0]dma1_h2c_byp_in_mm_0_radr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 ready" *) output dma1_h2c_byp_in_mm_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 sdi" *) input dma1_h2c_byp_in_mm_0_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 valid" *) input dma1_h2c_byp_in_mm_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0 wadr" *) input [63:0]dma1_h2c_byp_in_mm_0_wadr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 cidx" *) input [15:0]dma1_h2c_byp_in_mm_1_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 error" *) input dma1_h2c_byp_in_mm_1_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 func" *) input [11:0]dma1_h2c_byp_in_mm_1_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 len" *) input [15:0]dma1_h2c_byp_in_mm_1_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 mrkr_req" *) input dma1_h2c_byp_in_mm_1_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 no_dma" *) input dma1_h2c_byp_in_mm_1_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 port_id" *) input [2:0]dma1_h2c_byp_in_mm_1_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 qid" *) input [11:0]dma1_h2c_byp_in_mm_1_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 radr" *) input [63:0]dma1_h2c_byp_in_mm_1_radr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 ready" *) output dma1_h2c_byp_in_mm_1_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 sdi" *) input dma1_h2c_byp_in_mm_1_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 valid" *) input dma1_h2c_byp_in_mm_1_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1 wadr" *) input [63:0]dma1_h2c_byp_in_mm_1_wadr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st addr" *) input [63:0]dma1_h2c_byp_in_st_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st cidx" *) input [15:0]dma1_h2c_byp_in_st_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st eop" *) input dma1_h2c_byp_in_st_eop;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st error" *) input dma1_h2c_byp_in_st_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st func" *) input [11:0]dma1_h2c_byp_in_st_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st len" *) input [15:0]dma1_h2c_byp_in_st_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st mrkr_req" *) input dma1_h2c_byp_in_st_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st no_dma" *) input dma1_h2c_byp_in_st_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st port_id" *) input [2:0]dma1_h2c_byp_in_st_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st qid" *) input [11:0]dma1_h2c_byp_in_st_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st ready" *) output dma1_h2c_byp_in_st_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st sdi" *) input dma1_h2c_byp_in_st_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st sop" *) input dma1_h2c_byp_in_st_sop;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st valid" *) input dma1_h2c_byp_in_st_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out cidx" *) output [15:0]dma1_h2c_byp_out_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out dsc" *) output [255:0]dma1_h2c_byp_out_dsc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out dsc_sz" *) output [1:0]dma1_h2c_byp_out_dsc_sz;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out error" *) output dma1_h2c_byp_out_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out fmt" *) output [2:0]dma1_h2c_byp_out_fmt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out func" *) output [11:0]dma1_h2c_byp_out_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out mm_chn" *) output dma1_h2c_byp_out_mm_chn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out port_id" *) output [2:0]dma1_h2c_byp_out_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out qid" *) output [11:0]dma1_h2c_byp_out_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out ready" *) input dma1_h2c_byp_out_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out st_mm" *) output dma1_h2c_byp_out_st_mm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out valid" *) output dma1_h2c_byp_out_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DMA1_INTRFC_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DMA1_INTRFC_CLK, ASSOCIATED_BUSIF dma1_m_axis_h2c:dma1_s_axis_c2h:dma1_s_axis_c2h_cmpt:dma1_st_rx_msg, ASSOCIATED_RESET dma1_axi_aresetn, CLK_DOMAIN bd_a532_pspmc_0_0_pl0_ref_clk, FREQ_HZ 429162384, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input dma1_intrfc_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DMA1_INTRFC_RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DMA1_INTRFC_RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input dma1_intrfc_resetn;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c err" *) output dma1_m_axis_h2c_err;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c mdata" *) output [31:0]dma1_m_axis_h2c_mdata;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c mty" *) output [5:0]dma1_m_axis_h2c_mty;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c port_id" *) output [2:0]dma1_m_axis_h2c_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c qid" *) output [11:0]dma1_m_axis_h2c_qid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c tcrc" *) output [31:0]dma1_m_axis_h2c_tcrc;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c tdata" *) output [511:0]dma1_m_axis_h2c_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c tlast" *) output dma1_m_axis_h2c_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c tready" *) input dma1_m_axis_h2c_tready;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c tvalid" *) output dma1_m_axis_h2c_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c zero_byte" *) output dma1_m_axis_h2c_zero_byte;
  (* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt cpl_dat" *) output [31:0]dma1_mgmt_cpl_dat;
  (* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt cpl_rdy" *) input dma1_mgmt_cpl_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt cpl_sts" *) output [1:0]dma1_mgmt_cpl_sts;
  (* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt cpl_vld" *) output dma1_mgmt_cpl_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt req_adr" *) input [31:0]dma1_mgmt_req_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt req_cmd" *) input [1:0]dma1_mgmt_req_cmd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt req_dat" *) input [31:0]dma1_mgmt_req_dat;
  (* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt req_fnc" *) input [12:0]dma1_mgmt_req_fnc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt req_msc" *) input [5:0]dma1_mgmt_req_msc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt req_rdy" *) output dma1_mgmt_req_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:cpm_dma_mgmt:1.0 dma1_mgmt req_vld" *) input dma1_mgmt_req_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out data" *) output [63:0]dma1_qsts_out_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out op" *) output [7:0]dma1_qsts_out_op;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out port_id" *) output [2:0]dma1_qsts_out_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out qid" *) output [12:0]dma1_qsts_out_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out rdy" *) input dma1_qsts_out_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out vld" *) output dma1_qsts_out_vld;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt cmpt_type" *) input [1:0]dma1_s_axis_c2h_cmpt_cmpt_type;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt col_idx" *) input [2:0]dma1_s_axis_c2h_cmpt_col_idx;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt data" *) input [511:0]dma1_s_axis_c2h_cmpt_data;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt dpar" *) input [15:0]dma1_s_axis_c2h_cmpt_dpar;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt err_idx" *) input [2:0]dma1_s_axis_c2h_cmpt_err_idx;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt marker" *) input dma1_s_axis_c2h_cmpt_marker;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt no_wrb_marker" *) input dma1_s_axis_c2h_cmpt_no_wrb_marker;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt port_id" *) input [2:0]dma1_s_axis_c2h_cmpt_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt qid" *) input [12:0]dma1_s_axis_c2h_cmpt_qid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt size" *) input [1:0]dma1_s_axis_c2h_cmpt_size;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt tready" *) output dma1_s_axis_c2h_cmpt_tready;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt tvalid" *) input dma1_s_axis_c2h_cmpt_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt user_trig" *) input dma1_s_axis_c2h_cmpt_user_trig;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt wait_pld_pkt_id" *) input [15:0]dma1_s_axis_c2h_cmpt_wait_pld_pkt_id;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h ctrl_has_cmpt" *) input dma1_s_axis_c2h_ctrl_has_cmpt;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h ctrl_len" *) input [15:0]dma1_s_axis_c2h_ctrl_len;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h ctrl_marker" *) input dma1_s_axis_c2h_ctrl_marker;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h ctrl_port_id" *) input [2:0]dma1_s_axis_c2h_ctrl_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h ctrl_qid" *) input [11:0]dma1_s_axis_c2h_ctrl_qid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h ecc" *) input [6:0]dma1_s_axis_c2h_ecc;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h mty" *) input [5:0]dma1_s_axis_c2h_mty;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h tcrc" *) input [31:0]dma1_s_axis_c2h_tcrc;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h tdata" *) input [511:0]dma1_s_axis_c2h_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h tlast" *) input dma1_s_axis_c2h_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h tready" *) output dma1_s_axis_c2h_tready;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h tvalid" *) input dma1_s_axis_c2h_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dma1_st_rx_msg, CLK_DOMAIN bd_a532_pspmc_0_0_pl0_ref_clk, FREQ_HZ 429162384, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]dma1_st_rx_msg_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg TLAST" *) output dma1_st_rx_msg_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg TREADY" *) input dma1_st_rx_msg_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg TVALID" *) output dma1_st_rx_msg_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts avl" *) output [15:0]dma1_tm_dsc_sts_avl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts byp" *) output dma1_tm_dsc_sts_byp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts dir" *) output dma1_tm_dsc_sts_dir;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts error" *) output dma1_tm_dsc_sts_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts irq_arm" *) output dma1_tm_dsc_sts_irq_arm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts mm" *) output dma1_tm_dsc_sts_mm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts pidx" *) output [15:0]dma1_tm_dsc_sts_pidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts port_id" *) output [2:0]dma1_tm_dsc_sts_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts qen" *) output dma1_tm_dsc_sts_qen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts qid" *) output [11:0]dma1_tm_dsc_sts_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts qinv" *) output dma1_tm_dsc_sts_qinv;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts rdy" *) input dma1_tm_dsc_sts_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts valid" *) output dma1_tm_dsc_sts_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_flr:1.0 dma1_usr_flr clear" *) output dma1_usr_flr_clear;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_flr:1.0 dma1_usr_flr done_fnc" *) input [12:0]dma1_usr_flr_done_fnc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_flr:1.0 dma1_usr_flr done_vld" *) input dma1_usr_flr_done_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_flr:1.0 dma1_usr_flr fnc" *) output [12:0]dma1_usr_flr_fnc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_flr:1.0 dma1_usr_flr set" *) output dma1_usr_flr_set;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 dma1_usr_irq ack" *) output dma1_usr_irq_ack;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 dma1_usr_irq fail" *) output dma1_usr_irq_fail;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 dma1_usr_irq fnc" *) input [12:0]dma1_usr_irq_fnc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 dma1_usr_irq valid" *) input dma1_usr_irq_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 dma1_usr_irq vec" *) input [10:0]dma1_usr_irq_vec;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_refclk1 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gt_refclk1, CAN_DEBUG false, FREQ_HZ 100000000" *) input gt_refclk1_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_refclk1 CLK_P" *) input gt_refclk1_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.M_AXI_FPD_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.M_AXI_FPD_ACLK, ASSOCIATED_BUSIF M_AXI_FPD, CLK_DOMAIN bd_a532_pspmc_0_0_pl0_ref_clk, FREQ_HZ 429162384, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input m_axi_fpd_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep COMMANDS_IN" *) input [13:0]pcie1_pipe_ep_commands_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep COMMANDS_OUT" *) output [13:0]pcie1_pipe_ep_commands_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep RX_0" *) input [41:0]pcie1_pipe_ep_rx_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep RX_1" *) input [41:0]pcie1_pipe_ep_rx_1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep RX_10" *) input [41:0]pcie1_pipe_ep_rx_10;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep RX_11" *) input [41:0]pcie1_pipe_ep_rx_11;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep RX_12" *) input [41:0]pcie1_pipe_ep_rx_12;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep RX_13" *) input [41:0]pcie1_pipe_ep_rx_13;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep RX_14" *) input [41:0]pcie1_pipe_ep_rx_14;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep RX_15" *) input [41:0]pcie1_pipe_ep_rx_15;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep RX_2" *) input [41:0]pcie1_pipe_ep_rx_2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep RX_3" *) input [41:0]pcie1_pipe_ep_rx_3;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep RX_4" *) input [41:0]pcie1_pipe_ep_rx_4;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep RX_5" *) input [41:0]pcie1_pipe_ep_rx_5;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep RX_6" *) input [41:0]pcie1_pipe_ep_rx_6;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep RX_7" *) input [41:0]pcie1_pipe_ep_rx_7;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep RX_8" *) input [41:0]pcie1_pipe_ep_rx_8;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep RX_9" *) input [41:0]pcie1_pipe_ep_rx_9;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep TX_0" *) output [41:0]pcie1_pipe_ep_tx_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep TX_1" *) output [41:0]pcie1_pipe_ep_tx_1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep TX_10" *) output [41:0]pcie1_pipe_ep_tx_10;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep TX_11" *) output [41:0]pcie1_pipe_ep_tx_11;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep TX_12" *) output [41:0]pcie1_pipe_ep_tx_12;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep TX_13" *) output [41:0]pcie1_pipe_ep_tx_13;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep TX_14" *) output [41:0]pcie1_pipe_ep_tx_14;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep TX_15" *) output [41:0]pcie1_pipe_ep_tx_15;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep TX_2" *) output [41:0]pcie1_pipe_ep_tx_2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep TX_3" *) output [41:0]pcie1_pipe_ep_tx_3;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep TX_4" *) output [41:0]pcie1_pipe_ep_tx_4;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep TX_5" *) output [41:0]pcie1_pipe_ep_tx_5;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep TX_6" *) output [41:0]pcie1_pipe_ep_tx_6;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep TX_7" *) output [41:0]pcie1_pipe_ep_tx_7;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep TX_8" *) output [41:0]pcie1_pipe_ep_tx_8;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_ext_pipe:1.0 pcie1_pipe_ep TX_9" *) output [41:0]pcie1_pipe_ep_tx_9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL0_REF_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL0_REF_CLK, CLK_DOMAIN bd_a532_pspmc_0_0_pl0_ref_clk, FREQ_HZ 429162384, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output pl0_ref_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PL0_RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PL0_RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output pl0_resetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL1_REF_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL1_REF_CLK, CLK_DOMAIN bd_a532_pspmc_0_0_pl1_ref_clk, FREQ_HZ 249997498, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output pl1_ref_clk;

  wire [7:0]cpm_0_PCIE1_GT_GRX_N;
  wire [7:0]cpm_0_PCIE1_GT_GRX_P;
  wire [7:0]cpm_0_PCIE1_GT_GTX_N;
  wire [7:0]cpm_0_PCIE1_GT_GTX_P;
  wire cpm_0_cpm_cor_irq;
  wire cpm_0_cpm_misc_irq;
  wire cpm_0_cpm_uncor_irq;
  wire cpm_0_dma1_axi_aresetn;
  wire cpm_0_dma1_axis_c2h_dmawr_cmp;
  wire [2:0]cpm_0_dma1_axis_c2h_dmawr_port_id;
  wire cpm_0_dma1_axis_c2h_dmawr_target_vch;
  wire cpm_0_dma1_axis_c2h_status_drop;
  wire cpm_0_dma1_axis_c2h_status_error;
  wire cpm_0_dma1_axis_c2h_status_last;
  wire [11:0]cpm_0_dma1_axis_c2h_status_qid;
  wire cpm_0_dma1_axis_c2h_status_status_cmp;
  wire cpm_0_dma1_axis_c2h_status_valid;
  wire [15:0]cpm_0_dma1_c2h_byp_out_cidx;
  wire [255:0]cpm_0_dma1_c2h_byp_out_dsc;
  wire [1:0]cpm_0_dma1_c2h_byp_out_dsc_sz;
  wire cpm_0_dma1_c2h_byp_out_error;
  wire [2:0]cpm_0_dma1_c2h_byp_out_fmt;
  wire [11:0]cpm_0_dma1_c2h_byp_out_func;
  wire cpm_0_dma1_c2h_byp_out_mm_chn;
  wire [6:0]cpm_0_dma1_c2h_byp_out_pfch_tag;
  wire [2:0]cpm_0_dma1_c2h_byp_out_port_id;
  wire [11:0]cpm_0_dma1_c2h_byp_out_qid;
  wire cpm_0_dma1_c2h_byp_out_ready;
  wire cpm_0_dma1_c2h_byp_out_st_mm;
  wire cpm_0_dma1_c2h_byp_out_valid;
  wire [15:0]cpm_0_dma1_h2c_byp_out_cidx;
  wire [255:0]cpm_0_dma1_h2c_byp_out_dsc;
  wire [1:0]cpm_0_dma1_h2c_byp_out_dsc_sz;
  wire cpm_0_dma1_h2c_byp_out_error;
  wire [2:0]cpm_0_dma1_h2c_byp_out_fmt;
  wire [11:0]cpm_0_dma1_h2c_byp_out_func;
  wire cpm_0_dma1_h2c_byp_out_mm_chn;
  wire [2:0]cpm_0_dma1_h2c_byp_out_port_id;
  wire [11:0]cpm_0_dma1_h2c_byp_out_qid;
  wire cpm_0_dma1_h2c_byp_out_ready;
  wire cpm_0_dma1_h2c_byp_out_st_mm;
  wire cpm_0_dma1_h2c_byp_out_valid;
  wire cpm_0_dma1_m_axis_h2c_err;
  wire [31:0]cpm_0_dma1_m_axis_h2c_mdata;
  wire [5:0]cpm_0_dma1_m_axis_h2c_mty;
  wire [2:0]cpm_0_dma1_m_axis_h2c_port_id;
  wire [11:0]cpm_0_dma1_m_axis_h2c_qid;
  wire [31:0]cpm_0_dma1_m_axis_h2c_tcrc;
  wire [511:0]cpm_0_dma1_m_axis_h2c_tdata;
  wire cpm_0_dma1_m_axis_h2c_tlast;
  wire cpm_0_dma1_m_axis_h2c_tready;
  wire cpm_0_dma1_m_axis_h2c_tvalid;
  wire cpm_0_dma1_m_axis_h2c_zero_byte;
  wire [63:0]cpm_0_dma1_qsts_out_data;
  wire [7:0]cpm_0_dma1_qsts_out_op;
  wire [2:0]cpm_0_dma1_qsts_out_port_id;
  wire [12:0]cpm_0_dma1_qsts_out_qid;
  wire cpm_0_dma1_qsts_out_rdy;
  wire cpm_0_dma1_qsts_out_vld;
  wire [31:0]cpm_0_dma1_st_rx_msg_TDATA;
  wire cpm_0_dma1_st_rx_msg_TLAST;
  wire cpm_0_dma1_st_rx_msg_TREADY;
  wire cpm_0_dma1_st_rx_msg_TVALID;
  wire [15:0]cpm_0_dma1_tm_dsc_sts_avl;
  wire cpm_0_dma1_tm_dsc_sts_byp;
  wire cpm_0_dma1_tm_dsc_sts_dir;
  wire cpm_0_dma1_tm_dsc_sts_error;
  wire cpm_0_dma1_tm_dsc_sts_irq_arm;
  wire cpm_0_dma1_tm_dsc_sts_mm;
  wire [15:0]cpm_0_dma1_tm_dsc_sts_pidx;
  wire [2:0]cpm_0_dma1_tm_dsc_sts_port_id;
  wire cpm_0_dma1_tm_dsc_sts_qen;
  wire [11:0]cpm_0_dma1_tm_dsc_sts_qid;
  wire cpm_0_dma1_tm_dsc_sts_qinv;
  wire cpm_0_dma1_tm_dsc_sts_rdy;
  wire cpm_0_dma1_tm_dsc_sts_valid;
  wire cpm_irq0_1;
  wire cpm_irq1_1;
  wire [15:0]dma1_c2h_byp_in_mm_0_1_cidx;
  wire dma1_c2h_byp_in_mm_0_1_error;
  wire [11:0]dma1_c2h_byp_in_mm_0_1_func;
  wire [15:0]dma1_c2h_byp_in_mm_0_1_len;
  wire dma1_c2h_byp_in_mm_0_1_mrkr_req;
  wire dma1_c2h_byp_in_mm_0_1_no_dma;
  wire [2:0]dma1_c2h_byp_in_mm_0_1_port_id;
  wire [11:0]dma1_c2h_byp_in_mm_0_1_qid;
  wire [63:0]dma1_c2h_byp_in_mm_0_1_radr;
  wire dma1_c2h_byp_in_mm_0_1_ready;
  wire dma1_c2h_byp_in_mm_0_1_sdi;
  wire dma1_c2h_byp_in_mm_0_1_valid;
  wire [63:0]dma1_c2h_byp_in_mm_0_1_wadr;
  wire [15:0]dma1_c2h_byp_in_mm_1_1_cidx;
  wire dma1_c2h_byp_in_mm_1_1_error;
  wire [11:0]dma1_c2h_byp_in_mm_1_1_func;
  wire [15:0]dma1_c2h_byp_in_mm_1_1_len;
  wire dma1_c2h_byp_in_mm_1_1_mrkr_req;
  wire dma1_c2h_byp_in_mm_1_1_no_dma;
  wire [2:0]dma1_c2h_byp_in_mm_1_1_port_id;
  wire [11:0]dma1_c2h_byp_in_mm_1_1_qid;
  wire [63:0]dma1_c2h_byp_in_mm_1_1_radr;
  wire dma1_c2h_byp_in_mm_1_1_ready;
  wire dma1_c2h_byp_in_mm_1_1_sdi;
  wire dma1_c2h_byp_in_mm_1_1_valid;
  wire [63:0]dma1_c2h_byp_in_mm_1_1_wadr;
  wire [63:0]dma1_c2h_byp_in_st_csh_1_addr;
  wire dma1_c2h_byp_in_st_csh_1_error;
  wire [11:0]dma1_c2h_byp_in_st_csh_1_func;
  wire [6:0]dma1_c2h_byp_in_st_csh_1_pfch_tag;
  wire [2:0]dma1_c2h_byp_in_st_csh_1_port_id;
  wire [11:0]dma1_c2h_byp_in_st_csh_1_qid;
  wire dma1_c2h_byp_in_st_csh_1_ready;
  wire dma1_c2h_byp_in_st_csh_1_valid;
  wire [15:0]dma1_dsc_crdt_in_1_crdt;
  wire dma1_dsc_crdt_in_1_dir;
  wire dma1_dsc_crdt_in_1_fence;
  wire [11:0]dma1_dsc_crdt_in_1_qid;
  wire dma1_dsc_crdt_in_1_rdy;
  wire dma1_dsc_crdt_in_1_valid;
  wire [15:0]dma1_h2c_byp_in_mm_0_1_cidx;
  wire dma1_h2c_byp_in_mm_0_1_error;
  wire [11:0]dma1_h2c_byp_in_mm_0_1_func;
  wire [15:0]dma1_h2c_byp_in_mm_0_1_len;
  wire dma1_h2c_byp_in_mm_0_1_mrkr_req;
  wire dma1_h2c_byp_in_mm_0_1_no_dma;
  wire [2:0]dma1_h2c_byp_in_mm_0_1_port_id;
  wire [11:0]dma1_h2c_byp_in_mm_0_1_qid;
  wire [63:0]dma1_h2c_byp_in_mm_0_1_radr;
  wire dma1_h2c_byp_in_mm_0_1_ready;
  wire dma1_h2c_byp_in_mm_0_1_sdi;
  wire dma1_h2c_byp_in_mm_0_1_valid;
  wire [63:0]dma1_h2c_byp_in_mm_0_1_wadr;
  wire [15:0]dma1_h2c_byp_in_mm_1_1_cidx;
  wire dma1_h2c_byp_in_mm_1_1_error;
  wire [11:0]dma1_h2c_byp_in_mm_1_1_func;
  wire [15:0]dma1_h2c_byp_in_mm_1_1_len;
  wire dma1_h2c_byp_in_mm_1_1_mrkr_req;
  wire dma1_h2c_byp_in_mm_1_1_no_dma;
  wire [2:0]dma1_h2c_byp_in_mm_1_1_port_id;
  wire [11:0]dma1_h2c_byp_in_mm_1_1_qid;
  wire [63:0]dma1_h2c_byp_in_mm_1_1_radr;
  wire dma1_h2c_byp_in_mm_1_1_ready;
  wire dma1_h2c_byp_in_mm_1_1_sdi;
  wire dma1_h2c_byp_in_mm_1_1_valid;
  wire [63:0]dma1_h2c_byp_in_mm_1_1_wadr;
  wire [63:0]dma1_h2c_byp_in_st_1_addr;
  wire [15:0]dma1_h2c_byp_in_st_1_cidx;
  wire dma1_h2c_byp_in_st_1_eop;
  wire dma1_h2c_byp_in_st_1_error;
  wire [11:0]dma1_h2c_byp_in_st_1_func;
  wire [15:0]dma1_h2c_byp_in_st_1_len;
  wire dma1_h2c_byp_in_st_1_mrkr_req;
  wire dma1_h2c_byp_in_st_1_no_dma;
  wire [2:0]dma1_h2c_byp_in_st_1_port_id;
  wire [11:0]dma1_h2c_byp_in_st_1_qid;
  wire dma1_h2c_byp_in_st_1_ready;
  wire dma1_h2c_byp_in_st_1_sdi;
  wire dma1_h2c_byp_in_st_1_sop;
  wire dma1_h2c_byp_in_st_1_valid;
  wire dma1_intrfc_clk_1;
  wire dma1_intrfc_resetn_1;
  wire [31:0]dma1_mgmt_1_cpl_dat;
  wire dma1_mgmt_1_cpl_rdy;
  wire [1:0]dma1_mgmt_1_cpl_sts;
  wire dma1_mgmt_1_cpl_vld;
  wire [31:0]dma1_mgmt_1_req_adr;
  wire [1:0]dma1_mgmt_1_req_cmd;
  wire [31:0]dma1_mgmt_1_req_dat;
  wire [12:0]dma1_mgmt_1_req_fnc;
  wire [5:0]dma1_mgmt_1_req_msc;
  wire dma1_mgmt_1_req_rdy;
  wire dma1_mgmt_1_req_vld;
  wire dma1_s_axis_c2h_1_ctrl_has_cmpt;
  wire [15:0]dma1_s_axis_c2h_1_ctrl_len;
  wire dma1_s_axis_c2h_1_ctrl_marker;
  wire [2:0]dma1_s_axis_c2h_1_ctrl_port_id;
  wire [11:0]dma1_s_axis_c2h_1_ctrl_qid;
  wire [6:0]dma1_s_axis_c2h_1_ecc;
  wire [5:0]dma1_s_axis_c2h_1_mty;
  wire [31:0]dma1_s_axis_c2h_1_tcrc;
  wire [511:0]dma1_s_axis_c2h_1_tdata;
  wire dma1_s_axis_c2h_1_tlast;
  wire dma1_s_axis_c2h_1_tready;
  wire dma1_s_axis_c2h_1_tvalid;
  wire [1:0]dma1_s_axis_c2h_cmpt_1_cmpt_type;
  wire [2:0]dma1_s_axis_c2h_cmpt_1_col_idx;
  wire [511:0]dma1_s_axis_c2h_cmpt_1_data;
  wire [15:0]dma1_s_axis_c2h_cmpt_1_dpar;
  wire [2:0]dma1_s_axis_c2h_cmpt_1_err_idx;
  wire dma1_s_axis_c2h_cmpt_1_marker;
  wire dma1_s_axis_c2h_cmpt_1_no_wrb_marker;
  wire [2:0]dma1_s_axis_c2h_cmpt_1_port_id;
  wire [12:0]dma1_s_axis_c2h_cmpt_1_qid;
  wire [1:0]dma1_s_axis_c2h_cmpt_1_size;
  wire dma1_s_axis_c2h_cmpt_1_tready;
  wire dma1_s_axis_c2h_cmpt_1_tvalid;
  wire dma1_s_axis_c2h_cmpt_1_user_trig;
  wire [15:0]dma1_s_axis_c2h_cmpt_1_wait_pld_pkt_id;
  wire dma1_usr_flr_1_clear;
  wire [12:0]dma1_usr_flr_1_done_fnc;
  wire dma1_usr_flr_1_done_vld;
  wire [12:0]dma1_usr_flr_1_fnc;
  wire dma1_usr_flr_1_set;
  wire dma1_usr_irq_1_ack;
  wire dma1_usr_irq_1_fail;
  wire [12:0]dma1_usr_irq_1_fnc;
  wire dma1_usr_irq_1_valid;
  wire [10:0]dma1_usr_irq_1_vec;
  wire gt_refclk1_1_CLK_N;
  wire gt_refclk1_1_CLK_P;
  wire m_axi_fpd_aclk_1;
  wire [13:0]pcie1_pipe_ep_1_COMMANDS_IN;
  wire [13:0]pcie1_pipe_ep_1_COMMANDS_OUT;
  wire [41:0]pcie1_pipe_ep_1_RX_0;
  wire [41:0]pcie1_pipe_ep_1_RX_1;
  wire [41:0]pcie1_pipe_ep_1_RX_10;
  wire [41:0]pcie1_pipe_ep_1_RX_11;
  wire [41:0]pcie1_pipe_ep_1_RX_12;
  wire [41:0]pcie1_pipe_ep_1_RX_13;
  wire [41:0]pcie1_pipe_ep_1_RX_14;
  wire [41:0]pcie1_pipe_ep_1_RX_15;
  wire [41:0]pcie1_pipe_ep_1_RX_2;
  wire [41:0]pcie1_pipe_ep_1_RX_3;
  wire [41:0]pcie1_pipe_ep_1_RX_4;
  wire [41:0]pcie1_pipe_ep_1_RX_5;
  wire [41:0]pcie1_pipe_ep_1_RX_6;
  wire [41:0]pcie1_pipe_ep_1_RX_7;
  wire [41:0]pcie1_pipe_ep_1_RX_8;
  wire [41:0]pcie1_pipe_ep_1_RX_9;
  wire [41:0]pcie1_pipe_ep_1_TX_0;
  wire [41:0]pcie1_pipe_ep_1_TX_1;
  wire [41:0]pcie1_pipe_ep_1_TX_10;
  wire [41:0]pcie1_pipe_ep_1_TX_11;
  wire [41:0]pcie1_pipe_ep_1_TX_12;
  wire [41:0]pcie1_pipe_ep_1_TX_13;
  wire [41:0]pcie1_pipe_ep_1_TX_14;
  wire [41:0]pcie1_pipe_ep_1_TX_15;
  wire [41:0]pcie1_pipe_ep_1_TX_2;
  wire [41:0]pcie1_pipe_ep_1_TX_3;
  wire [41:0]pcie1_pipe_ep_1_TX_4;
  wire [41:0]pcie1_pipe_ep_1_TX_5;
  wire [41:0]pcie1_pipe_ep_1_TX_6;
  wire [41:0]pcie1_pipe_ep_1_TX_7;
  wire [41:0]pcie1_pipe_ep_1_TX_8;
  wire [41:0]pcie1_pipe_ep_1_TX_9;
  (* HARD_CONN = "true" *) wire [63:0]pspmc_0_CPM_PCIE_NOC_0_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_CPM_PCIE_NOC_0_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_CPM_PCIE_NOC_0_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_CPM_PCIE_NOC_0_ARID;
  (* HARD_CONN = "true" *) wire [7:0]pspmc_0_CPM_PCIE_NOC_0_ARLEN;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_0_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_CPM_PCIE_NOC_0_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_CPM_PCIE_NOC_0_ARQOS;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_0_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_CPM_PCIE_NOC_0_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]pspmc_0_CPM_PCIE_NOC_0_ARUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_0_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]pspmc_0_CPM_PCIE_NOC_0_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_CPM_PCIE_NOC_0_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_CPM_PCIE_NOC_0_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_CPM_PCIE_NOC_0_AWID;
  (* HARD_CONN = "true" *) wire [7:0]pspmc_0_CPM_PCIE_NOC_0_AWLEN;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_0_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_CPM_PCIE_NOC_0_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_CPM_PCIE_NOC_0_AWQOS;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_0_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_CPM_PCIE_NOC_0_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]pspmc_0_CPM_PCIE_NOC_0_AWUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_0_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_CPM_PCIE_NOC_0_BID;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_0_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_CPM_PCIE_NOC_0_BRESP;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_0_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]pspmc_0_CPM_PCIE_NOC_0_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_CPM_PCIE_NOC_0_RID;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_0_RLAST;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_0_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_CPM_PCIE_NOC_0_RRESP;
  (* HARD_CONN = "true" *) wire [16:0]pspmc_0_CPM_PCIE_NOC_0_RUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_0_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]pspmc_0_CPM_PCIE_NOC_0_WDATA;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_0_WLAST;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_0_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_CPM_PCIE_NOC_0_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]pspmc_0_CPM_PCIE_NOC_0_WUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_0_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]pspmc_0_CPM_PCIE_NOC_1_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_CPM_PCIE_NOC_1_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_CPM_PCIE_NOC_1_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_CPM_PCIE_NOC_1_ARID;
  (* HARD_CONN = "true" *) wire [7:0]pspmc_0_CPM_PCIE_NOC_1_ARLEN;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_1_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_CPM_PCIE_NOC_1_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_CPM_PCIE_NOC_1_ARQOS;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_1_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_CPM_PCIE_NOC_1_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]pspmc_0_CPM_PCIE_NOC_1_ARUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_1_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]pspmc_0_CPM_PCIE_NOC_1_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_CPM_PCIE_NOC_1_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_CPM_PCIE_NOC_1_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_CPM_PCIE_NOC_1_AWID;
  (* HARD_CONN = "true" *) wire [7:0]pspmc_0_CPM_PCIE_NOC_1_AWLEN;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_1_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_CPM_PCIE_NOC_1_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]pspmc_0_CPM_PCIE_NOC_1_AWQOS;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_1_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]pspmc_0_CPM_PCIE_NOC_1_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]pspmc_0_CPM_PCIE_NOC_1_AWUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_1_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_CPM_PCIE_NOC_1_BID;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_1_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_CPM_PCIE_NOC_1_BRESP;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_1_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]pspmc_0_CPM_PCIE_NOC_1_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_CPM_PCIE_NOC_1_RID;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_1_RLAST;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_1_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]pspmc_0_CPM_PCIE_NOC_1_RRESP;
  (* HARD_CONN = "true" *) wire [16:0]pspmc_0_CPM_PCIE_NOC_1_RUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_1_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]pspmc_0_CPM_PCIE_NOC_1_WDATA;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_1_WLAST;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_1_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]pspmc_0_CPM_PCIE_NOC_1_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]pspmc_0_CPM_PCIE_NOC_1_WUSER;
  (* HARD_CONN = "true" *) wire pspmc_0_CPM_PCIE_NOC_1_WVALID;
  wire pspmc_0_IF_PS_CPM_cpm_osc_clk_div2;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_apb_en;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_dis_npi_clk;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_fabric_en;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_gate_reg;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_hold_state;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_init_state;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_mem_clr;
  wire [3:0]pspmc_0_IF_PS_CPM_cpm_pcr_o_disable;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_pcomplete;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_pwr_dn;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_scan_clr;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_start_bisr;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_start_cal;
  wire pspmc_0_IF_PS_CPM_cpm_pcr_tristate;
  wire pspmc_0_IF_PS_CPM_cpmps_corr_irq;
  wire pspmc_0_IF_PS_CPM_cpmps_misc_irq;
  wire pspmc_0_IF_PS_CPM_cpmps_uncorr_irq;
  wire pspmc_0_IF_PS_CPM_hsdp_gt_rxoutclk;
  wire pspmc_0_IF_PS_CPM_hsdp_gt_txusrclk;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_gearboxslip;
  wire [1:0]pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_header;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_headervalid;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_pcsreset;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_resetdone;
  wire [1:0]pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_header;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_resetdone;
  wire [6:0]pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_sequence;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_gearboxslip;
  wire [1:0]pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_header;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_headervalid;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_pcsreset;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_resetdone;
  wire [1:0]pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_header;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_resetdone;
  wire [6:0]pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_sequence;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_gearboxslip;
  wire [1:0]pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_header;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_headervalid;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_pcsreset;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_resetdone;
  wire [1:0]pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_header;
  wire pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_resetdone;
  wire [6:0]pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_sequence;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_bufgtce;
  wire [3:0]pspmc_0_IF_PS_CPM_link0_xpipe_bufgtcemask;
  wire [11:0]pspmc_0_IF_PS_CPM_link0_xpipe_bufgtdiv;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_bufgtrst;
  wire [3:0]pspmc_0_IF_PS_CPM_link0_xpipe_bufgtrstmask;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_gtoutclk;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_gtpipeclk;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_pcielinkreachtarget;
  wire [5:0]pspmc_0_IF_PS_CPM_link0_xpipe_pcieltssmstate;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_pcieperstn;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_phyesmadaptationsave;
  wire pspmc_0_IF_PS_CPM_link0_xpipe_phyready;
  wire [2:0]pspmc_0_IF_PS_CPM_link0_xpipe_piperate;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_bufgtce;
  wire [3:0]pspmc_0_IF_PS_CPM_link1_xpipe_bufgtcemask;
  wire [11:0]pspmc_0_IF_PS_CPM_link1_xpipe_bufgtdiv;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_bufgtrst;
  wire [3:0]pspmc_0_IF_PS_CPM_link1_xpipe_bufgtrstmask;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_gtoutclk;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_gtpipeclk;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_pcielinkreachtarget;
  wire [5:0]pspmc_0_IF_PS_CPM_link1_xpipe_pcieltssmstate;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_pcieperstn;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_phyesmadaptationsave;
  wire pspmc_0_IF_PS_CPM_link1_xpipe_phyready;
  wire [2:0]pspmc_0_IF_PS_CPM_link1_xpipe_piperate;
  wire pspmc_0_IF_PS_CPM_lpd_refclk_in;
  wire pspmc_0_IF_PS_CPM_lpd_swclk;
  wire pspmc_0_IF_PS_CPM_lpd_switch_timeout_cnt;
  wire [63:0]pspmc_0_IF_PS_CPM_m_axi0_ps_araddr;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arburst;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arcache;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arid;
  wire [7:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arlen;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_arlock;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arprot;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arqos;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_arready;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arregion;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi0_ps_arsize;
  wire [31:0]pspmc_0_IF_PS_CPM_m_axi0_ps_aruser;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_arvalid;
  wire [63:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awaddr;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awburst;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awcache;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awid;
  wire [7:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awlen;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_awlock;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awprot;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awqos;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_awready;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awregion;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awsize;
  wire [31:0]pspmc_0_IF_PS_CPM_m_axi0_ps_awuser;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_awvalid;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi0_ps_bid;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_bready;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi0_ps_bresp;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_buser;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_bvalid;
  wire [127:0]pspmc_0_IF_PS_CPM_m_axi0_ps_rdata;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi0_ps_rid;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_rlast;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_rready;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi0_ps_rresp;
  wire [17:0]pspmc_0_IF_PS_CPM_m_axi0_ps_ruser;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_rvalid;
  wire [127:0]pspmc_0_IF_PS_CPM_m_axi0_ps_wdata;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi0_ps_wid;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_wlast;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_wready;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi0_ps_wstrb;
  wire [17:0]pspmc_0_IF_PS_CPM_m_axi0_ps_wuser;
  wire pspmc_0_IF_PS_CPM_m_axi0_ps_wvalid;
  wire [63:0]pspmc_0_IF_PS_CPM_m_axi1_ps_araddr;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arburst;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arcache;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arid;
  wire [7:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arlen;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_arlock;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arprot;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arqos;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_arready;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arregion;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi1_ps_arsize;
  wire [17:0]pspmc_0_IF_PS_CPM_m_axi1_ps_aruser;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_arvalid;
  wire [63:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awaddr;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awburst;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awcache;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awid;
  wire [7:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awlen;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_awlock;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awprot;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awqos;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_awready;
  wire [3:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awregion;
  wire [2:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awsize;
  wire [17:0]pspmc_0_IF_PS_CPM_m_axi1_ps_awuser;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_awvalid;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi1_ps_bid;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_bready;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi1_ps_bresp;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi1_ps_buser;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_bvalid;
  wire [127:0]pspmc_0_IF_PS_CPM_m_axi1_ps_rdata;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi1_ps_rid;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_rlast;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_rready;
  wire [1:0]pspmc_0_IF_PS_CPM_m_axi1_ps_rresp;
  wire [16:0]pspmc_0_IF_PS_CPM_m_axi1_ps_ruser;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_rvalid;
  wire [127:0]pspmc_0_IF_PS_CPM_m_axi1_ps_wdata;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi1_ps_wid;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_wlast;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_wready;
  wire [15:0]pspmc_0_IF_PS_CPM_m_axi1_ps_wstrb;
  wire [16:0]pspmc_0_IF_PS_CPM_m_axi1_ps_wuser;
  wire pspmc_0_IF_PS_CPM_m_axi1_ps_wvalid;
  wire pspmc_0_IF_PS_CPM_perst0n;
  wire pspmc_0_IF_PS_CPM_perst1n;
  wire pspmc_0_IF_PS_CPM_phy_ready_frbot;
  wire pspmc_0_IF_PS_CPM_phy_ready_tobot;
  wire [63:0]pspmc_0_IF_PS_CPM_s_axi_cfg_araddr;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arburst;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arcache;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arid;
  wire [7:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arlen;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_arlock;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arprot;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arqos;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_arready;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arregion;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_cfg_arsize;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_cfg_aruser;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_arvalid;
  wire [63:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awaddr;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awburst;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awcache;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awid;
  wire [7:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awlen;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_awlock;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awprot;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awqos;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_awready;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awregion;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awsize;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_cfg_awuser;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_awvalid;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_cfg_bid;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_bready;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_cfg_bresp;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_buser;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_bvalid;
  wire [31:0]pspmc_0_IF_PS_CPM_s_axi_cfg_rdata;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_cfg_rid;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_rlast;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_rready;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_cfg_rresp;
  wire [5:0]pspmc_0_IF_PS_CPM_s_axi_cfg_ruser;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_rvalid;
  wire [31:0]pspmc_0_IF_PS_CPM_s_axi_cfg_wdata;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_cfg_wid;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_wlast;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_wready;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_cfg_wstrb;
  wire [5:0]pspmc_0_IF_PS_CPM_s_axi_cfg_wuser;
  wire pspmc_0_IF_PS_CPM_s_axi_cfg_wvalid;
  wire [63:0]pspmc_0_IF_PS_CPM_s_axi_pcie_araddr;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arburst;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arcache;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arid;
  wire [7:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arlen;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_arlock;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arprot;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arqos;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_arready;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arregion;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_pcie_arsize;
  wire [17:0]pspmc_0_IF_PS_CPM_s_axi_pcie_aruser;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_arvalid;
  wire [63:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awaddr;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awburst;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awcache;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awid;
  wire [7:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awlen;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_awlock;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awprot;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awqos;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_awready;
  wire [3:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awregion;
  wire [2:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awsize;
  wire [17:0]pspmc_0_IF_PS_CPM_s_axi_pcie_awuser;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_awvalid;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_pcie_bid;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_bready;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_pcie_bresp;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_pcie_buser;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_bvalid;
  wire [127:0]pspmc_0_IF_PS_CPM_s_axi_pcie_rdata;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_pcie_rid;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_rlast;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_rready;
  wire [1:0]pspmc_0_IF_PS_CPM_s_axi_pcie_rresp;
  wire [16:0]pspmc_0_IF_PS_CPM_s_axi_pcie_ruser;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_rvalid;
  wire [127:0]pspmc_0_IF_PS_CPM_s_axi_pcie_wdata;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_pcie_wid;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_wlast;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_wready;
  wire [15:0]pspmc_0_IF_PS_CPM_s_axi_pcie_wstrb;
  wire [16:0]pspmc_0_IF_PS_CPM_s_axi_pcie_wuser;
  wire pspmc_0_IF_PS_CPM_s_axi_pcie_wvalid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe0_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe0_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe0_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe0_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe0_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe0_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe0_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe0_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe0_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe0_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe0_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe0_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe0_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe0_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe0_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe0_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe0_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe0_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe0_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe0_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe0_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe0_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe0_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe0_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe0_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe10_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe10_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe10_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe10_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe10_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe10_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe10_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe10_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe10_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe10_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe10_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe10_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe10_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe10_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe10_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe10_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe10_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe10_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe10_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe10_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe10_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe10_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe10_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe10_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe10_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe10_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe11_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe11_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe11_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe11_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe11_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe11_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe11_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe11_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe11_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe11_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe11_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe11_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe11_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe11_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe11_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe11_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe11_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe11_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe11_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe11_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe11_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe11_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe11_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe11_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe11_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe11_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe12_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe12_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe12_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe12_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe12_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe12_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe12_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe12_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe12_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe12_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe12_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe12_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe12_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe12_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe12_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe12_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe12_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe12_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe12_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe12_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe12_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe12_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe12_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe12_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe12_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe12_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe13_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe13_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe13_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe13_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe13_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe13_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe13_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe13_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe13_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe13_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe13_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe13_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe13_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe13_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe13_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe13_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe13_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe13_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe13_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe13_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe13_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe13_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe13_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe13_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe13_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe13_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe14_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe14_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe14_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe14_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe14_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe14_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe14_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe14_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe14_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe14_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe14_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe14_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe14_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe14_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe14_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe14_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe14_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe14_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe14_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe14_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe14_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe14_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe14_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe14_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe14_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe14_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe15_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe15_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe15_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe15_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe15_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe15_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe15_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe15_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe15_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe15_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe15_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe15_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe15_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe15_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe15_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe15_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe15_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe15_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe15_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe15_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe15_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe15_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe15_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe15_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe15_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe15_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe1_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe1_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe1_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe1_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe1_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe1_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe1_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe1_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe1_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe1_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe1_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe1_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe1_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe1_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe1_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe1_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe1_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe1_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe1_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe1_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe1_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe1_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe1_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe1_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe1_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe1_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe2_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe2_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe2_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe2_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe2_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe2_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe2_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe2_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe2_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe2_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe2_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe2_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe2_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe2_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe2_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe2_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe2_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe2_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe2_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe2_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe2_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe2_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe2_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe2_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe2_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe2_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe3_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe3_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe3_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe3_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe3_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe3_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe3_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe3_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe3_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe3_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe3_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe3_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe3_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe3_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe3_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe3_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe3_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe3_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe3_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe3_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe3_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe3_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe3_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe3_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe3_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe3_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe4_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe4_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe4_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe4_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe4_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe4_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe4_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe4_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe4_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe4_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe4_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe4_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe4_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe4_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe4_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe4_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe4_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe4_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe4_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe4_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe4_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe4_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe4_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe4_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe4_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe4_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe5_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe5_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe5_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe5_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe5_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe5_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe5_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe5_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe5_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe5_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe5_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe5_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe5_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe5_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe5_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe5_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe5_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe5_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe5_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe5_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe5_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe5_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe5_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe5_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe5_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe5_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe6_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe6_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe6_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe6_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe6_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe6_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe6_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe6_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe6_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe6_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe6_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe6_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe6_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe6_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe6_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe6_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe6_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe6_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe6_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe6_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe6_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe6_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe6_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe6_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe6_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe6_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe7_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe7_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe7_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe7_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe7_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe7_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe7_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe7_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe7_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe7_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe7_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe7_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe7_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe7_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe7_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe7_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe7_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe7_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe7_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe7_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe7_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe7_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe7_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe7_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe7_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe7_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe8_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe8_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe8_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe8_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe8_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe8_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe8_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe8_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe8_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe8_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe8_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe8_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe8_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe8_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe8_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe8_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe8_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe8_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe8_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe8_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe8_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe8_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe8_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe8_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe8_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe8_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe9_phystatus;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe9_powerdown;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe9_rx_charisk;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe9_rx_data;
  wire pspmc_0_IF_PS_CPM_xpipe9_rx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe9_rx_elecidle;
  wire pspmc_0_IF_PS_CPM_xpipe9_rx_polarity;
  wire pspmc_0_IF_PS_CPM_xpipe9_rx_startblock;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe9_rx_status;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe9_rx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe9_rx_termination;
  wire pspmc_0_IF_PS_CPM_xpipe9_rx_valid;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe9_tx_charisk;
  wire pspmc_0_IF_PS_CPM_xpipe9_tx_compliance;
  wire [31:0]pspmc_0_IF_PS_CPM_xpipe9_tx_data;
  wire pspmc_0_IF_PS_CPM_xpipe9_tx_datavalid;
  wire pspmc_0_IF_PS_CPM_xpipe9_tx_deemph;
  wire pspmc_0_IF_PS_CPM_xpipe9_tx_detectrxloopback;
  wire pspmc_0_IF_PS_CPM_xpipe9_tx_elecidle;
  wire [6:0]pspmc_0_IF_PS_CPM_xpipe9_tx_maincursor;
  wire [2:0]pspmc_0_IF_PS_CPM_xpipe9_tx_margin;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe9_tx_postcursor;
  wire [4:0]pspmc_0_IF_PS_CPM_xpipe9_tx_precursor;
  wire pspmc_0_IF_PS_CPM_xpipe9_tx_startblock;
  wire pspmc_0_IF_PS_CPM_xpipe9_tx_swing;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe9_tx_syncheader;
  wire pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_req;
  wire pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_req;
  wire pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_req;
  wire pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_req;
  wire pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_req;
  wire pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_req;
  wire pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_req;
  wire pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_ack;
  wire [3:0]pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_cmd;
  wire [1:0]pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_lanenum;
  wire [7:0]pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_payload;
  wire pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_req;
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
  (* HARD_CONN = "true" *) wire pspmc_0_cpm_pcie_noc_axi0_clk;
  (* HARD_CONN = "true" *) wire pspmc_0_cpm_pcie_noc_axi1_clk;
  wire pspmc_0_pl0_ref_clk;
  wire pspmc_0_pl0_resetn;
  wire pspmc_0_pl1_ref_clk;

  assign CPM_PCIE_NOC_0_araddr[63:0] = pspmc_0_CPM_PCIE_NOC_0_ARADDR;
  assign CPM_PCIE_NOC_0_arburst[1:0] = pspmc_0_CPM_PCIE_NOC_0_ARBURST;
  assign CPM_PCIE_NOC_0_arcache[3:0] = pspmc_0_CPM_PCIE_NOC_0_ARCACHE;
  assign CPM_PCIE_NOC_0_arid[15:0] = pspmc_0_CPM_PCIE_NOC_0_ARID;
  assign CPM_PCIE_NOC_0_arlen[7:0] = pspmc_0_CPM_PCIE_NOC_0_ARLEN;
  assign CPM_PCIE_NOC_0_arlock = pspmc_0_CPM_PCIE_NOC_0_ARLOCK;
  assign CPM_PCIE_NOC_0_arprot[2:0] = pspmc_0_CPM_PCIE_NOC_0_ARPROT;
  assign CPM_PCIE_NOC_0_arqos[3:0] = pspmc_0_CPM_PCIE_NOC_0_ARQOS;
  assign CPM_PCIE_NOC_0_arsize[2:0] = pspmc_0_CPM_PCIE_NOC_0_ARSIZE;
  assign CPM_PCIE_NOC_0_aruser[17:0] = pspmc_0_CPM_PCIE_NOC_0_ARUSER;
  assign CPM_PCIE_NOC_0_arvalid = pspmc_0_CPM_PCIE_NOC_0_ARVALID;
  assign CPM_PCIE_NOC_0_awaddr[63:0] = pspmc_0_CPM_PCIE_NOC_0_AWADDR;
  assign CPM_PCIE_NOC_0_awburst[1:0] = pspmc_0_CPM_PCIE_NOC_0_AWBURST;
  assign CPM_PCIE_NOC_0_awcache[3:0] = pspmc_0_CPM_PCIE_NOC_0_AWCACHE;
  assign CPM_PCIE_NOC_0_awid[15:0] = pspmc_0_CPM_PCIE_NOC_0_AWID;
  assign CPM_PCIE_NOC_0_awlen[7:0] = pspmc_0_CPM_PCIE_NOC_0_AWLEN;
  assign CPM_PCIE_NOC_0_awlock = pspmc_0_CPM_PCIE_NOC_0_AWLOCK;
  assign CPM_PCIE_NOC_0_awprot[2:0] = pspmc_0_CPM_PCIE_NOC_0_AWPROT;
  assign CPM_PCIE_NOC_0_awqos[3:0] = pspmc_0_CPM_PCIE_NOC_0_AWQOS;
  assign CPM_PCIE_NOC_0_awsize[2:0] = pspmc_0_CPM_PCIE_NOC_0_AWSIZE;
  assign CPM_PCIE_NOC_0_awuser[17:0] = pspmc_0_CPM_PCIE_NOC_0_AWUSER;
  assign CPM_PCIE_NOC_0_awvalid = pspmc_0_CPM_PCIE_NOC_0_AWVALID;
  assign CPM_PCIE_NOC_0_bready = pspmc_0_CPM_PCIE_NOC_0_BREADY;
  assign CPM_PCIE_NOC_0_rready = pspmc_0_CPM_PCIE_NOC_0_RREADY;
  assign CPM_PCIE_NOC_0_wdata[127:0] = pspmc_0_CPM_PCIE_NOC_0_WDATA;
  assign CPM_PCIE_NOC_0_wlast = pspmc_0_CPM_PCIE_NOC_0_WLAST;
  assign CPM_PCIE_NOC_0_wstrb[15:0] = pspmc_0_CPM_PCIE_NOC_0_WSTRB;
  assign CPM_PCIE_NOC_0_wuser[16:0] = pspmc_0_CPM_PCIE_NOC_0_WUSER;
  assign CPM_PCIE_NOC_0_wvalid = pspmc_0_CPM_PCIE_NOC_0_WVALID;
  assign CPM_PCIE_NOC_1_araddr[63:0] = pspmc_0_CPM_PCIE_NOC_1_ARADDR;
  assign CPM_PCIE_NOC_1_arburst[1:0] = pspmc_0_CPM_PCIE_NOC_1_ARBURST;
  assign CPM_PCIE_NOC_1_arcache[3:0] = pspmc_0_CPM_PCIE_NOC_1_ARCACHE;
  assign CPM_PCIE_NOC_1_arid[15:0] = pspmc_0_CPM_PCIE_NOC_1_ARID;
  assign CPM_PCIE_NOC_1_arlen[7:0] = pspmc_0_CPM_PCIE_NOC_1_ARLEN;
  assign CPM_PCIE_NOC_1_arlock = pspmc_0_CPM_PCIE_NOC_1_ARLOCK;
  assign CPM_PCIE_NOC_1_arprot[2:0] = pspmc_0_CPM_PCIE_NOC_1_ARPROT;
  assign CPM_PCIE_NOC_1_arqos[3:0] = pspmc_0_CPM_PCIE_NOC_1_ARQOS;
  assign CPM_PCIE_NOC_1_arsize[2:0] = pspmc_0_CPM_PCIE_NOC_1_ARSIZE;
  assign CPM_PCIE_NOC_1_aruser[17:0] = pspmc_0_CPM_PCIE_NOC_1_ARUSER;
  assign CPM_PCIE_NOC_1_arvalid = pspmc_0_CPM_PCIE_NOC_1_ARVALID;
  assign CPM_PCIE_NOC_1_awaddr[63:0] = pspmc_0_CPM_PCIE_NOC_1_AWADDR;
  assign CPM_PCIE_NOC_1_awburst[1:0] = pspmc_0_CPM_PCIE_NOC_1_AWBURST;
  assign CPM_PCIE_NOC_1_awcache[3:0] = pspmc_0_CPM_PCIE_NOC_1_AWCACHE;
  assign CPM_PCIE_NOC_1_awid[15:0] = pspmc_0_CPM_PCIE_NOC_1_AWID;
  assign CPM_PCIE_NOC_1_awlen[7:0] = pspmc_0_CPM_PCIE_NOC_1_AWLEN;
  assign CPM_PCIE_NOC_1_awlock = pspmc_0_CPM_PCIE_NOC_1_AWLOCK;
  assign CPM_PCIE_NOC_1_awprot[2:0] = pspmc_0_CPM_PCIE_NOC_1_AWPROT;
  assign CPM_PCIE_NOC_1_awqos[3:0] = pspmc_0_CPM_PCIE_NOC_1_AWQOS;
  assign CPM_PCIE_NOC_1_awsize[2:0] = pspmc_0_CPM_PCIE_NOC_1_AWSIZE;
  assign CPM_PCIE_NOC_1_awuser[17:0] = pspmc_0_CPM_PCIE_NOC_1_AWUSER;
  assign CPM_PCIE_NOC_1_awvalid = pspmc_0_CPM_PCIE_NOC_1_AWVALID;
  assign CPM_PCIE_NOC_1_bready = pspmc_0_CPM_PCIE_NOC_1_BREADY;
  assign CPM_PCIE_NOC_1_rready = pspmc_0_CPM_PCIE_NOC_1_RREADY;
  assign CPM_PCIE_NOC_1_wdata[127:0] = pspmc_0_CPM_PCIE_NOC_1_WDATA;
  assign CPM_PCIE_NOC_1_wlast = pspmc_0_CPM_PCIE_NOC_1_WLAST;
  assign CPM_PCIE_NOC_1_wstrb[15:0] = pspmc_0_CPM_PCIE_NOC_1_WSTRB;
  assign CPM_PCIE_NOC_1_wuser[16:0] = pspmc_0_CPM_PCIE_NOC_1_WUSER;
  assign CPM_PCIE_NOC_1_wvalid = pspmc_0_CPM_PCIE_NOC_1_WVALID;
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
  assign PCIE1_GT_gtx_n[7:0] = cpm_0_PCIE1_GT_GTX_N;
  assign PCIE1_GT_gtx_p[7:0] = cpm_0_PCIE1_GT_GTX_P;
  assign cpm_0_PCIE1_GT_GRX_N = PCIE1_GT_grx_n[7:0];
  assign cpm_0_PCIE1_GT_GRX_P = PCIE1_GT_grx_p[7:0];
  assign cpm_0_dma1_c2h_byp_out_ready = dma1_c2h_byp_out_ready;
  assign cpm_0_dma1_h2c_byp_out_ready = dma1_h2c_byp_out_ready;
  assign cpm_0_dma1_m_axis_h2c_tready = dma1_m_axis_h2c_tready;
  assign cpm_0_dma1_qsts_out_rdy = dma1_qsts_out_rdy;
  assign cpm_0_dma1_st_rx_msg_TREADY = dma1_st_rx_msg_tready;
  assign cpm_0_dma1_tm_dsc_sts_rdy = dma1_tm_dsc_sts_rdy;
  assign cpm_cor_irq = cpm_0_cpm_cor_irq;
  assign cpm_irq0_1 = cpm_irq0;
  assign cpm_irq1_1 = cpm_irq1;
  assign cpm_misc_irq = cpm_0_cpm_misc_irq;
  assign cpm_pcie_noc_axi0_clk = pspmc_0_cpm_pcie_noc_axi0_clk;
  assign cpm_pcie_noc_axi1_clk = pspmc_0_cpm_pcie_noc_axi1_clk;
  assign cpm_uncor_irq = cpm_0_cpm_uncor_irq;
  assign dma1_axi_aresetn = cpm_0_dma1_axi_aresetn;
  assign dma1_axis_c2h_dmawr_cmp = cpm_0_dma1_axis_c2h_dmawr_cmp;
  assign dma1_axis_c2h_dmawr_port_id[2:0] = cpm_0_dma1_axis_c2h_dmawr_port_id;
  assign dma1_axis_c2h_dmawr_target_vch = cpm_0_dma1_axis_c2h_dmawr_target_vch;
  assign dma1_axis_c2h_status_drop = cpm_0_dma1_axis_c2h_status_drop;
  assign dma1_axis_c2h_status_error = cpm_0_dma1_axis_c2h_status_error;
  assign dma1_axis_c2h_status_last = cpm_0_dma1_axis_c2h_status_last;
  assign dma1_axis_c2h_status_qid[11:0] = cpm_0_dma1_axis_c2h_status_qid;
  assign dma1_axis_c2h_status_status_cmp = cpm_0_dma1_axis_c2h_status_status_cmp;
  assign dma1_axis_c2h_status_valid = cpm_0_dma1_axis_c2h_status_valid;
  assign dma1_c2h_byp_in_mm_0_1_cidx = dma1_c2h_byp_in_mm_0_cidx[15:0];
  assign dma1_c2h_byp_in_mm_0_1_error = dma1_c2h_byp_in_mm_0_error;
  assign dma1_c2h_byp_in_mm_0_1_func = dma1_c2h_byp_in_mm_0_func[11:0];
  assign dma1_c2h_byp_in_mm_0_1_len = dma1_c2h_byp_in_mm_0_len[15:0];
  assign dma1_c2h_byp_in_mm_0_1_mrkr_req = dma1_c2h_byp_in_mm_0_mrkr_req;
  assign dma1_c2h_byp_in_mm_0_1_no_dma = dma1_c2h_byp_in_mm_0_no_dma;
  assign dma1_c2h_byp_in_mm_0_1_port_id = dma1_c2h_byp_in_mm_0_port_id[2:0];
  assign dma1_c2h_byp_in_mm_0_1_qid = dma1_c2h_byp_in_mm_0_qid[11:0];
  assign dma1_c2h_byp_in_mm_0_1_radr = dma1_c2h_byp_in_mm_0_radr[63:0];
  assign dma1_c2h_byp_in_mm_0_1_sdi = dma1_c2h_byp_in_mm_0_sdi;
  assign dma1_c2h_byp_in_mm_0_1_valid = dma1_c2h_byp_in_mm_0_valid;
  assign dma1_c2h_byp_in_mm_0_1_wadr = dma1_c2h_byp_in_mm_0_wadr[63:0];
  assign dma1_c2h_byp_in_mm_0_ready = dma1_c2h_byp_in_mm_0_1_ready;
  assign dma1_c2h_byp_in_mm_1_1_cidx = dma1_c2h_byp_in_mm_1_cidx[15:0];
  assign dma1_c2h_byp_in_mm_1_1_error = dma1_c2h_byp_in_mm_1_error;
  assign dma1_c2h_byp_in_mm_1_1_func = dma1_c2h_byp_in_mm_1_func[11:0];
  assign dma1_c2h_byp_in_mm_1_1_len = dma1_c2h_byp_in_mm_1_len[15:0];
  assign dma1_c2h_byp_in_mm_1_1_mrkr_req = dma1_c2h_byp_in_mm_1_mrkr_req;
  assign dma1_c2h_byp_in_mm_1_1_no_dma = dma1_c2h_byp_in_mm_1_no_dma;
  assign dma1_c2h_byp_in_mm_1_1_port_id = dma1_c2h_byp_in_mm_1_port_id[2:0];
  assign dma1_c2h_byp_in_mm_1_1_qid = dma1_c2h_byp_in_mm_1_qid[11:0];
  assign dma1_c2h_byp_in_mm_1_1_radr = dma1_c2h_byp_in_mm_1_radr[63:0];
  assign dma1_c2h_byp_in_mm_1_1_sdi = dma1_c2h_byp_in_mm_1_sdi;
  assign dma1_c2h_byp_in_mm_1_1_valid = dma1_c2h_byp_in_mm_1_valid;
  assign dma1_c2h_byp_in_mm_1_1_wadr = dma1_c2h_byp_in_mm_1_wadr[63:0];
  assign dma1_c2h_byp_in_mm_1_ready = dma1_c2h_byp_in_mm_1_1_ready;
  assign dma1_c2h_byp_in_st_csh_1_addr = dma1_c2h_byp_in_st_csh_addr[63:0];
  assign dma1_c2h_byp_in_st_csh_1_error = dma1_c2h_byp_in_st_csh_error;
  assign dma1_c2h_byp_in_st_csh_1_func = dma1_c2h_byp_in_st_csh_func[11:0];
  assign dma1_c2h_byp_in_st_csh_1_pfch_tag = dma1_c2h_byp_in_st_csh_pfch_tag[6:0];
  assign dma1_c2h_byp_in_st_csh_1_port_id = dma1_c2h_byp_in_st_csh_port_id[2:0];
  assign dma1_c2h_byp_in_st_csh_1_qid = dma1_c2h_byp_in_st_csh_qid[11:0];
  assign dma1_c2h_byp_in_st_csh_1_valid = dma1_c2h_byp_in_st_csh_valid;
  assign dma1_c2h_byp_in_st_csh_ready = dma1_c2h_byp_in_st_csh_1_ready;
  assign dma1_c2h_byp_out_cidx[15:0] = cpm_0_dma1_c2h_byp_out_cidx;
  assign dma1_c2h_byp_out_dsc[255:0] = cpm_0_dma1_c2h_byp_out_dsc;
  assign dma1_c2h_byp_out_dsc_sz[1:0] = cpm_0_dma1_c2h_byp_out_dsc_sz;
  assign dma1_c2h_byp_out_error = cpm_0_dma1_c2h_byp_out_error;
  assign dma1_c2h_byp_out_fmt[2:0] = cpm_0_dma1_c2h_byp_out_fmt;
  assign dma1_c2h_byp_out_func[11:0] = cpm_0_dma1_c2h_byp_out_func;
  assign dma1_c2h_byp_out_mm_chn = cpm_0_dma1_c2h_byp_out_mm_chn;
  assign dma1_c2h_byp_out_pfch_tag[6:0] = cpm_0_dma1_c2h_byp_out_pfch_tag;
  assign dma1_c2h_byp_out_port_id[2:0] = cpm_0_dma1_c2h_byp_out_port_id;
  assign dma1_c2h_byp_out_qid[11:0] = cpm_0_dma1_c2h_byp_out_qid;
  assign dma1_c2h_byp_out_st_mm = cpm_0_dma1_c2h_byp_out_st_mm;
  assign dma1_c2h_byp_out_valid = cpm_0_dma1_c2h_byp_out_valid;
  assign dma1_dsc_crdt_in_1_crdt = dma1_dsc_crdt_in_crdt[15:0];
  assign dma1_dsc_crdt_in_1_dir = dma1_dsc_crdt_in_dir;
  assign dma1_dsc_crdt_in_1_fence = dma1_dsc_crdt_in_fence;
  assign dma1_dsc_crdt_in_1_qid = dma1_dsc_crdt_in_qid[11:0];
  assign dma1_dsc_crdt_in_1_valid = dma1_dsc_crdt_in_valid;
  assign dma1_dsc_crdt_in_rdy = dma1_dsc_crdt_in_1_rdy;
  assign dma1_h2c_byp_in_mm_0_1_cidx = dma1_h2c_byp_in_mm_0_cidx[15:0];
  assign dma1_h2c_byp_in_mm_0_1_error = dma1_h2c_byp_in_mm_0_error;
  assign dma1_h2c_byp_in_mm_0_1_func = dma1_h2c_byp_in_mm_0_func[11:0];
  assign dma1_h2c_byp_in_mm_0_1_len = dma1_h2c_byp_in_mm_0_len[15:0];
  assign dma1_h2c_byp_in_mm_0_1_mrkr_req = dma1_h2c_byp_in_mm_0_mrkr_req;
  assign dma1_h2c_byp_in_mm_0_1_no_dma = dma1_h2c_byp_in_mm_0_no_dma;
  assign dma1_h2c_byp_in_mm_0_1_port_id = dma1_h2c_byp_in_mm_0_port_id[2:0];
  assign dma1_h2c_byp_in_mm_0_1_qid = dma1_h2c_byp_in_mm_0_qid[11:0];
  assign dma1_h2c_byp_in_mm_0_1_radr = dma1_h2c_byp_in_mm_0_radr[63:0];
  assign dma1_h2c_byp_in_mm_0_1_sdi = dma1_h2c_byp_in_mm_0_sdi;
  assign dma1_h2c_byp_in_mm_0_1_valid = dma1_h2c_byp_in_mm_0_valid;
  assign dma1_h2c_byp_in_mm_0_1_wadr = dma1_h2c_byp_in_mm_0_wadr[63:0];
  assign dma1_h2c_byp_in_mm_0_ready = dma1_h2c_byp_in_mm_0_1_ready;
  assign dma1_h2c_byp_in_mm_1_1_cidx = dma1_h2c_byp_in_mm_1_cidx[15:0];
  assign dma1_h2c_byp_in_mm_1_1_error = dma1_h2c_byp_in_mm_1_error;
  assign dma1_h2c_byp_in_mm_1_1_func = dma1_h2c_byp_in_mm_1_func[11:0];
  assign dma1_h2c_byp_in_mm_1_1_len = dma1_h2c_byp_in_mm_1_len[15:0];
  assign dma1_h2c_byp_in_mm_1_1_mrkr_req = dma1_h2c_byp_in_mm_1_mrkr_req;
  assign dma1_h2c_byp_in_mm_1_1_no_dma = dma1_h2c_byp_in_mm_1_no_dma;
  assign dma1_h2c_byp_in_mm_1_1_port_id = dma1_h2c_byp_in_mm_1_port_id[2:0];
  assign dma1_h2c_byp_in_mm_1_1_qid = dma1_h2c_byp_in_mm_1_qid[11:0];
  assign dma1_h2c_byp_in_mm_1_1_radr = dma1_h2c_byp_in_mm_1_radr[63:0];
  assign dma1_h2c_byp_in_mm_1_1_sdi = dma1_h2c_byp_in_mm_1_sdi;
  assign dma1_h2c_byp_in_mm_1_1_valid = dma1_h2c_byp_in_mm_1_valid;
  assign dma1_h2c_byp_in_mm_1_1_wadr = dma1_h2c_byp_in_mm_1_wadr[63:0];
  assign dma1_h2c_byp_in_mm_1_ready = dma1_h2c_byp_in_mm_1_1_ready;
  assign dma1_h2c_byp_in_st_1_addr = dma1_h2c_byp_in_st_addr[63:0];
  assign dma1_h2c_byp_in_st_1_cidx = dma1_h2c_byp_in_st_cidx[15:0];
  assign dma1_h2c_byp_in_st_1_eop = dma1_h2c_byp_in_st_eop;
  assign dma1_h2c_byp_in_st_1_error = dma1_h2c_byp_in_st_error;
  assign dma1_h2c_byp_in_st_1_func = dma1_h2c_byp_in_st_func[11:0];
  assign dma1_h2c_byp_in_st_1_len = dma1_h2c_byp_in_st_len[15:0];
  assign dma1_h2c_byp_in_st_1_mrkr_req = dma1_h2c_byp_in_st_mrkr_req;
  assign dma1_h2c_byp_in_st_1_no_dma = dma1_h2c_byp_in_st_no_dma;
  assign dma1_h2c_byp_in_st_1_port_id = dma1_h2c_byp_in_st_port_id[2:0];
  assign dma1_h2c_byp_in_st_1_qid = dma1_h2c_byp_in_st_qid[11:0];
  assign dma1_h2c_byp_in_st_1_sdi = dma1_h2c_byp_in_st_sdi;
  assign dma1_h2c_byp_in_st_1_sop = dma1_h2c_byp_in_st_sop;
  assign dma1_h2c_byp_in_st_1_valid = dma1_h2c_byp_in_st_valid;
  assign dma1_h2c_byp_in_st_ready = dma1_h2c_byp_in_st_1_ready;
  assign dma1_h2c_byp_out_cidx[15:0] = cpm_0_dma1_h2c_byp_out_cidx;
  assign dma1_h2c_byp_out_dsc[255:0] = cpm_0_dma1_h2c_byp_out_dsc;
  assign dma1_h2c_byp_out_dsc_sz[1:0] = cpm_0_dma1_h2c_byp_out_dsc_sz;
  assign dma1_h2c_byp_out_error = cpm_0_dma1_h2c_byp_out_error;
  assign dma1_h2c_byp_out_fmt[2:0] = cpm_0_dma1_h2c_byp_out_fmt;
  assign dma1_h2c_byp_out_func[11:0] = cpm_0_dma1_h2c_byp_out_func;
  assign dma1_h2c_byp_out_mm_chn = cpm_0_dma1_h2c_byp_out_mm_chn;
  assign dma1_h2c_byp_out_port_id[2:0] = cpm_0_dma1_h2c_byp_out_port_id;
  assign dma1_h2c_byp_out_qid[11:0] = cpm_0_dma1_h2c_byp_out_qid;
  assign dma1_h2c_byp_out_st_mm = cpm_0_dma1_h2c_byp_out_st_mm;
  assign dma1_h2c_byp_out_valid = cpm_0_dma1_h2c_byp_out_valid;
  assign dma1_intrfc_clk_1 = dma1_intrfc_clk;
  assign dma1_intrfc_resetn_1 = dma1_intrfc_resetn;
  assign dma1_m_axis_h2c_err = cpm_0_dma1_m_axis_h2c_err;
  assign dma1_m_axis_h2c_mdata[31:0] = cpm_0_dma1_m_axis_h2c_mdata;
  assign dma1_m_axis_h2c_mty[5:0] = cpm_0_dma1_m_axis_h2c_mty;
  assign dma1_m_axis_h2c_port_id[2:0] = cpm_0_dma1_m_axis_h2c_port_id;
  assign dma1_m_axis_h2c_qid[11:0] = cpm_0_dma1_m_axis_h2c_qid;
  assign dma1_m_axis_h2c_tcrc[31:0] = cpm_0_dma1_m_axis_h2c_tcrc;
  assign dma1_m_axis_h2c_tdata[511:0] = cpm_0_dma1_m_axis_h2c_tdata;
  assign dma1_m_axis_h2c_tlast = cpm_0_dma1_m_axis_h2c_tlast;
  assign dma1_m_axis_h2c_tvalid = cpm_0_dma1_m_axis_h2c_tvalid;
  assign dma1_m_axis_h2c_zero_byte = cpm_0_dma1_m_axis_h2c_zero_byte;
  assign dma1_mgmt_1_cpl_rdy = dma1_mgmt_cpl_rdy;
  assign dma1_mgmt_1_req_adr = dma1_mgmt_req_adr[31:0];
  assign dma1_mgmt_1_req_cmd = dma1_mgmt_req_cmd[1:0];
  assign dma1_mgmt_1_req_dat = dma1_mgmt_req_dat[31:0];
  assign dma1_mgmt_1_req_fnc = dma1_mgmt_req_fnc[12:0];
  assign dma1_mgmt_1_req_msc = dma1_mgmt_req_msc[5:0];
  assign dma1_mgmt_1_req_vld = dma1_mgmt_req_vld;
  assign dma1_mgmt_cpl_dat[31:0] = dma1_mgmt_1_cpl_dat;
  assign dma1_mgmt_cpl_sts[1:0] = dma1_mgmt_1_cpl_sts;
  assign dma1_mgmt_cpl_vld = dma1_mgmt_1_cpl_vld;
  assign dma1_mgmt_req_rdy = dma1_mgmt_1_req_rdy;
  assign dma1_qsts_out_data[63:0] = cpm_0_dma1_qsts_out_data;
  assign dma1_qsts_out_op[7:0] = cpm_0_dma1_qsts_out_op;
  assign dma1_qsts_out_port_id[2:0] = cpm_0_dma1_qsts_out_port_id;
  assign dma1_qsts_out_qid[12:0] = cpm_0_dma1_qsts_out_qid;
  assign dma1_qsts_out_vld = cpm_0_dma1_qsts_out_vld;
  assign dma1_s_axis_c2h_1_ctrl_has_cmpt = dma1_s_axis_c2h_ctrl_has_cmpt;
  assign dma1_s_axis_c2h_1_ctrl_len = dma1_s_axis_c2h_ctrl_len[15:0];
  assign dma1_s_axis_c2h_1_ctrl_marker = dma1_s_axis_c2h_ctrl_marker;
  assign dma1_s_axis_c2h_1_ctrl_port_id = dma1_s_axis_c2h_ctrl_port_id[2:0];
  assign dma1_s_axis_c2h_1_ctrl_qid = dma1_s_axis_c2h_ctrl_qid[11:0];
  assign dma1_s_axis_c2h_1_ecc = dma1_s_axis_c2h_ecc[6:0];
  assign dma1_s_axis_c2h_1_mty = dma1_s_axis_c2h_mty[5:0];
  assign dma1_s_axis_c2h_1_tcrc = dma1_s_axis_c2h_tcrc[31:0];
  assign dma1_s_axis_c2h_1_tdata = dma1_s_axis_c2h_tdata[511:0];
  assign dma1_s_axis_c2h_1_tlast = dma1_s_axis_c2h_tlast;
  assign dma1_s_axis_c2h_1_tvalid = dma1_s_axis_c2h_tvalid;
  assign dma1_s_axis_c2h_cmpt_1_cmpt_type = dma1_s_axis_c2h_cmpt_cmpt_type[1:0];
  assign dma1_s_axis_c2h_cmpt_1_col_idx = dma1_s_axis_c2h_cmpt_col_idx[2:0];
  assign dma1_s_axis_c2h_cmpt_1_data = dma1_s_axis_c2h_cmpt_data[511:0];
  assign dma1_s_axis_c2h_cmpt_1_dpar = dma1_s_axis_c2h_cmpt_dpar[15:0];
  assign dma1_s_axis_c2h_cmpt_1_err_idx = dma1_s_axis_c2h_cmpt_err_idx[2:0];
  assign dma1_s_axis_c2h_cmpt_1_marker = dma1_s_axis_c2h_cmpt_marker;
  assign dma1_s_axis_c2h_cmpt_1_no_wrb_marker = dma1_s_axis_c2h_cmpt_no_wrb_marker;
  assign dma1_s_axis_c2h_cmpt_1_port_id = dma1_s_axis_c2h_cmpt_port_id[2:0];
  assign dma1_s_axis_c2h_cmpt_1_qid = dma1_s_axis_c2h_cmpt_qid[12:0];
  assign dma1_s_axis_c2h_cmpt_1_size = dma1_s_axis_c2h_cmpt_size[1:0];
  assign dma1_s_axis_c2h_cmpt_1_tvalid = dma1_s_axis_c2h_cmpt_tvalid;
  assign dma1_s_axis_c2h_cmpt_1_user_trig = dma1_s_axis_c2h_cmpt_user_trig;
  assign dma1_s_axis_c2h_cmpt_1_wait_pld_pkt_id = dma1_s_axis_c2h_cmpt_wait_pld_pkt_id[15:0];
  assign dma1_s_axis_c2h_cmpt_tready = dma1_s_axis_c2h_cmpt_1_tready;
  assign dma1_s_axis_c2h_tready = dma1_s_axis_c2h_1_tready;
  assign dma1_st_rx_msg_tdata[31:0] = cpm_0_dma1_st_rx_msg_TDATA;
  assign dma1_st_rx_msg_tlast = cpm_0_dma1_st_rx_msg_TLAST;
  assign dma1_st_rx_msg_tvalid = cpm_0_dma1_st_rx_msg_TVALID;
  assign dma1_tm_dsc_sts_avl[15:0] = cpm_0_dma1_tm_dsc_sts_avl;
  assign dma1_tm_dsc_sts_byp = cpm_0_dma1_tm_dsc_sts_byp;
  assign dma1_tm_dsc_sts_dir = cpm_0_dma1_tm_dsc_sts_dir;
  assign dma1_tm_dsc_sts_error = cpm_0_dma1_tm_dsc_sts_error;
  assign dma1_tm_dsc_sts_irq_arm = cpm_0_dma1_tm_dsc_sts_irq_arm;
  assign dma1_tm_dsc_sts_mm = cpm_0_dma1_tm_dsc_sts_mm;
  assign dma1_tm_dsc_sts_pidx[15:0] = cpm_0_dma1_tm_dsc_sts_pidx;
  assign dma1_tm_dsc_sts_port_id[2:0] = cpm_0_dma1_tm_dsc_sts_port_id;
  assign dma1_tm_dsc_sts_qen = cpm_0_dma1_tm_dsc_sts_qen;
  assign dma1_tm_dsc_sts_qid[11:0] = cpm_0_dma1_tm_dsc_sts_qid;
  assign dma1_tm_dsc_sts_qinv = cpm_0_dma1_tm_dsc_sts_qinv;
  assign dma1_tm_dsc_sts_valid = cpm_0_dma1_tm_dsc_sts_valid;
  assign dma1_usr_flr_1_done_fnc = dma1_usr_flr_done_fnc[12:0];
  assign dma1_usr_flr_1_done_vld = dma1_usr_flr_done_vld;
  assign dma1_usr_flr_clear = dma1_usr_flr_1_clear;
  assign dma1_usr_flr_fnc[12:0] = dma1_usr_flr_1_fnc;
  assign dma1_usr_flr_set = dma1_usr_flr_1_set;
  assign dma1_usr_irq_1_fnc = dma1_usr_irq_fnc[12:0];
  assign dma1_usr_irq_1_valid = dma1_usr_irq_valid;
  assign dma1_usr_irq_1_vec = dma1_usr_irq_vec[10:0];
  assign dma1_usr_irq_ack = dma1_usr_irq_1_ack;
  assign dma1_usr_irq_fail = dma1_usr_irq_1_fail;
  assign gt_refclk1_1_CLK_N = gt_refclk1_clk_n;
  assign gt_refclk1_1_CLK_P = gt_refclk1_clk_p;
  assign m_axi_fpd_aclk_1 = m_axi_fpd_aclk;
  assign pcie1_pipe_ep_1_COMMANDS_IN = pcie1_pipe_ep_commands_in[13:0];
  assign pcie1_pipe_ep_1_RX_0 = pcie1_pipe_ep_rx_0[41:0];
  assign pcie1_pipe_ep_1_RX_1 = pcie1_pipe_ep_rx_1[41:0];
  assign pcie1_pipe_ep_1_RX_10 = pcie1_pipe_ep_rx_10[41:0];
  assign pcie1_pipe_ep_1_RX_11 = pcie1_pipe_ep_rx_11[41:0];
  assign pcie1_pipe_ep_1_RX_12 = pcie1_pipe_ep_rx_12[41:0];
  assign pcie1_pipe_ep_1_RX_13 = pcie1_pipe_ep_rx_13[41:0];
  assign pcie1_pipe_ep_1_RX_14 = pcie1_pipe_ep_rx_14[41:0];
  assign pcie1_pipe_ep_1_RX_15 = pcie1_pipe_ep_rx_15[41:0];
  assign pcie1_pipe_ep_1_RX_2 = pcie1_pipe_ep_rx_2[41:0];
  assign pcie1_pipe_ep_1_RX_3 = pcie1_pipe_ep_rx_3[41:0];
  assign pcie1_pipe_ep_1_RX_4 = pcie1_pipe_ep_rx_4[41:0];
  assign pcie1_pipe_ep_1_RX_5 = pcie1_pipe_ep_rx_5[41:0];
  assign pcie1_pipe_ep_1_RX_6 = pcie1_pipe_ep_rx_6[41:0];
  assign pcie1_pipe_ep_1_RX_7 = pcie1_pipe_ep_rx_7[41:0];
  assign pcie1_pipe_ep_1_RX_8 = pcie1_pipe_ep_rx_8[41:0];
  assign pcie1_pipe_ep_1_RX_9 = pcie1_pipe_ep_rx_9[41:0];
  assign pcie1_pipe_ep_commands_out[13:0] = pcie1_pipe_ep_1_COMMANDS_OUT;
  assign pcie1_pipe_ep_tx_0[41:0] = pcie1_pipe_ep_1_TX_0;
  assign pcie1_pipe_ep_tx_1[41:0] = pcie1_pipe_ep_1_TX_1;
  assign pcie1_pipe_ep_tx_10[41:0] = pcie1_pipe_ep_1_TX_10;
  assign pcie1_pipe_ep_tx_11[41:0] = pcie1_pipe_ep_1_TX_11;
  assign pcie1_pipe_ep_tx_12[41:0] = pcie1_pipe_ep_1_TX_12;
  assign pcie1_pipe_ep_tx_13[41:0] = pcie1_pipe_ep_1_TX_13;
  assign pcie1_pipe_ep_tx_14[41:0] = pcie1_pipe_ep_1_TX_14;
  assign pcie1_pipe_ep_tx_15[41:0] = pcie1_pipe_ep_1_TX_15;
  assign pcie1_pipe_ep_tx_2[41:0] = pcie1_pipe_ep_1_TX_2;
  assign pcie1_pipe_ep_tx_3[41:0] = pcie1_pipe_ep_1_TX_3;
  assign pcie1_pipe_ep_tx_4[41:0] = pcie1_pipe_ep_1_TX_4;
  assign pcie1_pipe_ep_tx_5[41:0] = pcie1_pipe_ep_1_TX_5;
  assign pcie1_pipe_ep_tx_6[41:0] = pcie1_pipe_ep_1_TX_6;
  assign pcie1_pipe_ep_tx_7[41:0] = pcie1_pipe_ep_1_TX_7;
  assign pcie1_pipe_ep_tx_8[41:0] = pcie1_pipe_ep_1_TX_8;
  assign pcie1_pipe_ep_tx_9[41:0] = pcie1_pipe_ep_1_TX_9;
  assign pl0_ref_clk = pspmc_0_pl0_ref_clk;
  assign pl0_resetn = pspmc_0_pl0_resetn;
  assign pl1_ref_clk = pspmc_0_pl1_ref_clk;
  assign pspmc_0_CPM_PCIE_NOC_0_ARREADY = CPM_PCIE_NOC_0_arready;
  assign pspmc_0_CPM_PCIE_NOC_0_AWREADY = CPM_PCIE_NOC_0_awready;
  assign pspmc_0_CPM_PCIE_NOC_0_BID = CPM_PCIE_NOC_0_bid[15:0];
  assign pspmc_0_CPM_PCIE_NOC_0_BRESP = CPM_PCIE_NOC_0_bresp[1:0];
  assign pspmc_0_CPM_PCIE_NOC_0_BVALID = CPM_PCIE_NOC_0_bvalid;
  assign pspmc_0_CPM_PCIE_NOC_0_RDATA = CPM_PCIE_NOC_0_rdata[127:0];
  assign pspmc_0_CPM_PCIE_NOC_0_RID = CPM_PCIE_NOC_0_rid[15:0];
  assign pspmc_0_CPM_PCIE_NOC_0_RLAST = CPM_PCIE_NOC_0_rlast;
  assign pspmc_0_CPM_PCIE_NOC_0_RRESP = CPM_PCIE_NOC_0_rresp[1:0];
  assign pspmc_0_CPM_PCIE_NOC_0_RUSER = CPM_PCIE_NOC_0_ruser[16:0];
  assign pspmc_0_CPM_PCIE_NOC_0_RVALID = CPM_PCIE_NOC_0_rvalid;
  assign pspmc_0_CPM_PCIE_NOC_0_WREADY = CPM_PCIE_NOC_0_wready;
  assign pspmc_0_CPM_PCIE_NOC_1_ARREADY = CPM_PCIE_NOC_1_arready;
  assign pspmc_0_CPM_PCIE_NOC_1_AWREADY = CPM_PCIE_NOC_1_awready;
  assign pspmc_0_CPM_PCIE_NOC_1_BID = CPM_PCIE_NOC_1_bid[15:0];
  assign pspmc_0_CPM_PCIE_NOC_1_BRESP = CPM_PCIE_NOC_1_bresp[1:0];
  assign pspmc_0_CPM_PCIE_NOC_1_BVALID = CPM_PCIE_NOC_1_bvalid;
  assign pspmc_0_CPM_PCIE_NOC_1_RDATA = CPM_PCIE_NOC_1_rdata[127:0];
  assign pspmc_0_CPM_PCIE_NOC_1_RID = CPM_PCIE_NOC_1_rid[15:0];
  assign pspmc_0_CPM_PCIE_NOC_1_RLAST = CPM_PCIE_NOC_1_rlast;
  assign pspmc_0_CPM_PCIE_NOC_1_RRESP = CPM_PCIE_NOC_1_rresp[1:0];
  assign pspmc_0_CPM_PCIE_NOC_1_RUSER = CPM_PCIE_NOC_1_ruser[16:0];
  assign pspmc_0_CPM_PCIE_NOC_1_RVALID = CPM_PCIE_NOC_1_rvalid;
  assign pspmc_0_CPM_PCIE_NOC_1_WREADY = CPM_PCIE_NOC_1_wready;
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
  bd_a532_cpm_0_0 cpm_0
       (.cpm_cor_irq(cpm_0_cpm_cor_irq),
        .cpm_irq0(cpm_irq0_1),
        .cpm_irq1(cpm_irq1_1),
        .cpm_misc_irq(cpm_0_cpm_misc_irq),
        .cpm_osc_clk_div2(pspmc_0_IF_PS_CPM_cpm_osc_clk_div2),
        .cpm_pcr_apb_en(pspmc_0_IF_PS_CPM_cpm_pcr_apb_en),
        .cpm_pcr_dis_npi_clk(pspmc_0_IF_PS_CPM_cpm_pcr_dis_npi_clk),
        .cpm_pcr_fabric_en(pspmc_0_IF_PS_CPM_cpm_pcr_fabric_en),
        .cpm_pcr_gate_reg(pspmc_0_IF_PS_CPM_cpm_pcr_gate_reg),
        .cpm_pcr_hold_state(pspmc_0_IF_PS_CPM_cpm_pcr_hold_state),
        .cpm_pcr_init_state(pspmc_0_IF_PS_CPM_cpm_pcr_init_state),
        .cpm_pcr_mem_clr(pspmc_0_IF_PS_CPM_cpm_pcr_mem_clr),
        .cpm_pcr_o_disable(pspmc_0_IF_PS_CPM_cpm_pcr_o_disable),
        .cpm_pcr_pcomplete(pspmc_0_IF_PS_CPM_cpm_pcr_pcomplete),
        .cpm_pcr_pwr_dn(pspmc_0_IF_PS_CPM_cpm_pcr_pwr_dn),
        .cpm_pcr_scan_clr(pspmc_0_IF_PS_CPM_cpm_pcr_scan_clr),
        .cpm_pcr_start_bisr(pspmc_0_IF_PS_CPM_cpm_pcr_start_bisr),
        .cpm_pcr_start_cal(pspmc_0_IF_PS_CPM_cpm_pcr_start_cal),
        .cpm_pcr_tristate(pspmc_0_IF_PS_CPM_cpm_pcr_tristate),
        .cpm_uncor_irq(cpm_0_cpm_uncor_irq),
        .cpmps_corr_irq(pspmc_0_IF_PS_CPM_cpmps_corr_irq),
        .cpmps_misc_irq(pspmc_0_IF_PS_CPM_cpmps_misc_irq),
        .cpmps_uncorr_irq(pspmc_0_IF_PS_CPM_cpmps_uncorr_irq),
        .dma1_axi_aresetn(cpm_0_dma1_axi_aresetn),
        .dma1_axis_c2h_dmawr_cmp(cpm_0_dma1_axis_c2h_dmawr_cmp),
        .dma1_axis_c2h_dmawr_port_id(cpm_0_dma1_axis_c2h_dmawr_port_id),
        .dma1_axis_c2h_dmawr_target_vch(cpm_0_dma1_axis_c2h_dmawr_target_vch),
        .dma1_axis_c2h_status_cmp(cpm_0_dma1_axis_c2h_status_status_cmp),
        .dma1_axis_c2h_status_drop(cpm_0_dma1_axis_c2h_status_drop),
        .dma1_axis_c2h_status_error(cpm_0_dma1_axis_c2h_status_error),
        .dma1_axis_c2h_status_last(cpm_0_dma1_axis_c2h_status_last),
        .dma1_axis_c2h_status_qid(cpm_0_dma1_axis_c2h_status_qid),
        .dma1_axis_c2h_status_valid(cpm_0_dma1_axis_c2h_status_valid),
        .dma1_c2h_byp_in_mm_0_cidx(dma1_c2h_byp_in_mm_0_1_cidx),
        .dma1_c2h_byp_in_mm_0_error(dma1_c2h_byp_in_mm_0_1_error),
        .dma1_c2h_byp_in_mm_0_func(dma1_c2h_byp_in_mm_0_1_func),
        .dma1_c2h_byp_in_mm_0_len(dma1_c2h_byp_in_mm_0_1_len),
        .dma1_c2h_byp_in_mm_0_mrkr_req(dma1_c2h_byp_in_mm_0_1_mrkr_req),
        .dma1_c2h_byp_in_mm_0_no_dma(dma1_c2h_byp_in_mm_0_1_no_dma),
        .dma1_c2h_byp_in_mm_0_port_id(dma1_c2h_byp_in_mm_0_1_port_id),
        .dma1_c2h_byp_in_mm_0_qid(dma1_c2h_byp_in_mm_0_1_qid),
        .dma1_c2h_byp_in_mm_0_radr(dma1_c2h_byp_in_mm_0_1_radr),
        .dma1_c2h_byp_in_mm_0_rdy(dma1_c2h_byp_in_mm_0_1_ready),
        .dma1_c2h_byp_in_mm_0_sdi(dma1_c2h_byp_in_mm_0_1_sdi),
        .dma1_c2h_byp_in_mm_0_vld(dma1_c2h_byp_in_mm_0_1_valid),
        .dma1_c2h_byp_in_mm_0_wadr(dma1_c2h_byp_in_mm_0_1_wadr),
        .dma1_c2h_byp_in_mm_1_cidx(dma1_c2h_byp_in_mm_1_1_cidx),
        .dma1_c2h_byp_in_mm_1_error(dma1_c2h_byp_in_mm_1_1_error),
        .dma1_c2h_byp_in_mm_1_func(dma1_c2h_byp_in_mm_1_1_func),
        .dma1_c2h_byp_in_mm_1_len(dma1_c2h_byp_in_mm_1_1_len),
        .dma1_c2h_byp_in_mm_1_mrkr_req(dma1_c2h_byp_in_mm_1_1_mrkr_req),
        .dma1_c2h_byp_in_mm_1_no_dma(dma1_c2h_byp_in_mm_1_1_no_dma),
        .dma1_c2h_byp_in_mm_1_port_id(dma1_c2h_byp_in_mm_1_1_port_id),
        .dma1_c2h_byp_in_mm_1_qid(dma1_c2h_byp_in_mm_1_1_qid),
        .dma1_c2h_byp_in_mm_1_radr(dma1_c2h_byp_in_mm_1_1_radr),
        .dma1_c2h_byp_in_mm_1_rdy(dma1_c2h_byp_in_mm_1_1_ready),
        .dma1_c2h_byp_in_mm_1_sdi(dma1_c2h_byp_in_mm_1_1_sdi),
        .dma1_c2h_byp_in_mm_1_vld(dma1_c2h_byp_in_mm_1_1_valid),
        .dma1_c2h_byp_in_mm_1_wadr(dma1_c2h_byp_in_mm_1_1_wadr),
        .dma1_c2h_byp_in_st_csh_addr(dma1_c2h_byp_in_st_csh_1_addr),
        .dma1_c2h_byp_in_st_csh_error(dma1_c2h_byp_in_st_csh_1_error),
        .dma1_c2h_byp_in_st_csh_func(dma1_c2h_byp_in_st_csh_1_func),
        .dma1_c2h_byp_in_st_csh_pfch_tag(dma1_c2h_byp_in_st_csh_1_pfch_tag),
        .dma1_c2h_byp_in_st_csh_port_id(dma1_c2h_byp_in_st_csh_1_port_id),
        .dma1_c2h_byp_in_st_csh_qid(dma1_c2h_byp_in_st_csh_1_qid),
        .dma1_c2h_byp_in_st_csh_rdy(dma1_c2h_byp_in_st_csh_1_ready),
        .dma1_c2h_byp_in_st_csh_vld(dma1_c2h_byp_in_st_csh_1_valid),
        .dma1_c2h_byp_out_cidx(cpm_0_dma1_c2h_byp_out_cidx),
        .dma1_c2h_byp_out_dsc(cpm_0_dma1_c2h_byp_out_dsc),
        .dma1_c2h_byp_out_dsc_sz(cpm_0_dma1_c2h_byp_out_dsc_sz),
        .dma1_c2h_byp_out_error(cpm_0_dma1_c2h_byp_out_error),
        .dma1_c2h_byp_out_fmt(cpm_0_dma1_c2h_byp_out_fmt),
        .dma1_c2h_byp_out_func(cpm_0_dma1_c2h_byp_out_func),
        .dma1_c2h_byp_out_mm_chn(cpm_0_dma1_c2h_byp_out_mm_chn),
        .dma1_c2h_byp_out_pfch_tag(cpm_0_dma1_c2h_byp_out_pfch_tag),
        .dma1_c2h_byp_out_port_id(cpm_0_dma1_c2h_byp_out_port_id),
        .dma1_c2h_byp_out_qid(cpm_0_dma1_c2h_byp_out_qid),
        .dma1_c2h_byp_out_rdy(cpm_0_dma1_c2h_byp_out_ready),
        .dma1_c2h_byp_out_st_mm(cpm_0_dma1_c2h_byp_out_st_mm),
        .dma1_c2h_byp_out_vld(cpm_0_dma1_c2h_byp_out_valid),
        .dma1_dsc_crdt_in_crdt(dma1_dsc_crdt_in_1_crdt),
        .dma1_dsc_crdt_in_dir(dma1_dsc_crdt_in_1_dir),
        .dma1_dsc_crdt_in_fence(dma1_dsc_crdt_in_1_fence),
        .dma1_dsc_crdt_in_qid(dma1_dsc_crdt_in_1_qid),
        .dma1_dsc_crdt_in_rdy(dma1_dsc_crdt_in_1_rdy),
        .dma1_dsc_crdt_in_vld(dma1_dsc_crdt_in_1_valid),
        .dma1_h2c_byp_in_mm_0_cidx(dma1_h2c_byp_in_mm_0_1_cidx),
        .dma1_h2c_byp_in_mm_0_error(dma1_h2c_byp_in_mm_0_1_error),
        .dma1_h2c_byp_in_mm_0_func(dma1_h2c_byp_in_mm_0_1_func),
        .dma1_h2c_byp_in_mm_0_len(dma1_h2c_byp_in_mm_0_1_len),
        .dma1_h2c_byp_in_mm_0_mrkr_req(dma1_h2c_byp_in_mm_0_1_mrkr_req),
        .dma1_h2c_byp_in_mm_0_no_dma(dma1_h2c_byp_in_mm_0_1_no_dma),
        .dma1_h2c_byp_in_mm_0_port_id(dma1_h2c_byp_in_mm_0_1_port_id),
        .dma1_h2c_byp_in_mm_0_qid(dma1_h2c_byp_in_mm_0_1_qid),
        .dma1_h2c_byp_in_mm_0_radr(dma1_h2c_byp_in_mm_0_1_radr),
        .dma1_h2c_byp_in_mm_0_rdy(dma1_h2c_byp_in_mm_0_1_ready),
        .dma1_h2c_byp_in_mm_0_sdi(dma1_h2c_byp_in_mm_0_1_sdi),
        .dma1_h2c_byp_in_mm_0_vld(dma1_h2c_byp_in_mm_0_1_valid),
        .dma1_h2c_byp_in_mm_0_wadr(dma1_h2c_byp_in_mm_0_1_wadr),
        .dma1_h2c_byp_in_mm_1_cidx(dma1_h2c_byp_in_mm_1_1_cidx),
        .dma1_h2c_byp_in_mm_1_error(dma1_h2c_byp_in_mm_1_1_error),
        .dma1_h2c_byp_in_mm_1_func(dma1_h2c_byp_in_mm_1_1_func),
        .dma1_h2c_byp_in_mm_1_len(dma1_h2c_byp_in_mm_1_1_len),
        .dma1_h2c_byp_in_mm_1_mrkr_req(dma1_h2c_byp_in_mm_1_1_mrkr_req),
        .dma1_h2c_byp_in_mm_1_no_dma(dma1_h2c_byp_in_mm_1_1_no_dma),
        .dma1_h2c_byp_in_mm_1_port_id(dma1_h2c_byp_in_mm_1_1_port_id),
        .dma1_h2c_byp_in_mm_1_qid(dma1_h2c_byp_in_mm_1_1_qid),
        .dma1_h2c_byp_in_mm_1_radr(dma1_h2c_byp_in_mm_1_1_radr),
        .dma1_h2c_byp_in_mm_1_rdy(dma1_h2c_byp_in_mm_1_1_ready),
        .dma1_h2c_byp_in_mm_1_sdi(dma1_h2c_byp_in_mm_1_1_sdi),
        .dma1_h2c_byp_in_mm_1_vld(dma1_h2c_byp_in_mm_1_1_valid),
        .dma1_h2c_byp_in_mm_1_wadr(dma1_h2c_byp_in_mm_1_1_wadr),
        .dma1_h2c_byp_in_st_addr(dma1_h2c_byp_in_st_1_addr),
        .dma1_h2c_byp_in_st_cidx(dma1_h2c_byp_in_st_1_cidx),
        .dma1_h2c_byp_in_st_eop(dma1_h2c_byp_in_st_1_eop),
        .dma1_h2c_byp_in_st_error(dma1_h2c_byp_in_st_1_error),
        .dma1_h2c_byp_in_st_func(dma1_h2c_byp_in_st_1_func),
        .dma1_h2c_byp_in_st_len(dma1_h2c_byp_in_st_1_len),
        .dma1_h2c_byp_in_st_mrkr_req(dma1_h2c_byp_in_st_1_mrkr_req),
        .dma1_h2c_byp_in_st_no_dma(dma1_h2c_byp_in_st_1_no_dma),
        .dma1_h2c_byp_in_st_port_id(dma1_h2c_byp_in_st_1_port_id),
        .dma1_h2c_byp_in_st_qid(dma1_h2c_byp_in_st_1_qid),
        .dma1_h2c_byp_in_st_rdy(dma1_h2c_byp_in_st_1_ready),
        .dma1_h2c_byp_in_st_sdi(dma1_h2c_byp_in_st_1_sdi),
        .dma1_h2c_byp_in_st_sop(dma1_h2c_byp_in_st_1_sop),
        .dma1_h2c_byp_in_st_vld(dma1_h2c_byp_in_st_1_valid),
        .dma1_h2c_byp_out_cidx(cpm_0_dma1_h2c_byp_out_cidx),
        .dma1_h2c_byp_out_dsc(cpm_0_dma1_h2c_byp_out_dsc),
        .dma1_h2c_byp_out_dsc_sz(cpm_0_dma1_h2c_byp_out_dsc_sz),
        .dma1_h2c_byp_out_error(cpm_0_dma1_h2c_byp_out_error),
        .dma1_h2c_byp_out_fmt(cpm_0_dma1_h2c_byp_out_fmt),
        .dma1_h2c_byp_out_func(cpm_0_dma1_h2c_byp_out_func),
        .dma1_h2c_byp_out_mm_chn(cpm_0_dma1_h2c_byp_out_mm_chn),
        .dma1_h2c_byp_out_port_id(cpm_0_dma1_h2c_byp_out_port_id),
        .dma1_h2c_byp_out_qid(cpm_0_dma1_h2c_byp_out_qid),
        .dma1_h2c_byp_out_rdy(cpm_0_dma1_h2c_byp_out_ready),
        .dma1_h2c_byp_out_st_mm(cpm_0_dma1_h2c_byp_out_st_mm),
        .dma1_h2c_byp_out_vld(cpm_0_dma1_h2c_byp_out_valid),
        .dma1_intrfc_clk(dma1_intrfc_clk_1),
        .dma1_intrfc_resetn(dma1_intrfc_resetn_1),
        .dma1_m_axis_h2c_tcrc(cpm_0_dma1_m_axis_h2c_tcrc),
        .dma1_m_axis_h2c_tdata(cpm_0_dma1_m_axis_h2c_tdata),
        .dma1_m_axis_h2c_tlast(cpm_0_dma1_m_axis_h2c_tlast),
        .dma1_m_axis_h2c_tready(cpm_0_dma1_m_axis_h2c_tready),
        .dma1_m_axis_h2c_tuser_err(cpm_0_dma1_m_axis_h2c_err),
        .dma1_m_axis_h2c_tuser_mdata(cpm_0_dma1_m_axis_h2c_mdata),
        .dma1_m_axis_h2c_tuser_mty(cpm_0_dma1_m_axis_h2c_mty),
        .dma1_m_axis_h2c_tuser_port_id(cpm_0_dma1_m_axis_h2c_port_id),
        .dma1_m_axis_h2c_tuser_qid(cpm_0_dma1_m_axis_h2c_qid),
        .dma1_m_axis_h2c_tuser_zero_byte(cpm_0_dma1_m_axis_h2c_zero_byte),
        .dma1_m_axis_h2c_tvalid(cpm_0_dma1_m_axis_h2c_tvalid),
        .dma1_mgmt_cpl_dat(dma1_mgmt_1_cpl_dat),
        .dma1_mgmt_cpl_rdy(dma1_mgmt_1_cpl_rdy),
        .dma1_mgmt_cpl_sts(dma1_mgmt_1_cpl_sts),
        .dma1_mgmt_cpl_vld(dma1_mgmt_1_cpl_vld),
        .dma1_mgmt_req_adr(dma1_mgmt_1_req_adr),
        .dma1_mgmt_req_cmd(dma1_mgmt_1_req_cmd),
        .dma1_mgmt_req_dat(dma1_mgmt_1_req_dat),
        .dma1_mgmt_req_fnc(dma1_mgmt_1_req_fnc),
        .dma1_mgmt_req_msc(dma1_mgmt_1_req_msc),
        .dma1_mgmt_req_rdy(dma1_mgmt_1_req_rdy),
        .dma1_mgmt_req_vld(dma1_mgmt_1_req_vld),
        .dma1_qsts_out_data(cpm_0_dma1_qsts_out_data),
        .dma1_qsts_out_op(cpm_0_dma1_qsts_out_op),
        .dma1_qsts_out_port_id(cpm_0_dma1_qsts_out_port_id),
        .dma1_qsts_out_qid(cpm_0_dma1_qsts_out_qid),
        .dma1_qsts_sts_out_rdy(cpm_0_dma1_qsts_out_rdy),
        .dma1_qsts_sts_out_vld(cpm_0_dma1_qsts_out_vld),
        .dma1_s_axis_c2h_cmpt_ctrl_cmpt_type(dma1_s_axis_c2h_cmpt_1_cmpt_type),
        .dma1_s_axis_c2h_cmpt_ctrl_col_idx(dma1_s_axis_c2h_cmpt_1_col_idx),
        .dma1_s_axis_c2h_cmpt_ctrl_err_idx(dma1_s_axis_c2h_cmpt_1_err_idx),
        .dma1_s_axis_c2h_cmpt_ctrl_marker(dma1_s_axis_c2h_cmpt_1_marker),
        .dma1_s_axis_c2h_cmpt_ctrl_no_wrb_marker(dma1_s_axis_c2h_cmpt_1_no_wrb_marker),
        .dma1_s_axis_c2h_cmpt_ctrl_port_id(dma1_s_axis_c2h_cmpt_1_port_id),
        .dma1_s_axis_c2h_cmpt_ctrl_qid(dma1_s_axis_c2h_cmpt_1_qid),
        .dma1_s_axis_c2h_cmpt_ctrl_user_trig(dma1_s_axis_c2h_cmpt_1_user_trig),
        .dma1_s_axis_c2h_cmpt_ctrl_wait_pld_pkt_id(dma1_s_axis_c2h_cmpt_1_wait_pld_pkt_id),
        .dma1_s_axis_c2h_cmpt_dpar(dma1_s_axis_c2h_cmpt_1_dpar),
        .dma1_s_axis_c2h_cmpt_size(dma1_s_axis_c2h_cmpt_1_size),
        .dma1_s_axis_c2h_cmpt_tdata(dma1_s_axis_c2h_cmpt_1_data),
        .dma1_s_axis_c2h_cmpt_tready(dma1_s_axis_c2h_cmpt_1_tready),
        .dma1_s_axis_c2h_cmpt_tvalid(dma1_s_axis_c2h_cmpt_1_tvalid),
        .dma1_s_axis_c2h_ctrl_ecc(dma1_s_axis_c2h_1_ecc),
        .dma1_s_axis_c2h_ctrl_has_cmpt(dma1_s_axis_c2h_1_ctrl_has_cmpt),
        .dma1_s_axis_c2h_ctrl_len(dma1_s_axis_c2h_1_ctrl_len),
        .dma1_s_axis_c2h_ctrl_marker(dma1_s_axis_c2h_1_ctrl_marker),
        .dma1_s_axis_c2h_ctrl_port_id(dma1_s_axis_c2h_1_ctrl_port_id),
        .dma1_s_axis_c2h_ctrl_qid(dma1_s_axis_c2h_1_ctrl_qid),
        .dma1_s_axis_c2h_mty(dma1_s_axis_c2h_1_mty),
        .dma1_s_axis_c2h_tcrc(dma1_s_axis_c2h_1_tcrc),
        .dma1_s_axis_c2h_tdata(dma1_s_axis_c2h_1_tdata),
        .dma1_s_axis_c2h_tlast(dma1_s_axis_c2h_1_tlast),
        .dma1_s_axis_c2h_tready(dma1_s_axis_c2h_1_tready),
        .dma1_s_axis_c2h_tvalid(dma1_s_axis_c2h_1_tvalid),
        .dma1_st_rx_msg_data(cpm_0_dma1_st_rx_msg_TDATA),
        .dma1_st_rx_msg_last(cpm_0_dma1_st_rx_msg_TLAST),
        .dma1_st_rx_msg_rdy(cpm_0_dma1_st_rx_msg_TREADY),
        .dma1_st_rx_msg_valid(cpm_0_dma1_st_rx_msg_TVALID),
        .dma1_tm_dsc_sts_avl(cpm_0_dma1_tm_dsc_sts_avl),
        .dma1_tm_dsc_sts_byp(cpm_0_dma1_tm_dsc_sts_byp),
        .dma1_tm_dsc_sts_dir(cpm_0_dma1_tm_dsc_sts_dir),
        .dma1_tm_dsc_sts_err(cpm_0_dma1_tm_dsc_sts_error),
        .dma1_tm_dsc_sts_irq_arm(cpm_0_dma1_tm_dsc_sts_irq_arm),
        .dma1_tm_dsc_sts_mm(cpm_0_dma1_tm_dsc_sts_mm),
        .dma1_tm_dsc_sts_pidx(cpm_0_dma1_tm_dsc_sts_pidx),
        .dma1_tm_dsc_sts_port_id(cpm_0_dma1_tm_dsc_sts_port_id),
        .dma1_tm_dsc_sts_qen(cpm_0_dma1_tm_dsc_sts_qen),
        .dma1_tm_dsc_sts_qid(cpm_0_dma1_tm_dsc_sts_qid),
        .dma1_tm_dsc_sts_qinv(cpm_0_dma1_tm_dsc_sts_qinv),
        .dma1_tm_dsc_sts_rdy(cpm_0_dma1_tm_dsc_sts_rdy),
        .dma1_tm_dsc_sts_vld(cpm_0_dma1_tm_dsc_sts_valid),
        .dma1_usr_flr_clr(dma1_usr_flr_1_clear),
        .dma1_usr_flr_done_fnc(dma1_usr_flr_1_done_fnc),
        .dma1_usr_flr_done_vld(dma1_usr_flr_1_done_vld),
        .dma1_usr_flr_fnc(dma1_usr_flr_1_fnc),
        .dma1_usr_flr_set(dma1_usr_flr_1_set),
        .dma1_usr_irq_ack(dma1_usr_irq_1_ack),
        .dma1_usr_irq_fail(dma1_usr_irq_1_fail),
        .dma1_usr_irq_fnc(dma1_usr_irq_1_fnc),
        .dma1_usr_irq_vec(dma1_usr_irq_1_vec),
        .dma1_usr_irq_vld(dma1_usr_irq_1_valid),
        .gt_refclk1_n(gt_refclk1_1_CLK_N),
        .gt_refclk1_p(gt_refclk1_1_CLK_P),
        .hsdp_gt_rxoutclk(pspmc_0_IF_PS_CPM_hsdp_gt_rxoutclk),
        .hsdp_gt_txusrclk(pspmc_0_IF_PS_CPM_hsdp_gt_txusrclk),
        .hsdp_xpipe0_rx_datavalid(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_datavalid),
        .hsdp_xpipe0_rx_gearboxslip(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_gearboxslip),
        .hsdp_xpipe0_rx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_header),
        .hsdp_xpipe0_rx_headervalid(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_headervalid),
        .hsdp_xpipe0_rx_pcsreset(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_pcsreset),
        .hsdp_xpipe0_rx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_resetdone),
        .hsdp_xpipe0_tx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_header),
        .hsdp_xpipe0_tx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_resetdone),
        .hsdp_xpipe0_tx_sequence(pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_sequence),
        .hsdp_xpipe1_rx_datavalid(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_datavalid),
        .hsdp_xpipe1_rx_gearboxslip(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_gearboxslip),
        .hsdp_xpipe1_rx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_header),
        .hsdp_xpipe1_rx_headervalid(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_headervalid),
        .hsdp_xpipe1_rx_pcsreset(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_pcsreset),
        .hsdp_xpipe1_rx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_resetdone),
        .hsdp_xpipe1_tx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_header),
        .hsdp_xpipe1_tx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_resetdone),
        .hsdp_xpipe1_tx_sequence(pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_sequence),
        .hsdp_xpipe2_rx_datavalid(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_datavalid),
        .hsdp_xpipe2_rx_gearboxslip(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_gearboxslip),
        .hsdp_xpipe2_rx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_header),
        .hsdp_xpipe2_rx_headervalid(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_headervalid),
        .hsdp_xpipe2_rx_pcsreset(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_pcsreset),
        .hsdp_xpipe2_rx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_resetdone),
        .hsdp_xpipe2_tx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_header),
        .hsdp_xpipe2_tx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_resetdone),
        .hsdp_xpipe2_tx_sequence(pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_sequence),
        .link0_xpipe_bufgtce(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtce),
        .link0_xpipe_bufgtcemask(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtcemask),
        .link0_xpipe_bufgtdiv(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtdiv),
        .link0_xpipe_bufgtrst(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtrst),
        .link0_xpipe_bufgtrstmask(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtrstmask),
        .link0_xpipe_gtoutclk(pspmc_0_IF_PS_CPM_link0_xpipe_gtoutclk),
        .link0_xpipe_gtpipeclk(pspmc_0_IF_PS_CPM_link0_xpipe_gtpipeclk),
        .link0_xpipe_pcielinkreachtarget(pspmc_0_IF_PS_CPM_link0_xpipe_pcielinkreachtarget),
        .link0_xpipe_pcieltssmstate(pspmc_0_IF_PS_CPM_link0_xpipe_pcieltssmstate),
        .link0_xpipe_pcieperstn(pspmc_0_IF_PS_CPM_link0_xpipe_pcieperstn),
        .link0_xpipe_phyesmadaptationsave(pspmc_0_IF_PS_CPM_link0_xpipe_phyesmadaptationsave),
        .link0_xpipe_phyready(pspmc_0_IF_PS_CPM_link0_xpipe_phyready),
        .link0_xpipe_piperate(pspmc_0_IF_PS_CPM_link0_xpipe_piperate),
        .link1_xpipe_bufgtce(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtce),
        .link1_xpipe_bufgtcemask(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtcemask),
        .link1_xpipe_bufgtdiv(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtdiv),
        .link1_xpipe_bufgtrst(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtrst),
        .link1_xpipe_bufgtrstmask(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtrstmask),
        .link1_xpipe_gtoutclk(pspmc_0_IF_PS_CPM_link1_xpipe_gtoutclk),
        .link1_xpipe_gtpipeclk(pspmc_0_IF_PS_CPM_link1_xpipe_gtpipeclk),
        .link1_xpipe_pcielinkreachtarget(pspmc_0_IF_PS_CPM_link1_xpipe_pcielinkreachtarget),
        .link1_xpipe_pcieltssmstate(pspmc_0_IF_PS_CPM_link1_xpipe_pcieltssmstate),
        .link1_xpipe_pcieperstn(pspmc_0_IF_PS_CPM_link1_xpipe_pcieperstn),
        .link1_xpipe_phyesmadaptationsave(pspmc_0_IF_PS_CPM_link1_xpipe_phyesmadaptationsave),
        .link1_xpipe_phyready(pspmc_0_IF_PS_CPM_link1_xpipe_phyready),
        .link1_xpipe_piperate(pspmc_0_IF_PS_CPM_link1_xpipe_piperate),
        .lpd_refclk_in(pspmc_0_IF_PS_CPM_lpd_refclk_in),
        .lpd_swclk(pspmc_0_IF_PS_CPM_lpd_swclk),
        .lpd_switch_timeout_cnt(pspmc_0_IF_PS_CPM_lpd_switch_timeout_cnt),
        .m_axi0_ps_araddr(pspmc_0_IF_PS_CPM_m_axi0_ps_araddr),
        .m_axi0_ps_arburst(pspmc_0_IF_PS_CPM_m_axi0_ps_arburst),
        .m_axi0_ps_arcache(pspmc_0_IF_PS_CPM_m_axi0_ps_arcache),
        .m_axi0_ps_arid(pspmc_0_IF_PS_CPM_m_axi0_ps_arid),
        .m_axi0_ps_arlen(pspmc_0_IF_PS_CPM_m_axi0_ps_arlen),
        .m_axi0_ps_arlock(pspmc_0_IF_PS_CPM_m_axi0_ps_arlock),
        .m_axi0_ps_arprot(pspmc_0_IF_PS_CPM_m_axi0_ps_arprot),
        .m_axi0_ps_arqos(pspmc_0_IF_PS_CPM_m_axi0_ps_arqos),
        .m_axi0_ps_arready(pspmc_0_IF_PS_CPM_m_axi0_ps_arready),
        .m_axi0_ps_arregion(pspmc_0_IF_PS_CPM_m_axi0_ps_arregion),
        .m_axi0_ps_arsize(pspmc_0_IF_PS_CPM_m_axi0_ps_arsize),
        .m_axi0_ps_aruser(pspmc_0_IF_PS_CPM_m_axi0_ps_aruser),
        .m_axi0_ps_arvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_arvalid),
        .m_axi0_ps_awaddr(pspmc_0_IF_PS_CPM_m_axi0_ps_awaddr),
        .m_axi0_ps_awburst(pspmc_0_IF_PS_CPM_m_axi0_ps_awburst),
        .m_axi0_ps_awcache(pspmc_0_IF_PS_CPM_m_axi0_ps_awcache),
        .m_axi0_ps_awid(pspmc_0_IF_PS_CPM_m_axi0_ps_awid),
        .m_axi0_ps_awlen(pspmc_0_IF_PS_CPM_m_axi0_ps_awlen),
        .m_axi0_ps_awlock(pspmc_0_IF_PS_CPM_m_axi0_ps_awlock),
        .m_axi0_ps_awprot(pspmc_0_IF_PS_CPM_m_axi0_ps_awprot),
        .m_axi0_ps_awqos(pspmc_0_IF_PS_CPM_m_axi0_ps_awqos),
        .m_axi0_ps_awready(pspmc_0_IF_PS_CPM_m_axi0_ps_awready),
        .m_axi0_ps_awregion(pspmc_0_IF_PS_CPM_m_axi0_ps_awregion),
        .m_axi0_ps_awsize(pspmc_0_IF_PS_CPM_m_axi0_ps_awsize),
        .m_axi0_ps_awuser(pspmc_0_IF_PS_CPM_m_axi0_ps_awuser),
        .m_axi0_ps_awvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_awvalid),
        .m_axi0_ps_bid(pspmc_0_IF_PS_CPM_m_axi0_ps_bid),
        .m_axi0_ps_bready(pspmc_0_IF_PS_CPM_m_axi0_ps_bready),
        .m_axi0_ps_bresp(pspmc_0_IF_PS_CPM_m_axi0_ps_bresp),
        .m_axi0_ps_buser(pspmc_0_IF_PS_CPM_m_axi0_ps_buser),
        .m_axi0_ps_bvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_bvalid),
        .m_axi0_ps_rdata(pspmc_0_IF_PS_CPM_m_axi0_ps_rdata),
        .m_axi0_ps_rid(pspmc_0_IF_PS_CPM_m_axi0_ps_rid),
        .m_axi0_ps_rlast(pspmc_0_IF_PS_CPM_m_axi0_ps_rlast),
        .m_axi0_ps_rready(pspmc_0_IF_PS_CPM_m_axi0_ps_rready),
        .m_axi0_ps_rresp(pspmc_0_IF_PS_CPM_m_axi0_ps_rresp),
        .m_axi0_ps_ruser(pspmc_0_IF_PS_CPM_m_axi0_ps_ruser),
        .m_axi0_ps_rvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_rvalid),
        .m_axi0_ps_wdata(pspmc_0_IF_PS_CPM_m_axi0_ps_wdata),
        .m_axi0_ps_wid(pspmc_0_IF_PS_CPM_m_axi0_ps_wid),
        .m_axi0_ps_wlast(pspmc_0_IF_PS_CPM_m_axi0_ps_wlast),
        .m_axi0_ps_wready(pspmc_0_IF_PS_CPM_m_axi0_ps_wready),
        .m_axi0_ps_wstrb(pspmc_0_IF_PS_CPM_m_axi0_ps_wstrb),
        .m_axi0_ps_wuser(pspmc_0_IF_PS_CPM_m_axi0_ps_wuser),
        .m_axi0_ps_wvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_wvalid),
        .m_axi1_ps_araddr(pspmc_0_IF_PS_CPM_m_axi1_ps_araddr),
        .m_axi1_ps_arburst(pspmc_0_IF_PS_CPM_m_axi1_ps_arburst),
        .m_axi1_ps_arcache(pspmc_0_IF_PS_CPM_m_axi1_ps_arcache),
        .m_axi1_ps_arid(pspmc_0_IF_PS_CPM_m_axi1_ps_arid),
        .m_axi1_ps_arlen(pspmc_0_IF_PS_CPM_m_axi1_ps_arlen),
        .m_axi1_ps_arlock(pspmc_0_IF_PS_CPM_m_axi1_ps_arlock),
        .m_axi1_ps_arprot(pspmc_0_IF_PS_CPM_m_axi1_ps_arprot),
        .m_axi1_ps_arqos(pspmc_0_IF_PS_CPM_m_axi1_ps_arqos),
        .m_axi1_ps_arready(pspmc_0_IF_PS_CPM_m_axi1_ps_arready),
        .m_axi1_ps_arregion(pspmc_0_IF_PS_CPM_m_axi1_ps_arregion),
        .m_axi1_ps_arsize(pspmc_0_IF_PS_CPM_m_axi1_ps_arsize),
        .m_axi1_ps_aruser(pspmc_0_IF_PS_CPM_m_axi1_ps_aruser),
        .m_axi1_ps_arvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_arvalid),
        .m_axi1_ps_awaddr(pspmc_0_IF_PS_CPM_m_axi1_ps_awaddr),
        .m_axi1_ps_awburst(pspmc_0_IF_PS_CPM_m_axi1_ps_awburst),
        .m_axi1_ps_awcache(pspmc_0_IF_PS_CPM_m_axi1_ps_awcache),
        .m_axi1_ps_awid(pspmc_0_IF_PS_CPM_m_axi1_ps_awid),
        .m_axi1_ps_awlen(pspmc_0_IF_PS_CPM_m_axi1_ps_awlen),
        .m_axi1_ps_awlock(pspmc_0_IF_PS_CPM_m_axi1_ps_awlock),
        .m_axi1_ps_awprot(pspmc_0_IF_PS_CPM_m_axi1_ps_awprot),
        .m_axi1_ps_awqos(pspmc_0_IF_PS_CPM_m_axi1_ps_awqos),
        .m_axi1_ps_awready(pspmc_0_IF_PS_CPM_m_axi1_ps_awready),
        .m_axi1_ps_awregion(pspmc_0_IF_PS_CPM_m_axi1_ps_awregion),
        .m_axi1_ps_awsize(pspmc_0_IF_PS_CPM_m_axi1_ps_awsize),
        .m_axi1_ps_awuser(pspmc_0_IF_PS_CPM_m_axi1_ps_awuser),
        .m_axi1_ps_awvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_awvalid),
        .m_axi1_ps_bid(pspmc_0_IF_PS_CPM_m_axi1_ps_bid),
        .m_axi1_ps_bready(pspmc_0_IF_PS_CPM_m_axi1_ps_bready),
        .m_axi1_ps_bresp(pspmc_0_IF_PS_CPM_m_axi1_ps_bresp),
        .m_axi1_ps_buser(pspmc_0_IF_PS_CPM_m_axi1_ps_buser),
        .m_axi1_ps_bvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_bvalid),
        .m_axi1_ps_rdata(pspmc_0_IF_PS_CPM_m_axi1_ps_rdata),
        .m_axi1_ps_rid(pspmc_0_IF_PS_CPM_m_axi1_ps_rid),
        .m_axi1_ps_rlast(pspmc_0_IF_PS_CPM_m_axi1_ps_rlast),
        .m_axi1_ps_rready(pspmc_0_IF_PS_CPM_m_axi1_ps_rready),
        .m_axi1_ps_rresp(pspmc_0_IF_PS_CPM_m_axi1_ps_rresp),
        .m_axi1_ps_ruser(pspmc_0_IF_PS_CPM_m_axi1_ps_ruser),
        .m_axi1_ps_rvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_rvalid),
        .m_axi1_ps_wdata(pspmc_0_IF_PS_CPM_m_axi1_ps_wdata),
        .m_axi1_ps_wid(pspmc_0_IF_PS_CPM_m_axi1_ps_wid),
        .m_axi1_ps_wlast(pspmc_0_IF_PS_CPM_m_axi1_ps_wlast),
        .m_axi1_ps_wready(pspmc_0_IF_PS_CPM_m_axi1_ps_wready),
        .m_axi1_ps_wstrb(pspmc_0_IF_PS_CPM_m_axi1_ps_wstrb),
        .m_axi1_ps_wuser(pspmc_0_IF_PS_CPM_m_axi1_ps_wuser),
        .m_axi1_ps_wvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_wvalid),
        .pcie1_gt_rxn(cpm_0_PCIE1_GT_GRX_N),
        .pcie1_gt_rxp(cpm_0_PCIE1_GT_GRX_P),
        .pcie1_gt_txn(cpm_0_PCIE1_GT_GTX_N),
        .pcie1_gt_txp(cpm_0_PCIE1_GT_GTX_P),
        .pcie1_pipe_commands_in(pcie1_pipe_ep_1_COMMANDS_IN),
        .pcie1_pipe_commands_out(pcie1_pipe_ep_1_COMMANDS_OUT),
        .pcie1_pipe_rx_0(pcie1_pipe_ep_1_RX_0),
        .pcie1_pipe_rx_1(pcie1_pipe_ep_1_RX_1),
        .pcie1_pipe_rx_10(pcie1_pipe_ep_1_RX_10),
        .pcie1_pipe_rx_11(pcie1_pipe_ep_1_RX_11),
        .pcie1_pipe_rx_12(pcie1_pipe_ep_1_RX_12),
        .pcie1_pipe_rx_13(pcie1_pipe_ep_1_RX_13),
        .pcie1_pipe_rx_14(pcie1_pipe_ep_1_RX_14),
        .pcie1_pipe_rx_15(pcie1_pipe_ep_1_RX_15),
        .pcie1_pipe_rx_2(pcie1_pipe_ep_1_RX_2),
        .pcie1_pipe_rx_3(pcie1_pipe_ep_1_RX_3),
        .pcie1_pipe_rx_4(pcie1_pipe_ep_1_RX_4),
        .pcie1_pipe_rx_5(pcie1_pipe_ep_1_RX_5),
        .pcie1_pipe_rx_6(pcie1_pipe_ep_1_RX_6),
        .pcie1_pipe_rx_7(pcie1_pipe_ep_1_RX_7),
        .pcie1_pipe_rx_8(pcie1_pipe_ep_1_RX_8),
        .pcie1_pipe_rx_9(pcie1_pipe_ep_1_RX_9),
        .pcie1_pipe_tx_0(pcie1_pipe_ep_1_TX_0),
        .pcie1_pipe_tx_1(pcie1_pipe_ep_1_TX_1),
        .pcie1_pipe_tx_10(pcie1_pipe_ep_1_TX_10),
        .pcie1_pipe_tx_11(pcie1_pipe_ep_1_TX_11),
        .pcie1_pipe_tx_12(pcie1_pipe_ep_1_TX_12),
        .pcie1_pipe_tx_13(pcie1_pipe_ep_1_TX_13),
        .pcie1_pipe_tx_14(pcie1_pipe_ep_1_TX_14),
        .pcie1_pipe_tx_15(pcie1_pipe_ep_1_TX_15),
        .pcie1_pipe_tx_2(pcie1_pipe_ep_1_TX_2),
        .pcie1_pipe_tx_3(pcie1_pipe_ep_1_TX_3),
        .pcie1_pipe_tx_4(pcie1_pipe_ep_1_TX_4),
        .pcie1_pipe_tx_5(pcie1_pipe_ep_1_TX_5),
        .pcie1_pipe_tx_6(pcie1_pipe_ep_1_TX_6),
        .pcie1_pipe_tx_7(pcie1_pipe_ep_1_TX_7),
        .pcie1_pipe_tx_8(pcie1_pipe_ep_1_TX_8),
        .pcie1_pipe_tx_9(pcie1_pipe_ep_1_TX_9),
        .perst0n(pspmc_0_IF_PS_CPM_perst0n),
        .perst1n(pspmc_0_IF_PS_CPM_perst1n),
        .phy_ready_frbot(pspmc_0_IF_PS_CPM_phy_ready_frbot),
        .phy_ready_tobot(pspmc_0_IF_PS_CPM_phy_ready_tobot),
        .s_axi_cfg_araddr(pspmc_0_IF_PS_CPM_s_axi_cfg_araddr),
        .s_axi_cfg_arburst(pspmc_0_IF_PS_CPM_s_axi_cfg_arburst),
        .s_axi_cfg_arcache(pspmc_0_IF_PS_CPM_s_axi_cfg_arcache),
        .s_axi_cfg_arid(pspmc_0_IF_PS_CPM_s_axi_cfg_arid),
        .s_axi_cfg_arlen(pspmc_0_IF_PS_CPM_s_axi_cfg_arlen),
        .s_axi_cfg_arlock(pspmc_0_IF_PS_CPM_s_axi_cfg_arlock),
        .s_axi_cfg_arprot(pspmc_0_IF_PS_CPM_s_axi_cfg_arprot),
        .s_axi_cfg_arqos(pspmc_0_IF_PS_CPM_s_axi_cfg_arqos),
        .s_axi_cfg_arready(pspmc_0_IF_PS_CPM_s_axi_cfg_arready),
        .s_axi_cfg_arregion(pspmc_0_IF_PS_CPM_s_axi_cfg_arregion),
        .s_axi_cfg_arsize(pspmc_0_IF_PS_CPM_s_axi_cfg_arsize),
        .s_axi_cfg_aruser(pspmc_0_IF_PS_CPM_s_axi_cfg_aruser),
        .s_axi_cfg_arvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_arvalid),
        .s_axi_cfg_awaddr(pspmc_0_IF_PS_CPM_s_axi_cfg_awaddr),
        .s_axi_cfg_awburst(pspmc_0_IF_PS_CPM_s_axi_cfg_awburst),
        .s_axi_cfg_awcache(pspmc_0_IF_PS_CPM_s_axi_cfg_awcache),
        .s_axi_cfg_awid(pspmc_0_IF_PS_CPM_s_axi_cfg_awid),
        .s_axi_cfg_awlen(pspmc_0_IF_PS_CPM_s_axi_cfg_awlen),
        .s_axi_cfg_awlock(pspmc_0_IF_PS_CPM_s_axi_cfg_awlock),
        .s_axi_cfg_awprot(pspmc_0_IF_PS_CPM_s_axi_cfg_awprot),
        .s_axi_cfg_awqos(pspmc_0_IF_PS_CPM_s_axi_cfg_awqos),
        .s_axi_cfg_awready(pspmc_0_IF_PS_CPM_s_axi_cfg_awready),
        .s_axi_cfg_awregion(pspmc_0_IF_PS_CPM_s_axi_cfg_awregion),
        .s_axi_cfg_awsize(pspmc_0_IF_PS_CPM_s_axi_cfg_awsize),
        .s_axi_cfg_awuser(pspmc_0_IF_PS_CPM_s_axi_cfg_awuser),
        .s_axi_cfg_awvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_awvalid),
        .s_axi_cfg_bid(pspmc_0_IF_PS_CPM_s_axi_cfg_bid),
        .s_axi_cfg_bready(pspmc_0_IF_PS_CPM_s_axi_cfg_bready),
        .s_axi_cfg_bresp(pspmc_0_IF_PS_CPM_s_axi_cfg_bresp),
        .s_axi_cfg_buser(pspmc_0_IF_PS_CPM_s_axi_cfg_buser),
        .s_axi_cfg_bvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_bvalid),
        .s_axi_cfg_rdata(pspmc_0_IF_PS_CPM_s_axi_cfg_rdata),
        .s_axi_cfg_rid(pspmc_0_IF_PS_CPM_s_axi_cfg_rid),
        .s_axi_cfg_rlast(pspmc_0_IF_PS_CPM_s_axi_cfg_rlast),
        .s_axi_cfg_rready(pspmc_0_IF_PS_CPM_s_axi_cfg_rready),
        .s_axi_cfg_rresp(pspmc_0_IF_PS_CPM_s_axi_cfg_rresp),
        .s_axi_cfg_ruser(pspmc_0_IF_PS_CPM_s_axi_cfg_ruser),
        .s_axi_cfg_rvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_rvalid),
        .s_axi_cfg_wdata(pspmc_0_IF_PS_CPM_s_axi_cfg_wdata),
        .s_axi_cfg_wid(pspmc_0_IF_PS_CPM_s_axi_cfg_wid),
        .s_axi_cfg_wlast(pspmc_0_IF_PS_CPM_s_axi_cfg_wlast),
        .s_axi_cfg_wready(pspmc_0_IF_PS_CPM_s_axi_cfg_wready),
        .s_axi_cfg_wstrb(pspmc_0_IF_PS_CPM_s_axi_cfg_wstrb),
        .s_axi_cfg_wuser(pspmc_0_IF_PS_CPM_s_axi_cfg_wuser),
        .s_axi_cfg_wvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_wvalid),
        .s_axi_pcie_araddr(pspmc_0_IF_PS_CPM_s_axi_pcie_araddr),
        .s_axi_pcie_arburst(pspmc_0_IF_PS_CPM_s_axi_pcie_arburst),
        .s_axi_pcie_arcache(pspmc_0_IF_PS_CPM_s_axi_pcie_arcache),
        .s_axi_pcie_arid(pspmc_0_IF_PS_CPM_s_axi_pcie_arid),
        .s_axi_pcie_arlen(pspmc_0_IF_PS_CPM_s_axi_pcie_arlen),
        .s_axi_pcie_arlock(pspmc_0_IF_PS_CPM_s_axi_pcie_arlock),
        .s_axi_pcie_arprot(pspmc_0_IF_PS_CPM_s_axi_pcie_arprot),
        .s_axi_pcie_arqos(pspmc_0_IF_PS_CPM_s_axi_pcie_arqos),
        .s_axi_pcie_arready(pspmc_0_IF_PS_CPM_s_axi_pcie_arready),
        .s_axi_pcie_arregion(pspmc_0_IF_PS_CPM_s_axi_pcie_arregion),
        .s_axi_pcie_arsize(pspmc_0_IF_PS_CPM_s_axi_pcie_arsize),
        .s_axi_pcie_aruser(pspmc_0_IF_PS_CPM_s_axi_pcie_aruser),
        .s_axi_pcie_arvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_arvalid),
        .s_axi_pcie_awaddr(pspmc_0_IF_PS_CPM_s_axi_pcie_awaddr),
        .s_axi_pcie_awburst(pspmc_0_IF_PS_CPM_s_axi_pcie_awburst),
        .s_axi_pcie_awcache(pspmc_0_IF_PS_CPM_s_axi_pcie_awcache),
        .s_axi_pcie_awid(pspmc_0_IF_PS_CPM_s_axi_pcie_awid),
        .s_axi_pcie_awlen(pspmc_0_IF_PS_CPM_s_axi_pcie_awlen),
        .s_axi_pcie_awlock(pspmc_0_IF_PS_CPM_s_axi_pcie_awlock),
        .s_axi_pcie_awprot(pspmc_0_IF_PS_CPM_s_axi_pcie_awprot),
        .s_axi_pcie_awqos(pspmc_0_IF_PS_CPM_s_axi_pcie_awqos),
        .s_axi_pcie_awready(pspmc_0_IF_PS_CPM_s_axi_pcie_awready),
        .s_axi_pcie_awregion(pspmc_0_IF_PS_CPM_s_axi_pcie_awregion),
        .s_axi_pcie_awsize(pspmc_0_IF_PS_CPM_s_axi_pcie_awsize),
        .s_axi_pcie_awuser(pspmc_0_IF_PS_CPM_s_axi_pcie_awuser),
        .s_axi_pcie_awvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_awvalid),
        .s_axi_pcie_bid(pspmc_0_IF_PS_CPM_s_axi_pcie_bid),
        .s_axi_pcie_bready(pspmc_0_IF_PS_CPM_s_axi_pcie_bready),
        .s_axi_pcie_bresp(pspmc_0_IF_PS_CPM_s_axi_pcie_bresp),
        .s_axi_pcie_buser(pspmc_0_IF_PS_CPM_s_axi_pcie_buser),
        .s_axi_pcie_bvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_bvalid),
        .s_axi_pcie_rdata(pspmc_0_IF_PS_CPM_s_axi_pcie_rdata),
        .s_axi_pcie_rid(pspmc_0_IF_PS_CPM_s_axi_pcie_rid),
        .s_axi_pcie_rlast(pspmc_0_IF_PS_CPM_s_axi_pcie_rlast),
        .s_axi_pcie_rready(pspmc_0_IF_PS_CPM_s_axi_pcie_rready),
        .s_axi_pcie_rresp(pspmc_0_IF_PS_CPM_s_axi_pcie_rresp),
        .s_axi_pcie_ruser(pspmc_0_IF_PS_CPM_s_axi_pcie_ruser),
        .s_axi_pcie_rvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_rvalid),
        .s_axi_pcie_wdata(pspmc_0_IF_PS_CPM_s_axi_pcie_wdata),
        .s_axi_pcie_wid(pspmc_0_IF_PS_CPM_s_axi_pcie_wid),
        .s_axi_pcie_wlast(pspmc_0_IF_PS_CPM_s_axi_pcie_wlast),
        .s_axi_pcie_wready(pspmc_0_IF_PS_CPM_s_axi_pcie_wready),
        .s_axi_pcie_wstrb(pspmc_0_IF_PS_CPM_s_axi_pcie_wstrb),
        .s_axi_pcie_wuser(pspmc_0_IF_PS_CPM_s_axi_pcie_wuser),
        .s_axi_pcie_wvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_wvalid),
        .xpipe0_powerdown(pspmc_0_IF_PS_CPM_xpipe0_powerdown),
        .xpipe0_rx_charisk(pspmc_0_IF_PS_CPM_xpipe0_rx_charisk),
        .xpipe0_rx_data(pspmc_0_IF_PS_CPM_xpipe0_rx_data),
        .xpipe0_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe0_rx_datavalid),
        .xpipe0_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe0_rx_elecidle),
        .xpipe0_rx_polarity(pspmc_0_IF_PS_CPM_xpipe0_rx_polarity),
        .xpipe0_rx_startblock(pspmc_0_IF_PS_CPM_xpipe0_rx_startblock),
        .xpipe0_rx_status(pspmc_0_IF_PS_CPM_xpipe0_rx_status),
        .xpipe0_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe0_rx_syncheader),
        .xpipe0_rx_termination(pspmc_0_IF_PS_CPM_xpipe0_rx_termination),
        .xpipe0_rx_valid(pspmc_0_IF_PS_CPM_xpipe0_rx_valid),
        .xpipe0_tx_charisk(pspmc_0_IF_PS_CPM_xpipe0_tx_charisk),
        .xpipe0_tx_compliance(pspmc_0_IF_PS_CPM_xpipe0_tx_compliance),
        .xpipe0_tx_data(pspmc_0_IF_PS_CPM_xpipe0_tx_data),
        .xpipe0_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe0_tx_datavalid),
        .xpipe0_tx_deemph(pspmc_0_IF_PS_CPM_xpipe0_tx_deemph),
        .xpipe0_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe0_tx_detectrxloopback),
        .xpipe0_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe0_tx_elecidle),
        .xpipe0_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe0_tx_maincursor),
        .xpipe0_tx_margin(pspmc_0_IF_PS_CPM_xpipe0_tx_margin),
        .xpipe0_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe0_tx_postcursor),
        .xpipe0_tx_precursor(pspmc_0_IF_PS_CPM_xpipe0_tx_precursor),
        .xpipe0_tx_startblock(pspmc_0_IF_PS_CPM_xpipe0_tx_startblock),
        .xpipe0_tx_swing(pspmc_0_IF_PS_CPM_xpipe0_tx_swing),
        .xpipe0_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe0_tx_syncheader),
        .xpipe10_phystatus(pspmc_0_IF_PS_CPM_xpipe10_phystatus),
        .xpipe10_powerdown(pspmc_0_IF_PS_CPM_xpipe10_powerdown),
        .xpipe10_rx_charisk(pspmc_0_IF_PS_CPM_xpipe10_rx_charisk),
        .xpipe10_rx_data(pspmc_0_IF_PS_CPM_xpipe10_rx_data),
        .xpipe10_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe10_rx_datavalid),
        .xpipe10_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe10_rx_elecidle),
        .xpipe10_rx_polarity(pspmc_0_IF_PS_CPM_xpipe10_rx_polarity),
        .xpipe10_rx_startblock(pspmc_0_IF_PS_CPM_xpipe10_rx_startblock),
        .xpipe10_rx_status(pspmc_0_IF_PS_CPM_xpipe10_rx_status),
        .xpipe10_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe10_rx_syncheader),
        .xpipe10_rx_termination(pspmc_0_IF_PS_CPM_xpipe10_rx_termination),
        .xpipe10_rx_valid(pspmc_0_IF_PS_CPM_xpipe10_rx_valid),
        .xpipe10_tx_charisk(pspmc_0_IF_PS_CPM_xpipe10_tx_charisk),
        .xpipe10_tx_compliance(pspmc_0_IF_PS_CPM_xpipe10_tx_compliance),
        .xpipe10_tx_data(pspmc_0_IF_PS_CPM_xpipe10_tx_data),
        .xpipe10_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe10_tx_datavalid),
        .xpipe10_tx_deemph(pspmc_0_IF_PS_CPM_xpipe10_tx_deemph),
        .xpipe10_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe10_tx_detectrxloopback),
        .xpipe10_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe10_tx_elecidle),
        .xpipe10_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe10_tx_maincursor),
        .xpipe10_tx_margin(pspmc_0_IF_PS_CPM_xpipe10_tx_margin),
        .xpipe10_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe10_tx_postcursor),
        .xpipe10_tx_precursor(pspmc_0_IF_PS_CPM_xpipe10_tx_precursor),
        .xpipe10_tx_startblock(pspmc_0_IF_PS_CPM_xpipe10_tx_startblock),
        .xpipe10_tx_swing(pspmc_0_IF_PS_CPM_xpipe10_tx_swing),
        .xpipe10_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe10_tx_syncheader),
        .xpipe11_phystatus(pspmc_0_IF_PS_CPM_xpipe11_phystatus),
        .xpipe11_powerdown(pspmc_0_IF_PS_CPM_xpipe11_powerdown),
        .xpipe11_rx_charisk(pspmc_0_IF_PS_CPM_xpipe11_rx_charisk),
        .xpipe11_rx_data(pspmc_0_IF_PS_CPM_xpipe11_rx_data),
        .xpipe11_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe11_rx_datavalid),
        .xpipe11_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe11_rx_elecidle),
        .xpipe11_rx_polarity(pspmc_0_IF_PS_CPM_xpipe11_rx_polarity),
        .xpipe11_rx_startblock(pspmc_0_IF_PS_CPM_xpipe11_rx_startblock),
        .xpipe11_rx_status(pspmc_0_IF_PS_CPM_xpipe11_rx_status),
        .xpipe11_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe11_rx_syncheader),
        .xpipe11_rx_termination(pspmc_0_IF_PS_CPM_xpipe11_rx_termination),
        .xpipe11_rx_valid(pspmc_0_IF_PS_CPM_xpipe11_rx_valid),
        .xpipe11_tx_charisk(pspmc_0_IF_PS_CPM_xpipe11_tx_charisk),
        .xpipe11_tx_compliance(pspmc_0_IF_PS_CPM_xpipe11_tx_compliance),
        .xpipe11_tx_data(pspmc_0_IF_PS_CPM_xpipe11_tx_data),
        .xpipe11_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe11_tx_datavalid),
        .xpipe11_tx_deemph(pspmc_0_IF_PS_CPM_xpipe11_tx_deemph),
        .xpipe11_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe11_tx_detectrxloopback),
        .xpipe11_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe11_tx_elecidle),
        .xpipe11_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe11_tx_maincursor),
        .xpipe11_tx_margin(pspmc_0_IF_PS_CPM_xpipe11_tx_margin),
        .xpipe11_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe11_tx_postcursor),
        .xpipe11_tx_precursor(pspmc_0_IF_PS_CPM_xpipe11_tx_precursor),
        .xpipe11_tx_startblock(pspmc_0_IF_PS_CPM_xpipe11_tx_startblock),
        .xpipe11_tx_swing(pspmc_0_IF_PS_CPM_xpipe11_tx_swing),
        .xpipe11_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe11_tx_syncheader),
        .xpipe12_phystatus(pspmc_0_IF_PS_CPM_xpipe12_phystatus),
        .xpipe12_powerdown(pspmc_0_IF_PS_CPM_xpipe12_powerdown),
        .xpipe12_rx_charisk(pspmc_0_IF_PS_CPM_xpipe12_rx_charisk),
        .xpipe12_rx_data(pspmc_0_IF_PS_CPM_xpipe12_rx_data),
        .xpipe12_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe12_rx_datavalid),
        .xpipe12_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe12_rx_elecidle),
        .xpipe12_rx_polarity(pspmc_0_IF_PS_CPM_xpipe12_rx_polarity),
        .xpipe12_rx_startblock(pspmc_0_IF_PS_CPM_xpipe12_rx_startblock),
        .xpipe12_rx_status(pspmc_0_IF_PS_CPM_xpipe12_rx_status),
        .xpipe12_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe12_rx_syncheader),
        .xpipe12_rx_termination(pspmc_0_IF_PS_CPM_xpipe12_rx_termination),
        .xpipe12_rx_valid(pspmc_0_IF_PS_CPM_xpipe12_rx_valid),
        .xpipe12_tx_charisk(pspmc_0_IF_PS_CPM_xpipe12_tx_charisk),
        .xpipe12_tx_compliance(pspmc_0_IF_PS_CPM_xpipe12_tx_compliance),
        .xpipe12_tx_data(pspmc_0_IF_PS_CPM_xpipe12_tx_data),
        .xpipe12_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe12_tx_datavalid),
        .xpipe12_tx_deemph(pspmc_0_IF_PS_CPM_xpipe12_tx_deemph),
        .xpipe12_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe12_tx_detectrxloopback),
        .xpipe12_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe12_tx_elecidle),
        .xpipe12_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe12_tx_maincursor),
        .xpipe12_tx_margin(pspmc_0_IF_PS_CPM_xpipe12_tx_margin),
        .xpipe12_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe12_tx_postcursor),
        .xpipe12_tx_precursor(pspmc_0_IF_PS_CPM_xpipe12_tx_precursor),
        .xpipe12_tx_startblock(pspmc_0_IF_PS_CPM_xpipe12_tx_startblock),
        .xpipe12_tx_swing(pspmc_0_IF_PS_CPM_xpipe12_tx_swing),
        .xpipe12_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe12_tx_syncheader),
        .xpipe13_phystatus(pspmc_0_IF_PS_CPM_xpipe13_phystatus),
        .xpipe13_powerdown(pspmc_0_IF_PS_CPM_xpipe13_powerdown),
        .xpipe13_rx_charisk(pspmc_0_IF_PS_CPM_xpipe13_rx_charisk),
        .xpipe13_rx_data(pspmc_0_IF_PS_CPM_xpipe13_rx_data),
        .xpipe13_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe13_rx_datavalid),
        .xpipe13_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe13_rx_elecidle),
        .xpipe13_rx_polarity(pspmc_0_IF_PS_CPM_xpipe13_rx_polarity),
        .xpipe13_rx_startblock(pspmc_0_IF_PS_CPM_xpipe13_rx_startblock),
        .xpipe13_rx_status(pspmc_0_IF_PS_CPM_xpipe13_rx_status),
        .xpipe13_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe13_rx_syncheader),
        .xpipe13_rx_termination(pspmc_0_IF_PS_CPM_xpipe13_rx_termination),
        .xpipe13_rx_valid(pspmc_0_IF_PS_CPM_xpipe13_rx_valid),
        .xpipe13_tx_charisk(pspmc_0_IF_PS_CPM_xpipe13_tx_charisk),
        .xpipe13_tx_compliance(pspmc_0_IF_PS_CPM_xpipe13_tx_compliance),
        .xpipe13_tx_data(pspmc_0_IF_PS_CPM_xpipe13_tx_data),
        .xpipe13_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe13_tx_datavalid),
        .xpipe13_tx_deemph(pspmc_0_IF_PS_CPM_xpipe13_tx_deemph),
        .xpipe13_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe13_tx_detectrxloopback),
        .xpipe13_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe13_tx_elecidle),
        .xpipe13_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe13_tx_maincursor),
        .xpipe13_tx_margin(pspmc_0_IF_PS_CPM_xpipe13_tx_margin),
        .xpipe13_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe13_tx_postcursor),
        .xpipe13_tx_precursor(pspmc_0_IF_PS_CPM_xpipe13_tx_precursor),
        .xpipe13_tx_startblock(pspmc_0_IF_PS_CPM_xpipe13_tx_startblock),
        .xpipe13_tx_swing(pspmc_0_IF_PS_CPM_xpipe13_tx_swing),
        .xpipe13_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe13_tx_syncheader),
        .xpipe14_phystatus(pspmc_0_IF_PS_CPM_xpipe14_phystatus),
        .xpipe14_powerdown(pspmc_0_IF_PS_CPM_xpipe14_powerdown),
        .xpipe14_rx_charisk(pspmc_0_IF_PS_CPM_xpipe14_rx_charisk),
        .xpipe14_rx_data(pspmc_0_IF_PS_CPM_xpipe14_rx_data),
        .xpipe14_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe14_rx_datavalid),
        .xpipe14_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe14_rx_elecidle),
        .xpipe14_rx_polarity(pspmc_0_IF_PS_CPM_xpipe14_rx_polarity),
        .xpipe14_rx_startblock(pspmc_0_IF_PS_CPM_xpipe14_rx_startblock),
        .xpipe14_rx_status(pspmc_0_IF_PS_CPM_xpipe14_rx_status),
        .xpipe14_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe14_rx_syncheader),
        .xpipe14_rx_termination(pspmc_0_IF_PS_CPM_xpipe14_rx_termination),
        .xpipe14_rx_valid(pspmc_0_IF_PS_CPM_xpipe14_rx_valid),
        .xpipe14_tx_charisk(pspmc_0_IF_PS_CPM_xpipe14_tx_charisk),
        .xpipe14_tx_compliance(pspmc_0_IF_PS_CPM_xpipe14_tx_compliance),
        .xpipe14_tx_data(pspmc_0_IF_PS_CPM_xpipe14_tx_data),
        .xpipe14_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe14_tx_datavalid),
        .xpipe14_tx_deemph(pspmc_0_IF_PS_CPM_xpipe14_tx_deemph),
        .xpipe14_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe14_tx_detectrxloopback),
        .xpipe14_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe14_tx_elecidle),
        .xpipe14_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe14_tx_maincursor),
        .xpipe14_tx_margin(pspmc_0_IF_PS_CPM_xpipe14_tx_margin),
        .xpipe14_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe14_tx_postcursor),
        .xpipe14_tx_precursor(pspmc_0_IF_PS_CPM_xpipe14_tx_precursor),
        .xpipe14_tx_startblock(pspmc_0_IF_PS_CPM_xpipe14_tx_startblock),
        .xpipe14_tx_swing(pspmc_0_IF_PS_CPM_xpipe14_tx_swing),
        .xpipe14_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe14_tx_syncheader),
        .xpipe15_phystatus(pspmc_0_IF_PS_CPM_xpipe15_phystatus),
        .xpipe15_powerdown(pspmc_0_IF_PS_CPM_xpipe15_powerdown),
        .xpipe15_rx_charisk(pspmc_0_IF_PS_CPM_xpipe15_rx_charisk),
        .xpipe15_rx_data(pspmc_0_IF_PS_CPM_xpipe15_rx_data),
        .xpipe15_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe15_rx_datavalid),
        .xpipe15_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe15_rx_elecidle),
        .xpipe15_rx_polarity(pspmc_0_IF_PS_CPM_xpipe15_rx_polarity),
        .xpipe15_rx_startblock(pspmc_0_IF_PS_CPM_xpipe15_rx_startblock),
        .xpipe15_rx_status(pspmc_0_IF_PS_CPM_xpipe15_rx_status),
        .xpipe15_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe15_rx_syncheader),
        .xpipe15_rx_termination(pspmc_0_IF_PS_CPM_xpipe15_rx_termination),
        .xpipe15_rx_valid(pspmc_0_IF_PS_CPM_xpipe15_rx_valid),
        .xpipe15_tx_charisk(pspmc_0_IF_PS_CPM_xpipe15_tx_charisk),
        .xpipe15_tx_compliance(pspmc_0_IF_PS_CPM_xpipe15_tx_compliance),
        .xpipe15_tx_data(pspmc_0_IF_PS_CPM_xpipe15_tx_data),
        .xpipe15_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe15_tx_datavalid),
        .xpipe15_tx_deemph(pspmc_0_IF_PS_CPM_xpipe15_tx_deemph),
        .xpipe15_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe15_tx_detectrxloopback),
        .xpipe15_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe15_tx_elecidle),
        .xpipe15_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe15_tx_maincursor),
        .xpipe15_tx_margin(pspmc_0_IF_PS_CPM_xpipe15_tx_margin),
        .xpipe15_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe15_tx_postcursor),
        .xpipe15_tx_precursor(pspmc_0_IF_PS_CPM_xpipe15_tx_precursor),
        .xpipe15_tx_startblock(pspmc_0_IF_PS_CPM_xpipe15_tx_startblock),
        .xpipe15_tx_swing(pspmc_0_IF_PS_CPM_xpipe15_tx_swing),
        .xpipe15_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe15_tx_syncheader),
        .xpipe1_phystatus(pspmc_0_IF_PS_CPM_xpipe1_phystatus),
        .xpipe1_powerdown(pspmc_0_IF_PS_CPM_xpipe1_powerdown),
        .xpipe1_rx_charisk(pspmc_0_IF_PS_CPM_xpipe1_rx_charisk),
        .xpipe1_rx_data(pspmc_0_IF_PS_CPM_xpipe1_rx_data),
        .xpipe1_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe1_rx_datavalid),
        .xpipe1_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe1_rx_elecidle),
        .xpipe1_rx_polarity(pspmc_0_IF_PS_CPM_xpipe1_rx_polarity),
        .xpipe1_rx_startblock(pspmc_0_IF_PS_CPM_xpipe1_rx_startblock),
        .xpipe1_rx_status(pspmc_0_IF_PS_CPM_xpipe1_rx_status),
        .xpipe1_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe1_rx_syncheader),
        .xpipe1_rx_termination(pspmc_0_IF_PS_CPM_xpipe1_rx_termination),
        .xpipe1_rx_valid(pspmc_0_IF_PS_CPM_xpipe1_rx_valid),
        .xpipe1_tx_charisk(pspmc_0_IF_PS_CPM_xpipe1_tx_charisk),
        .xpipe1_tx_compliance(pspmc_0_IF_PS_CPM_xpipe1_tx_compliance),
        .xpipe1_tx_data(pspmc_0_IF_PS_CPM_xpipe1_tx_data),
        .xpipe1_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe1_tx_datavalid),
        .xpipe1_tx_deemph(pspmc_0_IF_PS_CPM_xpipe1_tx_deemph),
        .xpipe1_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe1_tx_detectrxloopback),
        .xpipe1_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe1_tx_elecidle),
        .xpipe1_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe1_tx_maincursor),
        .xpipe1_tx_margin(pspmc_0_IF_PS_CPM_xpipe1_tx_margin),
        .xpipe1_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe1_tx_postcursor),
        .xpipe1_tx_precursor(pspmc_0_IF_PS_CPM_xpipe1_tx_precursor),
        .xpipe1_tx_startblock(pspmc_0_IF_PS_CPM_xpipe1_tx_startblock),
        .xpipe1_tx_swing(pspmc_0_IF_PS_CPM_xpipe1_tx_swing),
        .xpipe1_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe1_tx_syncheader),
        .xpipe2_phystatus(pspmc_0_IF_PS_CPM_xpipe2_phystatus),
        .xpipe2_powerdown(pspmc_0_IF_PS_CPM_xpipe2_powerdown),
        .xpipe2_rx_charisk(pspmc_0_IF_PS_CPM_xpipe2_rx_charisk),
        .xpipe2_rx_data(pspmc_0_IF_PS_CPM_xpipe2_rx_data),
        .xpipe2_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe2_rx_datavalid),
        .xpipe2_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe2_rx_elecidle),
        .xpipe2_rx_polarity(pspmc_0_IF_PS_CPM_xpipe2_rx_polarity),
        .xpipe2_rx_startblock(pspmc_0_IF_PS_CPM_xpipe2_rx_startblock),
        .xpipe2_rx_status(pspmc_0_IF_PS_CPM_xpipe2_rx_status),
        .xpipe2_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe2_rx_syncheader),
        .xpipe2_rx_termination(pspmc_0_IF_PS_CPM_xpipe2_rx_termination),
        .xpipe2_rx_valid(pspmc_0_IF_PS_CPM_xpipe2_rx_valid),
        .xpipe2_tx_charisk(pspmc_0_IF_PS_CPM_xpipe2_tx_charisk),
        .xpipe2_tx_compliance(pspmc_0_IF_PS_CPM_xpipe2_tx_compliance),
        .xpipe2_tx_data(pspmc_0_IF_PS_CPM_xpipe2_tx_data),
        .xpipe2_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe2_tx_datavalid),
        .xpipe2_tx_deemph(pspmc_0_IF_PS_CPM_xpipe2_tx_deemph),
        .xpipe2_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe2_tx_detectrxloopback),
        .xpipe2_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe2_tx_elecidle),
        .xpipe2_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe2_tx_maincursor),
        .xpipe2_tx_margin(pspmc_0_IF_PS_CPM_xpipe2_tx_margin),
        .xpipe2_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe2_tx_postcursor),
        .xpipe2_tx_precursor(pspmc_0_IF_PS_CPM_xpipe2_tx_precursor),
        .xpipe2_tx_startblock(pspmc_0_IF_PS_CPM_xpipe2_tx_startblock),
        .xpipe2_tx_swing(pspmc_0_IF_PS_CPM_xpipe2_tx_swing),
        .xpipe2_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe2_tx_syncheader),
        .xpipe3_phystatus(pspmc_0_IF_PS_CPM_xpipe3_phystatus),
        .xpipe3_powerdown(pspmc_0_IF_PS_CPM_xpipe3_powerdown),
        .xpipe3_rx_charisk(pspmc_0_IF_PS_CPM_xpipe3_rx_charisk),
        .xpipe3_rx_data(pspmc_0_IF_PS_CPM_xpipe3_rx_data),
        .xpipe3_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe3_rx_datavalid),
        .xpipe3_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe3_rx_elecidle),
        .xpipe3_rx_polarity(pspmc_0_IF_PS_CPM_xpipe3_rx_polarity),
        .xpipe3_rx_startblock(pspmc_0_IF_PS_CPM_xpipe3_rx_startblock),
        .xpipe3_rx_status(pspmc_0_IF_PS_CPM_xpipe3_rx_status),
        .xpipe3_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe3_rx_syncheader),
        .xpipe3_rx_termination(pspmc_0_IF_PS_CPM_xpipe3_rx_termination),
        .xpipe3_rx_valid(pspmc_0_IF_PS_CPM_xpipe3_rx_valid),
        .xpipe3_tx_charisk(pspmc_0_IF_PS_CPM_xpipe3_tx_charisk),
        .xpipe3_tx_compliance(pspmc_0_IF_PS_CPM_xpipe3_tx_compliance),
        .xpipe3_tx_data(pspmc_0_IF_PS_CPM_xpipe3_tx_data),
        .xpipe3_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe3_tx_datavalid),
        .xpipe3_tx_deemph(pspmc_0_IF_PS_CPM_xpipe3_tx_deemph),
        .xpipe3_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe3_tx_detectrxloopback),
        .xpipe3_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe3_tx_elecidle),
        .xpipe3_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe3_tx_maincursor),
        .xpipe3_tx_margin(pspmc_0_IF_PS_CPM_xpipe3_tx_margin),
        .xpipe3_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe3_tx_postcursor),
        .xpipe3_tx_precursor(pspmc_0_IF_PS_CPM_xpipe3_tx_precursor),
        .xpipe3_tx_startblock(pspmc_0_IF_PS_CPM_xpipe3_tx_startblock),
        .xpipe3_tx_swing(pspmc_0_IF_PS_CPM_xpipe3_tx_swing),
        .xpipe3_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe3_tx_syncheader),
        .xpipe4_phystatus(pspmc_0_IF_PS_CPM_xpipe4_phystatus),
        .xpipe4_powerdown(pspmc_0_IF_PS_CPM_xpipe4_powerdown),
        .xpipe4_rx_charisk(pspmc_0_IF_PS_CPM_xpipe4_rx_charisk),
        .xpipe4_rx_data(pspmc_0_IF_PS_CPM_xpipe4_rx_data),
        .xpipe4_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe4_rx_datavalid),
        .xpipe4_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe4_rx_elecidle),
        .xpipe4_rx_polarity(pspmc_0_IF_PS_CPM_xpipe4_rx_polarity),
        .xpipe4_rx_startblock(pspmc_0_IF_PS_CPM_xpipe4_rx_startblock),
        .xpipe4_rx_status(pspmc_0_IF_PS_CPM_xpipe4_rx_status),
        .xpipe4_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe4_rx_syncheader),
        .xpipe4_rx_termination(pspmc_0_IF_PS_CPM_xpipe4_rx_termination),
        .xpipe4_rx_valid(pspmc_0_IF_PS_CPM_xpipe4_rx_valid),
        .xpipe4_tx_charisk(pspmc_0_IF_PS_CPM_xpipe4_tx_charisk),
        .xpipe4_tx_compliance(pspmc_0_IF_PS_CPM_xpipe4_tx_compliance),
        .xpipe4_tx_data(pspmc_0_IF_PS_CPM_xpipe4_tx_data),
        .xpipe4_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe4_tx_datavalid),
        .xpipe4_tx_deemph(pspmc_0_IF_PS_CPM_xpipe4_tx_deemph),
        .xpipe4_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe4_tx_detectrxloopback),
        .xpipe4_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe4_tx_elecidle),
        .xpipe4_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe4_tx_maincursor),
        .xpipe4_tx_margin(pspmc_0_IF_PS_CPM_xpipe4_tx_margin),
        .xpipe4_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe4_tx_postcursor),
        .xpipe4_tx_precursor(pspmc_0_IF_PS_CPM_xpipe4_tx_precursor),
        .xpipe4_tx_startblock(pspmc_0_IF_PS_CPM_xpipe4_tx_startblock),
        .xpipe4_tx_swing(pspmc_0_IF_PS_CPM_xpipe4_tx_swing),
        .xpipe4_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe4_tx_syncheader),
        .xpipe5_phystatus(pspmc_0_IF_PS_CPM_xpipe5_phystatus),
        .xpipe5_powerdown(pspmc_0_IF_PS_CPM_xpipe5_powerdown),
        .xpipe5_rx_charisk(pspmc_0_IF_PS_CPM_xpipe5_rx_charisk),
        .xpipe5_rx_data(pspmc_0_IF_PS_CPM_xpipe5_rx_data),
        .xpipe5_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe5_rx_datavalid),
        .xpipe5_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe5_rx_elecidle),
        .xpipe5_rx_polarity(pspmc_0_IF_PS_CPM_xpipe5_rx_polarity),
        .xpipe5_rx_startblock(pspmc_0_IF_PS_CPM_xpipe5_rx_startblock),
        .xpipe5_rx_status(pspmc_0_IF_PS_CPM_xpipe5_rx_status),
        .xpipe5_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe5_rx_syncheader),
        .xpipe5_rx_termination(pspmc_0_IF_PS_CPM_xpipe5_rx_termination),
        .xpipe5_rx_valid(pspmc_0_IF_PS_CPM_xpipe5_rx_valid),
        .xpipe5_tx_charisk(pspmc_0_IF_PS_CPM_xpipe5_tx_charisk),
        .xpipe5_tx_compliance(pspmc_0_IF_PS_CPM_xpipe5_tx_compliance),
        .xpipe5_tx_data(pspmc_0_IF_PS_CPM_xpipe5_tx_data),
        .xpipe5_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe5_tx_datavalid),
        .xpipe5_tx_deemph(pspmc_0_IF_PS_CPM_xpipe5_tx_deemph),
        .xpipe5_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe5_tx_detectrxloopback),
        .xpipe5_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe5_tx_elecidle),
        .xpipe5_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe5_tx_maincursor),
        .xpipe5_tx_margin(pspmc_0_IF_PS_CPM_xpipe5_tx_margin),
        .xpipe5_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe5_tx_postcursor),
        .xpipe5_tx_precursor(pspmc_0_IF_PS_CPM_xpipe5_tx_precursor),
        .xpipe5_tx_startblock(pspmc_0_IF_PS_CPM_xpipe5_tx_startblock),
        .xpipe5_tx_swing(pspmc_0_IF_PS_CPM_xpipe5_tx_swing),
        .xpipe5_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe5_tx_syncheader),
        .xpipe6_phystatus(pspmc_0_IF_PS_CPM_xpipe6_phystatus),
        .xpipe6_powerdown(pspmc_0_IF_PS_CPM_xpipe6_powerdown),
        .xpipe6_rx_charisk(pspmc_0_IF_PS_CPM_xpipe6_rx_charisk),
        .xpipe6_rx_data(pspmc_0_IF_PS_CPM_xpipe6_rx_data),
        .xpipe6_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe6_rx_datavalid),
        .xpipe6_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe6_rx_elecidle),
        .xpipe6_rx_polarity(pspmc_0_IF_PS_CPM_xpipe6_rx_polarity),
        .xpipe6_rx_startblock(pspmc_0_IF_PS_CPM_xpipe6_rx_startblock),
        .xpipe6_rx_status(pspmc_0_IF_PS_CPM_xpipe6_rx_status),
        .xpipe6_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe6_rx_syncheader),
        .xpipe6_rx_termination(pspmc_0_IF_PS_CPM_xpipe6_rx_termination),
        .xpipe6_rx_valid(pspmc_0_IF_PS_CPM_xpipe6_rx_valid),
        .xpipe6_tx_charisk(pspmc_0_IF_PS_CPM_xpipe6_tx_charisk),
        .xpipe6_tx_compliance(pspmc_0_IF_PS_CPM_xpipe6_tx_compliance),
        .xpipe6_tx_data(pspmc_0_IF_PS_CPM_xpipe6_tx_data),
        .xpipe6_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe6_tx_datavalid),
        .xpipe6_tx_deemph(pspmc_0_IF_PS_CPM_xpipe6_tx_deemph),
        .xpipe6_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe6_tx_detectrxloopback),
        .xpipe6_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe6_tx_elecidle),
        .xpipe6_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe6_tx_maincursor),
        .xpipe6_tx_margin(pspmc_0_IF_PS_CPM_xpipe6_tx_margin),
        .xpipe6_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe6_tx_postcursor),
        .xpipe6_tx_precursor(pspmc_0_IF_PS_CPM_xpipe6_tx_precursor),
        .xpipe6_tx_startblock(pspmc_0_IF_PS_CPM_xpipe6_tx_startblock),
        .xpipe6_tx_swing(pspmc_0_IF_PS_CPM_xpipe6_tx_swing),
        .xpipe6_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe6_tx_syncheader),
        .xpipe7_phystatus(pspmc_0_IF_PS_CPM_xpipe7_phystatus),
        .xpipe7_powerdown(pspmc_0_IF_PS_CPM_xpipe7_powerdown),
        .xpipe7_rx_charisk(pspmc_0_IF_PS_CPM_xpipe7_rx_charisk),
        .xpipe7_rx_data(pspmc_0_IF_PS_CPM_xpipe7_rx_data),
        .xpipe7_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe7_rx_datavalid),
        .xpipe7_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe7_rx_elecidle),
        .xpipe7_rx_polarity(pspmc_0_IF_PS_CPM_xpipe7_rx_polarity),
        .xpipe7_rx_startblock(pspmc_0_IF_PS_CPM_xpipe7_rx_startblock),
        .xpipe7_rx_status(pspmc_0_IF_PS_CPM_xpipe7_rx_status),
        .xpipe7_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe7_rx_syncheader),
        .xpipe7_rx_termination(pspmc_0_IF_PS_CPM_xpipe7_rx_termination),
        .xpipe7_rx_valid(pspmc_0_IF_PS_CPM_xpipe7_rx_valid),
        .xpipe7_tx_charisk(pspmc_0_IF_PS_CPM_xpipe7_tx_charisk),
        .xpipe7_tx_compliance(pspmc_0_IF_PS_CPM_xpipe7_tx_compliance),
        .xpipe7_tx_data(pspmc_0_IF_PS_CPM_xpipe7_tx_data),
        .xpipe7_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe7_tx_datavalid),
        .xpipe7_tx_deemph(pspmc_0_IF_PS_CPM_xpipe7_tx_deemph),
        .xpipe7_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe7_tx_detectrxloopback),
        .xpipe7_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe7_tx_elecidle),
        .xpipe7_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe7_tx_maincursor),
        .xpipe7_tx_margin(pspmc_0_IF_PS_CPM_xpipe7_tx_margin),
        .xpipe7_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe7_tx_postcursor),
        .xpipe7_tx_precursor(pspmc_0_IF_PS_CPM_xpipe7_tx_precursor),
        .xpipe7_tx_startblock(pspmc_0_IF_PS_CPM_xpipe7_tx_startblock),
        .xpipe7_tx_swing(pspmc_0_IF_PS_CPM_xpipe7_tx_swing),
        .xpipe7_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe7_tx_syncheader),
        .xpipe8_phystatus(pspmc_0_IF_PS_CPM_xpipe8_phystatus),
        .xpipe8_powerdown(pspmc_0_IF_PS_CPM_xpipe8_powerdown),
        .xpipe8_rx_charisk(pspmc_0_IF_PS_CPM_xpipe8_rx_charisk),
        .xpipe8_rx_data(pspmc_0_IF_PS_CPM_xpipe8_rx_data),
        .xpipe8_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe8_rx_datavalid),
        .xpipe8_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe8_rx_elecidle),
        .xpipe8_rx_polarity(pspmc_0_IF_PS_CPM_xpipe8_rx_polarity),
        .xpipe8_rx_startblock(pspmc_0_IF_PS_CPM_xpipe8_rx_startblock),
        .xpipe8_rx_status(pspmc_0_IF_PS_CPM_xpipe8_rx_status),
        .xpipe8_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe8_rx_syncheader),
        .xpipe8_rx_termination(pspmc_0_IF_PS_CPM_xpipe8_rx_termination),
        .xpipe8_rx_valid(pspmc_0_IF_PS_CPM_xpipe8_rx_valid),
        .xpipe8_tx_charisk(pspmc_0_IF_PS_CPM_xpipe8_tx_charisk),
        .xpipe8_tx_compliance(pspmc_0_IF_PS_CPM_xpipe8_tx_compliance),
        .xpipe8_tx_data(pspmc_0_IF_PS_CPM_xpipe8_tx_data),
        .xpipe8_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe8_tx_datavalid),
        .xpipe8_tx_deemph(pspmc_0_IF_PS_CPM_xpipe8_tx_deemph),
        .xpipe8_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe8_tx_detectrxloopback),
        .xpipe8_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe8_tx_elecidle),
        .xpipe8_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe8_tx_maincursor),
        .xpipe8_tx_margin(pspmc_0_IF_PS_CPM_xpipe8_tx_margin),
        .xpipe8_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe8_tx_postcursor),
        .xpipe8_tx_precursor(pspmc_0_IF_PS_CPM_xpipe8_tx_precursor),
        .xpipe8_tx_startblock(pspmc_0_IF_PS_CPM_xpipe8_tx_startblock),
        .xpipe8_tx_swing(pspmc_0_IF_PS_CPM_xpipe8_tx_swing),
        .xpipe8_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe8_tx_syncheader),
        .xpipe9_phystatus(pspmc_0_IF_PS_CPM_xpipe9_phystatus),
        .xpipe9_powerdown(pspmc_0_IF_PS_CPM_xpipe9_powerdown),
        .xpipe9_rx_charisk(pspmc_0_IF_PS_CPM_xpipe9_rx_charisk),
        .xpipe9_rx_data(pspmc_0_IF_PS_CPM_xpipe9_rx_data),
        .xpipe9_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe9_rx_datavalid),
        .xpipe9_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe9_rx_elecidle),
        .xpipe9_rx_polarity(pspmc_0_IF_PS_CPM_xpipe9_rx_polarity),
        .xpipe9_rx_startblock(pspmc_0_IF_PS_CPM_xpipe9_rx_startblock),
        .xpipe9_rx_status(pspmc_0_IF_PS_CPM_xpipe9_rx_status),
        .xpipe9_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe9_rx_syncheader),
        .xpipe9_rx_termination(pspmc_0_IF_PS_CPM_xpipe9_rx_termination),
        .xpipe9_rx_valid(pspmc_0_IF_PS_CPM_xpipe9_rx_valid),
        .xpipe9_tx_charisk(pspmc_0_IF_PS_CPM_xpipe9_tx_charisk),
        .xpipe9_tx_compliance(pspmc_0_IF_PS_CPM_xpipe9_tx_compliance),
        .xpipe9_tx_data(pspmc_0_IF_PS_CPM_xpipe9_tx_data),
        .xpipe9_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe9_tx_datavalid),
        .xpipe9_tx_deemph(pspmc_0_IF_PS_CPM_xpipe9_tx_deemph),
        .xpipe9_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe9_tx_detectrxloopback),
        .xpipe9_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe9_tx_elecidle),
        .xpipe9_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe9_tx_maincursor),
        .xpipe9_tx_margin(pspmc_0_IF_PS_CPM_xpipe9_tx_margin),
        .xpipe9_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe9_tx_postcursor),
        .xpipe9_tx_precursor(pspmc_0_IF_PS_CPM_xpipe9_tx_precursor),
        .xpipe9_tx_startblock(pspmc_0_IF_PS_CPM_xpipe9_tx_startblock),
        .xpipe9_tx_swing(pspmc_0_IF_PS_CPM_xpipe9_tx_swing),
        .xpipe9_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe9_tx_syncheader),
        .xpipe_q0_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_ack),
        .xpipe_q0_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_cmd),
        .xpipe_q0_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_lanenum),
        .xpipe_q0_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_payload),
        .xpipe_q0_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_req),
        .xpipe_q0_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_ack),
        .xpipe_q0_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_cmd),
        .xpipe_q0_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_lanenum),
        .xpipe_q0_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_payload),
        .xpipe_q0_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_req),
        .xpipe_q1_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_ack),
        .xpipe_q1_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_cmd),
        .xpipe_q1_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_lanenum),
        .xpipe_q1_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_payload),
        .xpipe_q1_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_req),
        .xpipe_q1_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_ack),
        .xpipe_q1_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_cmd),
        .xpipe_q1_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_lanenum),
        .xpipe_q1_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_payload),
        .xpipe_q1_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_req),
        .xpipe_q2_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_ack),
        .xpipe_q2_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_cmd),
        .xpipe_q2_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_lanenum),
        .xpipe_q2_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_payload),
        .xpipe_q2_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_req),
        .xpipe_q2_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_ack),
        .xpipe_q2_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_cmd),
        .xpipe_q2_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_lanenum),
        .xpipe_q2_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_payload),
        .xpipe_q2_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_req),
        .xpipe_q3_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_ack),
        .xpipe_q3_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_cmd),
        .xpipe_q3_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_lanenum),
        .xpipe_q3_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_payload),
        .xpipe_q3_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_req),
        .xpipe_q3_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_ack),
        .xpipe_q3_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_cmd),
        .xpipe_q3_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_lanenum),
        .xpipe_q3_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_payload),
        .xpipe_q3_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_req));
  bd_a532_pspmc_0_0 pspmc_0
       (.cpm_osc_clk_div2(pspmc_0_IF_PS_CPM_cpm_osc_clk_div2),
        .cpm_pcie_noc_axi0_araddr(pspmc_0_CPM_PCIE_NOC_0_ARADDR),
        .cpm_pcie_noc_axi0_arburst(pspmc_0_CPM_PCIE_NOC_0_ARBURST),
        .cpm_pcie_noc_axi0_arcache(pspmc_0_CPM_PCIE_NOC_0_ARCACHE),
        .cpm_pcie_noc_axi0_arid(pspmc_0_CPM_PCIE_NOC_0_ARID),
        .cpm_pcie_noc_axi0_arlen(pspmc_0_CPM_PCIE_NOC_0_ARLEN),
        .cpm_pcie_noc_axi0_arlock(pspmc_0_CPM_PCIE_NOC_0_ARLOCK),
        .cpm_pcie_noc_axi0_arprot(pspmc_0_CPM_PCIE_NOC_0_ARPROT),
        .cpm_pcie_noc_axi0_arqos(pspmc_0_CPM_PCIE_NOC_0_ARQOS),
        .cpm_pcie_noc_axi0_arready(pspmc_0_CPM_PCIE_NOC_0_ARREADY),
        .cpm_pcie_noc_axi0_arsize(pspmc_0_CPM_PCIE_NOC_0_ARSIZE),
        .cpm_pcie_noc_axi0_aruser(pspmc_0_CPM_PCIE_NOC_0_ARUSER),
        .cpm_pcie_noc_axi0_arvalid(pspmc_0_CPM_PCIE_NOC_0_ARVALID),
        .cpm_pcie_noc_axi0_awaddr(pspmc_0_CPM_PCIE_NOC_0_AWADDR),
        .cpm_pcie_noc_axi0_awburst(pspmc_0_CPM_PCIE_NOC_0_AWBURST),
        .cpm_pcie_noc_axi0_awcache(pspmc_0_CPM_PCIE_NOC_0_AWCACHE),
        .cpm_pcie_noc_axi0_awid(pspmc_0_CPM_PCIE_NOC_0_AWID),
        .cpm_pcie_noc_axi0_awlen(pspmc_0_CPM_PCIE_NOC_0_AWLEN),
        .cpm_pcie_noc_axi0_awlock(pspmc_0_CPM_PCIE_NOC_0_AWLOCK),
        .cpm_pcie_noc_axi0_awprot(pspmc_0_CPM_PCIE_NOC_0_AWPROT),
        .cpm_pcie_noc_axi0_awqos(pspmc_0_CPM_PCIE_NOC_0_AWQOS),
        .cpm_pcie_noc_axi0_awready(pspmc_0_CPM_PCIE_NOC_0_AWREADY),
        .cpm_pcie_noc_axi0_awsize(pspmc_0_CPM_PCIE_NOC_0_AWSIZE),
        .cpm_pcie_noc_axi0_awuser(pspmc_0_CPM_PCIE_NOC_0_AWUSER),
        .cpm_pcie_noc_axi0_awvalid(pspmc_0_CPM_PCIE_NOC_0_AWVALID),
        .cpm_pcie_noc_axi0_bid(pspmc_0_CPM_PCIE_NOC_0_BID),
        .cpm_pcie_noc_axi0_bready(pspmc_0_CPM_PCIE_NOC_0_BREADY),
        .cpm_pcie_noc_axi0_bresp(pspmc_0_CPM_PCIE_NOC_0_BRESP),
        .cpm_pcie_noc_axi0_bvalid(pspmc_0_CPM_PCIE_NOC_0_BVALID),
        .cpm_pcie_noc_axi0_clk(pspmc_0_cpm_pcie_noc_axi0_clk),
        .cpm_pcie_noc_axi0_rdata(pspmc_0_CPM_PCIE_NOC_0_RDATA),
        .cpm_pcie_noc_axi0_rid(pspmc_0_CPM_PCIE_NOC_0_RID),
        .cpm_pcie_noc_axi0_rlast(pspmc_0_CPM_PCIE_NOC_0_RLAST),
        .cpm_pcie_noc_axi0_rready(pspmc_0_CPM_PCIE_NOC_0_RREADY),
        .cpm_pcie_noc_axi0_rresp(pspmc_0_CPM_PCIE_NOC_0_RRESP),
        .cpm_pcie_noc_axi0_rvalid(pspmc_0_CPM_PCIE_NOC_0_RVALID),
        .cpm_pcie_noc_axi0_wdata(pspmc_0_CPM_PCIE_NOC_0_WDATA),
        .cpm_pcie_noc_axi0_wlast(pspmc_0_CPM_PCIE_NOC_0_WLAST),
        .cpm_pcie_noc_axi0_wready(pspmc_0_CPM_PCIE_NOC_0_WREADY),
        .cpm_pcie_noc_axi0_wstrb(pspmc_0_CPM_PCIE_NOC_0_WSTRB),
        .cpm_pcie_noc_axi0_wvalid(pspmc_0_CPM_PCIE_NOC_0_WVALID),
        .cpm_pcie_noc_axi1_araddr(pspmc_0_CPM_PCIE_NOC_1_ARADDR),
        .cpm_pcie_noc_axi1_arburst(pspmc_0_CPM_PCIE_NOC_1_ARBURST),
        .cpm_pcie_noc_axi1_arcache(pspmc_0_CPM_PCIE_NOC_1_ARCACHE),
        .cpm_pcie_noc_axi1_arid(pspmc_0_CPM_PCIE_NOC_1_ARID),
        .cpm_pcie_noc_axi1_arlen(pspmc_0_CPM_PCIE_NOC_1_ARLEN),
        .cpm_pcie_noc_axi1_arlock(pspmc_0_CPM_PCIE_NOC_1_ARLOCK),
        .cpm_pcie_noc_axi1_arprot(pspmc_0_CPM_PCIE_NOC_1_ARPROT),
        .cpm_pcie_noc_axi1_arqos(pspmc_0_CPM_PCIE_NOC_1_ARQOS),
        .cpm_pcie_noc_axi1_arready(pspmc_0_CPM_PCIE_NOC_1_ARREADY),
        .cpm_pcie_noc_axi1_arsize(pspmc_0_CPM_PCIE_NOC_1_ARSIZE),
        .cpm_pcie_noc_axi1_aruser(pspmc_0_CPM_PCIE_NOC_1_ARUSER),
        .cpm_pcie_noc_axi1_arvalid(pspmc_0_CPM_PCIE_NOC_1_ARVALID),
        .cpm_pcie_noc_axi1_awaddr(pspmc_0_CPM_PCIE_NOC_1_AWADDR),
        .cpm_pcie_noc_axi1_awburst(pspmc_0_CPM_PCIE_NOC_1_AWBURST),
        .cpm_pcie_noc_axi1_awcache(pspmc_0_CPM_PCIE_NOC_1_AWCACHE),
        .cpm_pcie_noc_axi1_awid(pspmc_0_CPM_PCIE_NOC_1_AWID),
        .cpm_pcie_noc_axi1_awlen(pspmc_0_CPM_PCIE_NOC_1_AWLEN),
        .cpm_pcie_noc_axi1_awlock(pspmc_0_CPM_PCIE_NOC_1_AWLOCK),
        .cpm_pcie_noc_axi1_awprot(pspmc_0_CPM_PCIE_NOC_1_AWPROT),
        .cpm_pcie_noc_axi1_awqos(pspmc_0_CPM_PCIE_NOC_1_AWQOS),
        .cpm_pcie_noc_axi1_awready(pspmc_0_CPM_PCIE_NOC_1_AWREADY),
        .cpm_pcie_noc_axi1_awsize(pspmc_0_CPM_PCIE_NOC_1_AWSIZE),
        .cpm_pcie_noc_axi1_awuser(pspmc_0_CPM_PCIE_NOC_1_AWUSER),
        .cpm_pcie_noc_axi1_awvalid(pspmc_0_CPM_PCIE_NOC_1_AWVALID),
        .cpm_pcie_noc_axi1_bid(pspmc_0_CPM_PCIE_NOC_1_BID),
        .cpm_pcie_noc_axi1_bready(pspmc_0_CPM_PCIE_NOC_1_BREADY),
        .cpm_pcie_noc_axi1_bresp(pspmc_0_CPM_PCIE_NOC_1_BRESP),
        .cpm_pcie_noc_axi1_bvalid(pspmc_0_CPM_PCIE_NOC_1_BVALID),
        .cpm_pcie_noc_axi1_clk(pspmc_0_cpm_pcie_noc_axi1_clk),
        .cpm_pcie_noc_axi1_rdata(pspmc_0_CPM_PCIE_NOC_1_RDATA),
        .cpm_pcie_noc_axi1_rid(pspmc_0_CPM_PCIE_NOC_1_RID),
        .cpm_pcie_noc_axi1_rlast(pspmc_0_CPM_PCIE_NOC_1_RLAST),
        .cpm_pcie_noc_axi1_rready(pspmc_0_CPM_PCIE_NOC_1_RREADY),
        .cpm_pcie_noc_axi1_rresp(pspmc_0_CPM_PCIE_NOC_1_RRESP),
        .cpm_pcie_noc_axi1_rvalid(pspmc_0_CPM_PCIE_NOC_1_RVALID),
        .cpm_pcie_noc_axi1_wdata(pspmc_0_CPM_PCIE_NOC_1_WDATA),
        .cpm_pcie_noc_axi1_wlast(pspmc_0_CPM_PCIE_NOC_1_WLAST),
        .cpm_pcie_noc_axi1_wready(pspmc_0_CPM_PCIE_NOC_1_WREADY),
        .cpm_pcie_noc_axi1_wstrb(pspmc_0_CPM_PCIE_NOC_1_WSTRB),
        .cpm_pcie_noc_axi1_wvalid(pspmc_0_CPM_PCIE_NOC_1_WVALID),
        .cpm_pcr_apb_en(pspmc_0_IF_PS_CPM_cpm_pcr_apb_en),
        .cpm_pcr_dis_npi_clk(pspmc_0_IF_PS_CPM_cpm_pcr_dis_npi_clk),
        .cpm_pcr_fabric_en(pspmc_0_IF_PS_CPM_cpm_pcr_fabric_en),
        .cpm_pcr_gate_reg(pspmc_0_IF_PS_CPM_cpm_pcr_gate_reg),
        .cpm_pcr_hold_state(pspmc_0_IF_PS_CPM_cpm_pcr_hold_state),
        .cpm_pcr_init_state(pspmc_0_IF_PS_CPM_cpm_pcr_init_state),
        .cpm_pcr_mem_clr(pspmc_0_IF_PS_CPM_cpm_pcr_mem_clr),
        .cpm_pcr_o_disable(pspmc_0_IF_PS_CPM_cpm_pcr_o_disable),
        .cpm_pcr_pcomplete(pspmc_0_IF_PS_CPM_cpm_pcr_pcomplete),
        .cpm_pcr_pwr_dn(pspmc_0_IF_PS_CPM_cpm_pcr_pwr_dn),
        .cpm_pcr_scan_clr(pspmc_0_IF_PS_CPM_cpm_pcr_scan_clr),
        .cpm_pcr_start_bisr(pspmc_0_IF_PS_CPM_cpm_pcr_start_bisr),
        .cpm_pcr_start_cal(pspmc_0_IF_PS_CPM_cpm_pcr_start_cal),
        .cpm_pcr_tristate(pspmc_0_IF_PS_CPM_cpm_pcr_tristate),
        .cpmps_corr_irq(pspmc_0_IF_PS_CPM_cpmps_corr_irq),
        .cpmps_misc_irq(pspmc_0_IF_PS_CPM_cpmps_misc_irq),
        .cpmps_uncorr_irq(pspmc_0_IF_PS_CPM_cpmps_uncorr_irq),
        .hsdp_gt_rxoutclk(pspmc_0_IF_PS_CPM_hsdp_gt_rxoutclk),
        .hsdp_gt_txusrclk(pspmc_0_IF_PS_CPM_hsdp_gt_txusrclk),
        .hsdp_xpipe0_rx_datavalid(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_datavalid),
        .hsdp_xpipe0_rx_gearboxslip(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_gearboxslip),
        .hsdp_xpipe0_rx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_header),
        .hsdp_xpipe0_rx_headervalid(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_headervalid),
        .hsdp_xpipe0_rx_pcsreset(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_pcsreset),
        .hsdp_xpipe0_rx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe0_rx_resetdone),
        .hsdp_xpipe0_tx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_header),
        .hsdp_xpipe0_tx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_resetdone),
        .hsdp_xpipe0_tx_sequence(pspmc_0_IF_PS_CPM_hsdp_xpipe0_tx_sequence),
        .hsdp_xpipe1_rx_datavalid(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_datavalid),
        .hsdp_xpipe1_rx_gearboxslip(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_gearboxslip),
        .hsdp_xpipe1_rx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_header),
        .hsdp_xpipe1_rx_headervalid(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_headervalid),
        .hsdp_xpipe1_rx_pcsreset(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_pcsreset),
        .hsdp_xpipe1_rx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe1_rx_resetdone),
        .hsdp_xpipe1_tx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_header),
        .hsdp_xpipe1_tx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_resetdone),
        .hsdp_xpipe1_tx_sequence(pspmc_0_IF_PS_CPM_hsdp_xpipe1_tx_sequence),
        .hsdp_xpipe2_rx_datavalid(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_datavalid),
        .hsdp_xpipe2_rx_gearboxslip(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_gearboxslip),
        .hsdp_xpipe2_rx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_header),
        .hsdp_xpipe2_rx_headervalid(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_headervalid),
        .hsdp_xpipe2_rx_pcsreset(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_pcsreset),
        .hsdp_xpipe2_rx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe2_rx_resetdone),
        .hsdp_xpipe2_tx_header(pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_header),
        .hsdp_xpipe2_tx_resetdone(pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_resetdone),
        .hsdp_xpipe2_tx_sequence(pspmc_0_IF_PS_CPM_hsdp_xpipe2_tx_sequence),
        .if_ps_noc_pci_axi0_ruser(pspmc_0_CPM_PCIE_NOC_0_RUSER),
        .if_ps_noc_pci_axi0_wuser(pspmc_0_CPM_PCIE_NOC_0_WUSER),
        .if_ps_noc_pci_axi1_ruser(pspmc_0_CPM_PCIE_NOC_1_RUSER),
        .if_ps_noc_pci_axi1_wuser(pspmc_0_CPM_PCIE_NOC_1_WUSER),
        .link0_xpipe_bufgtce(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtce),
        .link0_xpipe_bufgtcemask(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtcemask),
        .link0_xpipe_bufgtdiv(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtdiv),
        .link0_xpipe_bufgtrst(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtrst),
        .link0_xpipe_bufgtrstmask(pspmc_0_IF_PS_CPM_link0_xpipe_bufgtrstmask),
        .link0_xpipe_gtoutclk(pspmc_0_IF_PS_CPM_link0_xpipe_gtoutclk),
        .link0_xpipe_gtpipeclk(pspmc_0_IF_PS_CPM_link0_xpipe_gtpipeclk),
        .link0_xpipe_pcielinkreachtarget(pspmc_0_IF_PS_CPM_link0_xpipe_pcielinkreachtarget),
        .link0_xpipe_pcieltssmstate(pspmc_0_IF_PS_CPM_link0_xpipe_pcieltssmstate),
        .link0_xpipe_pcieperstn(pspmc_0_IF_PS_CPM_link0_xpipe_pcieperstn),
        .link0_xpipe_phyesmadaptationsave(pspmc_0_IF_PS_CPM_link0_xpipe_phyesmadaptationsave),
        .link0_xpipe_phyready(pspmc_0_IF_PS_CPM_link0_xpipe_phyready),
        .link0_xpipe_piperate(pspmc_0_IF_PS_CPM_link0_xpipe_piperate),
        .link1_xpipe_bufgtce(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtce),
        .link1_xpipe_bufgtcemask(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtcemask),
        .link1_xpipe_bufgtdiv(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtdiv),
        .link1_xpipe_bufgtrst(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtrst),
        .link1_xpipe_bufgtrstmask(pspmc_0_IF_PS_CPM_link1_xpipe_bufgtrstmask),
        .link1_xpipe_gtoutclk(pspmc_0_IF_PS_CPM_link1_xpipe_gtoutclk),
        .link1_xpipe_gtpipeclk(pspmc_0_IF_PS_CPM_link1_xpipe_gtpipeclk),
        .link1_xpipe_pcielinkreachtarget(pspmc_0_IF_PS_CPM_link1_xpipe_pcielinkreachtarget),
        .link1_xpipe_pcieltssmstate(pspmc_0_IF_PS_CPM_link1_xpipe_pcieltssmstate),
        .link1_xpipe_pcieperstn(pspmc_0_IF_PS_CPM_link1_xpipe_pcieperstn),
        .link1_xpipe_phyesmadaptationsave(pspmc_0_IF_PS_CPM_link1_xpipe_phyesmadaptationsave),
        .link1_xpipe_phyready(pspmc_0_IF_PS_CPM_link1_xpipe_phyready),
        .link1_xpipe_piperate(pspmc_0_IF_PS_CPM_link1_xpipe_piperate),
        .lpd_refclk_in(pspmc_0_IF_PS_CPM_lpd_refclk_in),
        .lpd_swclk(pspmc_0_IF_PS_CPM_lpd_swclk),
        .lpd_switch_timeout_cnt(pspmc_0_IF_PS_CPM_lpd_switch_timeout_cnt),
        .m_axi0_ps_araddr(pspmc_0_IF_PS_CPM_m_axi0_ps_araddr),
        .m_axi0_ps_arburst(pspmc_0_IF_PS_CPM_m_axi0_ps_arburst),
        .m_axi0_ps_arcache(pspmc_0_IF_PS_CPM_m_axi0_ps_arcache),
        .m_axi0_ps_arid(pspmc_0_IF_PS_CPM_m_axi0_ps_arid),
        .m_axi0_ps_arlen(pspmc_0_IF_PS_CPM_m_axi0_ps_arlen),
        .m_axi0_ps_arlock(pspmc_0_IF_PS_CPM_m_axi0_ps_arlock),
        .m_axi0_ps_arprot(pspmc_0_IF_PS_CPM_m_axi0_ps_arprot),
        .m_axi0_ps_arqos(pspmc_0_IF_PS_CPM_m_axi0_ps_arqos),
        .m_axi0_ps_arready(pspmc_0_IF_PS_CPM_m_axi0_ps_arready),
        .m_axi0_ps_arregion(pspmc_0_IF_PS_CPM_m_axi0_ps_arregion),
        .m_axi0_ps_arsize(pspmc_0_IF_PS_CPM_m_axi0_ps_arsize),
        .m_axi0_ps_aruser(pspmc_0_IF_PS_CPM_m_axi0_ps_aruser),
        .m_axi0_ps_arvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_arvalid),
        .m_axi0_ps_awaddr(pspmc_0_IF_PS_CPM_m_axi0_ps_awaddr),
        .m_axi0_ps_awburst(pspmc_0_IF_PS_CPM_m_axi0_ps_awburst),
        .m_axi0_ps_awcache(pspmc_0_IF_PS_CPM_m_axi0_ps_awcache),
        .m_axi0_ps_awid(pspmc_0_IF_PS_CPM_m_axi0_ps_awid),
        .m_axi0_ps_awlen(pspmc_0_IF_PS_CPM_m_axi0_ps_awlen),
        .m_axi0_ps_awlock(pspmc_0_IF_PS_CPM_m_axi0_ps_awlock),
        .m_axi0_ps_awprot(pspmc_0_IF_PS_CPM_m_axi0_ps_awprot),
        .m_axi0_ps_awqos(pspmc_0_IF_PS_CPM_m_axi0_ps_awqos),
        .m_axi0_ps_awready(pspmc_0_IF_PS_CPM_m_axi0_ps_awready),
        .m_axi0_ps_awregion(pspmc_0_IF_PS_CPM_m_axi0_ps_awregion),
        .m_axi0_ps_awsize(pspmc_0_IF_PS_CPM_m_axi0_ps_awsize),
        .m_axi0_ps_awuser(pspmc_0_IF_PS_CPM_m_axi0_ps_awuser),
        .m_axi0_ps_awvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_awvalid),
        .m_axi0_ps_bid(pspmc_0_IF_PS_CPM_m_axi0_ps_bid),
        .m_axi0_ps_bready(pspmc_0_IF_PS_CPM_m_axi0_ps_bready),
        .m_axi0_ps_bresp(pspmc_0_IF_PS_CPM_m_axi0_ps_bresp),
        .m_axi0_ps_buser(pspmc_0_IF_PS_CPM_m_axi0_ps_buser),
        .m_axi0_ps_bvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_bvalid),
        .m_axi0_ps_rdata(pspmc_0_IF_PS_CPM_m_axi0_ps_rdata),
        .m_axi0_ps_rid(pspmc_0_IF_PS_CPM_m_axi0_ps_rid),
        .m_axi0_ps_rlast(pspmc_0_IF_PS_CPM_m_axi0_ps_rlast),
        .m_axi0_ps_rready(pspmc_0_IF_PS_CPM_m_axi0_ps_rready),
        .m_axi0_ps_rresp(pspmc_0_IF_PS_CPM_m_axi0_ps_rresp),
        .m_axi0_ps_ruser(pspmc_0_IF_PS_CPM_m_axi0_ps_ruser),
        .m_axi0_ps_rvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_rvalid),
        .m_axi0_ps_wdata(pspmc_0_IF_PS_CPM_m_axi0_ps_wdata),
        .m_axi0_ps_wid(pspmc_0_IF_PS_CPM_m_axi0_ps_wid),
        .m_axi0_ps_wlast(pspmc_0_IF_PS_CPM_m_axi0_ps_wlast),
        .m_axi0_ps_wready(pspmc_0_IF_PS_CPM_m_axi0_ps_wready),
        .m_axi0_ps_wstrb(pspmc_0_IF_PS_CPM_m_axi0_ps_wstrb),
        .m_axi0_ps_wuser(pspmc_0_IF_PS_CPM_m_axi0_ps_wuser),
        .m_axi0_ps_wvalid(pspmc_0_IF_PS_CPM_m_axi0_ps_wvalid),
        .m_axi1_ps_araddr(pspmc_0_IF_PS_CPM_m_axi1_ps_araddr),
        .m_axi1_ps_arburst(pspmc_0_IF_PS_CPM_m_axi1_ps_arburst),
        .m_axi1_ps_arcache(pspmc_0_IF_PS_CPM_m_axi1_ps_arcache),
        .m_axi1_ps_arid(pspmc_0_IF_PS_CPM_m_axi1_ps_arid),
        .m_axi1_ps_arlen(pspmc_0_IF_PS_CPM_m_axi1_ps_arlen),
        .m_axi1_ps_arlock(pspmc_0_IF_PS_CPM_m_axi1_ps_arlock),
        .m_axi1_ps_arprot(pspmc_0_IF_PS_CPM_m_axi1_ps_arprot),
        .m_axi1_ps_arqos(pspmc_0_IF_PS_CPM_m_axi1_ps_arqos),
        .m_axi1_ps_arready(pspmc_0_IF_PS_CPM_m_axi1_ps_arready),
        .m_axi1_ps_arregion(pspmc_0_IF_PS_CPM_m_axi1_ps_arregion),
        .m_axi1_ps_arsize(pspmc_0_IF_PS_CPM_m_axi1_ps_arsize),
        .m_axi1_ps_aruser(pspmc_0_IF_PS_CPM_m_axi1_ps_aruser),
        .m_axi1_ps_arvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_arvalid),
        .m_axi1_ps_awaddr(pspmc_0_IF_PS_CPM_m_axi1_ps_awaddr),
        .m_axi1_ps_awburst(pspmc_0_IF_PS_CPM_m_axi1_ps_awburst),
        .m_axi1_ps_awcache(pspmc_0_IF_PS_CPM_m_axi1_ps_awcache),
        .m_axi1_ps_awid(pspmc_0_IF_PS_CPM_m_axi1_ps_awid),
        .m_axi1_ps_awlen(pspmc_0_IF_PS_CPM_m_axi1_ps_awlen),
        .m_axi1_ps_awlock(pspmc_0_IF_PS_CPM_m_axi1_ps_awlock),
        .m_axi1_ps_awprot(pspmc_0_IF_PS_CPM_m_axi1_ps_awprot),
        .m_axi1_ps_awqos(pspmc_0_IF_PS_CPM_m_axi1_ps_awqos),
        .m_axi1_ps_awready(pspmc_0_IF_PS_CPM_m_axi1_ps_awready),
        .m_axi1_ps_awregion(pspmc_0_IF_PS_CPM_m_axi1_ps_awregion),
        .m_axi1_ps_awsize(pspmc_0_IF_PS_CPM_m_axi1_ps_awsize),
        .m_axi1_ps_awuser(pspmc_0_IF_PS_CPM_m_axi1_ps_awuser),
        .m_axi1_ps_awvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_awvalid),
        .m_axi1_ps_bid(pspmc_0_IF_PS_CPM_m_axi1_ps_bid),
        .m_axi1_ps_bready(pspmc_0_IF_PS_CPM_m_axi1_ps_bready),
        .m_axi1_ps_bresp(pspmc_0_IF_PS_CPM_m_axi1_ps_bresp),
        .m_axi1_ps_buser(pspmc_0_IF_PS_CPM_m_axi1_ps_buser),
        .m_axi1_ps_bvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_bvalid),
        .m_axi1_ps_rdata(pspmc_0_IF_PS_CPM_m_axi1_ps_rdata),
        .m_axi1_ps_rid(pspmc_0_IF_PS_CPM_m_axi1_ps_rid),
        .m_axi1_ps_rlast(pspmc_0_IF_PS_CPM_m_axi1_ps_rlast),
        .m_axi1_ps_rready(pspmc_0_IF_PS_CPM_m_axi1_ps_rready),
        .m_axi1_ps_rresp(pspmc_0_IF_PS_CPM_m_axi1_ps_rresp),
        .m_axi1_ps_ruser(pspmc_0_IF_PS_CPM_m_axi1_ps_ruser),
        .m_axi1_ps_rvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_rvalid),
        .m_axi1_ps_wdata(pspmc_0_IF_PS_CPM_m_axi1_ps_wdata),
        .m_axi1_ps_wid(pspmc_0_IF_PS_CPM_m_axi1_ps_wid),
        .m_axi1_ps_wlast(pspmc_0_IF_PS_CPM_m_axi1_ps_wlast),
        .m_axi1_ps_wready(pspmc_0_IF_PS_CPM_m_axi1_ps_wready),
        .m_axi1_ps_wstrb(pspmc_0_IF_PS_CPM_m_axi1_ps_wstrb),
        .m_axi1_ps_wuser(pspmc_0_IF_PS_CPM_m_axi1_ps_wuser),
        .m_axi1_ps_wvalid(pspmc_0_IF_PS_CPM_m_axi1_ps_wvalid),
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
        .perst0n(pspmc_0_IF_PS_CPM_perst0n),
        .perst1n(pspmc_0_IF_PS_CPM_perst1n),
        .phy_ready_frbot(pspmc_0_IF_PS_CPM_phy_ready_frbot),
        .phy_ready_tobot(pspmc_0_IF_PS_CPM_phy_ready_tobot),
        .pl0_ref_clk(pspmc_0_pl0_ref_clk),
        .pl0_resetn(pspmc_0_pl0_resetn),
        .pl1_ref_clk(pspmc_0_pl1_ref_clk),
        .s_axi_cfg_araddr(pspmc_0_IF_PS_CPM_s_axi_cfg_araddr),
        .s_axi_cfg_arburst(pspmc_0_IF_PS_CPM_s_axi_cfg_arburst),
        .s_axi_cfg_arcache(pspmc_0_IF_PS_CPM_s_axi_cfg_arcache),
        .s_axi_cfg_arid(pspmc_0_IF_PS_CPM_s_axi_cfg_arid),
        .s_axi_cfg_arlen(pspmc_0_IF_PS_CPM_s_axi_cfg_arlen),
        .s_axi_cfg_arlock(pspmc_0_IF_PS_CPM_s_axi_cfg_arlock),
        .s_axi_cfg_arprot(pspmc_0_IF_PS_CPM_s_axi_cfg_arprot),
        .s_axi_cfg_arqos(pspmc_0_IF_PS_CPM_s_axi_cfg_arqos),
        .s_axi_cfg_arready(pspmc_0_IF_PS_CPM_s_axi_cfg_arready),
        .s_axi_cfg_arregion(pspmc_0_IF_PS_CPM_s_axi_cfg_arregion),
        .s_axi_cfg_arsize(pspmc_0_IF_PS_CPM_s_axi_cfg_arsize),
        .s_axi_cfg_aruser(pspmc_0_IF_PS_CPM_s_axi_cfg_aruser),
        .s_axi_cfg_arvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_arvalid),
        .s_axi_cfg_awaddr(pspmc_0_IF_PS_CPM_s_axi_cfg_awaddr),
        .s_axi_cfg_awburst(pspmc_0_IF_PS_CPM_s_axi_cfg_awburst),
        .s_axi_cfg_awcache(pspmc_0_IF_PS_CPM_s_axi_cfg_awcache),
        .s_axi_cfg_awid(pspmc_0_IF_PS_CPM_s_axi_cfg_awid),
        .s_axi_cfg_awlen(pspmc_0_IF_PS_CPM_s_axi_cfg_awlen),
        .s_axi_cfg_awlock(pspmc_0_IF_PS_CPM_s_axi_cfg_awlock),
        .s_axi_cfg_awprot(pspmc_0_IF_PS_CPM_s_axi_cfg_awprot),
        .s_axi_cfg_awqos(pspmc_0_IF_PS_CPM_s_axi_cfg_awqos),
        .s_axi_cfg_awready(pspmc_0_IF_PS_CPM_s_axi_cfg_awready),
        .s_axi_cfg_awregion(pspmc_0_IF_PS_CPM_s_axi_cfg_awregion),
        .s_axi_cfg_awsize(pspmc_0_IF_PS_CPM_s_axi_cfg_awsize),
        .s_axi_cfg_awuser(pspmc_0_IF_PS_CPM_s_axi_cfg_awuser),
        .s_axi_cfg_awvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_awvalid),
        .s_axi_cfg_bid(pspmc_0_IF_PS_CPM_s_axi_cfg_bid),
        .s_axi_cfg_bready(pspmc_0_IF_PS_CPM_s_axi_cfg_bready),
        .s_axi_cfg_bresp(pspmc_0_IF_PS_CPM_s_axi_cfg_bresp),
        .s_axi_cfg_buser(pspmc_0_IF_PS_CPM_s_axi_cfg_buser),
        .s_axi_cfg_bvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_bvalid),
        .s_axi_cfg_rdata(pspmc_0_IF_PS_CPM_s_axi_cfg_rdata),
        .s_axi_cfg_rid(pspmc_0_IF_PS_CPM_s_axi_cfg_rid),
        .s_axi_cfg_rlast(pspmc_0_IF_PS_CPM_s_axi_cfg_rlast),
        .s_axi_cfg_rready(pspmc_0_IF_PS_CPM_s_axi_cfg_rready),
        .s_axi_cfg_rresp(pspmc_0_IF_PS_CPM_s_axi_cfg_rresp),
        .s_axi_cfg_ruser(pspmc_0_IF_PS_CPM_s_axi_cfg_ruser),
        .s_axi_cfg_rvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_rvalid),
        .s_axi_cfg_wdata(pspmc_0_IF_PS_CPM_s_axi_cfg_wdata),
        .s_axi_cfg_wid(pspmc_0_IF_PS_CPM_s_axi_cfg_wid),
        .s_axi_cfg_wlast(pspmc_0_IF_PS_CPM_s_axi_cfg_wlast),
        .s_axi_cfg_wready(pspmc_0_IF_PS_CPM_s_axi_cfg_wready),
        .s_axi_cfg_wstrb(pspmc_0_IF_PS_CPM_s_axi_cfg_wstrb),
        .s_axi_cfg_wuser(pspmc_0_IF_PS_CPM_s_axi_cfg_wuser),
        .s_axi_cfg_wvalid(pspmc_0_IF_PS_CPM_s_axi_cfg_wvalid),
        .s_axi_pcie_araddr(pspmc_0_IF_PS_CPM_s_axi_pcie_araddr),
        .s_axi_pcie_arburst(pspmc_0_IF_PS_CPM_s_axi_pcie_arburst),
        .s_axi_pcie_arcache(pspmc_0_IF_PS_CPM_s_axi_pcie_arcache),
        .s_axi_pcie_arid(pspmc_0_IF_PS_CPM_s_axi_pcie_arid),
        .s_axi_pcie_arlen(pspmc_0_IF_PS_CPM_s_axi_pcie_arlen),
        .s_axi_pcie_arlock(pspmc_0_IF_PS_CPM_s_axi_pcie_arlock),
        .s_axi_pcie_arprot(pspmc_0_IF_PS_CPM_s_axi_pcie_arprot),
        .s_axi_pcie_arqos(pspmc_0_IF_PS_CPM_s_axi_pcie_arqos),
        .s_axi_pcie_arready(pspmc_0_IF_PS_CPM_s_axi_pcie_arready),
        .s_axi_pcie_arregion(pspmc_0_IF_PS_CPM_s_axi_pcie_arregion),
        .s_axi_pcie_arsize(pspmc_0_IF_PS_CPM_s_axi_pcie_arsize),
        .s_axi_pcie_aruser(pspmc_0_IF_PS_CPM_s_axi_pcie_aruser),
        .s_axi_pcie_arvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_arvalid),
        .s_axi_pcie_awaddr(pspmc_0_IF_PS_CPM_s_axi_pcie_awaddr),
        .s_axi_pcie_awburst(pspmc_0_IF_PS_CPM_s_axi_pcie_awburst),
        .s_axi_pcie_awcache(pspmc_0_IF_PS_CPM_s_axi_pcie_awcache),
        .s_axi_pcie_awid(pspmc_0_IF_PS_CPM_s_axi_pcie_awid),
        .s_axi_pcie_awlen(pspmc_0_IF_PS_CPM_s_axi_pcie_awlen),
        .s_axi_pcie_awlock(pspmc_0_IF_PS_CPM_s_axi_pcie_awlock),
        .s_axi_pcie_awprot(pspmc_0_IF_PS_CPM_s_axi_pcie_awprot),
        .s_axi_pcie_awqos(pspmc_0_IF_PS_CPM_s_axi_pcie_awqos),
        .s_axi_pcie_awready(pspmc_0_IF_PS_CPM_s_axi_pcie_awready),
        .s_axi_pcie_awregion(pspmc_0_IF_PS_CPM_s_axi_pcie_awregion),
        .s_axi_pcie_awsize(pspmc_0_IF_PS_CPM_s_axi_pcie_awsize),
        .s_axi_pcie_awuser(pspmc_0_IF_PS_CPM_s_axi_pcie_awuser),
        .s_axi_pcie_awvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_awvalid),
        .s_axi_pcie_bid(pspmc_0_IF_PS_CPM_s_axi_pcie_bid),
        .s_axi_pcie_bready(pspmc_0_IF_PS_CPM_s_axi_pcie_bready),
        .s_axi_pcie_bresp(pspmc_0_IF_PS_CPM_s_axi_pcie_bresp),
        .s_axi_pcie_buser(pspmc_0_IF_PS_CPM_s_axi_pcie_buser),
        .s_axi_pcie_bvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_bvalid),
        .s_axi_pcie_rdata(pspmc_0_IF_PS_CPM_s_axi_pcie_rdata),
        .s_axi_pcie_rid(pspmc_0_IF_PS_CPM_s_axi_pcie_rid),
        .s_axi_pcie_rlast(pspmc_0_IF_PS_CPM_s_axi_pcie_rlast),
        .s_axi_pcie_rready(pspmc_0_IF_PS_CPM_s_axi_pcie_rready),
        .s_axi_pcie_rresp(pspmc_0_IF_PS_CPM_s_axi_pcie_rresp),
        .s_axi_pcie_ruser(pspmc_0_IF_PS_CPM_s_axi_pcie_ruser),
        .s_axi_pcie_rvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_rvalid),
        .s_axi_pcie_wdata(pspmc_0_IF_PS_CPM_s_axi_pcie_wdata),
        .s_axi_pcie_wid(pspmc_0_IF_PS_CPM_s_axi_pcie_wid),
        .s_axi_pcie_wlast(pspmc_0_IF_PS_CPM_s_axi_pcie_wlast),
        .s_axi_pcie_wready(pspmc_0_IF_PS_CPM_s_axi_pcie_wready),
        .s_axi_pcie_wstrb(pspmc_0_IF_PS_CPM_s_axi_pcie_wstrb),
        .s_axi_pcie_wuser(pspmc_0_IF_PS_CPM_s_axi_pcie_wuser),
        .s_axi_pcie_wvalid(pspmc_0_IF_PS_CPM_s_axi_pcie_wvalid),
        .xpipe0_powerdown(pspmc_0_IF_PS_CPM_xpipe0_powerdown),
        .xpipe0_rx_charisk(pspmc_0_IF_PS_CPM_xpipe0_rx_charisk),
        .xpipe0_rx_data(pspmc_0_IF_PS_CPM_xpipe0_rx_data),
        .xpipe0_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe0_rx_datavalid),
        .xpipe0_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe0_rx_elecidle),
        .xpipe0_rx_polarity(pspmc_0_IF_PS_CPM_xpipe0_rx_polarity),
        .xpipe0_rx_startblock(pspmc_0_IF_PS_CPM_xpipe0_rx_startblock),
        .xpipe0_rx_status(pspmc_0_IF_PS_CPM_xpipe0_rx_status),
        .xpipe0_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe0_rx_syncheader),
        .xpipe0_rx_termination(pspmc_0_IF_PS_CPM_xpipe0_rx_termination),
        .xpipe0_rx_valid(pspmc_0_IF_PS_CPM_xpipe0_rx_valid),
        .xpipe0_tx_charisk(pspmc_0_IF_PS_CPM_xpipe0_tx_charisk),
        .xpipe0_tx_compliance(pspmc_0_IF_PS_CPM_xpipe0_tx_compliance),
        .xpipe0_tx_data(pspmc_0_IF_PS_CPM_xpipe0_tx_data),
        .xpipe0_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe0_tx_datavalid),
        .xpipe0_tx_deemph(pspmc_0_IF_PS_CPM_xpipe0_tx_deemph),
        .xpipe0_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe0_tx_detectrxloopback),
        .xpipe0_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe0_tx_elecidle),
        .xpipe0_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe0_tx_maincursor),
        .xpipe0_tx_margin(pspmc_0_IF_PS_CPM_xpipe0_tx_margin),
        .xpipe0_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe0_tx_postcursor),
        .xpipe0_tx_precursor(pspmc_0_IF_PS_CPM_xpipe0_tx_precursor),
        .xpipe0_tx_startblock(pspmc_0_IF_PS_CPM_xpipe0_tx_startblock),
        .xpipe0_tx_swing(pspmc_0_IF_PS_CPM_xpipe0_tx_swing),
        .xpipe0_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe0_tx_syncheader),
        .xpipe10_phystatus(pspmc_0_IF_PS_CPM_xpipe10_phystatus),
        .xpipe10_powerdown(pspmc_0_IF_PS_CPM_xpipe10_powerdown),
        .xpipe10_rx_charisk(pspmc_0_IF_PS_CPM_xpipe10_rx_charisk),
        .xpipe10_rx_data(pspmc_0_IF_PS_CPM_xpipe10_rx_data),
        .xpipe10_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe10_rx_datavalid),
        .xpipe10_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe10_rx_elecidle),
        .xpipe10_rx_polarity(pspmc_0_IF_PS_CPM_xpipe10_rx_polarity),
        .xpipe10_rx_startblock(pspmc_0_IF_PS_CPM_xpipe10_rx_startblock),
        .xpipe10_rx_status(pspmc_0_IF_PS_CPM_xpipe10_rx_status),
        .xpipe10_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe10_rx_syncheader),
        .xpipe10_rx_termination(pspmc_0_IF_PS_CPM_xpipe10_rx_termination),
        .xpipe10_rx_valid(pspmc_0_IF_PS_CPM_xpipe10_rx_valid),
        .xpipe10_tx_charisk(pspmc_0_IF_PS_CPM_xpipe10_tx_charisk),
        .xpipe10_tx_compliance(pspmc_0_IF_PS_CPM_xpipe10_tx_compliance),
        .xpipe10_tx_data(pspmc_0_IF_PS_CPM_xpipe10_tx_data),
        .xpipe10_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe10_tx_datavalid),
        .xpipe10_tx_deemph(pspmc_0_IF_PS_CPM_xpipe10_tx_deemph),
        .xpipe10_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe10_tx_detectrxloopback),
        .xpipe10_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe10_tx_elecidle),
        .xpipe10_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe10_tx_maincursor),
        .xpipe10_tx_margin(pspmc_0_IF_PS_CPM_xpipe10_tx_margin),
        .xpipe10_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe10_tx_postcursor),
        .xpipe10_tx_precursor(pspmc_0_IF_PS_CPM_xpipe10_tx_precursor),
        .xpipe10_tx_startblock(pspmc_0_IF_PS_CPM_xpipe10_tx_startblock),
        .xpipe10_tx_swing(pspmc_0_IF_PS_CPM_xpipe10_tx_swing),
        .xpipe10_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe10_tx_syncheader),
        .xpipe11_phystatus(pspmc_0_IF_PS_CPM_xpipe11_phystatus),
        .xpipe11_powerdown(pspmc_0_IF_PS_CPM_xpipe11_powerdown),
        .xpipe11_rx_charisk(pspmc_0_IF_PS_CPM_xpipe11_rx_charisk),
        .xpipe11_rx_data(pspmc_0_IF_PS_CPM_xpipe11_rx_data),
        .xpipe11_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe11_rx_datavalid),
        .xpipe11_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe11_rx_elecidle),
        .xpipe11_rx_polarity(pspmc_0_IF_PS_CPM_xpipe11_rx_polarity),
        .xpipe11_rx_startblock(pspmc_0_IF_PS_CPM_xpipe11_rx_startblock),
        .xpipe11_rx_status(pspmc_0_IF_PS_CPM_xpipe11_rx_status),
        .xpipe11_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe11_rx_syncheader),
        .xpipe11_rx_termination(pspmc_0_IF_PS_CPM_xpipe11_rx_termination),
        .xpipe11_rx_valid(pspmc_0_IF_PS_CPM_xpipe11_rx_valid),
        .xpipe11_tx_charisk(pspmc_0_IF_PS_CPM_xpipe11_tx_charisk),
        .xpipe11_tx_compliance(pspmc_0_IF_PS_CPM_xpipe11_tx_compliance),
        .xpipe11_tx_data(pspmc_0_IF_PS_CPM_xpipe11_tx_data),
        .xpipe11_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe11_tx_datavalid),
        .xpipe11_tx_deemph(pspmc_0_IF_PS_CPM_xpipe11_tx_deemph),
        .xpipe11_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe11_tx_detectrxloopback),
        .xpipe11_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe11_tx_elecidle),
        .xpipe11_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe11_tx_maincursor),
        .xpipe11_tx_margin(pspmc_0_IF_PS_CPM_xpipe11_tx_margin),
        .xpipe11_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe11_tx_postcursor),
        .xpipe11_tx_precursor(pspmc_0_IF_PS_CPM_xpipe11_tx_precursor),
        .xpipe11_tx_startblock(pspmc_0_IF_PS_CPM_xpipe11_tx_startblock),
        .xpipe11_tx_swing(pspmc_0_IF_PS_CPM_xpipe11_tx_swing),
        .xpipe11_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe11_tx_syncheader),
        .xpipe12_phystatus(pspmc_0_IF_PS_CPM_xpipe12_phystatus),
        .xpipe12_powerdown(pspmc_0_IF_PS_CPM_xpipe12_powerdown),
        .xpipe12_rx_charisk(pspmc_0_IF_PS_CPM_xpipe12_rx_charisk),
        .xpipe12_rx_data(pspmc_0_IF_PS_CPM_xpipe12_rx_data),
        .xpipe12_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe12_rx_datavalid),
        .xpipe12_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe12_rx_elecidle),
        .xpipe12_rx_polarity(pspmc_0_IF_PS_CPM_xpipe12_rx_polarity),
        .xpipe12_rx_startblock(pspmc_0_IF_PS_CPM_xpipe12_rx_startblock),
        .xpipe12_rx_status(pspmc_0_IF_PS_CPM_xpipe12_rx_status),
        .xpipe12_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe12_rx_syncheader),
        .xpipe12_rx_termination(pspmc_0_IF_PS_CPM_xpipe12_rx_termination),
        .xpipe12_rx_valid(pspmc_0_IF_PS_CPM_xpipe12_rx_valid),
        .xpipe12_tx_charisk(pspmc_0_IF_PS_CPM_xpipe12_tx_charisk),
        .xpipe12_tx_compliance(pspmc_0_IF_PS_CPM_xpipe12_tx_compliance),
        .xpipe12_tx_data(pspmc_0_IF_PS_CPM_xpipe12_tx_data),
        .xpipe12_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe12_tx_datavalid),
        .xpipe12_tx_deemph(pspmc_0_IF_PS_CPM_xpipe12_tx_deemph),
        .xpipe12_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe12_tx_detectrxloopback),
        .xpipe12_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe12_tx_elecidle),
        .xpipe12_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe12_tx_maincursor),
        .xpipe12_tx_margin(pspmc_0_IF_PS_CPM_xpipe12_tx_margin),
        .xpipe12_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe12_tx_postcursor),
        .xpipe12_tx_precursor(pspmc_0_IF_PS_CPM_xpipe12_tx_precursor),
        .xpipe12_tx_startblock(pspmc_0_IF_PS_CPM_xpipe12_tx_startblock),
        .xpipe12_tx_swing(pspmc_0_IF_PS_CPM_xpipe12_tx_swing),
        .xpipe12_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe12_tx_syncheader),
        .xpipe13_phystatus(pspmc_0_IF_PS_CPM_xpipe13_phystatus),
        .xpipe13_powerdown(pspmc_0_IF_PS_CPM_xpipe13_powerdown),
        .xpipe13_rx_charisk(pspmc_0_IF_PS_CPM_xpipe13_rx_charisk),
        .xpipe13_rx_data(pspmc_0_IF_PS_CPM_xpipe13_rx_data),
        .xpipe13_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe13_rx_datavalid),
        .xpipe13_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe13_rx_elecidle),
        .xpipe13_rx_polarity(pspmc_0_IF_PS_CPM_xpipe13_rx_polarity),
        .xpipe13_rx_startblock(pspmc_0_IF_PS_CPM_xpipe13_rx_startblock),
        .xpipe13_rx_status(pspmc_0_IF_PS_CPM_xpipe13_rx_status),
        .xpipe13_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe13_rx_syncheader),
        .xpipe13_rx_termination(pspmc_0_IF_PS_CPM_xpipe13_rx_termination),
        .xpipe13_rx_valid(pspmc_0_IF_PS_CPM_xpipe13_rx_valid),
        .xpipe13_tx_charisk(pspmc_0_IF_PS_CPM_xpipe13_tx_charisk),
        .xpipe13_tx_compliance(pspmc_0_IF_PS_CPM_xpipe13_tx_compliance),
        .xpipe13_tx_data(pspmc_0_IF_PS_CPM_xpipe13_tx_data),
        .xpipe13_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe13_tx_datavalid),
        .xpipe13_tx_deemph(pspmc_0_IF_PS_CPM_xpipe13_tx_deemph),
        .xpipe13_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe13_tx_detectrxloopback),
        .xpipe13_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe13_tx_elecidle),
        .xpipe13_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe13_tx_maincursor),
        .xpipe13_tx_margin(pspmc_0_IF_PS_CPM_xpipe13_tx_margin),
        .xpipe13_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe13_tx_postcursor),
        .xpipe13_tx_precursor(pspmc_0_IF_PS_CPM_xpipe13_tx_precursor),
        .xpipe13_tx_startblock(pspmc_0_IF_PS_CPM_xpipe13_tx_startblock),
        .xpipe13_tx_swing(pspmc_0_IF_PS_CPM_xpipe13_tx_swing),
        .xpipe13_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe13_tx_syncheader),
        .xpipe14_phystatus(pspmc_0_IF_PS_CPM_xpipe14_phystatus),
        .xpipe14_powerdown(pspmc_0_IF_PS_CPM_xpipe14_powerdown),
        .xpipe14_rx_charisk(pspmc_0_IF_PS_CPM_xpipe14_rx_charisk),
        .xpipe14_rx_data(pspmc_0_IF_PS_CPM_xpipe14_rx_data),
        .xpipe14_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe14_rx_datavalid),
        .xpipe14_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe14_rx_elecidle),
        .xpipe14_rx_polarity(pspmc_0_IF_PS_CPM_xpipe14_rx_polarity),
        .xpipe14_rx_startblock(pspmc_0_IF_PS_CPM_xpipe14_rx_startblock),
        .xpipe14_rx_status(pspmc_0_IF_PS_CPM_xpipe14_rx_status),
        .xpipe14_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe14_rx_syncheader),
        .xpipe14_rx_termination(pspmc_0_IF_PS_CPM_xpipe14_rx_termination),
        .xpipe14_rx_valid(pspmc_0_IF_PS_CPM_xpipe14_rx_valid),
        .xpipe14_tx_charisk(pspmc_0_IF_PS_CPM_xpipe14_tx_charisk),
        .xpipe14_tx_compliance(pspmc_0_IF_PS_CPM_xpipe14_tx_compliance),
        .xpipe14_tx_data(pspmc_0_IF_PS_CPM_xpipe14_tx_data),
        .xpipe14_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe14_tx_datavalid),
        .xpipe14_tx_deemph(pspmc_0_IF_PS_CPM_xpipe14_tx_deemph),
        .xpipe14_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe14_tx_detectrxloopback),
        .xpipe14_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe14_tx_elecidle),
        .xpipe14_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe14_tx_maincursor),
        .xpipe14_tx_margin(pspmc_0_IF_PS_CPM_xpipe14_tx_margin),
        .xpipe14_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe14_tx_postcursor),
        .xpipe14_tx_precursor(pspmc_0_IF_PS_CPM_xpipe14_tx_precursor),
        .xpipe14_tx_startblock(pspmc_0_IF_PS_CPM_xpipe14_tx_startblock),
        .xpipe14_tx_swing(pspmc_0_IF_PS_CPM_xpipe14_tx_swing),
        .xpipe14_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe14_tx_syncheader),
        .xpipe15_phystatus(pspmc_0_IF_PS_CPM_xpipe15_phystatus),
        .xpipe15_powerdown(pspmc_0_IF_PS_CPM_xpipe15_powerdown),
        .xpipe15_rx_charisk(pspmc_0_IF_PS_CPM_xpipe15_rx_charisk),
        .xpipe15_rx_data(pspmc_0_IF_PS_CPM_xpipe15_rx_data),
        .xpipe15_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe15_rx_datavalid),
        .xpipe15_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe15_rx_elecidle),
        .xpipe15_rx_polarity(pspmc_0_IF_PS_CPM_xpipe15_rx_polarity),
        .xpipe15_rx_startblock(pspmc_0_IF_PS_CPM_xpipe15_rx_startblock),
        .xpipe15_rx_status(pspmc_0_IF_PS_CPM_xpipe15_rx_status),
        .xpipe15_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe15_rx_syncheader),
        .xpipe15_rx_termination(pspmc_0_IF_PS_CPM_xpipe15_rx_termination),
        .xpipe15_rx_valid(pspmc_0_IF_PS_CPM_xpipe15_rx_valid),
        .xpipe15_tx_charisk(pspmc_0_IF_PS_CPM_xpipe15_tx_charisk),
        .xpipe15_tx_compliance(pspmc_0_IF_PS_CPM_xpipe15_tx_compliance),
        .xpipe15_tx_data(pspmc_0_IF_PS_CPM_xpipe15_tx_data),
        .xpipe15_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe15_tx_datavalid),
        .xpipe15_tx_deemph(pspmc_0_IF_PS_CPM_xpipe15_tx_deemph),
        .xpipe15_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe15_tx_detectrxloopback),
        .xpipe15_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe15_tx_elecidle),
        .xpipe15_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe15_tx_maincursor),
        .xpipe15_tx_margin(pspmc_0_IF_PS_CPM_xpipe15_tx_margin),
        .xpipe15_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe15_tx_postcursor),
        .xpipe15_tx_precursor(pspmc_0_IF_PS_CPM_xpipe15_tx_precursor),
        .xpipe15_tx_startblock(pspmc_0_IF_PS_CPM_xpipe15_tx_startblock),
        .xpipe15_tx_swing(pspmc_0_IF_PS_CPM_xpipe15_tx_swing),
        .xpipe15_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe15_tx_syncheader),
        .xpipe1_phystatus(pspmc_0_IF_PS_CPM_xpipe1_phystatus),
        .xpipe1_powerdown(pspmc_0_IF_PS_CPM_xpipe1_powerdown),
        .xpipe1_rx_charisk(pspmc_0_IF_PS_CPM_xpipe1_rx_charisk),
        .xpipe1_rx_data(pspmc_0_IF_PS_CPM_xpipe1_rx_data),
        .xpipe1_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe1_rx_datavalid),
        .xpipe1_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe1_rx_elecidle),
        .xpipe1_rx_polarity(pspmc_0_IF_PS_CPM_xpipe1_rx_polarity),
        .xpipe1_rx_startblock(pspmc_0_IF_PS_CPM_xpipe1_rx_startblock),
        .xpipe1_rx_status(pspmc_0_IF_PS_CPM_xpipe1_rx_status),
        .xpipe1_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe1_rx_syncheader),
        .xpipe1_rx_termination(pspmc_0_IF_PS_CPM_xpipe1_rx_termination),
        .xpipe1_rx_valid(pspmc_0_IF_PS_CPM_xpipe1_rx_valid),
        .xpipe1_tx_charisk(pspmc_0_IF_PS_CPM_xpipe1_tx_charisk),
        .xpipe1_tx_compliance(pspmc_0_IF_PS_CPM_xpipe1_tx_compliance),
        .xpipe1_tx_data(pspmc_0_IF_PS_CPM_xpipe1_tx_data),
        .xpipe1_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe1_tx_datavalid),
        .xpipe1_tx_deemph(pspmc_0_IF_PS_CPM_xpipe1_tx_deemph),
        .xpipe1_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe1_tx_detectrxloopback),
        .xpipe1_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe1_tx_elecidle),
        .xpipe1_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe1_tx_maincursor),
        .xpipe1_tx_margin(pspmc_0_IF_PS_CPM_xpipe1_tx_margin),
        .xpipe1_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe1_tx_postcursor),
        .xpipe1_tx_precursor(pspmc_0_IF_PS_CPM_xpipe1_tx_precursor),
        .xpipe1_tx_startblock(pspmc_0_IF_PS_CPM_xpipe1_tx_startblock),
        .xpipe1_tx_swing(pspmc_0_IF_PS_CPM_xpipe1_tx_swing),
        .xpipe1_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe1_tx_syncheader),
        .xpipe2_phystatus(pspmc_0_IF_PS_CPM_xpipe2_phystatus),
        .xpipe2_powerdown(pspmc_0_IF_PS_CPM_xpipe2_powerdown),
        .xpipe2_rx_charisk(pspmc_0_IF_PS_CPM_xpipe2_rx_charisk),
        .xpipe2_rx_data(pspmc_0_IF_PS_CPM_xpipe2_rx_data),
        .xpipe2_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe2_rx_datavalid),
        .xpipe2_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe2_rx_elecidle),
        .xpipe2_rx_polarity(pspmc_0_IF_PS_CPM_xpipe2_rx_polarity),
        .xpipe2_rx_startblock(pspmc_0_IF_PS_CPM_xpipe2_rx_startblock),
        .xpipe2_rx_status(pspmc_0_IF_PS_CPM_xpipe2_rx_status),
        .xpipe2_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe2_rx_syncheader),
        .xpipe2_rx_termination(pspmc_0_IF_PS_CPM_xpipe2_rx_termination),
        .xpipe2_rx_valid(pspmc_0_IF_PS_CPM_xpipe2_rx_valid),
        .xpipe2_tx_charisk(pspmc_0_IF_PS_CPM_xpipe2_tx_charisk),
        .xpipe2_tx_compliance(pspmc_0_IF_PS_CPM_xpipe2_tx_compliance),
        .xpipe2_tx_data(pspmc_0_IF_PS_CPM_xpipe2_tx_data),
        .xpipe2_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe2_tx_datavalid),
        .xpipe2_tx_deemph(pspmc_0_IF_PS_CPM_xpipe2_tx_deemph),
        .xpipe2_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe2_tx_detectrxloopback),
        .xpipe2_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe2_tx_elecidle),
        .xpipe2_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe2_tx_maincursor),
        .xpipe2_tx_margin(pspmc_0_IF_PS_CPM_xpipe2_tx_margin),
        .xpipe2_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe2_tx_postcursor),
        .xpipe2_tx_precursor(pspmc_0_IF_PS_CPM_xpipe2_tx_precursor),
        .xpipe2_tx_startblock(pspmc_0_IF_PS_CPM_xpipe2_tx_startblock),
        .xpipe2_tx_swing(pspmc_0_IF_PS_CPM_xpipe2_tx_swing),
        .xpipe2_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe2_tx_syncheader),
        .xpipe3_phystatus(pspmc_0_IF_PS_CPM_xpipe3_phystatus),
        .xpipe3_powerdown(pspmc_0_IF_PS_CPM_xpipe3_powerdown),
        .xpipe3_rx_charisk(pspmc_0_IF_PS_CPM_xpipe3_rx_charisk),
        .xpipe3_rx_data(pspmc_0_IF_PS_CPM_xpipe3_rx_data),
        .xpipe3_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe3_rx_datavalid),
        .xpipe3_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe3_rx_elecidle),
        .xpipe3_rx_polarity(pspmc_0_IF_PS_CPM_xpipe3_rx_polarity),
        .xpipe3_rx_startblock(pspmc_0_IF_PS_CPM_xpipe3_rx_startblock),
        .xpipe3_rx_status(pspmc_0_IF_PS_CPM_xpipe3_rx_status),
        .xpipe3_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe3_rx_syncheader),
        .xpipe3_rx_termination(pspmc_0_IF_PS_CPM_xpipe3_rx_termination),
        .xpipe3_rx_valid(pspmc_0_IF_PS_CPM_xpipe3_rx_valid),
        .xpipe3_tx_charisk(pspmc_0_IF_PS_CPM_xpipe3_tx_charisk),
        .xpipe3_tx_compliance(pspmc_0_IF_PS_CPM_xpipe3_tx_compliance),
        .xpipe3_tx_data(pspmc_0_IF_PS_CPM_xpipe3_tx_data),
        .xpipe3_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe3_tx_datavalid),
        .xpipe3_tx_deemph(pspmc_0_IF_PS_CPM_xpipe3_tx_deemph),
        .xpipe3_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe3_tx_detectrxloopback),
        .xpipe3_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe3_tx_elecidle),
        .xpipe3_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe3_tx_maincursor),
        .xpipe3_tx_margin(pspmc_0_IF_PS_CPM_xpipe3_tx_margin),
        .xpipe3_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe3_tx_postcursor),
        .xpipe3_tx_precursor(pspmc_0_IF_PS_CPM_xpipe3_tx_precursor),
        .xpipe3_tx_startblock(pspmc_0_IF_PS_CPM_xpipe3_tx_startblock),
        .xpipe3_tx_swing(pspmc_0_IF_PS_CPM_xpipe3_tx_swing),
        .xpipe3_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe3_tx_syncheader),
        .xpipe4_phystatus(pspmc_0_IF_PS_CPM_xpipe4_phystatus),
        .xpipe4_powerdown(pspmc_0_IF_PS_CPM_xpipe4_powerdown),
        .xpipe4_rx_charisk(pspmc_0_IF_PS_CPM_xpipe4_rx_charisk),
        .xpipe4_rx_data(pspmc_0_IF_PS_CPM_xpipe4_rx_data),
        .xpipe4_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe4_rx_datavalid),
        .xpipe4_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe4_rx_elecidle),
        .xpipe4_rx_polarity(pspmc_0_IF_PS_CPM_xpipe4_rx_polarity),
        .xpipe4_rx_startblock(pspmc_0_IF_PS_CPM_xpipe4_rx_startblock),
        .xpipe4_rx_status(pspmc_0_IF_PS_CPM_xpipe4_rx_status),
        .xpipe4_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe4_rx_syncheader),
        .xpipe4_rx_termination(pspmc_0_IF_PS_CPM_xpipe4_rx_termination),
        .xpipe4_rx_valid(pspmc_0_IF_PS_CPM_xpipe4_rx_valid),
        .xpipe4_tx_charisk(pspmc_0_IF_PS_CPM_xpipe4_tx_charisk),
        .xpipe4_tx_compliance(pspmc_0_IF_PS_CPM_xpipe4_tx_compliance),
        .xpipe4_tx_data(pspmc_0_IF_PS_CPM_xpipe4_tx_data),
        .xpipe4_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe4_tx_datavalid),
        .xpipe4_tx_deemph(pspmc_0_IF_PS_CPM_xpipe4_tx_deemph),
        .xpipe4_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe4_tx_detectrxloopback),
        .xpipe4_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe4_tx_elecidle),
        .xpipe4_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe4_tx_maincursor),
        .xpipe4_tx_margin(pspmc_0_IF_PS_CPM_xpipe4_tx_margin),
        .xpipe4_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe4_tx_postcursor),
        .xpipe4_tx_precursor(pspmc_0_IF_PS_CPM_xpipe4_tx_precursor),
        .xpipe4_tx_startblock(pspmc_0_IF_PS_CPM_xpipe4_tx_startblock),
        .xpipe4_tx_swing(pspmc_0_IF_PS_CPM_xpipe4_tx_swing),
        .xpipe4_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe4_tx_syncheader),
        .xpipe5_phystatus(pspmc_0_IF_PS_CPM_xpipe5_phystatus),
        .xpipe5_powerdown(pspmc_0_IF_PS_CPM_xpipe5_powerdown),
        .xpipe5_rx_charisk(pspmc_0_IF_PS_CPM_xpipe5_rx_charisk),
        .xpipe5_rx_data(pspmc_0_IF_PS_CPM_xpipe5_rx_data),
        .xpipe5_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe5_rx_datavalid),
        .xpipe5_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe5_rx_elecidle),
        .xpipe5_rx_polarity(pspmc_0_IF_PS_CPM_xpipe5_rx_polarity),
        .xpipe5_rx_startblock(pspmc_0_IF_PS_CPM_xpipe5_rx_startblock),
        .xpipe5_rx_status(pspmc_0_IF_PS_CPM_xpipe5_rx_status),
        .xpipe5_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe5_rx_syncheader),
        .xpipe5_rx_termination(pspmc_0_IF_PS_CPM_xpipe5_rx_termination),
        .xpipe5_rx_valid(pspmc_0_IF_PS_CPM_xpipe5_rx_valid),
        .xpipe5_tx_charisk(pspmc_0_IF_PS_CPM_xpipe5_tx_charisk),
        .xpipe5_tx_compliance(pspmc_0_IF_PS_CPM_xpipe5_tx_compliance),
        .xpipe5_tx_data(pspmc_0_IF_PS_CPM_xpipe5_tx_data),
        .xpipe5_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe5_tx_datavalid),
        .xpipe5_tx_deemph(pspmc_0_IF_PS_CPM_xpipe5_tx_deemph),
        .xpipe5_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe5_tx_detectrxloopback),
        .xpipe5_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe5_tx_elecidle),
        .xpipe5_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe5_tx_maincursor),
        .xpipe5_tx_margin(pspmc_0_IF_PS_CPM_xpipe5_tx_margin),
        .xpipe5_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe5_tx_postcursor),
        .xpipe5_tx_precursor(pspmc_0_IF_PS_CPM_xpipe5_tx_precursor),
        .xpipe5_tx_startblock(pspmc_0_IF_PS_CPM_xpipe5_tx_startblock),
        .xpipe5_tx_swing(pspmc_0_IF_PS_CPM_xpipe5_tx_swing),
        .xpipe5_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe5_tx_syncheader),
        .xpipe6_phystatus(pspmc_0_IF_PS_CPM_xpipe6_phystatus),
        .xpipe6_powerdown(pspmc_0_IF_PS_CPM_xpipe6_powerdown),
        .xpipe6_rx_charisk(pspmc_0_IF_PS_CPM_xpipe6_rx_charisk),
        .xpipe6_rx_data(pspmc_0_IF_PS_CPM_xpipe6_rx_data),
        .xpipe6_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe6_rx_datavalid),
        .xpipe6_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe6_rx_elecidle),
        .xpipe6_rx_polarity(pspmc_0_IF_PS_CPM_xpipe6_rx_polarity),
        .xpipe6_rx_startblock(pspmc_0_IF_PS_CPM_xpipe6_rx_startblock),
        .xpipe6_rx_status(pspmc_0_IF_PS_CPM_xpipe6_rx_status),
        .xpipe6_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe6_rx_syncheader),
        .xpipe6_rx_termination(pspmc_0_IF_PS_CPM_xpipe6_rx_termination),
        .xpipe6_rx_valid(pspmc_0_IF_PS_CPM_xpipe6_rx_valid),
        .xpipe6_tx_charisk(pspmc_0_IF_PS_CPM_xpipe6_tx_charisk),
        .xpipe6_tx_compliance(pspmc_0_IF_PS_CPM_xpipe6_tx_compliance),
        .xpipe6_tx_data(pspmc_0_IF_PS_CPM_xpipe6_tx_data),
        .xpipe6_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe6_tx_datavalid),
        .xpipe6_tx_deemph(pspmc_0_IF_PS_CPM_xpipe6_tx_deemph),
        .xpipe6_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe6_tx_detectrxloopback),
        .xpipe6_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe6_tx_elecidle),
        .xpipe6_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe6_tx_maincursor),
        .xpipe6_tx_margin(pspmc_0_IF_PS_CPM_xpipe6_tx_margin),
        .xpipe6_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe6_tx_postcursor),
        .xpipe6_tx_precursor(pspmc_0_IF_PS_CPM_xpipe6_tx_precursor),
        .xpipe6_tx_startblock(pspmc_0_IF_PS_CPM_xpipe6_tx_startblock),
        .xpipe6_tx_swing(pspmc_0_IF_PS_CPM_xpipe6_tx_swing),
        .xpipe6_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe6_tx_syncheader),
        .xpipe7_phystatus(pspmc_0_IF_PS_CPM_xpipe7_phystatus),
        .xpipe7_powerdown(pspmc_0_IF_PS_CPM_xpipe7_powerdown),
        .xpipe7_rx_charisk(pspmc_0_IF_PS_CPM_xpipe7_rx_charisk),
        .xpipe7_rx_data(pspmc_0_IF_PS_CPM_xpipe7_rx_data),
        .xpipe7_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe7_rx_datavalid),
        .xpipe7_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe7_rx_elecidle),
        .xpipe7_rx_polarity(pspmc_0_IF_PS_CPM_xpipe7_rx_polarity),
        .xpipe7_rx_startblock(pspmc_0_IF_PS_CPM_xpipe7_rx_startblock),
        .xpipe7_rx_status(pspmc_0_IF_PS_CPM_xpipe7_rx_status),
        .xpipe7_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe7_rx_syncheader),
        .xpipe7_rx_termination(pspmc_0_IF_PS_CPM_xpipe7_rx_termination),
        .xpipe7_rx_valid(pspmc_0_IF_PS_CPM_xpipe7_rx_valid),
        .xpipe7_tx_charisk(pspmc_0_IF_PS_CPM_xpipe7_tx_charisk),
        .xpipe7_tx_compliance(pspmc_0_IF_PS_CPM_xpipe7_tx_compliance),
        .xpipe7_tx_data(pspmc_0_IF_PS_CPM_xpipe7_tx_data),
        .xpipe7_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe7_tx_datavalid),
        .xpipe7_tx_deemph(pspmc_0_IF_PS_CPM_xpipe7_tx_deemph),
        .xpipe7_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe7_tx_detectrxloopback),
        .xpipe7_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe7_tx_elecidle),
        .xpipe7_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe7_tx_maincursor),
        .xpipe7_tx_margin(pspmc_0_IF_PS_CPM_xpipe7_tx_margin),
        .xpipe7_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe7_tx_postcursor),
        .xpipe7_tx_precursor(pspmc_0_IF_PS_CPM_xpipe7_tx_precursor),
        .xpipe7_tx_startblock(pspmc_0_IF_PS_CPM_xpipe7_tx_startblock),
        .xpipe7_tx_swing(pspmc_0_IF_PS_CPM_xpipe7_tx_swing),
        .xpipe7_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe7_tx_syncheader),
        .xpipe8_phystatus(pspmc_0_IF_PS_CPM_xpipe8_phystatus),
        .xpipe8_powerdown(pspmc_0_IF_PS_CPM_xpipe8_powerdown),
        .xpipe8_rx_charisk(pspmc_0_IF_PS_CPM_xpipe8_rx_charisk),
        .xpipe8_rx_data(pspmc_0_IF_PS_CPM_xpipe8_rx_data),
        .xpipe8_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe8_rx_datavalid),
        .xpipe8_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe8_rx_elecidle),
        .xpipe8_rx_polarity(pspmc_0_IF_PS_CPM_xpipe8_rx_polarity),
        .xpipe8_rx_startblock(pspmc_0_IF_PS_CPM_xpipe8_rx_startblock),
        .xpipe8_rx_status(pspmc_0_IF_PS_CPM_xpipe8_rx_status),
        .xpipe8_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe8_rx_syncheader),
        .xpipe8_rx_termination(pspmc_0_IF_PS_CPM_xpipe8_rx_termination),
        .xpipe8_rx_valid(pspmc_0_IF_PS_CPM_xpipe8_rx_valid),
        .xpipe8_tx_charisk(pspmc_0_IF_PS_CPM_xpipe8_tx_charisk),
        .xpipe8_tx_compliance(pspmc_0_IF_PS_CPM_xpipe8_tx_compliance),
        .xpipe8_tx_data(pspmc_0_IF_PS_CPM_xpipe8_tx_data),
        .xpipe8_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe8_tx_datavalid),
        .xpipe8_tx_deemph(pspmc_0_IF_PS_CPM_xpipe8_tx_deemph),
        .xpipe8_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe8_tx_detectrxloopback),
        .xpipe8_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe8_tx_elecidle),
        .xpipe8_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe8_tx_maincursor),
        .xpipe8_tx_margin(pspmc_0_IF_PS_CPM_xpipe8_tx_margin),
        .xpipe8_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe8_tx_postcursor),
        .xpipe8_tx_precursor(pspmc_0_IF_PS_CPM_xpipe8_tx_precursor),
        .xpipe8_tx_startblock(pspmc_0_IF_PS_CPM_xpipe8_tx_startblock),
        .xpipe8_tx_swing(pspmc_0_IF_PS_CPM_xpipe8_tx_swing),
        .xpipe8_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe8_tx_syncheader),
        .xpipe9_phystatus(pspmc_0_IF_PS_CPM_xpipe9_phystatus),
        .xpipe9_powerdown(pspmc_0_IF_PS_CPM_xpipe9_powerdown),
        .xpipe9_rx_charisk(pspmc_0_IF_PS_CPM_xpipe9_rx_charisk),
        .xpipe9_rx_data(pspmc_0_IF_PS_CPM_xpipe9_rx_data),
        .xpipe9_rx_datavalid(pspmc_0_IF_PS_CPM_xpipe9_rx_datavalid),
        .xpipe9_rx_elecidle(pspmc_0_IF_PS_CPM_xpipe9_rx_elecidle),
        .xpipe9_rx_polarity(pspmc_0_IF_PS_CPM_xpipe9_rx_polarity),
        .xpipe9_rx_startblock(pspmc_0_IF_PS_CPM_xpipe9_rx_startblock),
        .xpipe9_rx_status(pspmc_0_IF_PS_CPM_xpipe9_rx_status),
        .xpipe9_rx_syncheader(pspmc_0_IF_PS_CPM_xpipe9_rx_syncheader),
        .xpipe9_rx_termination(pspmc_0_IF_PS_CPM_xpipe9_rx_termination),
        .xpipe9_rx_valid(pspmc_0_IF_PS_CPM_xpipe9_rx_valid),
        .xpipe9_tx_charisk(pspmc_0_IF_PS_CPM_xpipe9_tx_charisk),
        .xpipe9_tx_compliance(pspmc_0_IF_PS_CPM_xpipe9_tx_compliance),
        .xpipe9_tx_data(pspmc_0_IF_PS_CPM_xpipe9_tx_data),
        .xpipe9_tx_datavalid(pspmc_0_IF_PS_CPM_xpipe9_tx_datavalid),
        .xpipe9_tx_deemph(pspmc_0_IF_PS_CPM_xpipe9_tx_deemph),
        .xpipe9_tx_detectrxloopback(pspmc_0_IF_PS_CPM_xpipe9_tx_detectrxloopback),
        .xpipe9_tx_elecidle(pspmc_0_IF_PS_CPM_xpipe9_tx_elecidle),
        .xpipe9_tx_maincursor(pspmc_0_IF_PS_CPM_xpipe9_tx_maincursor),
        .xpipe9_tx_margin(pspmc_0_IF_PS_CPM_xpipe9_tx_margin),
        .xpipe9_tx_postcursor(pspmc_0_IF_PS_CPM_xpipe9_tx_postcursor),
        .xpipe9_tx_precursor(pspmc_0_IF_PS_CPM_xpipe9_tx_precursor),
        .xpipe9_tx_startblock(pspmc_0_IF_PS_CPM_xpipe9_tx_startblock),
        .xpipe9_tx_swing(pspmc_0_IF_PS_CPM_xpipe9_tx_swing),
        .xpipe9_tx_syncheader(pspmc_0_IF_PS_CPM_xpipe9_tx_syncheader),
        .xpipe_q0_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_ack),
        .xpipe_q0_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_cmd),
        .xpipe_q0_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_lanenum),
        .xpipe_q0_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_payload),
        .xpipe_q0_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_req_req),
        .xpipe_q0_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_ack),
        .xpipe_q0_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_cmd),
        .xpipe_q0_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_lanenum),
        .xpipe_q0_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_payload),
        .xpipe_q0_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q0_rxmargin_res_req),
        .xpipe_q1_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_ack),
        .xpipe_q1_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_cmd),
        .xpipe_q1_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_lanenum),
        .xpipe_q1_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_payload),
        .xpipe_q1_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_req_req),
        .xpipe_q1_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_ack),
        .xpipe_q1_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_cmd),
        .xpipe_q1_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_lanenum),
        .xpipe_q1_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_payload),
        .xpipe_q1_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q1_rxmargin_res_req),
        .xpipe_q2_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_ack),
        .xpipe_q2_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_cmd),
        .xpipe_q2_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_lanenum),
        .xpipe_q2_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_payload),
        .xpipe_q2_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_req_req),
        .xpipe_q2_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_ack),
        .xpipe_q2_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_cmd),
        .xpipe_q2_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_lanenum),
        .xpipe_q2_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_payload),
        .xpipe_q2_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q2_rxmargin_res_req),
        .xpipe_q3_rxmargin_req_ack(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_ack),
        .xpipe_q3_rxmargin_req_cmd(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_cmd),
        .xpipe_q3_rxmargin_req_lanenum(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_lanenum),
        .xpipe_q3_rxmargin_req_payload(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_payload),
        .xpipe_q3_rxmargin_req_req(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_req_req),
        .xpipe_q3_rxmargin_res_ack(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_ack),
        .xpipe_q3_rxmargin_res_cmd(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_cmd),
        .xpipe_q3_rxmargin_res_lanenum(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_lanenum),
        .xpipe_q3_rxmargin_res_payload(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_payload),
        .xpipe_q3_rxmargin_res_req(pspmc_0_IF_PS_CPM_xpipe_q3_rxmargin_res_req));
endmodule
