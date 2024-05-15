//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Wed May  8 17:23:03 2024
//Host        : Vulcan running 64-bit major release  (build 9200)
//Command     : generate_target cpm_qdma_ep_part_wrapper.bd
//Design      : cpm_qdma_ep_part_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module cpm_qdma_ep_part_wrapper
   (CH0_LPDDR4_0_0_ca_a,
    CH0_LPDDR4_0_0_ca_b,
    CH0_LPDDR4_0_0_ck_c_a,
    CH0_LPDDR4_0_0_ck_c_b,
    CH0_LPDDR4_0_0_ck_t_a,
    CH0_LPDDR4_0_0_ck_t_b,
    CH0_LPDDR4_0_0_cke_a,
    CH0_LPDDR4_0_0_cke_b,
    CH0_LPDDR4_0_0_cs_a,
    CH0_LPDDR4_0_0_cs_b,
    CH0_LPDDR4_0_0_dmi_a,
    CH0_LPDDR4_0_0_dmi_b,
    CH0_LPDDR4_0_0_dq_a,
    CH0_LPDDR4_0_0_dq_b,
    CH0_LPDDR4_0_0_dqs_c_a,
    CH0_LPDDR4_0_0_dqs_c_b,
    CH0_LPDDR4_0_0_dqs_t_a,
    CH0_LPDDR4_0_0_dqs_t_b,
    CH0_LPDDR4_0_0_reset_n,
    CH1_LPDDR4_0_0_ca_a,
    CH1_LPDDR4_0_0_ca_b,
    CH1_LPDDR4_0_0_ck_c_a,
    CH1_LPDDR4_0_0_ck_c_b,
    CH1_LPDDR4_0_0_ck_t_a,
    CH1_LPDDR4_0_0_ck_t_b,
    CH1_LPDDR4_0_0_cke_a,
    CH1_LPDDR4_0_0_cke_b,
    CH1_LPDDR4_0_0_cs_a,
    CH1_LPDDR4_0_0_cs_b,
    CH1_LPDDR4_0_0_dmi_a,
    CH1_LPDDR4_0_0_dmi_b,
    CH1_LPDDR4_0_0_dq_a,
    CH1_LPDDR4_0_0_dq_b,
    CH1_LPDDR4_0_0_dqs_c_a,
    CH1_LPDDR4_0_0_dqs_c_b,
    CH1_LPDDR4_0_0_dqs_t_a,
    CH1_LPDDR4_0_0_dqs_t_b,
    CH1_LPDDR4_0_0_reset_n,
    M_AXIL_araddr,
    M_AXIL_arprot,
    M_AXIL_arready,
    M_AXIL_arvalid,
    M_AXIL_awaddr,
    M_AXIL_awprot,
    M_AXIL_awready,
    M_AXIL_awvalid,
    M_AXIL_bready,
    M_AXIL_bresp,
    M_AXIL_bvalid,
    M_AXIL_rdata,
    M_AXIL_rready,
    M_AXIL_rresp,
    M_AXIL_rvalid,
    M_AXIL_wdata,
    M_AXIL_wready,
    M_AXIL_wstrb,
    M_AXIL_wvalid,
    PCIE1_GT_0_grx_n,
    PCIE1_GT_0_grx_p,
    PCIE1_GT_0_gtx_n,
    PCIE1_GT_0_gtx_p,
    S_AXIL_araddr,
    S_AXIL_arprot,
    S_AXIL_arready,
    S_AXIL_arvalid,
    S_AXIL_awaddr,
    S_AXIL_awprot,
    S_AXIL_awready,
    S_AXIL_awvalid,
    S_AXIL_bready,
    S_AXIL_bresp,
    S_AXIL_bvalid,
    S_AXIL_rdata,
    S_AXIL_rready,
    S_AXIL_rresp,
    S_AXIL_rvalid,
    S_AXIL_wdata,
    S_AXIL_wready,
    S_AXIL_wstrb,
    S_AXIL_wvalid,
    cpm_cor_irq_0,
    cpm_irq0_0,
    cpm_irq1_0,
    cpm_misc_irq_0,
    cpm_uncor_irq_0,
    dma1_axi_aresetn_0,
    dma1_axis_c2h_dmawr_0_cmp,
    dma1_axis_c2h_dmawr_0_port_id,
    dma1_axis_c2h_dmawr_0_target_vch,
    dma1_axis_c2h_status_0_drop,
    dma1_axis_c2h_status_0_error,
    dma1_axis_c2h_status_0_last,
    dma1_axis_c2h_status_0_qid,
    dma1_axis_c2h_status_0_status_cmp,
    dma1_axis_c2h_status_0_valid,
    dma1_c2h_byp_in_mm_0_0_cidx,
    dma1_c2h_byp_in_mm_0_0_error,
    dma1_c2h_byp_in_mm_0_0_func,
    dma1_c2h_byp_in_mm_0_0_len,
    dma1_c2h_byp_in_mm_0_0_mrkr_req,
    dma1_c2h_byp_in_mm_0_0_no_dma,
    dma1_c2h_byp_in_mm_0_0_port_id,
    dma1_c2h_byp_in_mm_0_0_qid,
    dma1_c2h_byp_in_mm_0_0_radr,
    dma1_c2h_byp_in_mm_0_0_ready,
    dma1_c2h_byp_in_mm_0_0_sdi,
    dma1_c2h_byp_in_mm_0_0_valid,
    dma1_c2h_byp_in_mm_0_0_wadr,
    dma1_c2h_byp_in_mm_1_0_cidx,
    dma1_c2h_byp_in_mm_1_0_error,
    dma1_c2h_byp_in_mm_1_0_func,
    dma1_c2h_byp_in_mm_1_0_len,
    dma1_c2h_byp_in_mm_1_0_mrkr_req,
    dma1_c2h_byp_in_mm_1_0_no_dma,
    dma1_c2h_byp_in_mm_1_0_port_id,
    dma1_c2h_byp_in_mm_1_0_qid,
    dma1_c2h_byp_in_mm_1_0_radr,
    dma1_c2h_byp_in_mm_1_0_ready,
    dma1_c2h_byp_in_mm_1_0_sdi,
    dma1_c2h_byp_in_mm_1_0_valid,
    dma1_c2h_byp_in_mm_1_0_wadr,
    dma1_c2h_byp_in_st_csh_0_addr,
    dma1_c2h_byp_in_st_csh_0_error,
    dma1_c2h_byp_in_st_csh_0_func,
    dma1_c2h_byp_in_st_csh_0_pfch_tag,
    dma1_c2h_byp_in_st_csh_0_port_id,
    dma1_c2h_byp_in_st_csh_0_qid,
    dma1_c2h_byp_in_st_csh_0_ready,
    dma1_c2h_byp_in_st_csh_0_valid,
    dma1_c2h_byp_out_0_cidx,
    dma1_c2h_byp_out_0_dsc,
    dma1_c2h_byp_out_0_dsc_sz,
    dma1_c2h_byp_out_0_error,
    dma1_c2h_byp_out_0_fmt,
    dma1_c2h_byp_out_0_func,
    dma1_c2h_byp_out_0_mm_chn,
    dma1_c2h_byp_out_0_pfch_tag,
    dma1_c2h_byp_out_0_port_id,
    dma1_c2h_byp_out_0_qid,
    dma1_c2h_byp_out_0_ready,
    dma1_c2h_byp_out_0_st_mm,
    dma1_c2h_byp_out_0_valid,
    dma1_dsc_crdt_in_0_crdt,
    dma1_dsc_crdt_in_0_dir,
    dma1_dsc_crdt_in_0_fence,
    dma1_dsc_crdt_in_0_qid,
    dma1_dsc_crdt_in_0_rdy,
    dma1_dsc_crdt_in_0_valid,
    dma1_h2c_byp_in_mm_0_0_cidx,
    dma1_h2c_byp_in_mm_0_0_error,
    dma1_h2c_byp_in_mm_0_0_func,
    dma1_h2c_byp_in_mm_0_0_len,
    dma1_h2c_byp_in_mm_0_0_mrkr_req,
    dma1_h2c_byp_in_mm_0_0_no_dma,
    dma1_h2c_byp_in_mm_0_0_port_id,
    dma1_h2c_byp_in_mm_0_0_qid,
    dma1_h2c_byp_in_mm_0_0_radr,
    dma1_h2c_byp_in_mm_0_0_ready,
    dma1_h2c_byp_in_mm_0_0_sdi,
    dma1_h2c_byp_in_mm_0_0_valid,
    dma1_h2c_byp_in_mm_0_0_wadr,
    dma1_h2c_byp_in_mm_1_0_cidx,
    dma1_h2c_byp_in_mm_1_0_error,
    dma1_h2c_byp_in_mm_1_0_func,
    dma1_h2c_byp_in_mm_1_0_len,
    dma1_h2c_byp_in_mm_1_0_mrkr_req,
    dma1_h2c_byp_in_mm_1_0_no_dma,
    dma1_h2c_byp_in_mm_1_0_port_id,
    dma1_h2c_byp_in_mm_1_0_qid,
    dma1_h2c_byp_in_mm_1_0_radr,
    dma1_h2c_byp_in_mm_1_0_ready,
    dma1_h2c_byp_in_mm_1_0_sdi,
    dma1_h2c_byp_in_mm_1_0_valid,
    dma1_h2c_byp_in_mm_1_0_wadr,
    dma1_h2c_byp_in_st_0_addr,
    dma1_h2c_byp_in_st_0_cidx,
    dma1_h2c_byp_in_st_0_eop,
    dma1_h2c_byp_in_st_0_error,
    dma1_h2c_byp_in_st_0_func,
    dma1_h2c_byp_in_st_0_len,
    dma1_h2c_byp_in_st_0_mrkr_req,
    dma1_h2c_byp_in_st_0_no_dma,
    dma1_h2c_byp_in_st_0_port_id,
    dma1_h2c_byp_in_st_0_qid,
    dma1_h2c_byp_in_st_0_ready,
    dma1_h2c_byp_in_st_0_sdi,
    dma1_h2c_byp_in_st_0_sop,
    dma1_h2c_byp_in_st_0_valid,
    dma1_h2c_byp_out_0_cidx,
    dma1_h2c_byp_out_0_dsc,
    dma1_h2c_byp_out_0_dsc_sz,
    dma1_h2c_byp_out_0_error,
    dma1_h2c_byp_out_0_fmt,
    dma1_h2c_byp_out_0_func,
    dma1_h2c_byp_out_0_mm_chn,
    dma1_h2c_byp_out_0_port_id,
    dma1_h2c_byp_out_0_qid,
    dma1_h2c_byp_out_0_ready,
    dma1_h2c_byp_out_0_st_mm,
    dma1_h2c_byp_out_0_valid,
    dma1_intrfc_clk_0,
    dma1_intrfc_resetn_0,
    dma1_m_axis_h2c_0_err,
    dma1_m_axis_h2c_0_mdata,
    dma1_m_axis_h2c_0_mty,
    dma1_m_axis_h2c_0_port_id,
    dma1_m_axis_h2c_0_qid,
    dma1_m_axis_h2c_0_tcrc,
    dma1_m_axis_h2c_0_tdata,
    dma1_m_axis_h2c_0_tlast,
    dma1_m_axis_h2c_0_tready,
    dma1_m_axis_h2c_0_tvalid,
    dma1_m_axis_h2c_0_zero_byte,
    dma1_qsts_out_0_data,
    dma1_qsts_out_0_op,
    dma1_qsts_out_0_port_id,
    dma1_qsts_out_0_qid,
    dma1_qsts_out_0_rdy,
    dma1_qsts_out_0_vld,
    dma1_s_axis_c2h_0_ctrl_has_cmpt,
    dma1_s_axis_c2h_0_ctrl_len,
    dma1_s_axis_c2h_0_ctrl_marker,
    dma1_s_axis_c2h_0_ctrl_port_id,
    dma1_s_axis_c2h_0_ctrl_qid,
    dma1_s_axis_c2h_0_ecc,
    dma1_s_axis_c2h_0_mty,
    dma1_s_axis_c2h_0_tcrc,
    dma1_s_axis_c2h_0_tdata,
    dma1_s_axis_c2h_0_tlast,
    dma1_s_axis_c2h_0_tready,
    dma1_s_axis_c2h_0_tvalid,
    dma1_s_axis_c2h_cmpt_0_cmpt_type,
    dma1_s_axis_c2h_cmpt_0_col_idx,
    dma1_s_axis_c2h_cmpt_0_data,
    dma1_s_axis_c2h_cmpt_0_dpar,
    dma1_s_axis_c2h_cmpt_0_err_idx,
    dma1_s_axis_c2h_cmpt_0_marker,
    dma1_s_axis_c2h_cmpt_0_no_wrb_marker,
    dma1_s_axis_c2h_cmpt_0_port_id,
    dma1_s_axis_c2h_cmpt_0_qid,
    dma1_s_axis_c2h_cmpt_0_size,
    dma1_s_axis_c2h_cmpt_0_tready,
    dma1_s_axis_c2h_cmpt_0_tvalid,
    dma1_s_axis_c2h_cmpt_0_user_trig,
    dma1_s_axis_c2h_cmpt_0_wait_pld_pkt_id,
    dma1_st_rx_msg_0_tdata,
    dma1_st_rx_msg_0_tlast,
    dma1_st_rx_msg_0_tready,
    dma1_st_rx_msg_0_tvalid,
    dma1_tm_dsc_sts_0_avl,
    dma1_tm_dsc_sts_0_byp,
    dma1_tm_dsc_sts_0_dir,
    dma1_tm_dsc_sts_0_error,
    dma1_tm_dsc_sts_0_irq_arm,
    dma1_tm_dsc_sts_0_mm,
    dma1_tm_dsc_sts_0_pidx,
    dma1_tm_dsc_sts_0_port_id,
    dma1_tm_dsc_sts_0_qen,
    dma1_tm_dsc_sts_0_qid,
    dma1_tm_dsc_sts_0_qinv,
    dma1_tm_dsc_sts_0_rdy,
    dma1_tm_dsc_sts_0_valid,
    gt_refclk1_0_clk_n,
    gt_refclk1_0_clk_p,
    pcie0_user_lnk_up_0,
    sys_clk0_0_clk_n,
    sys_clk0_0_clk_p,
    usr_flr_0_clear,
    usr_flr_0_done_fnc,
    usr_flr_0_done_vld,
    usr_flr_0_fnc,
    usr_flr_0_set,
    usr_irq_0_ack,
    usr_irq_0_fail,
    usr_irq_0_fnc,
    usr_irq_0_valid,
    usr_irq_0_vec);
  output [5:0]CH0_LPDDR4_0_0_ca_a;
  output [5:0]CH0_LPDDR4_0_0_ca_b;
  output [0:0]CH0_LPDDR4_0_0_ck_c_a;
  output [0:0]CH0_LPDDR4_0_0_ck_c_b;
  output [0:0]CH0_LPDDR4_0_0_ck_t_a;
  output [0:0]CH0_LPDDR4_0_0_ck_t_b;
  output [0:0]CH0_LPDDR4_0_0_cke_a;
  output [0:0]CH0_LPDDR4_0_0_cke_b;
  output [0:0]CH0_LPDDR4_0_0_cs_a;
  output [0:0]CH0_LPDDR4_0_0_cs_b;
  inout [1:0]CH0_LPDDR4_0_0_dmi_a;
  inout [1:0]CH0_LPDDR4_0_0_dmi_b;
  inout [15:0]CH0_LPDDR4_0_0_dq_a;
  inout [15:0]CH0_LPDDR4_0_0_dq_b;
  inout [1:0]CH0_LPDDR4_0_0_dqs_c_a;
  inout [1:0]CH0_LPDDR4_0_0_dqs_c_b;
  inout [1:0]CH0_LPDDR4_0_0_dqs_t_a;
  inout [1:0]CH0_LPDDR4_0_0_dqs_t_b;
  output [0:0]CH0_LPDDR4_0_0_reset_n;
  output [5:0]CH1_LPDDR4_0_0_ca_a;
  output [5:0]CH1_LPDDR4_0_0_ca_b;
  output [0:0]CH1_LPDDR4_0_0_ck_c_a;
  output [0:0]CH1_LPDDR4_0_0_ck_c_b;
  output [0:0]CH1_LPDDR4_0_0_ck_t_a;
  output [0:0]CH1_LPDDR4_0_0_ck_t_b;
  output [0:0]CH1_LPDDR4_0_0_cke_a;
  output [0:0]CH1_LPDDR4_0_0_cke_b;
  output [0:0]CH1_LPDDR4_0_0_cs_a;
  output [0:0]CH1_LPDDR4_0_0_cs_b;
  inout [1:0]CH1_LPDDR4_0_0_dmi_a;
  inout [1:0]CH1_LPDDR4_0_0_dmi_b;
  inout [15:0]CH1_LPDDR4_0_0_dq_a;
  inout [15:0]CH1_LPDDR4_0_0_dq_b;
  inout [1:0]CH1_LPDDR4_0_0_dqs_c_a;
  inout [1:0]CH1_LPDDR4_0_0_dqs_c_b;
  inout [1:0]CH1_LPDDR4_0_0_dqs_t_a;
  inout [1:0]CH1_LPDDR4_0_0_dqs_t_b;
  output [0:0]CH1_LPDDR4_0_0_reset_n;
  output [41:0]M_AXIL_araddr;
  output [2:0]M_AXIL_arprot;
  input M_AXIL_arready;
  output M_AXIL_arvalid;
  output [41:0]M_AXIL_awaddr;
  output [2:0]M_AXIL_awprot;
  input M_AXIL_awready;
  output M_AXIL_awvalid;
  output M_AXIL_bready;
  input [1:0]M_AXIL_bresp;
  input M_AXIL_bvalid;
  input [31:0]M_AXIL_rdata;
  output M_AXIL_rready;
  input [1:0]M_AXIL_rresp;
  input M_AXIL_rvalid;
  output [31:0]M_AXIL_wdata;
  input M_AXIL_wready;
  output [3:0]M_AXIL_wstrb;
  output M_AXIL_wvalid;
  input [7:0]PCIE1_GT_0_grx_n;
  input [7:0]PCIE1_GT_0_grx_p;
  output [7:0]PCIE1_GT_0_gtx_n;
  output [7:0]PCIE1_GT_0_gtx_p;
  input [11:0]S_AXIL_araddr;
  input [2:0]S_AXIL_arprot;
  output S_AXIL_arready;
  input S_AXIL_arvalid;
  input [11:0]S_AXIL_awaddr;
  input [2:0]S_AXIL_awprot;
  output S_AXIL_awready;
  input S_AXIL_awvalid;
  input S_AXIL_bready;
  output [1:0]S_AXIL_bresp;
  output S_AXIL_bvalid;
  output [31:0]S_AXIL_rdata;
  input S_AXIL_rready;
  output [1:0]S_AXIL_rresp;
  output S_AXIL_rvalid;
  input [31:0]S_AXIL_wdata;
  output S_AXIL_wready;
  input [3:0]S_AXIL_wstrb;
  input S_AXIL_wvalid;
  output cpm_cor_irq_0;
  input cpm_irq0_0;
  input cpm_irq1_0;
  output cpm_misc_irq_0;
  output cpm_uncor_irq_0;
  output dma1_axi_aresetn_0;
  output dma1_axis_c2h_dmawr_0_cmp;
  output [2:0]dma1_axis_c2h_dmawr_0_port_id;
  output dma1_axis_c2h_dmawr_0_target_vch;
  output dma1_axis_c2h_status_0_drop;
  output dma1_axis_c2h_status_0_error;
  output dma1_axis_c2h_status_0_last;
  output [11:0]dma1_axis_c2h_status_0_qid;
  output dma1_axis_c2h_status_0_status_cmp;
  output dma1_axis_c2h_status_0_valid;
  input [15:0]dma1_c2h_byp_in_mm_0_0_cidx;
  input dma1_c2h_byp_in_mm_0_0_error;
  input [11:0]dma1_c2h_byp_in_mm_0_0_func;
  input [15:0]dma1_c2h_byp_in_mm_0_0_len;
  input dma1_c2h_byp_in_mm_0_0_mrkr_req;
  input dma1_c2h_byp_in_mm_0_0_no_dma;
  input [2:0]dma1_c2h_byp_in_mm_0_0_port_id;
  input [11:0]dma1_c2h_byp_in_mm_0_0_qid;
  input [63:0]dma1_c2h_byp_in_mm_0_0_radr;
  output dma1_c2h_byp_in_mm_0_0_ready;
  input dma1_c2h_byp_in_mm_0_0_sdi;
  input dma1_c2h_byp_in_mm_0_0_valid;
  input [63:0]dma1_c2h_byp_in_mm_0_0_wadr;
  input [15:0]dma1_c2h_byp_in_mm_1_0_cidx;
  input dma1_c2h_byp_in_mm_1_0_error;
  input [11:0]dma1_c2h_byp_in_mm_1_0_func;
  input [15:0]dma1_c2h_byp_in_mm_1_0_len;
  input dma1_c2h_byp_in_mm_1_0_mrkr_req;
  input dma1_c2h_byp_in_mm_1_0_no_dma;
  input [2:0]dma1_c2h_byp_in_mm_1_0_port_id;
  input [11:0]dma1_c2h_byp_in_mm_1_0_qid;
  input [63:0]dma1_c2h_byp_in_mm_1_0_radr;
  output dma1_c2h_byp_in_mm_1_0_ready;
  input dma1_c2h_byp_in_mm_1_0_sdi;
  input dma1_c2h_byp_in_mm_1_0_valid;
  input [63:0]dma1_c2h_byp_in_mm_1_0_wadr;
  input [63:0]dma1_c2h_byp_in_st_csh_0_addr;
  input dma1_c2h_byp_in_st_csh_0_error;
  input [11:0]dma1_c2h_byp_in_st_csh_0_func;
  input [6:0]dma1_c2h_byp_in_st_csh_0_pfch_tag;
  input [2:0]dma1_c2h_byp_in_st_csh_0_port_id;
  input [11:0]dma1_c2h_byp_in_st_csh_0_qid;
  output dma1_c2h_byp_in_st_csh_0_ready;
  input dma1_c2h_byp_in_st_csh_0_valid;
  output [15:0]dma1_c2h_byp_out_0_cidx;
  output [255:0]dma1_c2h_byp_out_0_dsc;
  output [1:0]dma1_c2h_byp_out_0_dsc_sz;
  output dma1_c2h_byp_out_0_error;
  output [2:0]dma1_c2h_byp_out_0_fmt;
  output [11:0]dma1_c2h_byp_out_0_func;
  output dma1_c2h_byp_out_0_mm_chn;
  output [6:0]dma1_c2h_byp_out_0_pfch_tag;
  output [2:0]dma1_c2h_byp_out_0_port_id;
  output [11:0]dma1_c2h_byp_out_0_qid;
  input dma1_c2h_byp_out_0_ready;
  output dma1_c2h_byp_out_0_st_mm;
  output dma1_c2h_byp_out_0_valid;
  input [15:0]dma1_dsc_crdt_in_0_crdt;
  input dma1_dsc_crdt_in_0_dir;
  input dma1_dsc_crdt_in_0_fence;
  input [11:0]dma1_dsc_crdt_in_0_qid;
  output dma1_dsc_crdt_in_0_rdy;
  input dma1_dsc_crdt_in_0_valid;
  input [15:0]dma1_h2c_byp_in_mm_0_0_cidx;
  input dma1_h2c_byp_in_mm_0_0_error;
  input [11:0]dma1_h2c_byp_in_mm_0_0_func;
  input [15:0]dma1_h2c_byp_in_mm_0_0_len;
  input dma1_h2c_byp_in_mm_0_0_mrkr_req;
  input dma1_h2c_byp_in_mm_0_0_no_dma;
  input [2:0]dma1_h2c_byp_in_mm_0_0_port_id;
  input [11:0]dma1_h2c_byp_in_mm_0_0_qid;
  input [63:0]dma1_h2c_byp_in_mm_0_0_radr;
  output dma1_h2c_byp_in_mm_0_0_ready;
  input dma1_h2c_byp_in_mm_0_0_sdi;
  input dma1_h2c_byp_in_mm_0_0_valid;
  input [63:0]dma1_h2c_byp_in_mm_0_0_wadr;
  input [15:0]dma1_h2c_byp_in_mm_1_0_cidx;
  input dma1_h2c_byp_in_mm_1_0_error;
  input [11:0]dma1_h2c_byp_in_mm_1_0_func;
  input [15:0]dma1_h2c_byp_in_mm_1_0_len;
  input dma1_h2c_byp_in_mm_1_0_mrkr_req;
  input dma1_h2c_byp_in_mm_1_0_no_dma;
  input [2:0]dma1_h2c_byp_in_mm_1_0_port_id;
  input [11:0]dma1_h2c_byp_in_mm_1_0_qid;
  input [63:0]dma1_h2c_byp_in_mm_1_0_radr;
  output dma1_h2c_byp_in_mm_1_0_ready;
  input dma1_h2c_byp_in_mm_1_0_sdi;
  input dma1_h2c_byp_in_mm_1_0_valid;
  input [63:0]dma1_h2c_byp_in_mm_1_0_wadr;
  input [63:0]dma1_h2c_byp_in_st_0_addr;
  input [15:0]dma1_h2c_byp_in_st_0_cidx;
  input dma1_h2c_byp_in_st_0_eop;
  input dma1_h2c_byp_in_st_0_error;
  input [11:0]dma1_h2c_byp_in_st_0_func;
  input [15:0]dma1_h2c_byp_in_st_0_len;
  input dma1_h2c_byp_in_st_0_mrkr_req;
  input dma1_h2c_byp_in_st_0_no_dma;
  input [2:0]dma1_h2c_byp_in_st_0_port_id;
  input [11:0]dma1_h2c_byp_in_st_0_qid;
  output dma1_h2c_byp_in_st_0_ready;
  input dma1_h2c_byp_in_st_0_sdi;
  input dma1_h2c_byp_in_st_0_sop;
  input dma1_h2c_byp_in_st_0_valid;
  output [15:0]dma1_h2c_byp_out_0_cidx;
  output [255:0]dma1_h2c_byp_out_0_dsc;
  output [1:0]dma1_h2c_byp_out_0_dsc_sz;
  output dma1_h2c_byp_out_0_error;
  output [2:0]dma1_h2c_byp_out_0_fmt;
  output [11:0]dma1_h2c_byp_out_0_func;
  output dma1_h2c_byp_out_0_mm_chn;
  output [2:0]dma1_h2c_byp_out_0_port_id;
  output [11:0]dma1_h2c_byp_out_0_qid;
  input dma1_h2c_byp_out_0_ready;
  output dma1_h2c_byp_out_0_st_mm;
  output dma1_h2c_byp_out_0_valid;
  output dma1_intrfc_clk_0;
  input dma1_intrfc_resetn_0;
  output dma1_m_axis_h2c_0_err;
  output [31:0]dma1_m_axis_h2c_0_mdata;
  output [5:0]dma1_m_axis_h2c_0_mty;
  output [2:0]dma1_m_axis_h2c_0_port_id;
  output [11:0]dma1_m_axis_h2c_0_qid;
  output [31:0]dma1_m_axis_h2c_0_tcrc;
  output [511:0]dma1_m_axis_h2c_0_tdata;
  output dma1_m_axis_h2c_0_tlast;
  input dma1_m_axis_h2c_0_tready;
  output dma1_m_axis_h2c_0_tvalid;
  output dma1_m_axis_h2c_0_zero_byte;
  output [63:0]dma1_qsts_out_0_data;
  output [7:0]dma1_qsts_out_0_op;
  output [2:0]dma1_qsts_out_0_port_id;
  output [12:0]dma1_qsts_out_0_qid;
  input dma1_qsts_out_0_rdy;
  output dma1_qsts_out_0_vld;
  input dma1_s_axis_c2h_0_ctrl_has_cmpt;
  input [15:0]dma1_s_axis_c2h_0_ctrl_len;
  input dma1_s_axis_c2h_0_ctrl_marker;
  input [2:0]dma1_s_axis_c2h_0_ctrl_port_id;
  input [11:0]dma1_s_axis_c2h_0_ctrl_qid;
  input [6:0]dma1_s_axis_c2h_0_ecc;
  input [5:0]dma1_s_axis_c2h_0_mty;
  input [31:0]dma1_s_axis_c2h_0_tcrc;
  input [511:0]dma1_s_axis_c2h_0_tdata;
  input dma1_s_axis_c2h_0_tlast;
  output dma1_s_axis_c2h_0_tready;
  input dma1_s_axis_c2h_0_tvalid;
  input [1:0]dma1_s_axis_c2h_cmpt_0_cmpt_type;
  input [2:0]dma1_s_axis_c2h_cmpt_0_col_idx;
  input [511:0]dma1_s_axis_c2h_cmpt_0_data;
  input [15:0]dma1_s_axis_c2h_cmpt_0_dpar;
  input [2:0]dma1_s_axis_c2h_cmpt_0_err_idx;
  input dma1_s_axis_c2h_cmpt_0_marker;
  input dma1_s_axis_c2h_cmpt_0_no_wrb_marker;
  input [2:0]dma1_s_axis_c2h_cmpt_0_port_id;
  input [12:0]dma1_s_axis_c2h_cmpt_0_qid;
  input [1:0]dma1_s_axis_c2h_cmpt_0_size;
  output dma1_s_axis_c2h_cmpt_0_tready;
  input dma1_s_axis_c2h_cmpt_0_tvalid;
  input dma1_s_axis_c2h_cmpt_0_user_trig;
  input [15:0]dma1_s_axis_c2h_cmpt_0_wait_pld_pkt_id;
  output [31:0]dma1_st_rx_msg_0_tdata;
  output dma1_st_rx_msg_0_tlast;
  input dma1_st_rx_msg_0_tready;
  output dma1_st_rx_msg_0_tvalid;
  output [15:0]dma1_tm_dsc_sts_0_avl;
  output dma1_tm_dsc_sts_0_byp;
  output dma1_tm_dsc_sts_0_dir;
  output dma1_tm_dsc_sts_0_error;
  output dma1_tm_dsc_sts_0_irq_arm;
  output dma1_tm_dsc_sts_0_mm;
  output [15:0]dma1_tm_dsc_sts_0_pidx;
  output [2:0]dma1_tm_dsc_sts_0_port_id;
  output dma1_tm_dsc_sts_0_qen;
  output [11:0]dma1_tm_dsc_sts_0_qid;
  output dma1_tm_dsc_sts_0_qinv;
  input dma1_tm_dsc_sts_0_rdy;
  output dma1_tm_dsc_sts_0_valid;
  input gt_refclk1_0_clk_n;
  input gt_refclk1_0_clk_p;
  output pcie0_user_lnk_up_0;
  input [0:0]sys_clk0_0_clk_n;
  input [0:0]sys_clk0_0_clk_p;
  output usr_flr_0_clear;
  input [11:0]usr_flr_0_done_fnc;
  input usr_flr_0_done_vld;
  output [11:0]usr_flr_0_fnc;
  output usr_flr_0_set;
  output usr_irq_0_ack;
  output usr_irq_0_fail;
  input [11:0]usr_irq_0_fnc;
  input usr_irq_0_valid;
  input [4:0]usr_irq_0_vec;

  wire [5:0]CH0_LPDDR4_0_0_ca_a;
  wire [5:0]CH0_LPDDR4_0_0_ca_b;
  wire [0:0]CH0_LPDDR4_0_0_ck_c_a;
  wire [0:0]CH0_LPDDR4_0_0_ck_c_b;
  wire [0:0]CH0_LPDDR4_0_0_ck_t_a;
  wire [0:0]CH0_LPDDR4_0_0_ck_t_b;
  wire [0:0]CH0_LPDDR4_0_0_cke_a;
  wire [0:0]CH0_LPDDR4_0_0_cke_b;
  wire [0:0]CH0_LPDDR4_0_0_cs_a;
  wire [0:0]CH0_LPDDR4_0_0_cs_b;
  wire [1:0]CH0_LPDDR4_0_0_dmi_a;
  wire [1:0]CH0_LPDDR4_0_0_dmi_b;
  wire [15:0]CH0_LPDDR4_0_0_dq_a;
  wire [15:0]CH0_LPDDR4_0_0_dq_b;
  wire [1:0]CH0_LPDDR4_0_0_dqs_c_a;
  wire [1:0]CH0_LPDDR4_0_0_dqs_c_b;
  wire [1:0]CH0_LPDDR4_0_0_dqs_t_a;
  wire [1:0]CH0_LPDDR4_0_0_dqs_t_b;
  wire [0:0]CH0_LPDDR4_0_0_reset_n;
  wire [5:0]CH1_LPDDR4_0_0_ca_a;
  wire [5:0]CH1_LPDDR4_0_0_ca_b;
  wire [0:0]CH1_LPDDR4_0_0_ck_c_a;
  wire [0:0]CH1_LPDDR4_0_0_ck_c_b;
  wire [0:0]CH1_LPDDR4_0_0_ck_t_a;
  wire [0:0]CH1_LPDDR4_0_0_ck_t_b;
  wire [0:0]CH1_LPDDR4_0_0_cke_a;
  wire [0:0]CH1_LPDDR4_0_0_cke_b;
  wire [0:0]CH1_LPDDR4_0_0_cs_a;
  wire [0:0]CH1_LPDDR4_0_0_cs_b;
  wire [1:0]CH1_LPDDR4_0_0_dmi_a;
  wire [1:0]CH1_LPDDR4_0_0_dmi_b;
  wire [15:0]CH1_LPDDR4_0_0_dq_a;
  wire [15:0]CH1_LPDDR4_0_0_dq_b;
  wire [1:0]CH1_LPDDR4_0_0_dqs_c_a;
  wire [1:0]CH1_LPDDR4_0_0_dqs_c_b;
  wire [1:0]CH1_LPDDR4_0_0_dqs_t_a;
  wire [1:0]CH1_LPDDR4_0_0_dqs_t_b;
  wire [0:0]CH1_LPDDR4_0_0_reset_n;
  wire [41:0]M_AXIL_araddr;
  wire [2:0]M_AXIL_arprot;
  wire M_AXIL_arready;
  wire M_AXIL_arvalid;
  wire [41:0]M_AXIL_awaddr;
  wire [2:0]M_AXIL_awprot;
  wire M_AXIL_awready;
  wire M_AXIL_awvalid;
  wire M_AXIL_bready;
  wire [1:0]M_AXIL_bresp;
  wire M_AXIL_bvalid;
  wire [31:0]M_AXIL_rdata;
  wire M_AXIL_rready;
  wire [1:0]M_AXIL_rresp;
  wire M_AXIL_rvalid;
  wire [31:0]M_AXIL_wdata;
  wire M_AXIL_wready;
  wire [3:0]M_AXIL_wstrb;
  wire M_AXIL_wvalid;
  wire [7:0]PCIE1_GT_0_grx_n;
  wire [7:0]PCIE1_GT_0_grx_p;
  wire [7:0]PCIE1_GT_0_gtx_n;
  wire [7:0]PCIE1_GT_0_gtx_p;
  wire [11:0]S_AXIL_araddr;
  wire [2:0]S_AXIL_arprot;
  wire S_AXIL_arready;
  wire S_AXIL_arvalid;
  wire [11:0]S_AXIL_awaddr;
  wire [2:0]S_AXIL_awprot;
  wire S_AXIL_awready;
  wire S_AXIL_awvalid;
  wire S_AXIL_bready;
  wire [1:0]S_AXIL_bresp;
  wire S_AXIL_bvalid;
  wire [31:0]S_AXIL_rdata;
  wire S_AXIL_rready;
  wire [1:0]S_AXIL_rresp;
  wire S_AXIL_rvalid;
  wire [31:0]S_AXIL_wdata;
  wire S_AXIL_wready;
  wire [3:0]S_AXIL_wstrb;
  wire S_AXIL_wvalid;
  wire cpm_cor_irq_0;
  wire cpm_irq0_0;
  wire cpm_irq1_0;
  wire cpm_misc_irq_0;
  wire cpm_uncor_irq_0;
  wire dma1_axi_aresetn_0;
  wire dma1_axis_c2h_dmawr_0_cmp;
  wire [2:0]dma1_axis_c2h_dmawr_0_port_id;
  wire dma1_axis_c2h_dmawr_0_target_vch;
  wire dma1_axis_c2h_status_0_drop;
  wire dma1_axis_c2h_status_0_error;
  wire dma1_axis_c2h_status_0_last;
  wire [11:0]dma1_axis_c2h_status_0_qid;
  wire dma1_axis_c2h_status_0_status_cmp;
  wire dma1_axis_c2h_status_0_valid;
  wire [15:0]dma1_c2h_byp_in_mm_0_0_cidx;
  wire dma1_c2h_byp_in_mm_0_0_error;
  wire [11:0]dma1_c2h_byp_in_mm_0_0_func;
  wire [15:0]dma1_c2h_byp_in_mm_0_0_len;
  wire dma1_c2h_byp_in_mm_0_0_mrkr_req;
  wire dma1_c2h_byp_in_mm_0_0_no_dma;
  wire [2:0]dma1_c2h_byp_in_mm_0_0_port_id;
  wire [11:0]dma1_c2h_byp_in_mm_0_0_qid;
  wire [63:0]dma1_c2h_byp_in_mm_0_0_radr;
  wire dma1_c2h_byp_in_mm_0_0_ready;
  wire dma1_c2h_byp_in_mm_0_0_sdi;
  wire dma1_c2h_byp_in_mm_0_0_valid;
  wire [63:0]dma1_c2h_byp_in_mm_0_0_wadr;
  wire [15:0]dma1_c2h_byp_in_mm_1_0_cidx;
  wire dma1_c2h_byp_in_mm_1_0_error;
  wire [11:0]dma1_c2h_byp_in_mm_1_0_func;
  wire [15:0]dma1_c2h_byp_in_mm_1_0_len;
  wire dma1_c2h_byp_in_mm_1_0_mrkr_req;
  wire dma1_c2h_byp_in_mm_1_0_no_dma;
  wire [2:0]dma1_c2h_byp_in_mm_1_0_port_id;
  wire [11:0]dma1_c2h_byp_in_mm_1_0_qid;
  wire [63:0]dma1_c2h_byp_in_mm_1_0_radr;
  wire dma1_c2h_byp_in_mm_1_0_ready;
  wire dma1_c2h_byp_in_mm_1_0_sdi;
  wire dma1_c2h_byp_in_mm_1_0_valid;
  wire [63:0]dma1_c2h_byp_in_mm_1_0_wadr;
  wire [63:0]dma1_c2h_byp_in_st_csh_0_addr;
  wire dma1_c2h_byp_in_st_csh_0_error;
  wire [11:0]dma1_c2h_byp_in_st_csh_0_func;
  wire [6:0]dma1_c2h_byp_in_st_csh_0_pfch_tag;
  wire [2:0]dma1_c2h_byp_in_st_csh_0_port_id;
  wire [11:0]dma1_c2h_byp_in_st_csh_0_qid;
  wire dma1_c2h_byp_in_st_csh_0_ready;
  wire dma1_c2h_byp_in_st_csh_0_valid;
  wire [15:0]dma1_c2h_byp_out_0_cidx;
  wire [255:0]dma1_c2h_byp_out_0_dsc;
  wire [1:0]dma1_c2h_byp_out_0_dsc_sz;
  wire dma1_c2h_byp_out_0_error;
  wire [2:0]dma1_c2h_byp_out_0_fmt;
  wire [11:0]dma1_c2h_byp_out_0_func;
  wire dma1_c2h_byp_out_0_mm_chn;
  wire [6:0]dma1_c2h_byp_out_0_pfch_tag;
  wire [2:0]dma1_c2h_byp_out_0_port_id;
  wire [11:0]dma1_c2h_byp_out_0_qid;
  wire dma1_c2h_byp_out_0_ready;
  wire dma1_c2h_byp_out_0_st_mm;
  wire dma1_c2h_byp_out_0_valid;
  wire [15:0]dma1_dsc_crdt_in_0_crdt;
  wire dma1_dsc_crdt_in_0_dir;
  wire dma1_dsc_crdt_in_0_fence;
  wire [11:0]dma1_dsc_crdt_in_0_qid;
  wire dma1_dsc_crdt_in_0_rdy;
  wire dma1_dsc_crdt_in_0_valid;
  wire [15:0]dma1_h2c_byp_in_mm_0_0_cidx;
  wire dma1_h2c_byp_in_mm_0_0_error;
  wire [11:0]dma1_h2c_byp_in_mm_0_0_func;
  wire [15:0]dma1_h2c_byp_in_mm_0_0_len;
  wire dma1_h2c_byp_in_mm_0_0_mrkr_req;
  wire dma1_h2c_byp_in_mm_0_0_no_dma;
  wire [2:0]dma1_h2c_byp_in_mm_0_0_port_id;
  wire [11:0]dma1_h2c_byp_in_mm_0_0_qid;
  wire [63:0]dma1_h2c_byp_in_mm_0_0_radr;
  wire dma1_h2c_byp_in_mm_0_0_ready;
  wire dma1_h2c_byp_in_mm_0_0_sdi;
  wire dma1_h2c_byp_in_mm_0_0_valid;
  wire [63:0]dma1_h2c_byp_in_mm_0_0_wadr;
  wire [15:0]dma1_h2c_byp_in_mm_1_0_cidx;
  wire dma1_h2c_byp_in_mm_1_0_error;
  wire [11:0]dma1_h2c_byp_in_mm_1_0_func;
  wire [15:0]dma1_h2c_byp_in_mm_1_0_len;
  wire dma1_h2c_byp_in_mm_1_0_mrkr_req;
  wire dma1_h2c_byp_in_mm_1_0_no_dma;
  wire [2:0]dma1_h2c_byp_in_mm_1_0_port_id;
  wire [11:0]dma1_h2c_byp_in_mm_1_0_qid;
  wire [63:0]dma1_h2c_byp_in_mm_1_0_radr;
  wire dma1_h2c_byp_in_mm_1_0_ready;
  wire dma1_h2c_byp_in_mm_1_0_sdi;
  wire dma1_h2c_byp_in_mm_1_0_valid;
  wire [63:0]dma1_h2c_byp_in_mm_1_0_wadr;
  wire [63:0]dma1_h2c_byp_in_st_0_addr;
  wire [15:0]dma1_h2c_byp_in_st_0_cidx;
  wire dma1_h2c_byp_in_st_0_eop;
  wire dma1_h2c_byp_in_st_0_error;
  wire [11:0]dma1_h2c_byp_in_st_0_func;
  wire [15:0]dma1_h2c_byp_in_st_0_len;
  wire dma1_h2c_byp_in_st_0_mrkr_req;
  wire dma1_h2c_byp_in_st_0_no_dma;
  wire [2:0]dma1_h2c_byp_in_st_0_port_id;
  wire [11:0]dma1_h2c_byp_in_st_0_qid;
  wire dma1_h2c_byp_in_st_0_ready;
  wire dma1_h2c_byp_in_st_0_sdi;
  wire dma1_h2c_byp_in_st_0_sop;
  wire dma1_h2c_byp_in_st_0_valid;
  wire [15:0]dma1_h2c_byp_out_0_cidx;
  wire [255:0]dma1_h2c_byp_out_0_dsc;
  wire [1:0]dma1_h2c_byp_out_0_dsc_sz;
  wire dma1_h2c_byp_out_0_error;
  wire [2:0]dma1_h2c_byp_out_0_fmt;
  wire [11:0]dma1_h2c_byp_out_0_func;
  wire dma1_h2c_byp_out_0_mm_chn;
  wire [2:0]dma1_h2c_byp_out_0_port_id;
  wire [11:0]dma1_h2c_byp_out_0_qid;
  wire dma1_h2c_byp_out_0_ready;
  wire dma1_h2c_byp_out_0_st_mm;
  wire dma1_h2c_byp_out_0_valid;
  wire dma1_intrfc_clk_0;
  wire dma1_intrfc_resetn_0;
  wire dma1_m_axis_h2c_0_err;
  wire [31:0]dma1_m_axis_h2c_0_mdata;
  wire [5:0]dma1_m_axis_h2c_0_mty;
  wire [2:0]dma1_m_axis_h2c_0_port_id;
  wire [11:0]dma1_m_axis_h2c_0_qid;
  wire [31:0]dma1_m_axis_h2c_0_tcrc;
  wire [511:0]dma1_m_axis_h2c_0_tdata;
  wire dma1_m_axis_h2c_0_tlast;
  wire dma1_m_axis_h2c_0_tready;
  wire dma1_m_axis_h2c_0_tvalid;
  wire dma1_m_axis_h2c_0_zero_byte;
  wire [63:0]dma1_qsts_out_0_data;
  wire [7:0]dma1_qsts_out_0_op;
  wire [2:0]dma1_qsts_out_0_port_id;
  wire [12:0]dma1_qsts_out_0_qid;
  wire dma1_qsts_out_0_rdy;
  wire dma1_qsts_out_0_vld;
  wire dma1_s_axis_c2h_0_ctrl_has_cmpt;
  wire [15:0]dma1_s_axis_c2h_0_ctrl_len;
  wire dma1_s_axis_c2h_0_ctrl_marker;
  wire [2:0]dma1_s_axis_c2h_0_ctrl_port_id;
  wire [11:0]dma1_s_axis_c2h_0_ctrl_qid;
  wire [6:0]dma1_s_axis_c2h_0_ecc;
  wire [5:0]dma1_s_axis_c2h_0_mty;
  wire [31:0]dma1_s_axis_c2h_0_tcrc;
  wire [511:0]dma1_s_axis_c2h_0_tdata;
  wire dma1_s_axis_c2h_0_tlast;
  wire dma1_s_axis_c2h_0_tready;
  wire dma1_s_axis_c2h_0_tvalid;
  wire [1:0]dma1_s_axis_c2h_cmpt_0_cmpt_type;
  wire [2:0]dma1_s_axis_c2h_cmpt_0_col_idx;
  wire [511:0]dma1_s_axis_c2h_cmpt_0_data;
  wire [15:0]dma1_s_axis_c2h_cmpt_0_dpar;
  wire [2:0]dma1_s_axis_c2h_cmpt_0_err_idx;
  wire dma1_s_axis_c2h_cmpt_0_marker;
  wire dma1_s_axis_c2h_cmpt_0_no_wrb_marker;
  wire [2:0]dma1_s_axis_c2h_cmpt_0_port_id;
  wire [12:0]dma1_s_axis_c2h_cmpt_0_qid;
  wire [1:0]dma1_s_axis_c2h_cmpt_0_size;
  wire dma1_s_axis_c2h_cmpt_0_tready;
  wire dma1_s_axis_c2h_cmpt_0_tvalid;
  wire dma1_s_axis_c2h_cmpt_0_user_trig;
  wire [15:0]dma1_s_axis_c2h_cmpt_0_wait_pld_pkt_id;
  wire [31:0]dma1_st_rx_msg_0_tdata;
  wire dma1_st_rx_msg_0_tlast;
  wire dma1_st_rx_msg_0_tready;
  wire dma1_st_rx_msg_0_tvalid;
  wire [15:0]dma1_tm_dsc_sts_0_avl;
  wire dma1_tm_dsc_sts_0_byp;
  wire dma1_tm_dsc_sts_0_dir;
  wire dma1_tm_dsc_sts_0_error;
  wire dma1_tm_dsc_sts_0_irq_arm;
  wire dma1_tm_dsc_sts_0_mm;
  wire [15:0]dma1_tm_dsc_sts_0_pidx;
  wire [2:0]dma1_tm_dsc_sts_0_port_id;
  wire dma1_tm_dsc_sts_0_qen;
  wire [11:0]dma1_tm_dsc_sts_0_qid;
  wire dma1_tm_dsc_sts_0_qinv;
  wire dma1_tm_dsc_sts_0_rdy;
  wire dma1_tm_dsc_sts_0_valid;
  wire gt_refclk1_0_clk_n;
  wire gt_refclk1_0_clk_p;
  wire pcie0_user_lnk_up_0;
  wire [0:0]sys_clk0_0_clk_n;
  wire [0:0]sys_clk0_0_clk_p;
  wire usr_flr_0_clear;
  wire [11:0]usr_flr_0_done_fnc;
  wire usr_flr_0_done_vld;
  wire [11:0]usr_flr_0_fnc;
  wire usr_flr_0_set;
  wire usr_irq_0_ack;
  wire usr_irq_0_fail;
  wire [11:0]usr_irq_0_fnc;
  wire usr_irq_0_valid;
  wire [4:0]usr_irq_0_vec;

  cpm_qdma_ep_part cpm_qdma_ep_part_i
       (.CH0_LPDDR4_0_0_ca_a(CH0_LPDDR4_0_0_ca_a),
        .CH0_LPDDR4_0_0_ca_b(CH0_LPDDR4_0_0_ca_b),
        .CH0_LPDDR4_0_0_ck_c_a(CH0_LPDDR4_0_0_ck_c_a),
        .CH0_LPDDR4_0_0_ck_c_b(CH0_LPDDR4_0_0_ck_c_b),
        .CH0_LPDDR4_0_0_ck_t_a(CH0_LPDDR4_0_0_ck_t_a),
        .CH0_LPDDR4_0_0_ck_t_b(CH0_LPDDR4_0_0_ck_t_b),
        .CH0_LPDDR4_0_0_cke_a(CH0_LPDDR4_0_0_cke_a),
        .CH0_LPDDR4_0_0_cke_b(CH0_LPDDR4_0_0_cke_b),
        .CH0_LPDDR4_0_0_cs_a(CH0_LPDDR4_0_0_cs_a),
        .CH0_LPDDR4_0_0_cs_b(CH0_LPDDR4_0_0_cs_b),
        .CH0_LPDDR4_0_0_dmi_a(CH0_LPDDR4_0_0_dmi_a),
        .CH0_LPDDR4_0_0_dmi_b(CH0_LPDDR4_0_0_dmi_b),
        .CH0_LPDDR4_0_0_dq_a(CH0_LPDDR4_0_0_dq_a),
        .CH0_LPDDR4_0_0_dq_b(CH0_LPDDR4_0_0_dq_b),
        .CH0_LPDDR4_0_0_dqs_c_a(CH0_LPDDR4_0_0_dqs_c_a),
        .CH0_LPDDR4_0_0_dqs_c_b(CH0_LPDDR4_0_0_dqs_c_b),
        .CH0_LPDDR4_0_0_dqs_t_a(CH0_LPDDR4_0_0_dqs_t_a),
        .CH0_LPDDR4_0_0_dqs_t_b(CH0_LPDDR4_0_0_dqs_t_b),
        .CH0_LPDDR4_0_0_reset_n(CH0_LPDDR4_0_0_reset_n),
        .CH1_LPDDR4_0_0_ca_a(CH1_LPDDR4_0_0_ca_a),
        .CH1_LPDDR4_0_0_ca_b(CH1_LPDDR4_0_0_ca_b),
        .CH1_LPDDR4_0_0_ck_c_a(CH1_LPDDR4_0_0_ck_c_a),
        .CH1_LPDDR4_0_0_ck_c_b(CH1_LPDDR4_0_0_ck_c_b),
        .CH1_LPDDR4_0_0_ck_t_a(CH1_LPDDR4_0_0_ck_t_a),
        .CH1_LPDDR4_0_0_ck_t_b(CH1_LPDDR4_0_0_ck_t_b),
        .CH1_LPDDR4_0_0_cke_a(CH1_LPDDR4_0_0_cke_a),
        .CH1_LPDDR4_0_0_cke_b(CH1_LPDDR4_0_0_cke_b),
        .CH1_LPDDR4_0_0_cs_a(CH1_LPDDR4_0_0_cs_a),
        .CH1_LPDDR4_0_0_cs_b(CH1_LPDDR4_0_0_cs_b),
        .CH1_LPDDR4_0_0_dmi_a(CH1_LPDDR4_0_0_dmi_a),
        .CH1_LPDDR4_0_0_dmi_b(CH1_LPDDR4_0_0_dmi_b),
        .CH1_LPDDR4_0_0_dq_a(CH1_LPDDR4_0_0_dq_a),
        .CH1_LPDDR4_0_0_dq_b(CH1_LPDDR4_0_0_dq_b),
        .CH1_LPDDR4_0_0_dqs_c_a(CH1_LPDDR4_0_0_dqs_c_a),
        .CH1_LPDDR4_0_0_dqs_c_b(CH1_LPDDR4_0_0_dqs_c_b),
        .CH1_LPDDR4_0_0_dqs_t_a(CH1_LPDDR4_0_0_dqs_t_a),
        .CH1_LPDDR4_0_0_dqs_t_b(CH1_LPDDR4_0_0_dqs_t_b),
        .CH1_LPDDR4_0_0_reset_n(CH1_LPDDR4_0_0_reset_n),
        .M_AXIL_araddr(M_AXIL_araddr),
        .M_AXIL_arprot(M_AXIL_arprot),
        .M_AXIL_arready(M_AXIL_arready),
        .M_AXIL_arvalid(M_AXIL_arvalid),
        .M_AXIL_awaddr(M_AXIL_awaddr),
        .M_AXIL_awprot(M_AXIL_awprot),
        .M_AXIL_awready(M_AXIL_awready),
        .M_AXIL_awvalid(M_AXIL_awvalid),
        .M_AXIL_bready(M_AXIL_bready),
        .M_AXIL_bresp(M_AXIL_bresp),
        .M_AXIL_bvalid(M_AXIL_bvalid),
        .M_AXIL_rdata(M_AXIL_rdata),
        .M_AXIL_rready(M_AXIL_rready),
        .M_AXIL_rresp(M_AXIL_rresp),
        .M_AXIL_rvalid(M_AXIL_rvalid),
        .M_AXIL_wdata(M_AXIL_wdata),
        .M_AXIL_wready(M_AXIL_wready),
        .M_AXIL_wstrb(M_AXIL_wstrb),
        .M_AXIL_wvalid(M_AXIL_wvalid),
        .PCIE1_GT_0_grx_n(PCIE1_GT_0_grx_n),
        .PCIE1_GT_0_grx_p(PCIE1_GT_0_grx_p),
        .PCIE1_GT_0_gtx_n(PCIE1_GT_0_gtx_n),
        .PCIE1_GT_0_gtx_p(PCIE1_GT_0_gtx_p),
        .S_AXIL_araddr(S_AXIL_araddr),
        .S_AXIL_arprot(S_AXIL_arprot),
        .S_AXIL_arready(S_AXIL_arready),
        .S_AXIL_arvalid(S_AXIL_arvalid),
        .S_AXIL_awaddr(S_AXIL_awaddr),
        .S_AXIL_awprot(S_AXIL_awprot),
        .S_AXIL_awready(S_AXIL_awready),
        .S_AXIL_awvalid(S_AXIL_awvalid),
        .S_AXIL_bready(S_AXIL_bready),
        .S_AXIL_bresp(S_AXIL_bresp),
        .S_AXIL_bvalid(S_AXIL_bvalid),
        .S_AXIL_rdata(S_AXIL_rdata),
        .S_AXIL_rready(S_AXIL_rready),
        .S_AXIL_rresp(S_AXIL_rresp),
        .S_AXIL_rvalid(S_AXIL_rvalid),
        .S_AXIL_wdata(S_AXIL_wdata),
        .S_AXIL_wready(S_AXIL_wready),
        .S_AXIL_wstrb(S_AXIL_wstrb),
        .S_AXIL_wvalid(S_AXIL_wvalid),
        .cpm_cor_irq_0(cpm_cor_irq_0),
        .cpm_irq0_0(cpm_irq0_0),
        .cpm_irq1_0(cpm_irq1_0),
        .cpm_misc_irq_0(cpm_misc_irq_0),
        .cpm_uncor_irq_0(cpm_uncor_irq_0),
        .dma1_axi_aresetn_0(dma1_axi_aresetn_0),
        .dma1_axis_c2h_dmawr_0_cmp(dma1_axis_c2h_dmawr_0_cmp),
        .dma1_axis_c2h_dmawr_0_port_id(dma1_axis_c2h_dmawr_0_port_id),
        .dma1_axis_c2h_dmawr_0_target_vch(dma1_axis_c2h_dmawr_0_target_vch),
        .dma1_axis_c2h_status_0_drop(dma1_axis_c2h_status_0_drop),
        .dma1_axis_c2h_status_0_error(dma1_axis_c2h_status_0_error),
        .dma1_axis_c2h_status_0_last(dma1_axis_c2h_status_0_last),
        .dma1_axis_c2h_status_0_qid(dma1_axis_c2h_status_0_qid),
        .dma1_axis_c2h_status_0_status_cmp(dma1_axis_c2h_status_0_status_cmp),
        .dma1_axis_c2h_status_0_valid(dma1_axis_c2h_status_0_valid),
        .dma1_c2h_byp_in_mm_0_0_cidx(dma1_c2h_byp_in_mm_0_0_cidx),
        .dma1_c2h_byp_in_mm_0_0_error(dma1_c2h_byp_in_mm_0_0_error),
        .dma1_c2h_byp_in_mm_0_0_func(dma1_c2h_byp_in_mm_0_0_func),
        .dma1_c2h_byp_in_mm_0_0_len(dma1_c2h_byp_in_mm_0_0_len),
        .dma1_c2h_byp_in_mm_0_0_mrkr_req(dma1_c2h_byp_in_mm_0_0_mrkr_req),
        .dma1_c2h_byp_in_mm_0_0_no_dma(dma1_c2h_byp_in_mm_0_0_no_dma),
        .dma1_c2h_byp_in_mm_0_0_port_id(dma1_c2h_byp_in_mm_0_0_port_id),
        .dma1_c2h_byp_in_mm_0_0_qid(dma1_c2h_byp_in_mm_0_0_qid),
        .dma1_c2h_byp_in_mm_0_0_radr(dma1_c2h_byp_in_mm_0_0_radr),
        .dma1_c2h_byp_in_mm_0_0_ready(dma1_c2h_byp_in_mm_0_0_ready),
        .dma1_c2h_byp_in_mm_0_0_sdi(dma1_c2h_byp_in_mm_0_0_sdi),
        .dma1_c2h_byp_in_mm_0_0_valid(dma1_c2h_byp_in_mm_0_0_valid),
        .dma1_c2h_byp_in_mm_0_0_wadr(dma1_c2h_byp_in_mm_0_0_wadr),
        .dma1_c2h_byp_in_mm_1_0_cidx(dma1_c2h_byp_in_mm_1_0_cidx),
        .dma1_c2h_byp_in_mm_1_0_error(dma1_c2h_byp_in_mm_1_0_error),
        .dma1_c2h_byp_in_mm_1_0_func(dma1_c2h_byp_in_mm_1_0_func),
        .dma1_c2h_byp_in_mm_1_0_len(dma1_c2h_byp_in_mm_1_0_len),
        .dma1_c2h_byp_in_mm_1_0_mrkr_req(dma1_c2h_byp_in_mm_1_0_mrkr_req),
        .dma1_c2h_byp_in_mm_1_0_no_dma(dma1_c2h_byp_in_mm_1_0_no_dma),
        .dma1_c2h_byp_in_mm_1_0_port_id(dma1_c2h_byp_in_mm_1_0_port_id),
        .dma1_c2h_byp_in_mm_1_0_qid(dma1_c2h_byp_in_mm_1_0_qid),
        .dma1_c2h_byp_in_mm_1_0_radr(dma1_c2h_byp_in_mm_1_0_radr),
        .dma1_c2h_byp_in_mm_1_0_ready(dma1_c2h_byp_in_mm_1_0_ready),
        .dma1_c2h_byp_in_mm_1_0_sdi(dma1_c2h_byp_in_mm_1_0_sdi),
        .dma1_c2h_byp_in_mm_1_0_valid(dma1_c2h_byp_in_mm_1_0_valid),
        .dma1_c2h_byp_in_mm_1_0_wadr(dma1_c2h_byp_in_mm_1_0_wadr),
        .dma1_c2h_byp_in_st_csh_0_addr(dma1_c2h_byp_in_st_csh_0_addr),
        .dma1_c2h_byp_in_st_csh_0_error(dma1_c2h_byp_in_st_csh_0_error),
        .dma1_c2h_byp_in_st_csh_0_func(dma1_c2h_byp_in_st_csh_0_func),
        .dma1_c2h_byp_in_st_csh_0_pfch_tag(dma1_c2h_byp_in_st_csh_0_pfch_tag),
        .dma1_c2h_byp_in_st_csh_0_port_id(dma1_c2h_byp_in_st_csh_0_port_id),
        .dma1_c2h_byp_in_st_csh_0_qid(dma1_c2h_byp_in_st_csh_0_qid),
        .dma1_c2h_byp_in_st_csh_0_ready(dma1_c2h_byp_in_st_csh_0_ready),
        .dma1_c2h_byp_in_st_csh_0_valid(dma1_c2h_byp_in_st_csh_0_valid),
        .dma1_c2h_byp_out_0_cidx(dma1_c2h_byp_out_0_cidx),
        .dma1_c2h_byp_out_0_dsc(dma1_c2h_byp_out_0_dsc),
        .dma1_c2h_byp_out_0_dsc_sz(dma1_c2h_byp_out_0_dsc_sz),
        .dma1_c2h_byp_out_0_error(dma1_c2h_byp_out_0_error),
        .dma1_c2h_byp_out_0_fmt(dma1_c2h_byp_out_0_fmt),
        .dma1_c2h_byp_out_0_func(dma1_c2h_byp_out_0_func),
        .dma1_c2h_byp_out_0_mm_chn(dma1_c2h_byp_out_0_mm_chn),
        .dma1_c2h_byp_out_0_pfch_tag(dma1_c2h_byp_out_0_pfch_tag),
        .dma1_c2h_byp_out_0_port_id(dma1_c2h_byp_out_0_port_id),
        .dma1_c2h_byp_out_0_qid(dma1_c2h_byp_out_0_qid),
        .dma1_c2h_byp_out_0_ready(dma1_c2h_byp_out_0_ready),
        .dma1_c2h_byp_out_0_st_mm(dma1_c2h_byp_out_0_st_mm),
        .dma1_c2h_byp_out_0_valid(dma1_c2h_byp_out_0_valid),
        .dma1_dsc_crdt_in_0_crdt(dma1_dsc_crdt_in_0_crdt),
        .dma1_dsc_crdt_in_0_dir(dma1_dsc_crdt_in_0_dir),
        .dma1_dsc_crdt_in_0_fence(dma1_dsc_crdt_in_0_fence),
        .dma1_dsc_crdt_in_0_qid(dma1_dsc_crdt_in_0_qid),
        .dma1_dsc_crdt_in_0_rdy(dma1_dsc_crdt_in_0_rdy),
        .dma1_dsc_crdt_in_0_valid(dma1_dsc_crdt_in_0_valid),
        .dma1_h2c_byp_in_mm_0_0_cidx(dma1_h2c_byp_in_mm_0_0_cidx),
        .dma1_h2c_byp_in_mm_0_0_error(dma1_h2c_byp_in_mm_0_0_error),
        .dma1_h2c_byp_in_mm_0_0_func(dma1_h2c_byp_in_mm_0_0_func),
        .dma1_h2c_byp_in_mm_0_0_len(dma1_h2c_byp_in_mm_0_0_len),
        .dma1_h2c_byp_in_mm_0_0_mrkr_req(dma1_h2c_byp_in_mm_0_0_mrkr_req),
        .dma1_h2c_byp_in_mm_0_0_no_dma(dma1_h2c_byp_in_mm_0_0_no_dma),
        .dma1_h2c_byp_in_mm_0_0_port_id(dma1_h2c_byp_in_mm_0_0_port_id),
        .dma1_h2c_byp_in_mm_0_0_qid(dma1_h2c_byp_in_mm_0_0_qid),
        .dma1_h2c_byp_in_mm_0_0_radr(dma1_h2c_byp_in_mm_0_0_radr),
        .dma1_h2c_byp_in_mm_0_0_ready(dma1_h2c_byp_in_mm_0_0_ready),
        .dma1_h2c_byp_in_mm_0_0_sdi(dma1_h2c_byp_in_mm_0_0_sdi),
        .dma1_h2c_byp_in_mm_0_0_valid(dma1_h2c_byp_in_mm_0_0_valid),
        .dma1_h2c_byp_in_mm_0_0_wadr(dma1_h2c_byp_in_mm_0_0_wadr),
        .dma1_h2c_byp_in_mm_1_0_cidx(dma1_h2c_byp_in_mm_1_0_cidx),
        .dma1_h2c_byp_in_mm_1_0_error(dma1_h2c_byp_in_mm_1_0_error),
        .dma1_h2c_byp_in_mm_1_0_func(dma1_h2c_byp_in_mm_1_0_func),
        .dma1_h2c_byp_in_mm_1_0_len(dma1_h2c_byp_in_mm_1_0_len),
        .dma1_h2c_byp_in_mm_1_0_mrkr_req(dma1_h2c_byp_in_mm_1_0_mrkr_req),
        .dma1_h2c_byp_in_mm_1_0_no_dma(dma1_h2c_byp_in_mm_1_0_no_dma),
        .dma1_h2c_byp_in_mm_1_0_port_id(dma1_h2c_byp_in_mm_1_0_port_id),
        .dma1_h2c_byp_in_mm_1_0_qid(dma1_h2c_byp_in_mm_1_0_qid),
        .dma1_h2c_byp_in_mm_1_0_radr(dma1_h2c_byp_in_mm_1_0_radr),
        .dma1_h2c_byp_in_mm_1_0_ready(dma1_h2c_byp_in_mm_1_0_ready),
        .dma1_h2c_byp_in_mm_1_0_sdi(dma1_h2c_byp_in_mm_1_0_sdi),
        .dma1_h2c_byp_in_mm_1_0_valid(dma1_h2c_byp_in_mm_1_0_valid),
        .dma1_h2c_byp_in_mm_1_0_wadr(dma1_h2c_byp_in_mm_1_0_wadr),
        .dma1_h2c_byp_in_st_0_addr(dma1_h2c_byp_in_st_0_addr),
        .dma1_h2c_byp_in_st_0_cidx(dma1_h2c_byp_in_st_0_cidx),
        .dma1_h2c_byp_in_st_0_eop(dma1_h2c_byp_in_st_0_eop),
        .dma1_h2c_byp_in_st_0_error(dma1_h2c_byp_in_st_0_error),
        .dma1_h2c_byp_in_st_0_func(dma1_h2c_byp_in_st_0_func),
        .dma1_h2c_byp_in_st_0_len(dma1_h2c_byp_in_st_0_len),
        .dma1_h2c_byp_in_st_0_mrkr_req(dma1_h2c_byp_in_st_0_mrkr_req),
        .dma1_h2c_byp_in_st_0_no_dma(dma1_h2c_byp_in_st_0_no_dma),
        .dma1_h2c_byp_in_st_0_port_id(dma1_h2c_byp_in_st_0_port_id),
        .dma1_h2c_byp_in_st_0_qid(dma1_h2c_byp_in_st_0_qid),
        .dma1_h2c_byp_in_st_0_ready(dma1_h2c_byp_in_st_0_ready),
        .dma1_h2c_byp_in_st_0_sdi(dma1_h2c_byp_in_st_0_sdi),
        .dma1_h2c_byp_in_st_0_sop(dma1_h2c_byp_in_st_0_sop),
        .dma1_h2c_byp_in_st_0_valid(dma1_h2c_byp_in_st_0_valid),
        .dma1_h2c_byp_out_0_cidx(dma1_h2c_byp_out_0_cidx),
        .dma1_h2c_byp_out_0_dsc(dma1_h2c_byp_out_0_dsc),
        .dma1_h2c_byp_out_0_dsc_sz(dma1_h2c_byp_out_0_dsc_sz),
        .dma1_h2c_byp_out_0_error(dma1_h2c_byp_out_0_error),
        .dma1_h2c_byp_out_0_fmt(dma1_h2c_byp_out_0_fmt),
        .dma1_h2c_byp_out_0_func(dma1_h2c_byp_out_0_func),
        .dma1_h2c_byp_out_0_mm_chn(dma1_h2c_byp_out_0_mm_chn),
        .dma1_h2c_byp_out_0_port_id(dma1_h2c_byp_out_0_port_id),
        .dma1_h2c_byp_out_0_qid(dma1_h2c_byp_out_0_qid),
        .dma1_h2c_byp_out_0_ready(dma1_h2c_byp_out_0_ready),
        .dma1_h2c_byp_out_0_st_mm(dma1_h2c_byp_out_0_st_mm),
        .dma1_h2c_byp_out_0_valid(dma1_h2c_byp_out_0_valid),
        .dma1_intrfc_clk_0(dma1_intrfc_clk_0),
        .dma1_intrfc_resetn_0(dma1_intrfc_resetn_0),
        .dma1_m_axis_h2c_0_err(dma1_m_axis_h2c_0_err),
        .dma1_m_axis_h2c_0_mdata(dma1_m_axis_h2c_0_mdata),
        .dma1_m_axis_h2c_0_mty(dma1_m_axis_h2c_0_mty),
        .dma1_m_axis_h2c_0_port_id(dma1_m_axis_h2c_0_port_id),
        .dma1_m_axis_h2c_0_qid(dma1_m_axis_h2c_0_qid),
        .dma1_m_axis_h2c_0_tcrc(dma1_m_axis_h2c_0_tcrc),
        .dma1_m_axis_h2c_0_tdata(dma1_m_axis_h2c_0_tdata),
        .dma1_m_axis_h2c_0_tlast(dma1_m_axis_h2c_0_tlast),
        .dma1_m_axis_h2c_0_tready(dma1_m_axis_h2c_0_tready),
        .dma1_m_axis_h2c_0_tvalid(dma1_m_axis_h2c_0_tvalid),
        .dma1_m_axis_h2c_0_zero_byte(dma1_m_axis_h2c_0_zero_byte),
        .dma1_qsts_out_0_data(dma1_qsts_out_0_data),
        .dma1_qsts_out_0_op(dma1_qsts_out_0_op),
        .dma1_qsts_out_0_port_id(dma1_qsts_out_0_port_id),
        .dma1_qsts_out_0_qid(dma1_qsts_out_0_qid),
        .dma1_qsts_out_0_rdy(dma1_qsts_out_0_rdy),
        .dma1_qsts_out_0_vld(dma1_qsts_out_0_vld),
        .dma1_s_axis_c2h_0_ctrl_has_cmpt(dma1_s_axis_c2h_0_ctrl_has_cmpt),
        .dma1_s_axis_c2h_0_ctrl_len(dma1_s_axis_c2h_0_ctrl_len),
        .dma1_s_axis_c2h_0_ctrl_marker(dma1_s_axis_c2h_0_ctrl_marker),
        .dma1_s_axis_c2h_0_ctrl_port_id(dma1_s_axis_c2h_0_ctrl_port_id),
        .dma1_s_axis_c2h_0_ctrl_qid(dma1_s_axis_c2h_0_ctrl_qid),
        .dma1_s_axis_c2h_0_ecc(dma1_s_axis_c2h_0_ecc),
        .dma1_s_axis_c2h_0_mty(dma1_s_axis_c2h_0_mty),
        .dma1_s_axis_c2h_0_tcrc(dma1_s_axis_c2h_0_tcrc),
        .dma1_s_axis_c2h_0_tdata(dma1_s_axis_c2h_0_tdata),
        .dma1_s_axis_c2h_0_tlast(dma1_s_axis_c2h_0_tlast),
        .dma1_s_axis_c2h_0_tready(dma1_s_axis_c2h_0_tready),
        .dma1_s_axis_c2h_0_tvalid(dma1_s_axis_c2h_0_tvalid),
        .dma1_s_axis_c2h_cmpt_0_cmpt_type(dma1_s_axis_c2h_cmpt_0_cmpt_type),
        .dma1_s_axis_c2h_cmpt_0_col_idx(dma1_s_axis_c2h_cmpt_0_col_idx),
        .dma1_s_axis_c2h_cmpt_0_data(dma1_s_axis_c2h_cmpt_0_data),
        .dma1_s_axis_c2h_cmpt_0_dpar(dma1_s_axis_c2h_cmpt_0_dpar),
        .dma1_s_axis_c2h_cmpt_0_err_idx(dma1_s_axis_c2h_cmpt_0_err_idx),
        .dma1_s_axis_c2h_cmpt_0_marker(dma1_s_axis_c2h_cmpt_0_marker),
        .dma1_s_axis_c2h_cmpt_0_no_wrb_marker(dma1_s_axis_c2h_cmpt_0_no_wrb_marker),
        .dma1_s_axis_c2h_cmpt_0_port_id(dma1_s_axis_c2h_cmpt_0_port_id),
        .dma1_s_axis_c2h_cmpt_0_qid(dma1_s_axis_c2h_cmpt_0_qid),
        .dma1_s_axis_c2h_cmpt_0_size(dma1_s_axis_c2h_cmpt_0_size),
        .dma1_s_axis_c2h_cmpt_0_tready(dma1_s_axis_c2h_cmpt_0_tready),
        .dma1_s_axis_c2h_cmpt_0_tvalid(dma1_s_axis_c2h_cmpt_0_tvalid),
        .dma1_s_axis_c2h_cmpt_0_user_trig(dma1_s_axis_c2h_cmpt_0_user_trig),
        .dma1_s_axis_c2h_cmpt_0_wait_pld_pkt_id(dma1_s_axis_c2h_cmpt_0_wait_pld_pkt_id),
        .dma1_st_rx_msg_0_tdata(dma1_st_rx_msg_0_tdata),
        .dma1_st_rx_msg_0_tlast(dma1_st_rx_msg_0_tlast),
        .dma1_st_rx_msg_0_tready(dma1_st_rx_msg_0_tready),
        .dma1_st_rx_msg_0_tvalid(dma1_st_rx_msg_0_tvalid),
        .dma1_tm_dsc_sts_0_avl(dma1_tm_dsc_sts_0_avl),
        .dma1_tm_dsc_sts_0_byp(dma1_tm_dsc_sts_0_byp),
        .dma1_tm_dsc_sts_0_dir(dma1_tm_dsc_sts_0_dir),
        .dma1_tm_dsc_sts_0_error(dma1_tm_dsc_sts_0_error),
        .dma1_tm_dsc_sts_0_irq_arm(dma1_tm_dsc_sts_0_irq_arm),
        .dma1_tm_dsc_sts_0_mm(dma1_tm_dsc_sts_0_mm),
        .dma1_tm_dsc_sts_0_pidx(dma1_tm_dsc_sts_0_pidx),
        .dma1_tm_dsc_sts_0_port_id(dma1_tm_dsc_sts_0_port_id),
        .dma1_tm_dsc_sts_0_qen(dma1_tm_dsc_sts_0_qen),
        .dma1_tm_dsc_sts_0_qid(dma1_tm_dsc_sts_0_qid),
        .dma1_tm_dsc_sts_0_qinv(dma1_tm_dsc_sts_0_qinv),
        .dma1_tm_dsc_sts_0_rdy(dma1_tm_dsc_sts_0_rdy),
        .dma1_tm_dsc_sts_0_valid(dma1_tm_dsc_sts_0_valid),
        .gt_refclk1_0_clk_n(gt_refclk1_0_clk_n),
        .gt_refclk1_0_clk_p(gt_refclk1_0_clk_p),
        .pcie0_user_lnk_up_0(pcie0_user_lnk_up_0),
        .sys_clk0_0_clk_n(sys_clk0_0_clk_n),
        .sys_clk0_0_clk_p(sys_clk0_0_clk_p),
        .usr_flr_0_clear(usr_flr_0_clear),
        .usr_flr_0_done_fnc(usr_flr_0_done_fnc),
        .usr_flr_0_done_vld(usr_flr_0_done_vld),
        .usr_flr_0_fnc(usr_flr_0_fnc),
        .usr_flr_0_set(usr_flr_0_set),
        .usr_irq_0_ack(usr_irq_0_ack),
        .usr_irq_0_fail(usr_irq_0_fail),
        .usr_irq_0_fnc(usr_irq_0_fnc),
        .usr_irq_0_valid(usr_irq_0_valid),
        .usr_irq_0_vec(usr_irq_0_vec));
endmodule
