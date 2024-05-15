//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Wed May  8 17:23:03 2024
//Host        : Vulcan running 64-bit major release  (build 9200)
//Command     : generate_target cpm_qdma_ep_part.bd
//Design      : cpm_qdma_ep_part
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "cpm_qdma_ep_part,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=cpm_qdma_ep_part,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=None}" *) (* HW_HANDOFF = "cpm_qdma_ep_part.hwdef" *) 
module cpm_qdma_ep_part
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0_0 CA_A" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CH0_LPDDR4_0_0, CAN_DEBUG false" *) output [5:0]CH0_LPDDR4_0_0_ca_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0_0 CA_B" *) output [5:0]CH0_LPDDR4_0_0_ca_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0_0 CK_C_A" *) output [0:0]CH0_LPDDR4_0_0_ck_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0_0 CK_C_B" *) output [0:0]CH0_LPDDR4_0_0_ck_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0_0 CK_T_A" *) output [0:0]CH0_LPDDR4_0_0_ck_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0_0 CK_T_B" *) output [0:0]CH0_LPDDR4_0_0_ck_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0_0 CKE_A" *) output [0:0]CH0_LPDDR4_0_0_cke_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0_0 CKE_B" *) output [0:0]CH0_LPDDR4_0_0_cke_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0_0 CS_A" *) output [0:0]CH0_LPDDR4_0_0_cs_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0_0 CS_B" *) output [0:0]CH0_LPDDR4_0_0_cs_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0_0 DMI_A" *) inout [1:0]CH0_LPDDR4_0_0_dmi_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0_0 DMI_B" *) inout [1:0]CH0_LPDDR4_0_0_dmi_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0_0 DQ_A" *) inout [15:0]CH0_LPDDR4_0_0_dq_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0_0 DQ_B" *) inout [15:0]CH0_LPDDR4_0_0_dq_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0_0 DQS_C_A" *) inout [1:0]CH0_LPDDR4_0_0_dqs_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0_0 DQS_C_B" *) inout [1:0]CH0_LPDDR4_0_0_dqs_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0_0 DQS_T_A" *) inout [1:0]CH0_LPDDR4_0_0_dqs_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0_0 DQS_T_B" *) inout [1:0]CH0_LPDDR4_0_0_dqs_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH0_LPDDR4_0_0 RESET_N" *) output [0:0]CH0_LPDDR4_0_0_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0_0 CA_A" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CH1_LPDDR4_0_0, CAN_DEBUG false" *) output [5:0]CH1_LPDDR4_0_0_ca_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0_0 CA_B" *) output [5:0]CH1_LPDDR4_0_0_ca_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0_0 CK_C_A" *) output [0:0]CH1_LPDDR4_0_0_ck_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0_0 CK_C_B" *) output [0:0]CH1_LPDDR4_0_0_ck_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0_0 CK_T_A" *) output [0:0]CH1_LPDDR4_0_0_ck_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0_0 CK_T_B" *) output [0:0]CH1_LPDDR4_0_0_ck_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0_0 CKE_A" *) output [0:0]CH1_LPDDR4_0_0_cke_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0_0 CKE_B" *) output [0:0]CH1_LPDDR4_0_0_cke_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0_0 CS_A" *) output [0:0]CH1_LPDDR4_0_0_cs_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0_0 CS_B" *) output [0:0]CH1_LPDDR4_0_0_cs_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0_0 DMI_A" *) inout [1:0]CH1_LPDDR4_0_0_dmi_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0_0 DMI_B" *) inout [1:0]CH1_LPDDR4_0_0_dmi_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0_0 DQ_A" *) inout [15:0]CH1_LPDDR4_0_0_dq_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0_0 DQ_B" *) inout [15:0]CH1_LPDDR4_0_0_dq_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0_0 DQS_C_A" *) inout [1:0]CH1_LPDDR4_0_0_dqs_c_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0_0 DQS_C_B" *) inout [1:0]CH1_LPDDR4_0_0_dqs_c_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0_0 DQS_T_A" *) inout [1:0]CH1_LPDDR4_0_0_dqs_t_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0_0 DQS_T_B" *) inout [1:0]CH1_LPDDR4_0_0_dqs_t_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:lpddr4:1.0 CH1_LPDDR4_0_0 RESET_N" *) output [0:0]CH1_LPDDR4_0_0_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIL, ADDR_WIDTH 42, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_a532_pspmc_0_0_pl0_ref_clk, DATA_WIDTH 32, FREQ_HZ 429162384, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [41:0]M_AXIL_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARPROT" *) output [2:0]M_AXIL_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARREADY" *) input M_AXIL_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL ARVALID" *) output M_AXIL_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWADDR" *) output [41:0]M_AXIL_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWPROT" *) output [2:0]M_AXIL_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWREADY" *) input M_AXIL_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL AWVALID" *) output M_AXIL_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL BREADY" *) output M_AXIL_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL BRESP" *) input [1:0]M_AXIL_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL BVALID" *) input M_AXIL_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL RDATA" *) input [31:0]M_AXIL_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL RREADY" *) output M_AXIL_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL RRESP" *) input [1:0]M_AXIL_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL RVALID" *) input M_AXIL_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL WDATA" *) output [31:0]M_AXIL_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL WREADY" *) input M_AXIL_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL WSTRB" *) output [3:0]M_AXIL_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXIL WVALID" *) output M_AXIL_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT_0 GRX_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PCIE1_GT_0, CAN_DEBUG false" *) input [7:0]PCIE1_GT_0_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT_0 GRX_P" *) input [7:0]PCIE1_GT_0_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT_0 GTX_N" *) output [7:0]PCIE1_GT_0_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT_0 GTX_P" *) output [7:0]PCIE1_GT_0_gtx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIL, ADDR_WIDTH 15, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_a532_pspmc_0_0_pl0_ref_clk, DATA_WIDTH 32, FREQ_HZ 429162384, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [11:0]S_AXIL_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL ARPROT" *) input [2:0]S_AXIL_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL ARREADY" *) output S_AXIL_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL ARVALID" *) input S_AXIL_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL AWADDR" *) input [11:0]S_AXIL_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL AWPROT" *) input [2:0]S_AXIL_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL AWREADY" *) output S_AXIL_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL AWVALID" *) input S_AXIL_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL BREADY" *) input S_AXIL_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL BRESP" *) output [1:0]S_AXIL_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL BVALID" *) output S_AXIL_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL RDATA" *) output [31:0]S_AXIL_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL RREADY" *) input S_AXIL_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL RRESP" *) output [1:0]S_AXIL_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL RVALID" *) output S_AXIL_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL WDATA" *) input [31:0]S_AXIL_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL WREADY" *) output S_AXIL_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL WSTRB" *) input [3:0]S_AXIL_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXIL WVALID" *) input S_AXIL_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_COR_IRQ_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_COR_IRQ_0, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output cpm_cor_irq_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_IRQ0_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_IRQ0_0, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) input cpm_irq0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_IRQ1_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_IRQ1_0, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) input cpm_irq1_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_MISC_IRQ_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_MISC_IRQ_0, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output cpm_misc_irq_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CPM_UNCOR_IRQ_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CPM_UNCOR_IRQ_0, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output cpm_uncor_irq_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DMA1_AXI_ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DMA1_AXI_ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output dma1_axi_aresetn_0;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:axis_c2h_dmawr:1.0 dma1_axis_c2h_dmawr_0 cmp" *) output dma1_axis_c2h_dmawr_0_cmp;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:axis_c2h_dmawr:1.0 dma1_axis_c2h_dmawr_0 port_id" *) output [2:0]dma1_axis_c2h_dmawr_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:axis_c2h_dmawr:1.0 dma1_axis_c2h_dmawr_0 target_vch" *) output dma1_axis_c2h_dmawr_0_target_vch;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status_0 drop" *) output dma1_axis_c2h_status_0_drop;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status_0 error" *) output dma1_axis_c2h_status_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status_0 last" *) output dma1_axis_c2h_status_0_last;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status_0 qid" *) output [11:0]dma1_axis_c2h_status_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status_0 status_cmp" *) output dma1_axis_c2h_status_0_status_cmp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_c2h_status:1.0 dma1_axis_c2h_status_0 valid" *) output dma1_axis_c2h_status_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 cidx" *) input [15:0]dma1_c2h_byp_in_mm_0_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 error" *) input dma1_c2h_byp_in_mm_0_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 func" *) input [11:0]dma1_c2h_byp_in_mm_0_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 len" *) input [15:0]dma1_c2h_byp_in_mm_0_0_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 mrkr_req" *) input dma1_c2h_byp_in_mm_0_0_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 no_dma" *) input dma1_c2h_byp_in_mm_0_0_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 port_id" *) input [2:0]dma1_c2h_byp_in_mm_0_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 qid" *) input [11:0]dma1_c2h_byp_in_mm_0_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 radr" *) input [63:0]dma1_c2h_byp_in_mm_0_0_radr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 ready" *) output dma1_c2h_byp_in_mm_0_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 sdi" *) input dma1_c2h_byp_in_mm_0_0_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 valid" *) input dma1_c2h_byp_in_mm_0_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_0_0 wadr" *) input [63:0]dma1_c2h_byp_in_mm_0_0_wadr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 cidx" *) input [15:0]dma1_c2h_byp_in_mm_1_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 error" *) input dma1_c2h_byp_in_mm_1_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 func" *) input [11:0]dma1_c2h_byp_in_mm_1_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 len" *) input [15:0]dma1_c2h_byp_in_mm_1_0_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 mrkr_req" *) input dma1_c2h_byp_in_mm_1_0_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 no_dma" *) input dma1_c2h_byp_in_mm_1_0_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 port_id" *) input [2:0]dma1_c2h_byp_in_mm_1_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 qid" *) input [11:0]dma1_c2h_byp_in_mm_1_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 radr" *) input [63:0]dma1_c2h_byp_in_mm_1_0_radr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 ready" *) output dma1_c2h_byp_in_mm_1_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 sdi" *) input dma1_c2h_byp_in_mm_1_0_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 valid" *) input dma1_c2h_byp_in_mm_1_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_mm_1_0 wadr" *) input [63:0]dma1_c2h_byp_in_mm_1_0_wadr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 addr" *) input [63:0]dma1_c2h_byp_in_st_csh_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 error" *) input dma1_c2h_byp_in_st_csh_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 func" *) input [11:0]dma1_c2h_byp_in_st_csh_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 pfch_tag" *) input [6:0]dma1_c2h_byp_in_st_csh_0_pfch_tag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 port_id" *) input [2:0]dma1_c2h_byp_in_st_csh_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 qid" *) input [11:0]dma1_c2h_byp_in_st_csh_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 ready" *) output dma1_c2h_byp_in_st_csh_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_in_st_csh_0 valid" *) input dma1_c2h_byp_in_st_csh_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 cidx" *) output [15:0]dma1_c2h_byp_out_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 dsc" *) output [255:0]dma1_c2h_byp_out_0_dsc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 dsc_sz" *) output [1:0]dma1_c2h_byp_out_0_dsc_sz;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 error" *) output dma1_c2h_byp_out_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 fmt" *) output [2:0]dma1_c2h_byp_out_0_fmt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 func" *) output [11:0]dma1_c2h_byp_out_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 mm_chn" *) output dma1_c2h_byp_out_0_mm_chn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 pfch_tag" *) output [6:0]dma1_c2h_byp_out_0_pfch_tag;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 port_id" *) output [2:0]dma1_c2h_byp_out_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 qid" *) output [11:0]dma1_c2h_byp_out_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 ready" *) input dma1_c2h_byp_out_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 st_mm" *) output dma1_c2h_byp_out_0_st_mm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_c2h_byp_out_0 valid" *) output dma1_c2h_byp_out_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in_0 crdt" *) input [15:0]dma1_dsc_crdt_in_0_crdt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in_0 dir" *) input dma1_dsc_crdt_in_0_dir;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in_0 fence" *) input dma1_dsc_crdt_in_0_fence;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in_0 qid" *) input [11:0]dma1_dsc_crdt_in_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in_0 rdy" *) output dma1_dsc_crdt_in_0_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_crdt_in:1.0 dma1_dsc_crdt_in_0 valid" *) input dma1_dsc_crdt_in_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 cidx" *) input [15:0]dma1_h2c_byp_in_mm_0_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 error" *) input dma1_h2c_byp_in_mm_0_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 func" *) input [11:0]dma1_h2c_byp_in_mm_0_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 len" *) input [15:0]dma1_h2c_byp_in_mm_0_0_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 mrkr_req" *) input dma1_h2c_byp_in_mm_0_0_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 no_dma" *) input dma1_h2c_byp_in_mm_0_0_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 port_id" *) input [2:0]dma1_h2c_byp_in_mm_0_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 qid" *) input [11:0]dma1_h2c_byp_in_mm_0_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 radr" *) input [63:0]dma1_h2c_byp_in_mm_0_0_radr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 ready" *) output dma1_h2c_byp_in_mm_0_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 sdi" *) input dma1_h2c_byp_in_mm_0_0_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 valid" *) input dma1_h2c_byp_in_mm_0_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_0_0 wadr" *) input [63:0]dma1_h2c_byp_in_mm_0_0_wadr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 cidx" *) input [15:0]dma1_h2c_byp_in_mm_1_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 error" *) input dma1_h2c_byp_in_mm_1_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 func" *) input [11:0]dma1_h2c_byp_in_mm_1_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 len" *) input [15:0]dma1_h2c_byp_in_mm_1_0_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 mrkr_req" *) input dma1_h2c_byp_in_mm_1_0_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 no_dma" *) input dma1_h2c_byp_in_mm_1_0_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 port_id" *) input [2:0]dma1_h2c_byp_in_mm_1_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 qid" *) input [11:0]dma1_h2c_byp_in_mm_1_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 radr" *) input [63:0]dma1_h2c_byp_in_mm_1_0_radr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 ready" *) output dma1_h2c_byp_in_mm_1_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 sdi" *) input dma1_h2c_byp_in_mm_1_0_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 valid" *) input dma1_h2c_byp_in_mm_1_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_mm_1_0 wadr" *) input [63:0]dma1_h2c_byp_in_mm_1_0_wadr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 addr" *) input [63:0]dma1_h2c_byp_in_st_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 cidx" *) input [15:0]dma1_h2c_byp_in_st_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 eop" *) input dma1_h2c_byp_in_st_0_eop;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 error" *) input dma1_h2c_byp_in_st_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 func" *) input [11:0]dma1_h2c_byp_in_st_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 len" *) input [15:0]dma1_h2c_byp_in_st_0_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 mrkr_req" *) input dma1_h2c_byp_in_st_0_mrkr_req;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 no_dma" *) input dma1_h2c_byp_in_st_0_no_dma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 port_id" *) input [2:0]dma1_h2c_byp_in_st_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 qid" *) input [11:0]dma1_h2c_byp_in_st_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 ready" *) output dma1_h2c_byp_in_st_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 sdi" *) input dma1_h2c_byp_in_st_0_sdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 sop" *) input dma1_h2c_byp_in_st_0_sop;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_in_st_0 valid" *) input dma1_h2c_byp_in_st_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 cidx" *) output [15:0]dma1_h2c_byp_out_0_cidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 dsc" *) output [255:0]dma1_h2c_byp_out_0_dsc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 dsc_sz" *) output [1:0]dma1_h2c_byp_out_0_dsc_sz;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 error" *) output dma1_h2c_byp_out_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 fmt" *) output [2:0]dma1_h2c_byp_out_0_fmt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 func" *) output [11:0]dma1_h2c_byp_out_0_func;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 mm_chn" *) output dma1_h2c_byp_out_0_mm_chn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 port_id" *) output [2:0]dma1_h2c_byp_out_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 qid" *) output [11:0]dma1_h2c_byp_out_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 ready" *) input dma1_h2c_byp_out_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 st_mm" *) output dma1_h2c_byp_out_0_st_mm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_dsc_byp:1.0 dma1_h2c_byp_out_0 valid" *) output dma1_h2c_byp_out_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DMA1_INTRFC_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DMA1_INTRFC_CLK_0, ASSOCIATED_BUSIF S_AXIL:M_AXIL:dma1_st_rx_msg_0, ASSOCIATED_RESET dma1_axi_aresetn_0, CLK_DOMAIN bd_a532_pspmc_0_0_pl0_ref_clk, FREQ_HZ 429162384, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output dma1_intrfc_clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DMA1_INTRFC_RESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DMA1_INTRFC_RESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input dma1_intrfc_resetn_0;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 err" *) output dma1_m_axis_h2c_0_err;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 mdata" *) output [31:0]dma1_m_axis_h2c_0_mdata;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 mty" *) output [5:0]dma1_m_axis_h2c_0_mty;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 port_id" *) output [2:0]dma1_m_axis_h2c_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 qid" *) output [11:0]dma1_m_axis_h2c_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 tcrc" *) output [31:0]dma1_m_axis_h2c_0_tcrc;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 tdata" *) output [511:0]dma1_m_axis_h2c_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 tlast" *) output dma1_m_axis_h2c_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 tready" *) input dma1_m_axis_h2c_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 tvalid" *) output dma1_m_axis_h2c_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:m_axis_h2c:1.0 dma1_m_axis_h2c_0 zero_byte" *) output dma1_m_axis_h2c_0_zero_byte;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out_0 data" *) output [63:0]dma1_qsts_out_0_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out_0 op" *) output [7:0]dma1_qsts_out_0_op;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out_0 port_id" *) output [2:0]dma1_qsts_out_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out_0 qid" *) output [12:0]dma1_qsts_out_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out_0 rdy" *) input dma1_qsts_out_0_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:eqdma_qsts:1.0 dma1_qsts_out_0 vld" *) output dma1_qsts_out_0_vld;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 ctrl_has_cmpt" *) input dma1_s_axis_c2h_0_ctrl_has_cmpt;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 ctrl_len" *) input [15:0]dma1_s_axis_c2h_0_ctrl_len;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 ctrl_marker" *) input dma1_s_axis_c2h_0_ctrl_marker;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 ctrl_port_id" *) input [2:0]dma1_s_axis_c2h_0_ctrl_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 ctrl_qid" *) input [11:0]dma1_s_axis_c2h_0_ctrl_qid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 ecc" *) input [6:0]dma1_s_axis_c2h_0_ecc;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 mty" *) input [5:0]dma1_s_axis_c2h_0_mty;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 tcrc" *) input [31:0]dma1_s_axis_c2h_0_tcrc;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 tdata" *) input [511:0]dma1_s_axis_c2h_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 tlast" *) input dma1_s_axis_c2h_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 tready" *) output dma1_s_axis_c2h_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h:1.0 dma1_s_axis_c2h_0 tvalid" *) input dma1_s_axis_c2h_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 cmpt_type" *) input [1:0]dma1_s_axis_c2h_cmpt_0_cmpt_type;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 col_idx" *) input [2:0]dma1_s_axis_c2h_cmpt_0_col_idx;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 data" *) input [511:0]dma1_s_axis_c2h_cmpt_0_data;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 dpar" *) input [15:0]dma1_s_axis_c2h_cmpt_0_dpar;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 err_idx" *) input [2:0]dma1_s_axis_c2h_cmpt_0_err_idx;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 marker" *) input dma1_s_axis_c2h_cmpt_0_marker;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 no_wrb_marker" *) input dma1_s_axis_c2h_cmpt_0_no_wrb_marker;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 port_id" *) input [2:0]dma1_s_axis_c2h_cmpt_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 qid" *) input [12:0]dma1_s_axis_c2h_cmpt_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 size" *) input [1:0]dma1_s_axis_c2h_cmpt_0_size;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 tready" *) output dma1_s_axis_c2h_cmpt_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 tvalid" *) input dma1_s_axis_c2h_cmpt_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 user_trig" *) input dma1_s_axis_c2h_cmpt_0_user_trig;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:s_axis_c2h_cmpt:1.0 dma1_s_axis_c2h_cmpt_0 wait_pld_pkt_id" *) input [15:0]dma1_s_axis_c2h_cmpt_0_wait_pld_pkt_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dma1_st_rx_msg_0, CLK_DOMAIN bd_a532_pspmc_0_0_pl0_ref_clk, FREQ_HZ 429162384, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]dma1_st_rx_msg_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg_0 TLAST" *) output dma1_st_rx_msg_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg_0 TREADY" *) input dma1_st_rx_msg_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma1_st_rx_msg_0 TVALID" *) output dma1_st_rx_msg_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 avl" *) output [15:0]dma1_tm_dsc_sts_0_avl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 byp" *) output dma1_tm_dsc_sts_0_byp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 dir" *) output dma1_tm_dsc_sts_0_dir;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 error" *) output dma1_tm_dsc_sts_0_error;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 irq_arm" *) output dma1_tm_dsc_sts_0_irq_arm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 mm" *) output dma1_tm_dsc_sts_0_mm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 pidx" *) output [15:0]dma1_tm_dsc_sts_0_pidx;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 port_id" *) output [2:0]dma1_tm_dsc_sts_0_port_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 qen" *) output dma1_tm_dsc_sts_0_qen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 qid" *) output [11:0]dma1_tm_dsc_sts_0_qid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 qinv" *) output dma1_tm_dsc_sts_0_qinv;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 rdy" *) input dma1_tm_dsc_sts_0_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_tm_dsc_sts:1.0 dma1_tm_dsc_sts_0 valid" *) output dma1_tm_dsc_sts_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_refclk1_0 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gt_refclk1_0, CAN_DEBUG false, FREQ_HZ 100000000" *) input gt_refclk1_0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_refclk1_0 CLK_P" *) input gt_refclk1_0_clk_p;
  output pcie0_user_lnk_up_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk0_0 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk0_0, CAN_DEBUG false, FREQ_HZ 200000000" *) input [0:0]sys_clk0_0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk0_0 CLK_P" *) input [0:0]sys_clk0_0_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_flr:1.0 usr_flr_0 clear" *) output usr_flr_0_clear;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_flr:1.0 usr_flr_0 done_fnc" *) input [11:0]usr_flr_0_done_fnc;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_flr:1.0 usr_flr_0 done_vld" *) input usr_flr_0_done_vld;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_flr:1.0 usr_flr_0 fnc" *) output [11:0]usr_flr_0_fnc;
  (* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_flr:1.0 usr_flr_0 set" *) output usr_flr_0_set;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 usr_irq_0 ack" *) output usr_irq_0_ack;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 usr_irq_0 fail" *) output usr_irq_0_fail;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 usr_irq_0 fnc" *) input [11:0]usr_irq_0_fnc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 usr_irq_0 valid" *) input usr_irq_0_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:qdma_usr_irq:1.0 usr_irq_0 vec" *) input [4:0]usr_irq_0_vec;

  wire [11:0]S_AXI_0_1_ARADDR;
  wire [2:0]S_AXI_0_1_ARPROT;
  wire S_AXI_0_1_ARREADY;
  wire S_AXI_0_1_ARVALID;
  wire [11:0]S_AXI_0_1_AWADDR;
  wire [2:0]S_AXI_0_1_AWPROT;
  wire S_AXI_0_1_AWREADY;
  wire S_AXI_0_1_AWVALID;
  wire S_AXI_0_1_BREADY;
  wire [1:0]S_AXI_0_1_BRESP;
  wire S_AXI_0_1_BVALID;
  wire [31:0]S_AXI_0_1_RDATA;
  wire S_AXI_0_1_RREADY;
  wire [1:0]S_AXI_0_1_RRESP;
  wire S_AXI_0_1_RVALID;
  wire [31:0]S_AXI_0_1_WDATA;
  wire S_AXI_0_1_WREADY;
  wire [3:0]S_AXI_0_1_WSTRB;
  wire S_AXI_0_1_WVALID;
  wire [14:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [511:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [511:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [63:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [11:0]axi_bram_ctrl_1_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_1_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_1_BRAM_PORTA_EN;
  wire axi_bram_ctrl_1_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_1_BRAM_PORTA_WE;
  wire [5:0]axi_noc_0_CH0_LPDDR4_0_CA_A;
  wire [5:0]axi_noc_0_CH0_LPDDR4_0_CA_B;
  wire [0:0]axi_noc_0_CH0_LPDDR4_0_CKE_A;
  wire [0:0]axi_noc_0_CH0_LPDDR4_0_CKE_B;
  wire [0:0]axi_noc_0_CH0_LPDDR4_0_CK_C_A;
  wire [0:0]axi_noc_0_CH0_LPDDR4_0_CK_C_B;
  wire [0:0]axi_noc_0_CH0_LPDDR4_0_CK_T_A;
  wire [0:0]axi_noc_0_CH0_LPDDR4_0_CK_T_B;
  wire [0:0]axi_noc_0_CH0_LPDDR4_0_CS_A;
  wire [0:0]axi_noc_0_CH0_LPDDR4_0_CS_B;
  wire [1:0]axi_noc_0_CH0_LPDDR4_0_DMI_A;
  wire [1:0]axi_noc_0_CH0_LPDDR4_0_DMI_B;
  wire [1:0]axi_noc_0_CH0_LPDDR4_0_DQS_C_A;
  wire [1:0]axi_noc_0_CH0_LPDDR4_0_DQS_C_B;
  wire [1:0]axi_noc_0_CH0_LPDDR4_0_DQS_T_A;
  wire [1:0]axi_noc_0_CH0_LPDDR4_0_DQS_T_B;
  wire [15:0]axi_noc_0_CH0_LPDDR4_0_DQ_A;
  wire [15:0]axi_noc_0_CH0_LPDDR4_0_DQ_B;
  wire [0:0]axi_noc_0_CH0_LPDDR4_0_RESET_N;
  wire [5:0]axi_noc_0_CH1_LPDDR4_0_CA_A;
  wire [5:0]axi_noc_0_CH1_LPDDR4_0_CA_B;
  wire [0:0]axi_noc_0_CH1_LPDDR4_0_CKE_A;
  wire [0:0]axi_noc_0_CH1_LPDDR4_0_CKE_B;
  wire [0:0]axi_noc_0_CH1_LPDDR4_0_CK_C_A;
  wire [0:0]axi_noc_0_CH1_LPDDR4_0_CK_C_B;
  wire [0:0]axi_noc_0_CH1_LPDDR4_0_CK_T_A;
  wire [0:0]axi_noc_0_CH1_LPDDR4_0_CK_T_B;
  wire [0:0]axi_noc_0_CH1_LPDDR4_0_CS_A;
  wire [0:0]axi_noc_0_CH1_LPDDR4_0_CS_B;
  wire [1:0]axi_noc_0_CH1_LPDDR4_0_DMI_A;
  wire [1:0]axi_noc_0_CH1_LPDDR4_0_DMI_B;
  wire [1:0]axi_noc_0_CH1_LPDDR4_0_DQS_C_A;
  wire [1:0]axi_noc_0_CH1_LPDDR4_0_DQS_C_B;
  wire [1:0]axi_noc_0_CH1_LPDDR4_0_DQS_T_A;
  wire [1:0]axi_noc_0_CH1_LPDDR4_0_DQS_T_B;
  wire [15:0]axi_noc_0_CH1_LPDDR4_0_DQ_A;
  wire [15:0]axi_noc_0_CH1_LPDDR4_0_DQ_B;
  wire [0:0]axi_noc_0_CH1_LPDDR4_0_RESET_N;
  wire [63:0]axi_noc_0_M00_AXI_ARADDR;
  wire [1:0]axi_noc_0_M00_AXI_ARBURST;
  wire [3:0]axi_noc_0_M00_AXI_ARCACHE;
  wire [1:0]axi_noc_0_M00_AXI_ARID;
  wire [7:0]axi_noc_0_M00_AXI_ARLEN;
  wire [0:0]axi_noc_0_M00_AXI_ARLOCK;
  wire [2:0]axi_noc_0_M00_AXI_ARPROT;
  wire axi_noc_0_M00_AXI_ARREADY;
  wire [2:0]axi_noc_0_M00_AXI_ARSIZE;
  wire [0:0]axi_noc_0_M00_AXI_ARVALID;
  wire [63:0]axi_noc_0_M00_AXI_AWADDR;
  wire [1:0]axi_noc_0_M00_AXI_AWBURST;
  wire [3:0]axi_noc_0_M00_AXI_AWCACHE;
  wire [1:0]axi_noc_0_M00_AXI_AWID;
  wire [7:0]axi_noc_0_M00_AXI_AWLEN;
  wire [0:0]axi_noc_0_M00_AXI_AWLOCK;
  wire [2:0]axi_noc_0_M00_AXI_AWPROT;
  wire axi_noc_0_M00_AXI_AWREADY;
  wire [2:0]axi_noc_0_M00_AXI_AWSIZE;
  wire [0:0]axi_noc_0_M00_AXI_AWVALID;
  wire [1:0]axi_noc_0_M00_AXI_BID;
  wire [0:0]axi_noc_0_M00_AXI_BREADY;
  wire [1:0]axi_noc_0_M00_AXI_BRESP;
  wire axi_noc_0_M00_AXI_BVALID;
  wire [511:0]axi_noc_0_M00_AXI_RDATA;
  wire [1:0]axi_noc_0_M00_AXI_RID;
  wire axi_noc_0_M00_AXI_RLAST;
  wire [0:0]axi_noc_0_M00_AXI_RREADY;
  wire [1:0]axi_noc_0_M00_AXI_RRESP;
  wire axi_noc_0_M00_AXI_RVALID;
  wire [511:0]axi_noc_0_M00_AXI_WDATA;
  wire [0:0]axi_noc_0_M00_AXI_WLAST;
  wire axi_noc_0_M00_AXI_WREADY;
  wire [63:0]axi_noc_0_M00_AXI_WSTRB;
  wire [0:0]axi_noc_0_M00_AXI_WVALID;
  wire [63:0]axi_noc_0_M01_AXI_ARADDR;
  wire [1:0]axi_noc_0_M01_AXI_ARBURST;
  wire [3:0]axi_noc_0_M01_AXI_ARCACHE;
  wire [1:0]axi_noc_0_M01_AXI_ARID;
  wire [7:0]axi_noc_0_M01_AXI_ARLEN;
  wire [0:0]axi_noc_0_M01_AXI_ARLOCK;
  wire [2:0]axi_noc_0_M01_AXI_ARPROT;
  wire [3:0]axi_noc_0_M01_AXI_ARQOS;
  wire axi_noc_0_M01_AXI_ARREADY;
  wire [2:0]axi_noc_0_M01_AXI_ARSIZE;
  wire [17:0]axi_noc_0_M01_AXI_ARUSER;
  wire [0:0]axi_noc_0_M01_AXI_ARVALID;
  wire [63:0]axi_noc_0_M01_AXI_AWADDR;
  wire [1:0]axi_noc_0_M01_AXI_AWBURST;
  wire [3:0]axi_noc_0_M01_AXI_AWCACHE;
  wire [1:0]axi_noc_0_M01_AXI_AWID;
  wire [7:0]axi_noc_0_M01_AXI_AWLEN;
  wire [0:0]axi_noc_0_M01_AXI_AWLOCK;
  wire [2:0]axi_noc_0_M01_AXI_AWPROT;
  wire [3:0]axi_noc_0_M01_AXI_AWQOS;
  wire axi_noc_0_M01_AXI_AWREADY;
  wire [2:0]axi_noc_0_M01_AXI_AWSIZE;
  wire [17:0]axi_noc_0_M01_AXI_AWUSER;
  wire [0:0]axi_noc_0_M01_AXI_AWVALID;
  wire [1:0]axi_noc_0_M01_AXI_BID;
  wire [0:0]axi_noc_0_M01_AXI_BREADY;
  wire [1:0]axi_noc_0_M01_AXI_BRESP;
  wire axi_noc_0_M01_AXI_BVALID;
  wire [31:0]axi_noc_0_M01_AXI_RDATA;
  wire [1:0]axi_noc_0_M01_AXI_RID;
  wire axi_noc_0_M01_AXI_RLAST;
  wire [0:0]axi_noc_0_M01_AXI_RREADY;
  wire [1:0]axi_noc_0_M01_AXI_RRESP;
  wire axi_noc_0_M01_AXI_RVALID;
  wire [31:0]axi_noc_0_M01_AXI_WDATA;
  wire [0:0]axi_noc_0_M01_AXI_WLAST;
  wire axi_noc_0_M01_AXI_WREADY;
  wire [3:0]axi_noc_0_M01_AXI_WSTRB;
  wire [0:0]axi_noc_0_M01_AXI_WVALID;
  wire [63:0]axi_noc_0_M02_AXI_ARADDR;
  wire [1:0]axi_noc_0_M02_AXI_ARBURST;
  wire [3:0]axi_noc_0_M02_AXI_ARCACHE;
  wire [1:0]axi_noc_0_M02_AXI_ARID;
  wire [7:0]axi_noc_0_M02_AXI_ARLEN;
  wire [0:0]axi_noc_0_M02_AXI_ARLOCK;
  wire [2:0]axi_noc_0_M02_AXI_ARPROT;
  wire [3:0]axi_noc_0_M02_AXI_ARQOS;
  wire axi_noc_0_M02_AXI_ARREADY;
  wire [2:0]axi_noc_0_M02_AXI_ARSIZE;
  wire [17:0]axi_noc_0_M02_AXI_ARUSER;
  wire [0:0]axi_noc_0_M02_AXI_ARVALID;
  wire [63:0]axi_noc_0_M02_AXI_AWADDR;
  wire [1:0]axi_noc_0_M02_AXI_AWBURST;
  wire [3:0]axi_noc_0_M02_AXI_AWCACHE;
  wire [1:0]axi_noc_0_M02_AXI_AWID;
  wire [7:0]axi_noc_0_M02_AXI_AWLEN;
  wire [0:0]axi_noc_0_M02_AXI_AWLOCK;
  wire [2:0]axi_noc_0_M02_AXI_AWPROT;
  wire [3:0]axi_noc_0_M02_AXI_AWQOS;
  wire axi_noc_0_M02_AXI_AWREADY;
  wire [2:0]axi_noc_0_M02_AXI_AWSIZE;
  wire [17:0]axi_noc_0_M02_AXI_AWUSER;
  wire [0:0]axi_noc_0_M02_AXI_AWVALID;
  wire [1:0]axi_noc_0_M02_AXI_BID;
  wire [0:0]axi_noc_0_M02_AXI_BREADY;
  wire [1:0]axi_noc_0_M02_AXI_BRESP;
  wire axi_noc_0_M02_AXI_BVALID;
  wire [31:0]axi_noc_0_M02_AXI_RDATA;
  wire [1:0]axi_noc_0_M02_AXI_RID;
  wire axi_noc_0_M02_AXI_RLAST;
  wire [0:0]axi_noc_0_M02_AXI_RREADY;
  wire [1:0]axi_noc_0_M02_AXI_RRESP;
  wire axi_noc_0_M02_AXI_RVALID;
  wire [31:0]axi_noc_0_M02_AXI_WDATA;
  wire [0:0]axi_noc_0_M02_AXI_WLAST;
  wire axi_noc_0_M02_AXI_WREADY;
  wire [3:0]axi_noc_0_M02_AXI_WSTRB;
  wire [0:0]axi_noc_0_M02_AXI_WVALID;
  wire cpm_irq0_0_1;
  wire cpm_irq1_0_1;
  wire [15:0]dma1_c2h_byp_in_mm_0_0_1_cidx;
  wire dma1_c2h_byp_in_mm_0_0_1_error;
  wire [11:0]dma1_c2h_byp_in_mm_0_0_1_func;
  wire [15:0]dma1_c2h_byp_in_mm_0_0_1_len;
  wire dma1_c2h_byp_in_mm_0_0_1_mrkr_req;
  wire dma1_c2h_byp_in_mm_0_0_1_no_dma;
  wire [2:0]dma1_c2h_byp_in_mm_0_0_1_port_id;
  wire [11:0]dma1_c2h_byp_in_mm_0_0_1_qid;
  wire [63:0]dma1_c2h_byp_in_mm_0_0_1_radr;
  wire dma1_c2h_byp_in_mm_0_0_1_ready;
  wire dma1_c2h_byp_in_mm_0_0_1_sdi;
  wire dma1_c2h_byp_in_mm_0_0_1_valid;
  wire [63:0]dma1_c2h_byp_in_mm_0_0_1_wadr;
  wire [15:0]dma1_c2h_byp_in_mm_1_0_1_cidx;
  wire dma1_c2h_byp_in_mm_1_0_1_error;
  wire [11:0]dma1_c2h_byp_in_mm_1_0_1_func;
  wire [15:0]dma1_c2h_byp_in_mm_1_0_1_len;
  wire dma1_c2h_byp_in_mm_1_0_1_mrkr_req;
  wire dma1_c2h_byp_in_mm_1_0_1_no_dma;
  wire [2:0]dma1_c2h_byp_in_mm_1_0_1_port_id;
  wire [11:0]dma1_c2h_byp_in_mm_1_0_1_qid;
  wire [63:0]dma1_c2h_byp_in_mm_1_0_1_radr;
  wire dma1_c2h_byp_in_mm_1_0_1_ready;
  wire dma1_c2h_byp_in_mm_1_0_1_sdi;
  wire dma1_c2h_byp_in_mm_1_0_1_valid;
  wire [63:0]dma1_c2h_byp_in_mm_1_0_1_wadr;
  wire [63:0]dma1_c2h_byp_in_st_csh_0_1_addr;
  wire dma1_c2h_byp_in_st_csh_0_1_error;
  wire [11:0]dma1_c2h_byp_in_st_csh_0_1_func;
  wire [6:0]dma1_c2h_byp_in_st_csh_0_1_pfch_tag;
  wire [2:0]dma1_c2h_byp_in_st_csh_0_1_port_id;
  wire [11:0]dma1_c2h_byp_in_st_csh_0_1_qid;
  wire dma1_c2h_byp_in_st_csh_0_1_ready;
  wire dma1_c2h_byp_in_st_csh_0_1_valid;
  wire [15:0]dma1_dsc_crdt_in_0_1_crdt;
  wire dma1_dsc_crdt_in_0_1_dir;
  wire dma1_dsc_crdt_in_0_1_fence;
  wire [11:0]dma1_dsc_crdt_in_0_1_qid;
  wire dma1_dsc_crdt_in_0_1_rdy;
  wire dma1_dsc_crdt_in_0_1_valid;
  wire [15:0]dma1_h2c_byp_in_mm_0_0_1_cidx;
  wire dma1_h2c_byp_in_mm_0_0_1_error;
  wire [11:0]dma1_h2c_byp_in_mm_0_0_1_func;
  wire [15:0]dma1_h2c_byp_in_mm_0_0_1_len;
  wire dma1_h2c_byp_in_mm_0_0_1_mrkr_req;
  wire dma1_h2c_byp_in_mm_0_0_1_no_dma;
  wire [2:0]dma1_h2c_byp_in_mm_0_0_1_port_id;
  wire [11:0]dma1_h2c_byp_in_mm_0_0_1_qid;
  wire [63:0]dma1_h2c_byp_in_mm_0_0_1_radr;
  wire dma1_h2c_byp_in_mm_0_0_1_ready;
  wire dma1_h2c_byp_in_mm_0_0_1_sdi;
  wire dma1_h2c_byp_in_mm_0_0_1_valid;
  wire [63:0]dma1_h2c_byp_in_mm_0_0_1_wadr;
  wire [15:0]dma1_h2c_byp_in_mm_1_0_1_cidx;
  wire dma1_h2c_byp_in_mm_1_0_1_error;
  wire [11:0]dma1_h2c_byp_in_mm_1_0_1_func;
  wire [15:0]dma1_h2c_byp_in_mm_1_0_1_len;
  wire dma1_h2c_byp_in_mm_1_0_1_mrkr_req;
  wire dma1_h2c_byp_in_mm_1_0_1_no_dma;
  wire [2:0]dma1_h2c_byp_in_mm_1_0_1_port_id;
  wire [11:0]dma1_h2c_byp_in_mm_1_0_1_qid;
  wire [63:0]dma1_h2c_byp_in_mm_1_0_1_radr;
  wire dma1_h2c_byp_in_mm_1_0_1_ready;
  wire dma1_h2c_byp_in_mm_1_0_1_sdi;
  wire dma1_h2c_byp_in_mm_1_0_1_valid;
  wire [63:0]dma1_h2c_byp_in_mm_1_0_1_wadr;
  wire [63:0]dma1_h2c_byp_in_st_0_1_addr;
  wire [15:0]dma1_h2c_byp_in_st_0_1_cidx;
  wire dma1_h2c_byp_in_st_0_1_eop;
  wire dma1_h2c_byp_in_st_0_1_error;
  wire [11:0]dma1_h2c_byp_in_st_0_1_func;
  wire [15:0]dma1_h2c_byp_in_st_0_1_len;
  wire dma1_h2c_byp_in_st_0_1_mrkr_req;
  wire dma1_h2c_byp_in_st_0_1_no_dma;
  wire [2:0]dma1_h2c_byp_in_st_0_1_port_id;
  wire [11:0]dma1_h2c_byp_in_st_0_1_qid;
  wire dma1_h2c_byp_in_st_0_1_ready;
  wire dma1_h2c_byp_in_st_0_1_sdi;
  wire dma1_h2c_byp_in_st_0_1_sop;
  wire dma1_h2c_byp_in_st_0_1_valid;
  wire dma1_intrfc_resetn_0_1;
  wire dma1_s_axis_c2h_0_1_ctrl_has_cmpt;
  wire [15:0]dma1_s_axis_c2h_0_1_ctrl_len;
  wire dma1_s_axis_c2h_0_1_ctrl_marker;
  wire [2:0]dma1_s_axis_c2h_0_1_ctrl_port_id;
  wire [11:0]dma1_s_axis_c2h_0_1_ctrl_qid;
  wire [6:0]dma1_s_axis_c2h_0_1_ecc;
  wire [5:0]dma1_s_axis_c2h_0_1_mty;
  wire [31:0]dma1_s_axis_c2h_0_1_tcrc;
  wire [511:0]dma1_s_axis_c2h_0_1_tdata;
  wire dma1_s_axis_c2h_0_1_tlast;
  wire dma1_s_axis_c2h_0_1_tready;
  wire dma1_s_axis_c2h_0_1_tvalid;
  wire [1:0]dma1_s_axis_c2h_cmpt_0_1_cmpt_type;
  wire [2:0]dma1_s_axis_c2h_cmpt_0_1_col_idx;
  wire [511:0]dma1_s_axis_c2h_cmpt_0_1_data;
  wire [15:0]dma1_s_axis_c2h_cmpt_0_1_dpar;
  wire [2:0]dma1_s_axis_c2h_cmpt_0_1_err_idx;
  wire dma1_s_axis_c2h_cmpt_0_1_marker;
  wire dma1_s_axis_c2h_cmpt_0_1_no_wrb_marker;
  wire [2:0]dma1_s_axis_c2h_cmpt_0_1_port_id;
  wire [12:0]dma1_s_axis_c2h_cmpt_0_1_qid;
  wire [1:0]dma1_s_axis_c2h_cmpt_0_1_size;
  wire dma1_s_axis_c2h_cmpt_0_1_tready;
  wire dma1_s_axis_c2h_cmpt_0_1_tvalid;
  wire dma1_s_axis_c2h_cmpt_0_1_user_trig;
  wire [15:0]dma1_s_axis_c2h_cmpt_0_1_wait_pld_pkt_id;
  wire gt_refclk1_0_1_CLK_N;
  wire gt_refclk1_0_1_CLK_P;
  wire pcie_qdma_mailbox_0_dma_flr_clear;
  wire [11:0]pcie_qdma_mailbox_0_dma_flr_done_fnc;
  wire pcie_qdma_mailbox_0_dma_flr_done_vld;
  wire [12:0]pcie_qdma_mailbox_0_dma_flr_fnc;
  wire pcie_qdma_mailbox_0_dma_flr_set;
  wire pcie_qdma_mailbox_0_dma_usr_irq_ack;
  wire pcie_qdma_mailbox_0_dma_usr_irq_fail;
  wire [11:0]pcie_qdma_mailbox_0_dma_usr_irq_fnc;
  wire pcie_qdma_mailbox_0_dma_usr_irq_valid;
  wire [4:0]pcie_qdma_mailbox_0_dma_usr_irq_vec;
  wire [31:0]pcie_qdma_mailbox_0_pcie_mgmt_cpl_dat;
  wire pcie_qdma_mailbox_0_pcie_mgmt_cpl_rdy;
  wire [1:0]pcie_qdma_mailbox_0_pcie_mgmt_cpl_sts;
  wire pcie_qdma_mailbox_0_pcie_mgmt_cpl_vld;
  wire [31:0]pcie_qdma_mailbox_0_pcie_mgmt_req_adr;
  wire [1:0]pcie_qdma_mailbox_0_pcie_mgmt_req_cmd;
  wire [31:0]pcie_qdma_mailbox_0_pcie_mgmt_req_dat;
  wire [11:0]pcie_qdma_mailbox_0_pcie_mgmt_req_fnc;
  wire [5:0]pcie_qdma_mailbox_0_pcie_mgmt_req_msc;
  wire pcie_qdma_mailbox_0_pcie_mgmt_req_rdy;
  wire pcie_qdma_mailbox_0_pcie_mgmt_req_vld;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn;
  wire [41:0]smartconnect_0_M00_AXI_ARADDR;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [41:0]smartconnect_0_M00_AXI_AWADDR;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [31:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [31:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [3:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [41:0]smartconnect_1_M00_AXI_ARADDR;
  wire [2:0]smartconnect_1_M00_AXI_ARPROT;
  wire smartconnect_1_M00_AXI_ARREADY;
  wire smartconnect_1_M00_AXI_ARVALID;
  wire [41:0]smartconnect_1_M00_AXI_AWADDR;
  wire [2:0]smartconnect_1_M00_AXI_AWPROT;
  wire smartconnect_1_M00_AXI_AWREADY;
  wire smartconnect_1_M00_AXI_AWVALID;
  wire smartconnect_1_M00_AXI_BREADY;
  wire [1:0]smartconnect_1_M00_AXI_BRESP;
  wire smartconnect_1_M00_AXI_BVALID;
  wire [31:0]smartconnect_1_M00_AXI_RDATA;
  wire smartconnect_1_M00_AXI_RREADY;
  wire [1:0]smartconnect_1_M00_AXI_RRESP;
  wire smartconnect_1_M00_AXI_RVALID;
  wire [31:0]smartconnect_1_M00_AXI_WDATA;
  wire smartconnect_1_M00_AXI_WREADY;
  wire [3:0]smartconnect_1_M00_AXI_WSTRB;
  wire smartconnect_1_M00_AXI_WVALID;
  wire [0:0]sys_clk0_0_1_CLK_N;
  wire [0:0]sys_clk0_0_1_CLK_P;
  wire usr_flr_0_1_clear;
  wire [11:0]usr_flr_0_1_done_fnc;
  wire usr_flr_0_1_done_vld;
  wire [11:0]usr_flr_0_1_fnc;
  wire usr_flr_0_1_set;
  wire usr_irq_0_1_ack;
  wire usr_irq_0_1_fail;
  wire [11:0]usr_irq_0_1_fnc;
  wire usr_irq_0_1_valid;
  wire [4:0]usr_irq_0_1_vec;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_CPM_PCIE_NOC_0_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_0_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_0_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_0_ARID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_CPM_PCIE_NOC_0_ARLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_0_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_0_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_0_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_0_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_CPM_PCIE_NOC_0_ARUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_CPM_PCIE_NOC_0_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_0_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_0_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_0_AWID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_CPM_PCIE_NOC_0_AWLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_0_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_0_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_0_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_0_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_CPM_PCIE_NOC_0_AWUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_0_BID;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_0_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_0_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_CPM_PCIE_NOC_0_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_0_RID;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_0_RLAST;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_0_RRESP;
  (* HARD_CONN = "true" *) wire [16:0]versal_cips_0_CPM_PCIE_NOC_0_RUSER;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_0_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_CPM_PCIE_NOC_0_WDATA;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_0_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_0_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]versal_cips_0_CPM_PCIE_NOC_0_WUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_CPM_PCIE_NOC_1_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_1_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_1_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_1_ARID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_CPM_PCIE_NOC_1_ARLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_1_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_1_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_1_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_1_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_CPM_PCIE_NOC_1_ARUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_CPM_PCIE_NOC_1_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_1_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_1_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_1_AWID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_CPM_PCIE_NOC_1_AWLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_1_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_1_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_1_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_1_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_CPM_PCIE_NOC_1_AWUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_1_BID;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_1_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_1_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_CPM_PCIE_NOC_1_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_1_RID;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_1_RLAST;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_1_RRESP;
  (* HARD_CONN = "true" *) wire [16:0]versal_cips_0_CPM_PCIE_NOC_1_RUSER;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_1_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_CPM_PCIE_NOC_1_WDATA;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_1_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_1_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]versal_cips_0_CPM_PCIE_NOC_1_WUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_WVALID;
  wire [7:0]versal_cips_0_PCIE1_GT_GRX_N;
  wire [7:0]versal_cips_0_PCIE1_GT_GRX_P;
  wire [7:0]versal_cips_0_PCIE1_GT_GTX_N;
  wire [7:0]versal_cips_0_PCIE1_GT_GTX_P;
  wire versal_cips_0_cpm_cor_irq;
  wire versal_cips_0_cpm_misc_irq;
  (* HARD_CONN = "true" *) wire versal_cips_0_cpm_pcie_noc_axi0_clk;
  (* HARD_CONN = "true" *) wire versal_cips_0_cpm_pcie_noc_axi1_clk;
  wire versal_cips_0_cpm_uncor_irq;
  wire versal_cips_0_dma1_axi_aresetn;
  wire versal_cips_0_dma1_axis_c2h_dmawr_cmp;
  wire [2:0]versal_cips_0_dma1_axis_c2h_dmawr_port_id;
  wire versal_cips_0_dma1_axis_c2h_dmawr_target_vch;
  wire versal_cips_0_dma1_axis_c2h_status_drop;
  wire versal_cips_0_dma1_axis_c2h_status_error;
  wire versal_cips_0_dma1_axis_c2h_status_last;
  wire [11:0]versal_cips_0_dma1_axis_c2h_status_qid;
  wire versal_cips_0_dma1_axis_c2h_status_status_cmp;
  wire versal_cips_0_dma1_axis_c2h_status_valid;
  wire [15:0]versal_cips_0_dma1_c2h_byp_out_cidx;
  wire [255:0]versal_cips_0_dma1_c2h_byp_out_dsc;
  wire [1:0]versal_cips_0_dma1_c2h_byp_out_dsc_sz;
  wire versal_cips_0_dma1_c2h_byp_out_error;
  wire [2:0]versal_cips_0_dma1_c2h_byp_out_fmt;
  wire [11:0]versal_cips_0_dma1_c2h_byp_out_func;
  wire versal_cips_0_dma1_c2h_byp_out_mm_chn;
  wire [6:0]versal_cips_0_dma1_c2h_byp_out_pfch_tag;
  wire [2:0]versal_cips_0_dma1_c2h_byp_out_port_id;
  wire [11:0]versal_cips_0_dma1_c2h_byp_out_qid;
  wire versal_cips_0_dma1_c2h_byp_out_ready;
  wire versal_cips_0_dma1_c2h_byp_out_st_mm;
  wire versal_cips_0_dma1_c2h_byp_out_valid;
  wire [15:0]versal_cips_0_dma1_h2c_byp_out_cidx;
  wire [255:0]versal_cips_0_dma1_h2c_byp_out_dsc;
  wire [1:0]versal_cips_0_dma1_h2c_byp_out_dsc_sz;
  wire versal_cips_0_dma1_h2c_byp_out_error;
  wire [2:0]versal_cips_0_dma1_h2c_byp_out_fmt;
  wire [11:0]versal_cips_0_dma1_h2c_byp_out_func;
  wire versal_cips_0_dma1_h2c_byp_out_mm_chn;
  wire [2:0]versal_cips_0_dma1_h2c_byp_out_port_id;
  wire [11:0]versal_cips_0_dma1_h2c_byp_out_qid;
  wire versal_cips_0_dma1_h2c_byp_out_ready;
  wire versal_cips_0_dma1_h2c_byp_out_st_mm;
  wire versal_cips_0_dma1_h2c_byp_out_valid;
  wire versal_cips_0_dma1_m_axis_h2c_err;
  wire [31:0]versal_cips_0_dma1_m_axis_h2c_mdata;
  wire [5:0]versal_cips_0_dma1_m_axis_h2c_mty;
  wire [2:0]versal_cips_0_dma1_m_axis_h2c_port_id;
  wire [11:0]versal_cips_0_dma1_m_axis_h2c_qid;
  wire [31:0]versal_cips_0_dma1_m_axis_h2c_tcrc;
  wire [511:0]versal_cips_0_dma1_m_axis_h2c_tdata;
  wire versal_cips_0_dma1_m_axis_h2c_tlast;
  wire versal_cips_0_dma1_m_axis_h2c_tready;
  wire versal_cips_0_dma1_m_axis_h2c_tvalid;
  wire versal_cips_0_dma1_m_axis_h2c_zero_byte;
  wire [63:0]versal_cips_0_dma1_qsts_out_data;
  wire [7:0]versal_cips_0_dma1_qsts_out_op;
  wire [2:0]versal_cips_0_dma1_qsts_out_port_id;
  wire [12:0]versal_cips_0_dma1_qsts_out_qid;
  wire versal_cips_0_dma1_qsts_out_rdy;
  wire versal_cips_0_dma1_qsts_out_vld;
  wire [31:0]versal_cips_0_dma1_st_rx_msg_TDATA;
  wire versal_cips_0_dma1_st_rx_msg_TLAST;
  wire versal_cips_0_dma1_st_rx_msg_TREADY;
  wire versal_cips_0_dma1_st_rx_msg_TVALID;
  wire [15:0]versal_cips_0_dma1_tm_dsc_sts_avl;
  wire versal_cips_0_dma1_tm_dsc_sts_byp;
  wire versal_cips_0_dma1_tm_dsc_sts_dir;
  wire versal_cips_0_dma1_tm_dsc_sts_error;
  wire versal_cips_0_dma1_tm_dsc_sts_irq_arm;
  wire versal_cips_0_dma1_tm_dsc_sts_mm;
  wire [15:0]versal_cips_0_dma1_tm_dsc_sts_pidx;
  wire [2:0]versal_cips_0_dma1_tm_dsc_sts_port_id;
  wire versal_cips_0_dma1_tm_dsc_sts_qen;
  wire [11:0]versal_cips_0_dma1_tm_dsc_sts_qid;
  wire versal_cips_0_dma1_tm_dsc_sts_qinv;
  wire versal_cips_0_dma1_tm_dsc_sts_rdy;
  wire versal_cips_0_dma1_tm_dsc_sts_valid;
  wire versal_cips_0_pl0_ref_clk;
  wire versal_cips_0_pl1_ref_clk;

  assign CH0_LPDDR4_0_0_ca_a[5:0] = axi_noc_0_CH0_LPDDR4_0_CA_A;
  assign CH0_LPDDR4_0_0_ca_b[5:0] = axi_noc_0_CH0_LPDDR4_0_CA_B;
  assign CH0_LPDDR4_0_0_ck_c_a[0] = axi_noc_0_CH0_LPDDR4_0_CK_C_A;
  assign CH0_LPDDR4_0_0_ck_c_b[0] = axi_noc_0_CH0_LPDDR4_0_CK_C_B;
  assign CH0_LPDDR4_0_0_ck_t_a[0] = axi_noc_0_CH0_LPDDR4_0_CK_T_A;
  assign CH0_LPDDR4_0_0_ck_t_b[0] = axi_noc_0_CH0_LPDDR4_0_CK_T_B;
  assign CH0_LPDDR4_0_0_cke_a[0] = axi_noc_0_CH0_LPDDR4_0_CKE_A;
  assign CH0_LPDDR4_0_0_cke_b[0] = axi_noc_0_CH0_LPDDR4_0_CKE_B;
  assign CH0_LPDDR4_0_0_cs_a[0] = axi_noc_0_CH0_LPDDR4_0_CS_A;
  assign CH0_LPDDR4_0_0_cs_b[0] = axi_noc_0_CH0_LPDDR4_0_CS_B;
  assign CH0_LPDDR4_0_0_reset_n[0] = axi_noc_0_CH0_LPDDR4_0_RESET_N;
  assign CH1_LPDDR4_0_0_ca_a[5:0] = axi_noc_0_CH1_LPDDR4_0_CA_A;
  assign CH1_LPDDR4_0_0_ca_b[5:0] = axi_noc_0_CH1_LPDDR4_0_CA_B;
  assign CH1_LPDDR4_0_0_ck_c_a[0] = axi_noc_0_CH1_LPDDR4_0_CK_C_A;
  assign CH1_LPDDR4_0_0_ck_c_b[0] = axi_noc_0_CH1_LPDDR4_0_CK_C_B;
  assign CH1_LPDDR4_0_0_ck_t_a[0] = axi_noc_0_CH1_LPDDR4_0_CK_T_A;
  assign CH1_LPDDR4_0_0_ck_t_b[0] = axi_noc_0_CH1_LPDDR4_0_CK_T_B;
  assign CH1_LPDDR4_0_0_cke_a[0] = axi_noc_0_CH1_LPDDR4_0_CKE_A;
  assign CH1_LPDDR4_0_0_cke_b[0] = axi_noc_0_CH1_LPDDR4_0_CKE_B;
  assign CH1_LPDDR4_0_0_cs_a[0] = axi_noc_0_CH1_LPDDR4_0_CS_A;
  assign CH1_LPDDR4_0_0_cs_b[0] = axi_noc_0_CH1_LPDDR4_0_CS_B;
  assign CH1_LPDDR4_0_0_reset_n[0] = axi_noc_0_CH1_LPDDR4_0_RESET_N;
  assign M_AXIL_araddr[41:0] = smartconnect_0_M00_AXI_ARADDR;
  assign M_AXIL_arprot[2:0] = smartconnect_0_M00_AXI_ARPROT;
  assign M_AXIL_arvalid = smartconnect_0_M00_AXI_ARVALID;
  assign M_AXIL_awaddr[41:0] = smartconnect_0_M00_AXI_AWADDR;
  assign M_AXIL_awprot[2:0] = smartconnect_0_M00_AXI_AWPROT;
  assign M_AXIL_awvalid = smartconnect_0_M00_AXI_AWVALID;
  assign M_AXIL_bready = smartconnect_0_M00_AXI_BREADY;
  assign M_AXIL_rready = smartconnect_0_M00_AXI_RREADY;
  assign M_AXIL_wdata[31:0] = smartconnect_0_M00_AXI_WDATA;
  assign M_AXIL_wstrb[3:0] = smartconnect_0_M00_AXI_WSTRB;
  assign M_AXIL_wvalid = smartconnect_0_M00_AXI_WVALID;
  assign PCIE1_GT_0_gtx_n[7:0] = versal_cips_0_PCIE1_GT_GTX_N;
  assign PCIE1_GT_0_gtx_p[7:0] = versal_cips_0_PCIE1_GT_GTX_P;
  assign S_AXIL_arready = S_AXI_0_1_ARREADY;
  assign S_AXIL_awready = S_AXI_0_1_AWREADY;
  assign S_AXIL_bresp[1:0] = S_AXI_0_1_BRESP;
  assign S_AXIL_bvalid = S_AXI_0_1_BVALID;
  assign S_AXIL_rdata[31:0] = S_AXI_0_1_RDATA;
  assign S_AXIL_rresp[1:0] = S_AXI_0_1_RRESP;
  assign S_AXIL_rvalid = S_AXI_0_1_RVALID;
  assign S_AXIL_wready = S_AXI_0_1_WREADY;
  assign S_AXI_0_1_ARADDR = S_AXIL_araddr[11:0];
  assign S_AXI_0_1_ARPROT = S_AXIL_arprot[2:0];
  assign S_AXI_0_1_ARVALID = S_AXIL_arvalid;
  assign S_AXI_0_1_AWADDR = S_AXIL_awaddr[11:0];
  assign S_AXI_0_1_AWPROT = S_AXIL_awprot[2:0];
  assign S_AXI_0_1_AWVALID = S_AXIL_awvalid;
  assign S_AXI_0_1_BREADY = S_AXIL_bready;
  assign S_AXI_0_1_RREADY = S_AXIL_rready;
  assign S_AXI_0_1_WDATA = S_AXIL_wdata[31:0];
  assign S_AXI_0_1_WSTRB = S_AXIL_wstrb[3:0];
  assign S_AXI_0_1_WVALID = S_AXIL_wvalid;
  assign cpm_cor_irq_0 = versal_cips_0_cpm_cor_irq;
  assign cpm_irq0_0_1 = cpm_irq0_0;
  assign cpm_irq1_0_1 = cpm_irq1_0;
  assign cpm_misc_irq_0 = versal_cips_0_cpm_misc_irq;
  assign cpm_uncor_irq_0 = versal_cips_0_cpm_uncor_irq;
  assign dma1_axi_aresetn_0 = versal_cips_0_dma1_axi_aresetn;
  assign dma1_axis_c2h_dmawr_0_cmp = versal_cips_0_dma1_axis_c2h_dmawr_cmp;
  assign dma1_axis_c2h_dmawr_0_port_id[2:0] = versal_cips_0_dma1_axis_c2h_dmawr_port_id;
  assign dma1_axis_c2h_dmawr_0_target_vch = versal_cips_0_dma1_axis_c2h_dmawr_target_vch;
  assign dma1_axis_c2h_status_0_drop = versal_cips_0_dma1_axis_c2h_status_drop;
  assign dma1_axis_c2h_status_0_error = versal_cips_0_dma1_axis_c2h_status_error;
  assign dma1_axis_c2h_status_0_last = versal_cips_0_dma1_axis_c2h_status_last;
  assign dma1_axis_c2h_status_0_qid[11:0] = versal_cips_0_dma1_axis_c2h_status_qid;
  assign dma1_axis_c2h_status_0_status_cmp = versal_cips_0_dma1_axis_c2h_status_status_cmp;
  assign dma1_axis_c2h_status_0_valid = versal_cips_0_dma1_axis_c2h_status_valid;
  assign dma1_c2h_byp_in_mm_0_0_1_cidx = dma1_c2h_byp_in_mm_0_0_cidx[15:0];
  assign dma1_c2h_byp_in_mm_0_0_1_error = dma1_c2h_byp_in_mm_0_0_error;
  assign dma1_c2h_byp_in_mm_0_0_1_func = dma1_c2h_byp_in_mm_0_0_func[11:0];
  assign dma1_c2h_byp_in_mm_0_0_1_len = dma1_c2h_byp_in_mm_0_0_len[15:0];
  assign dma1_c2h_byp_in_mm_0_0_1_mrkr_req = dma1_c2h_byp_in_mm_0_0_mrkr_req;
  assign dma1_c2h_byp_in_mm_0_0_1_no_dma = dma1_c2h_byp_in_mm_0_0_no_dma;
  assign dma1_c2h_byp_in_mm_0_0_1_port_id = dma1_c2h_byp_in_mm_0_0_port_id[2:0];
  assign dma1_c2h_byp_in_mm_0_0_1_qid = dma1_c2h_byp_in_mm_0_0_qid[11:0];
  assign dma1_c2h_byp_in_mm_0_0_1_radr = dma1_c2h_byp_in_mm_0_0_radr[63:0];
  assign dma1_c2h_byp_in_mm_0_0_1_sdi = dma1_c2h_byp_in_mm_0_0_sdi;
  assign dma1_c2h_byp_in_mm_0_0_1_valid = dma1_c2h_byp_in_mm_0_0_valid;
  assign dma1_c2h_byp_in_mm_0_0_1_wadr = dma1_c2h_byp_in_mm_0_0_wadr[63:0];
  assign dma1_c2h_byp_in_mm_0_0_ready = dma1_c2h_byp_in_mm_0_0_1_ready;
  assign dma1_c2h_byp_in_mm_1_0_1_cidx = dma1_c2h_byp_in_mm_1_0_cidx[15:0];
  assign dma1_c2h_byp_in_mm_1_0_1_error = dma1_c2h_byp_in_mm_1_0_error;
  assign dma1_c2h_byp_in_mm_1_0_1_func = dma1_c2h_byp_in_mm_1_0_func[11:0];
  assign dma1_c2h_byp_in_mm_1_0_1_len = dma1_c2h_byp_in_mm_1_0_len[15:0];
  assign dma1_c2h_byp_in_mm_1_0_1_mrkr_req = dma1_c2h_byp_in_mm_1_0_mrkr_req;
  assign dma1_c2h_byp_in_mm_1_0_1_no_dma = dma1_c2h_byp_in_mm_1_0_no_dma;
  assign dma1_c2h_byp_in_mm_1_0_1_port_id = dma1_c2h_byp_in_mm_1_0_port_id[2:0];
  assign dma1_c2h_byp_in_mm_1_0_1_qid = dma1_c2h_byp_in_mm_1_0_qid[11:0];
  assign dma1_c2h_byp_in_mm_1_0_1_radr = dma1_c2h_byp_in_mm_1_0_radr[63:0];
  assign dma1_c2h_byp_in_mm_1_0_1_sdi = dma1_c2h_byp_in_mm_1_0_sdi;
  assign dma1_c2h_byp_in_mm_1_0_1_valid = dma1_c2h_byp_in_mm_1_0_valid;
  assign dma1_c2h_byp_in_mm_1_0_1_wadr = dma1_c2h_byp_in_mm_1_0_wadr[63:0];
  assign dma1_c2h_byp_in_mm_1_0_ready = dma1_c2h_byp_in_mm_1_0_1_ready;
  assign dma1_c2h_byp_in_st_csh_0_1_addr = dma1_c2h_byp_in_st_csh_0_addr[63:0];
  assign dma1_c2h_byp_in_st_csh_0_1_error = dma1_c2h_byp_in_st_csh_0_error;
  assign dma1_c2h_byp_in_st_csh_0_1_func = dma1_c2h_byp_in_st_csh_0_func[11:0];
  assign dma1_c2h_byp_in_st_csh_0_1_pfch_tag = dma1_c2h_byp_in_st_csh_0_pfch_tag[6:0];
  assign dma1_c2h_byp_in_st_csh_0_1_port_id = dma1_c2h_byp_in_st_csh_0_port_id[2:0];
  assign dma1_c2h_byp_in_st_csh_0_1_qid = dma1_c2h_byp_in_st_csh_0_qid[11:0];
  assign dma1_c2h_byp_in_st_csh_0_1_valid = dma1_c2h_byp_in_st_csh_0_valid;
  assign dma1_c2h_byp_in_st_csh_0_ready = dma1_c2h_byp_in_st_csh_0_1_ready;
  assign dma1_c2h_byp_out_0_cidx[15:0] = versal_cips_0_dma1_c2h_byp_out_cidx;
  assign dma1_c2h_byp_out_0_dsc[255:0] = versal_cips_0_dma1_c2h_byp_out_dsc;
  assign dma1_c2h_byp_out_0_dsc_sz[1:0] = versal_cips_0_dma1_c2h_byp_out_dsc_sz;
  assign dma1_c2h_byp_out_0_error = versal_cips_0_dma1_c2h_byp_out_error;
  assign dma1_c2h_byp_out_0_fmt[2:0] = versal_cips_0_dma1_c2h_byp_out_fmt;
  assign dma1_c2h_byp_out_0_func[11:0] = versal_cips_0_dma1_c2h_byp_out_func;
  assign dma1_c2h_byp_out_0_mm_chn = versal_cips_0_dma1_c2h_byp_out_mm_chn;
  assign dma1_c2h_byp_out_0_pfch_tag[6:0] = versal_cips_0_dma1_c2h_byp_out_pfch_tag;
  assign dma1_c2h_byp_out_0_port_id[2:0] = versal_cips_0_dma1_c2h_byp_out_port_id;
  assign dma1_c2h_byp_out_0_qid[11:0] = versal_cips_0_dma1_c2h_byp_out_qid;
  assign dma1_c2h_byp_out_0_st_mm = versal_cips_0_dma1_c2h_byp_out_st_mm;
  assign dma1_c2h_byp_out_0_valid = versal_cips_0_dma1_c2h_byp_out_valid;
  assign dma1_dsc_crdt_in_0_1_crdt = dma1_dsc_crdt_in_0_crdt[15:0];
  assign dma1_dsc_crdt_in_0_1_dir = dma1_dsc_crdt_in_0_dir;
  assign dma1_dsc_crdt_in_0_1_fence = dma1_dsc_crdt_in_0_fence;
  assign dma1_dsc_crdt_in_0_1_qid = dma1_dsc_crdt_in_0_qid[11:0];
  assign dma1_dsc_crdt_in_0_1_valid = dma1_dsc_crdt_in_0_valid;
  assign dma1_dsc_crdt_in_0_rdy = dma1_dsc_crdt_in_0_1_rdy;
  assign dma1_h2c_byp_in_mm_0_0_1_cidx = dma1_h2c_byp_in_mm_0_0_cidx[15:0];
  assign dma1_h2c_byp_in_mm_0_0_1_error = dma1_h2c_byp_in_mm_0_0_error;
  assign dma1_h2c_byp_in_mm_0_0_1_func = dma1_h2c_byp_in_mm_0_0_func[11:0];
  assign dma1_h2c_byp_in_mm_0_0_1_len = dma1_h2c_byp_in_mm_0_0_len[15:0];
  assign dma1_h2c_byp_in_mm_0_0_1_mrkr_req = dma1_h2c_byp_in_mm_0_0_mrkr_req;
  assign dma1_h2c_byp_in_mm_0_0_1_no_dma = dma1_h2c_byp_in_mm_0_0_no_dma;
  assign dma1_h2c_byp_in_mm_0_0_1_port_id = dma1_h2c_byp_in_mm_0_0_port_id[2:0];
  assign dma1_h2c_byp_in_mm_0_0_1_qid = dma1_h2c_byp_in_mm_0_0_qid[11:0];
  assign dma1_h2c_byp_in_mm_0_0_1_radr = dma1_h2c_byp_in_mm_0_0_radr[63:0];
  assign dma1_h2c_byp_in_mm_0_0_1_sdi = dma1_h2c_byp_in_mm_0_0_sdi;
  assign dma1_h2c_byp_in_mm_0_0_1_valid = dma1_h2c_byp_in_mm_0_0_valid;
  assign dma1_h2c_byp_in_mm_0_0_1_wadr = dma1_h2c_byp_in_mm_0_0_wadr[63:0];
  assign dma1_h2c_byp_in_mm_0_0_ready = dma1_h2c_byp_in_mm_0_0_1_ready;
  assign dma1_h2c_byp_in_mm_1_0_1_cidx = dma1_h2c_byp_in_mm_1_0_cidx[15:0];
  assign dma1_h2c_byp_in_mm_1_0_1_error = dma1_h2c_byp_in_mm_1_0_error;
  assign dma1_h2c_byp_in_mm_1_0_1_func = dma1_h2c_byp_in_mm_1_0_func[11:0];
  assign dma1_h2c_byp_in_mm_1_0_1_len = dma1_h2c_byp_in_mm_1_0_len[15:0];
  assign dma1_h2c_byp_in_mm_1_0_1_mrkr_req = dma1_h2c_byp_in_mm_1_0_mrkr_req;
  assign dma1_h2c_byp_in_mm_1_0_1_no_dma = dma1_h2c_byp_in_mm_1_0_no_dma;
  assign dma1_h2c_byp_in_mm_1_0_1_port_id = dma1_h2c_byp_in_mm_1_0_port_id[2:0];
  assign dma1_h2c_byp_in_mm_1_0_1_qid = dma1_h2c_byp_in_mm_1_0_qid[11:0];
  assign dma1_h2c_byp_in_mm_1_0_1_radr = dma1_h2c_byp_in_mm_1_0_radr[63:0];
  assign dma1_h2c_byp_in_mm_1_0_1_sdi = dma1_h2c_byp_in_mm_1_0_sdi;
  assign dma1_h2c_byp_in_mm_1_0_1_valid = dma1_h2c_byp_in_mm_1_0_valid;
  assign dma1_h2c_byp_in_mm_1_0_1_wadr = dma1_h2c_byp_in_mm_1_0_wadr[63:0];
  assign dma1_h2c_byp_in_mm_1_0_ready = dma1_h2c_byp_in_mm_1_0_1_ready;
  assign dma1_h2c_byp_in_st_0_1_addr = dma1_h2c_byp_in_st_0_addr[63:0];
  assign dma1_h2c_byp_in_st_0_1_cidx = dma1_h2c_byp_in_st_0_cidx[15:0];
  assign dma1_h2c_byp_in_st_0_1_eop = dma1_h2c_byp_in_st_0_eop;
  assign dma1_h2c_byp_in_st_0_1_error = dma1_h2c_byp_in_st_0_error;
  assign dma1_h2c_byp_in_st_0_1_func = dma1_h2c_byp_in_st_0_func[11:0];
  assign dma1_h2c_byp_in_st_0_1_len = dma1_h2c_byp_in_st_0_len[15:0];
  assign dma1_h2c_byp_in_st_0_1_mrkr_req = dma1_h2c_byp_in_st_0_mrkr_req;
  assign dma1_h2c_byp_in_st_0_1_no_dma = dma1_h2c_byp_in_st_0_no_dma;
  assign dma1_h2c_byp_in_st_0_1_port_id = dma1_h2c_byp_in_st_0_port_id[2:0];
  assign dma1_h2c_byp_in_st_0_1_qid = dma1_h2c_byp_in_st_0_qid[11:0];
  assign dma1_h2c_byp_in_st_0_1_sdi = dma1_h2c_byp_in_st_0_sdi;
  assign dma1_h2c_byp_in_st_0_1_sop = dma1_h2c_byp_in_st_0_sop;
  assign dma1_h2c_byp_in_st_0_1_valid = dma1_h2c_byp_in_st_0_valid;
  assign dma1_h2c_byp_in_st_0_ready = dma1_h2c_byp_in_st_0_1_ready;
  assign dma1_h2c_byp_out_0_cidx[15:0] = versal_cips_0_dma1_h2c_byp_out_cidx;
  assign dma1_h2c_byp_out_0_dsc[255:0] = versal_cips_0_dma1_h2c_byp_out_dsc;
  assign dma1_h2c_byp_out_0_dsc_sz[1:0] = versal_cips_0_dma1_h2c_byp_out_dsc_sz;
  assign dma1_h2c_byp_out_0_error = versal_cips_0_dma1_h2c_byp_out_error;
  assign dma1_h2c_byp_out_0_fmt[2:0] = versal_cips_0_dma1_h2c_byp_out_fmt;
  assign dma1_h2c_byp_out_0_func[11:0] = versal_cips_0_dma1_h2c_byp_out_func;
  assign dma1_h2c_byp_out_0_mm_chn = versal_cips_0_dma1_h2c_byp_out_mm_chn;
  assign dma1_h2c_byp_out_0_port_id[2:0] = versal_cips_0_dma1_h2c_byp_out_port_id;
  assign dma1_h2c_byp_out_0_qid[11:0] = versal_cips_0_dma1_h2c_byp_out_qid;
  assign dma1_h2c_byp_out_0_st_mm = versal_cips_0_dma1_h2c_byp_out_st_mm;
  assign dma1_h2c_byp_out_0_valid = versal_cips_0_dma1_h2c_byp_out_valid;
  assign dma1_intrfc_clk_0 = versal_cips_0_pl0_ref_clk;
  assign dma1_intrfc_resetn_0_1 = dma1_intrfc_resetn_0;
  assign dma1_m_axis_h2c_0_err = versal_cips_0_dma1_m_axis_h2c_err;
  assign dma1_m_axis_h2c_0_mdata[31:0] = versal_cips_0_dma1_m_axis_h2c_mdata;
  assign dma1_m_axis_h2c_0_mty[5:0] = versal_cips_0_dma1_m_axis_h2c_mty;
  assign dma1_m_axis_h2c_0_port_id[2:0] = versal_cips_0_dma1_m_axis_h2c_port_id;
  assign dma1_m_axis_h2c_0_qid[11:0] = versal_cips_0_dma1_m_axis_h2c_qid;
  assign dma1_m_axis_h2c_0_tcrc[31:0] = versal_cips_0_dma1_m_axis_h2c_tcrc;
  assign dma1_m_axis_h2c_0_tdata[511:0] = versal_cips_0_dma1_m_axis_h2c_tdata;
  assign dma1_m_axis_h2c_0_tlast = versal_cips_0_dma1_m_axis_h2c_tlast;
  assign dma1_m_axis_h2c_0_tvalid = versal_cips_0_dma1_m_axis_h2c_tvalid;
  assign dma1_m_axis_h2c_0_zero_byte = versal_cips_0_dma1_m_axis_h2c_zero_byte;
  assign dma1_qsts_out_0_data[63:0] = versal_cips_0_dma1_qsts_out_data;
  assign dma1_qsts_out_0_op[7:0] = versal_cips_0_dma1_qsts_out_op;
  assign dma1_qsts_out_0_port_id[2:0] = versal_cips_0_dma1_qsts_out_port_id;
  assign dma1_qsts_out_0_qid[12:0] = versal_cips_0_dma1_qsts_out_qid;
  assign dma1_qsts_out_0_vld = versal_cips_0_dma1_qsts_out_vld;
  assign dma1_s_axis_c2h_0_1_ctrl_has_cmpt = dma1_s_axis_c2h_0_ctrl_has_cmpt;
  assign dma1_s_axis_c2h_0_1_ctrl_len = dma1_s_axis_c2h_0_ctrl_len[15:0];
  assign dma1_s_axis_c2h_0_1_ctrl_marker = dma1_s_axis_c2h_0_ctrl_marker;
  assign dma1_s_axis_c2h_0_1_ctrl_port_id = dma1_s_axis_c2h_0_ctrl_port_id[2:0];
  assign dma1_s_axis_c2h_0_1_ctrl_qid = dma1_s_axis_c2h_0_ctrl_qid[11:0];
  assign dma1_s_axis_c2h_0_1_ecc = dma1_s_axis_c2h_0_ecc[6:0];
  assign dma1_s_axis_c2h_0_1_mty = dma1_s_axis_c2h_0_mty[5:0];
  assign dma1_s_axis_c2h_0_1_tcrc = dma1_s_axis_c2h_0_tcrc[31:0];
  assign dma1_s_axis_c2h_0_1_tdata = dma1_s_axis_c2h_0_tdata[511:0];
  assign dma1_s_axis_c2h_0_1_tlast = dma1_s_axis_c2h_0_tlast;
  assign dma1_s_axis_c2h_0_1_tvalid = dma1_s_axis_c2h_0_tvalid;
  assign dma1_s_axis_c2h_0_tready = dma1_s_axis_c2h_0_1_tready;
  assign dma1_s_axis_c2h_cmpt_0_1_cmpt_type = dma1_s_axis_c2h_cmpt_0_cmpt_type[1:0];
  assign dma1_s_axis_c2h_cmpt_0_1_col_idx = dma1_s_axis_c2h_cmpt_0_col_idx[2:0];
  assign dma1_s_axis_c2h_cmpt_0_1_data = dma1_s_axis_c2h_cmpt_0_data[511:0];
  assign dma1_s_axis_c2h_cmpt_0_1_dpar = dma1_s_axis_c2h_cmpt_0_dpar[15:0];
  assign dma1_s_axis_c2h_cmpt_0_1_err_idx = dma1_s_axis_c2h_cmpt_0_err_idx[2:0];
  assign dma1_s_axis_c2h_cmpt_0_1_marker = dma1_s_axis_c2h_cmpt_0_marker;
  assign dma1_s_axis_c2h_cmpt_0_1_no_wrb_marker = dma1_s_axis_c2h_cmpt_0_no_wrb_marker;
  assign dma1_s_axis_c2h_cmpt_0_1_port_id = dma1_s_axis_c2h_cmpt_0_port_id[2:0];
  assign dma1_s_axis_c2h_cmpt_0_1_qid = dma1_s_axis_c2h_cmpt_0_qid[12:0];
  assign dma1_s_axis_c2h_cmpt_0_1_size = dma1_s_axis_c2h_cmpt_0_size[1:0];
  assign dma1_s_axis_c2h_cmpt_0_1_tvalid = dma1_s_axis_c2h_cmpt_0_tvalid;
  assign dma1_s_axis_c2h_cmpt_0_1_user_trig = dma1_s_axis_c2h_cmpt_0_user_trig;
  assign dma1_s_axis_c2h_cmpt_0_1_wait_pld_pkt_id = dma1_s_axis_c2h_cmpt_0_wait_pld_pkt_id[15:0];
  assign dma1_s_axis_c2h_cmpt_0_tready = dma1_s_axis_c2h_cmpt_0_1_tready;
  assign dma1_st_rx_msg_0_tdata[31:0] = versal_cips_0_dma1_st_rx_msg_TDATA;
  assign dma1_st_rx_msg_0_tlast = versal_cips_0_dma1_st_rx_msg_TLAST;
  assign dma1_st_rx_msg_0_tvalid = versal_cips_0_dma1_st_rx_msg_TVALID;
  assign dma1_tm_dsc_sts_0_avl[15:0] = versal_cips_0_dma1_tm_dsc_sts_avl;
  assign dma1_tm_dsc_sts_0_byp = versal_cips_0_dma1_tm_dsc_sts_byp;
  assign dma1_tm_dsc_sts_0_dir = versal_cips_0_dma1_tm_dsc_sts_dir;
  assign dma1_tm_dsc_sts_0_error = versal_cips_0_dma1_tm_dsc_sts_error;
  assign dma1_tm_dsc_sts_0_irq_arm = versal_cips_0_dma1_tm_dsc_sts_irq_arm;
  assign dma1_tm_dsc_sts_0_mm = versal_cips_0_dma1_tm_dsc_sts_mm;
  assign dma1_tm_dsc_sts_0_pidx[15:0] = versal_cips_0_dma1_tm_dsc_sts_pidx;
  assign dma1_tm_dsc_sts_0_port_id[2:0] = versal_cips_0_dma1_tm_dsc_sts_port_id;
  assign dma1_tm_dsc_sts_0_qen = versal_cips_0_dma1_tm_dsc_sts_qen;
  assign dma1_tm_dsc_sts_0_qid[11:0] = versal_cips_0_dma1_tm_dsc_sts_qid;
  assign dma1_tm_dsc_sts_0_qinv = versal_cips_0_dma1_tm_dsc_sts_qinv;
  assign dma1_tm_dsc_sts_0_valid = versal_cips_0_dma1_tm_dsc_sts_valid;
  assign gt_refclk1_0_1_CLK_N = gt_refclk1_0_clk_n;
  assign gt_refclk1_0_1_CLK_P = gt_refclk1_0_clk_p;
  assign smartconnect_0_M00_AXI_ARREADY = M_AXIL_arready;
  assign smartconnect_0_M00_AXI_AWREADY = M_AXIL_awready;
  assign smartconnect_0_M00_AXI_BRESP = M_AXIL_bresp[1:0];
  assign smartconnect_0_M00_AXI_BVALID = M_AXIL_bvalid;
  assign smartconnect_0_M00_AXI_RDATA = M_AXIL_rdata[31:0];
  assign smartconnect_0_M00_AXI_RRESP = M_AXIL_rresp[1:0];
  assign smartconnect_0_M00_AXI_RVALID = M_AXIL_rvalid;
  assign smartconnect_0_M00_AXI_WREADY = M_AXIL_wready;
  assign sys_clk0_0_1_CLK_N = sys_clk0_0_clk_n[0];
  assign sys_clk0_0_1_CLK_P = sys_clk0_0_clk_p[0];
  assign usr_flr_0_1_done_fnc = usr_flr_0_done_fnc[11:0];
  assign usr_flr_0_1_done_vld = usr_flr_0_done_vld;
  assign usr_flr_0_clear = usr_flr_0_1_clear;
  assign usr_flr_0_fnc[11:0] = usr_flr_0_1_fnc;
  assign usr_flr_0_set = usr_flr_0_1_set;
  assign usr_irq_0_1_fnc = usr_irq_0_fnc[11:0];
  assign usr_irq_0_1_valid = usr_irq_0_valid;
  assign usr_irq_0_1_vec = usr_irq_0_vec[4:0];
  assign usr_irq_0_ack = usr_irq_0_1_ack;
  assign usr_irq_0_fail = usr_irq_0_1_fail;
  assign versal_cips_0_PCIE1_GT_GRX_N = PCIE1_GT_0_grx_n[7:0];
  assign versal_cips_0_PCIE1_GT_GRX_P = PCIE1_GT_0_grx_p[7:0];
  assign versal_cips_0_dma1_c2h_byp_out_ready = dma1_c2h_byp_out_0_ready;
  assign versal_cips_0_dma1_h2c_byp_out_ready = dma1_h2c_byp_out_0_ready;
  assign versal_cips_0_dma1_m_axis_h2c_tready = dma1_m_axis_h2c_0_tready;
  assign versal_cips_0_dma1_qsts_out_rdy = dma1_qsts_out_0_rdy;
  assign versal_cips_0_dma1_st_rx_msg_TREADY = dma1_st_rx_msg_0_tready;
  assign versal_cips_0_dma1_tm_dsc_sts_rdy = dma1_tm_dsc_sts_0_rdy;
  cpm_qdma_ep_part_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(versal_cips_0_pl0_ref_clk),
        .s_axi_araddr(axi_noc_0_M00_AXI_ARADDR[14:0]),
        .s_axi_arburst(axi_noc_0_M00_AXI_ARBURST),
        .s_axi_arcache(axi_noc_0_M00_AXI_ARCACHE),
        .s_axi_aresetn(versal_cips_0_dma1_axi_aresetn),
        .s_axi_arid(axi_noc_0_M00_AXI_ARID),
        .s_axi_arlen(axi_noc_0_M00_AXI_ARLEN),
        .s_axi_arlock(axi_noc_0_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_noc_0_M00_AXI_ARPROT),
        .s_axi_arready(axi_noc_0_M00_AXI_ARREADY),
        .s_axi_arsize(axi_noc_0_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_noc_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_noc_0_M00_AXI_AWADDR[14:0]),
        .s_axi_awburst(axi_noc_0_M00_AXI_AWBURST),
        .s_axi_awcache(axi_noc_0_M00_AXI_AWCACHE),
        .s_axi_awid(axi_noc_0_M00_AXI_AWID),
        .s_axi_awlen(axi_noc_0_M00_AXI_AWLEN),
        .s_axi_awlock(axi_noc_0_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_noc_0_M00_AXI_AWPROT),
        .s_axi_awready(axi_noc_0_M00_AXI_AWREADY),
        .s_axi_awsize(axi_noc_0_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_noc_0_M00_AXI_AWVALID),
        .s_axi_bid(axi_noc_0_M00_AXI_BID),
        .s_axi_bready(axi_noc_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_noc_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_noc_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_noc_0_M00_AXI_RDATA),
        .s_axi_rid(axi_noc_0_M00_AXI_RID),
        .s_axi_rlast(axi_noc_0_M00_AXI_RLAST),
        .s_axi_rready(axi_noc_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_noc_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_noc_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_noc_0_M00_AXI_WDATA),
        .s_axi_wlast(axi_noc_0_M00_AXI_WLAST),
        .s_axi_wready(axi_noc_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_noc_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_noc_0_M00_AXI_WVALID));
  cpm_qdma_ep_part_axi_bram_ctrl_0_bram_0 axi_bram_ctrl_0_bram
       (.addra(axi_bram_ctrl_0_BRAM_PORTA_ADDR[11:0]),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .regcea(1'b0),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE));
  cpm_qdma_ep_part_axi_bram_ctrl_0_bram1_0 axi_bram_ctrl_0_bram1
       (.addra(axi_bram_ctrl_1_BRAM_PORTA_ADDR),
        .clka(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .regcea(1'b0),
        .rsta(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_1_BRAM_PORTA_WE));
  cpm_qdma_ep_part_axi_bram_ctrl_1_0 axi_bram_ctrl_1
       (.bram_addr_a(axi_bram_ctrl_1_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_1_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .s_axi_aclk(versal_cips_0_pl0_ref_clk),
        .s_axi_araddr(S_AXI_0_1_ARADDR),
        .s_axi_aresetn(versal_cips_0_dma1_axi_aresetn),
        .s_axi_arprot(S_AXI_0_1_ARPROT),
        .s_axi_arready(S_AXI_0_1_ARREADY),
        .s_axi_arvalid(S_AXI_0_1_ARVALID),
        .s_axi_awaddr(S_AXI_0_1_AWADDR),
        .s_axi_awprot(S_AXI_0_1_AWPROT),
        .s_axi_awready(S_AXI_0_1_AWREADY),
        .s_axi_awvalid(S_AXI_0_1_AWVALID),
        .s_axi_bready(S_AXI_0_1_BREADY),
        .s_axi_bresp(S_AXI_0_1_BRESP),
        .s_axi_bvalid(S_AXI_0_1_BVALID),
        .s_axi_rdata(S_AXI_0_1_RDATA),
        .s_axi_rready(S_AXI_0_1_RREADY),
        .s_axi_rresp(S_AXI_0_1_RRESP),
        .s_axi_rvalid(S_AXI_0_1_RVALID),
        .s_axi_wdata(S_AXI_0_1_WDATA),
        .s_axi_wready(S_AXI_0_1_WREADY),
        .s_axi_wstrb(S_AXI_0_1_WSTRB),
        .s_axi_wvalid(S_AXI_0_1_WVALID));
  cpm_qdma_ep_part_axi_noc_0_0 axi_noc_0
       (.CH0_LPDDR4_0_ca_a(axi_noc_0_CH0_LPDDR4_0_CA_A),
        .CH0_LPDDR4_0_ca_b(axi_noc_0_CH0_LPDDR4_0_CA_B),
        .CH0_LPDDR4_0_ck_c_a(axi_noc_0_CH0_LPDDR4_0_CK_C_A),
        .CH0_LPDDR4_0_ck_c_b(axi_noc_0_CH0_LPDDR4_0_CK_C_B),
        .CH0_LPDDR4_0_ck_t_a(axi_noc_0_CH0_LPDDR4_0_CK_T_A),
        .CH0_LPDDR4_0_ck_t_b(axi_noc_0_CH0_LPDDR4_0_CK_T_B),
        .CH0_LPDDR4_0_cke_a(axi_noc_0_CH0_LPDDR4_0_CKE_A),
        .CH0_LPDDR4_0_cke_b(axi_noc_0_CH0_LPDDR4_0_CKE_B),
        .CH0_LPDDR4_0_cs_a(axi_noc_0_CH0_LPDDR4_0_CS_A),
        .CH0_LPDDR4_0_cs_b(axi_noc_0_CH0_LPDDR4_0_CS_B),
        .CH0_LPDDR4_0_dmi_a(CH0_LPDDR4_0_0_dmi_a[1:0]),
        .CH0_LPDDR4_0_dmi_b(CH0_LPDDR4_0_0_dmi_b[1:0]),
        .CH0_LPDDR4_0_dq_a(CH0_LPDDR4_0_0_dq_a[15:0]),
        .CH0_LPDDR4_0_dq_b(CH0_LPDDR4_0_0_dq_b[15:0]),
        .CH0_LPDDR4_0_dqs_c_a(CH0_LPDDR4_0_0_dqs_c_a[1:0]),
        .CH0_LPDDR4_0_dqs_c_b(CH0_LPDDR4_0_0_dqs_c_b[1:0]),
        .CH0_LPDDR4_0_dqs_t_a(CH0_LPDDR4_0_0_dqs_t_a[1:0]),
        .CH0_LPDDR4_0_dqs_t_b(CH0_LPDDR4_0_0_dqs_t_b[1:0]),
        .CH0_LPDDR4_0_reset_n(axi_noc_0_CH0_LPDDR4_0_RESET_N),
        .CH1_LPDDR4_0_ca_a(axi_noc_0_CH1_LPDDR4_0_CA_A),
        .CH1_LPDDR4_0_ca_b(axi_noc_0_CH1_LPDDR4_0_CA_B),
        .CH1_LPDDR4_0_ck_c_a(axi_noc_0_CH1_LPDDR4_0_CK_C_A),
        .CH1_LPDDR4_0_ck_c_b(axi_noc_0_CH1_LPDDR4_0_CK_C_B),
        .CH1_LPDDR4_0_ck_t_a(axi_noc_0_CH1_LPDDR4_0_CK_T_A),
        .CH1_LPDDR4_0_ck_t_b(axi_noc_0_CH1_LPDDR4_0_CK_T_B),
        .CH1_LPDDR4_0_cke_a(axi_noc_0_CH1_LPDDR4_0_CKE_A),
        .CH1_LPDDR4_0_cke_b(axi_noc_0_CH1_LPDDR4_0_CKE_B),
        .CH1_LPDDR4_0_cs_a(axi_noc_0_CH1_LPDDR4_0_CS_A),
        .CH1_LPDDR4_0_cs_b(axi_noc_0_CH1_LPDDR4_0_CS_B),
        .CH1_LPDDR4_0_dmi_a(CH1_LPDDR4_0_0_dmi_a[1:0]),
        .CH1_LPDDR4_0_dmi_b(CH1_LPDDR4_0_0_dmi_b[1:0]),
        .CH1_LPDDR4_0_dq_a(CH1_LPDDR4_0_0_dq_a[15:0]),
        .CH1_LPDDR4_0_dq_b(CH1_LPDDR4_0_0_dq_b[15:0]),
        .CH1_LPDDR4_0_dqs_c_a(CH1_LPDDR4_0_0_dqs_c_a[1:0]),
        .CH1_LPDDR4_0_dqs_c_b(CH1_LPDDR4_0_0_dqs_c_b[1:0]),
        .CH1_LPDDR4_0_dqs_t_a(CH1_LPDDR4_0_0_dqs_t_a[1:0]),
        .CH1_LPDDR4_0_dqs_t_b(CH1_LPDDR4_0_0_dqs_t_b[1:0]),
        .CH1_LPDDR4_0_reset_n(axi_noc_0_CH1_LPDDR4_0_RESET_N),
        .M00_AXI_araddr(axi_noc_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_noc_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_noc_0_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_noc_0_M00_AXI_ARID),
        .M00_AXI_arlen(axi_noc_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_noc_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_noc_0_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_noc_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_noc_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_noc_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_noc_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_noc_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_noc_0_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_noc_0_M00_AXI_AWID),
        .M00_AXI_awlen(axi_noc_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_noc_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_noc_0_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_noc_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_noc_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_noc_0_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_noc_0_M00_AXI_BID),
        .M00_AXI_bready(axi_noc_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_noc_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_noc_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_noc_0_M00_AXI_RDATA),
        .M00_AXI_rid(axi_noc_0_M00_AXI_RID),
        .M00_AXI_rlast(axi_noc_0_M00_AXI_RLAST),
        .M00_AXI_rready(axi_noc_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_noc_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_noc_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_noc_0_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_noc_0_M00_AXI_WLAST),
        .M00_AXI_wready(axi_noc_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_noc_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_noc_0_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_noc_0_M01_AXI_ARADDR),
        .M01_AXI_arburst(axi_noc_0_M01_AXI_ARBURST),
        .M01_AXI_arcache(axi_noc_0_M01_AXI_ARCACHE),
        .M01_AXI_arid(axi_noc_0_M01_AXI_ARID),
        .M01_AXI_arlen(axi_noc_0_M01_AXI_ARLEN),
        .M01_AXI_arlock(axi_noc_0_M01_AXI_ARLOCK),
        .M01_AXI_arprot(axi_noc_0_M01_AXI_ARPROT),
        .M01_AXI_arqos(axi_noc_0_M01_AXI_ARQOS),
        .M01_AXI_arready(axi_noc_0_M01_AXI_ARREADY),
        .M01_AXI_arsize(axi_noc_0_M01_AXI_ARSIZE),
        .M01_AXI_aruser(axi_noc_0_M01_AXI_ARUSER),
        .M01_AXI_arvalid(axi_noc_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_noc_0_M01_AXI_AWADDR),
        .M01_AXI_awburst(axi_noc_0_M01_AXI_AWBURST),
        .M01_AXI_awcache(axi_noc_0_M01_AXI_AWCACHE),
        .M01_AXI_awid(axi_noc_0_M01_AXI_AWID),
        .M01_AXI_awlen(axi_noc_0_M01_AXI_AWLEN),
        .M01_AXI_awlock(axi_noc_0_M01_AXI_AWLOCK),
        .M01_AXI_awprot(axi_noc_0_M01_AXI_AWPROT),
        .M01_AXI_awqos(axi_noc_0_M01_AXI_AWQOS),
        .M01_AXI_awready(axi_noc_0_M01_AXI_AWREADY),
        .M01_AXI_awsize(axi_noc_0_M01_AXI_AWSIZE),
        .M01_AXI_awuser(axi_noc_0_M01_AXI_AWUSER),
        .M01_AXI_awvalid(axi_noc_0_M01_AXI_AWVALID),
        .M01_AXI_bid(axi_noc_0_M01_AXI_BID),
        .M01_AXI_bready(axi_noc_0_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_noc_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_noc_0_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_noc_0_M01_AXI_RDATA),
        .M01_AXI_rid(axi_noc_0_M01_AXI_RID),
        .M01_AXI_rlast(axi_noc_0_M01_AXI_RLAST),
        .M01_AXI_rready(axi_noc_0_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_noc_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_noc_0_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_noc_0_M01_AXI_WDATA),
        .M01_AXI_wlast(axi_noc_0_M01_AXI_WLAST),
        .M01_AXI_wready(axi_noc_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_noc_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_noc_0_M01_AXI_WVALID),
        .M02_AXI_araddr(axi_noc_0_M02_AXI_ARADDR),
        .M02_AXI_arburst(axi_noc_0_M02_AXI_ARBURST),
        .M02_AXI_arcache(axi_noc_0_M02_AXI_ARCACHE),
        .M02_AXI_arid(axi_noc_0_M02_AXI_ARID),
        .M02_AXI_arlen(axi_noc_0_M02_AXI_ARLEN),
        .M02_AXI_arlock(axi_noc_0_M02_AXI_ARLOCK),
        .M02_AXI_arprot(axi_noc_0_M02_AXI_ARPROT),
        .M02_AXI_arqos(axi_noc_0_M02_AXI_ARQOS),
        .M02_AXI_arready(axi_noc_0_M02_AXI_ARREADY),
        .M02_AXI_arsize(axi_noc_0_M02_AXI_ARSIZE),
        .M02_AXI_aruser(axi_noc_0_M02_AXI_ARUSER),
        .M02_AXI_arvalid(axi_noc_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_noc_0_M02_AXI_AWADDR),
        .M02_AXI_awburst(axi_noc_0_M02_AXI_AWBURST),
        .M02_AXI_awcache(axi_noc_0_M02_AXI_AWCACHE),
        .M02_AXI_awid(axi_noc_0_M02_AXI_AWID),
        .M02_AXI_awlen(axi_noc_0_M02_AXI_AWLEN),
        .M02_AXI_awlock(axi_noc_0_M02_AXI_AWLOCK),
        .M02_AXI_awprot(axi_noc_0_M02_AXI_AWPROT),
        .M02_AXI_awqos(axi_noc_0_M02_AXI_AWQOS),
        .M02_AXI_awready(axi_noc_0_M02_AXI_AWREADY),
        .M02_AXI_awsize(axi_noc_0_M02_AXI_AWSIZE),
        .M02_AXI_awuser(axi_noc_0_M02_AXI_AWUSER),
        .M02_AXI_awvalid(axi_noc_0_M02_AXI_AWVALID),
        .M02_AXI_bid(axi_noc_0_M02_AXI_BID),
        .M02_AXI_bready(axi_noc_0_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_noc_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_noc_0_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_noc_0_M02_AXI_RDATA),
        .M02_AXI_rid(axi_noc_0_M02_AXI_RID),
        .M02_AXI_rlast(axi_noc_0_M02_AXI_RLAST),
        .M02_AXI_rready(axi_noc_0_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_noc_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_noc_0_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_noc_0_M02_AXI_WDATA),
        .M02_AXI_wlast(axi_noc_0_M02_AXI_WLAST),
        .M02_AXI_wready(axi_noc_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_noc_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_noc_0_M02_AXI_WVALID),
        .S00_AXI_araddr(versal_cips_0_CPM_PCIE_NOC_0_ARADDR),
        .S00_AXI_arburst(versal_cips_0_CPM_PCIE_NOC_0_ARBURST),
        .S00_AXI_arcache(versal_cips_0_CPM_PCIE_NOC_0_ARCACHE),
        .S00_AXI_arid(versal_cips_0_CPM_PCIE_NOC_0_ARID),
        .S00_AXI_arlen(versal_cips_0_CPM_PCIE_NOC_0_ARLEN),
        .S00_AXI_arlock(versal_cips_0_CPM_PCIE_NOC_0_ARLOCK),
        .S00_AXI_arprot(versal_cips_0_CPM_PCIE_NOC_0_ARPROT),
        .S00_AXI_arqos(versal_cips_0_CPM_PCIE_NOC_0_ARQOS),
        .S00_AXI_arready(versal_cips_0_CPM_PCIE_NOC_0_ARREADY),
        .S00_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arsize(versal_cips_0_CPM_PCIE_NOC_0_ARSIZE),
        .S00_AXI_aruser(versal_cips_0_CPM_PCIE_NOC_0_ARUSER),
        .S00_AXI_arvalid(versal_cips_0_CPM_PCIE_NOC_0_ARVALID),
        .S00_AXI_awaddr(versal_cips_0_CPM_PCIE_NOC_0_AWADDR),
        .S00_AXI_awburst(versal_cips_0_CPM_PCIE_NOC_0_AWBURST),
        .S00_AXI_awcache(versal_cips_0_CPM_PCIE_NOC_0_AWCACHE),
        .S00_AXI_awid(versal_cips_0_CPM_PCIE_NOC_0_AWID),
        .S00_AXI_awlen(versal_cips_0_CPM_PCIE_NOC_0_AWLEN),
        .S00_AXI_awlock(versal_cips_0_CPM_PCIE_NOC_0_AWLOCK),
        .S00_AXI_awprot(versal_cips_0_CPM_PCIE_NOC_0_AWPROT),
        .S00_AXI_awqos(versal_cips_0_CPM_PCIE_NOC_0_AWQOS),
        .S00_AXI_awready(versal_cips_0_CPM_PCIE_NOC_0_AWREADY),
        .S00_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awsize(versal_cips_0_CPM_PCIE_NOC_0_AWSIZE),
        .S00_AXI_awuser(versal_cips_0_CPM_PCIE_NOC_0_AWUSER),
        .S00_AXI_awvalid(versal_cips_0_CPM_PCIE_NOC_0_AWVALID),
        .S00_AXI_bid(versal_cips_0_CPM_PCIE_NOC_0_BID),
        .S00_AXI_bready(versal_cips_0_CPM_PCIE_NOC_0_BREADY),
        .S00_AXI_bresp(versal_cips_0_CPM_PCIE_NOC_0_BRESP),
        .S00_AXI_bvalid(versal_cips_0_CPM_PCIE_NOC_0_BVALID),
        .S00_AXI_rdata(versal_cips_0_CPM_PCIE_NOC_0_RDATA),
        .S00_AXI_rid(versal_cips_0_CPM_PCIE_NOC_0_RID),
        .S00_AXI_rlast(versal_cips_0_CPM_PCIE_NOC_0_RLAST),
        .S00_AXI_rready(versal_cips_0_CPM_PCIE_NOC_0_RREADY),
        .S00_AXI_rresp(versal_cips_0_CPM_PCIE_NOC_0_RRESP),
        .S00_AXI_ruser(versal_cips_0_CPM_PCIE_NOC_0_RUSER),
        .S00_AXI_rvalid(versal_cips_0_CPM_PCIE_NOC_0_RVALID),
        .S00_AXI_wdata(versal_cips_0_CPM_PCIE_NOC_0_WDATA),
        .S00_AXI_wlast(versal_cips_0_CPM_PCIE_NOC_0_WLAST),
        .S00_AXI_wready(versal_cips_0_CPM_PCIE_NOC_0_WREADY),
        .S00_AXI_wstrb(versal_cips_0_CPM_PCIE_NOC_0_WSTRB),
        .S00_AXI_wuser(versal_cips_0_CPM_PCIE_NOC_0_WUSER),
        .S00_AXI_wvalid(versal_cips_0_CPM_PCIE_NOC_0_WVALID),
        .S01_AXI_araddr(versal_cips_0_CPM_PCIE_NOC_1_ARADDR),
        .S01_AXI_arburst(versal_cips_0_CPM_PCIE_NOC_1_ARBURST),
        .S01_AXI_arcache(versal_cips_0_CPM_PCIE_NOC_1_ARCACHE),
        .S01_AXI_arid(versal_cips_0_CPM_PCIE_NOC_1_ARID),
        .S01_AXI_arlen(versal_cips_0_CPM_PCIE_NOC_1_ARLEN),
        .S01_AXI_arlock(versal_cips_0_CPM_PCIE_NOC_1_ARLOCK),
        .S01_AXI_arprot(versal_cips_0_CPM_PCIE_NOC_1_ARPROT),
        .S01_AXI_arqos(versal_cips_0_CPM_PCIE_NOC_1_ARQOS),
        .S01_AXI_arready(versal_cips_0_CPM_PCIE_NOC_1_ARREADY),
        .S01_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_arsize(versal_cips_0_CPM_PCIE_NOC_1_ARSIZE),
        .S01_AXI_aruser(versal_cips_0_CPM_PCIE_NOC_1_ARUSER),
        .S01_AXI_arvalid(versal_cips_0_CPM_PCIE_NOC_1_ARVALID),
        .S01_AXI_awaddr(versal_cips_0_CPM_PCIE_NOC_1_AWADDR),
        .S01_AXI_awburst(versal_cips_0_CPM_PCIE_NOC_1_AWBURST),
        .S01_AXI_awcache(versal_cips_0_CPM_PCIE_NOC_1_AWCACHE),
        .S01_AXI_awid(versal_cips_0_CPM_PCIE_NOC_1_AWID),
        .S01_AXI_awlen(versal_cips_0_CPM_PCIE_NOC_1_AWLEN),
        .S01_AXI_awlock(versal_cips_0_CPM_PCIE_NOC_1_AWLOCK),
        .S01_AXI_awprot(versal_cips_0_CPM_PCIE_NOC_1_AWPROT),
        .S01_AXI_awqos(versal_cips_0_CPM_PCIE_NOC_1_AWQOS),
        .S01_AXI_awready(versal_cips_0_CPM_PCIE_NOC_1_AWREADY),
        .S01_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awsize(versal_cips_0_CPM_PCIE_NOC_1_AWSIZE),
        .S01_AXI_awuser(versal_cips_0_CPM_PCIE_NOC_1_AWUSER),
        .S01_AXI_awvalid(versal_cips_0_CPM_PCIE_NOC_1_AWVALID),
        .S01_AXI_bid(versal_cips_0_CPM_PCIE_NOC_1_BID),
        .S01_AXI_bready(versal_cips_0_CPM_PCIE_NOC_1_BREADY),
        .S01_AXI_bresp(versal_cips_0_CPM_PCIE_NOC_1_BRESP),
        .S01_AXI_bvalid(versal_cips_0_CPM_PCIE_NOC_1_BVALID),
        .S01_AXI_rdata(versal_cips_0_CPM_PCIE_NOC_1_RDATA),
        .S01_AXI_rid(versal_cips_0_CPM_PCIE_NOC_1_RID),
        .S01_AXI_rlast(versal_cips_0_CPM_PCIE_NOC_1_RLAST),
        .S01_AXI_rready(versal_cips_0_CPM_PCIE_NOC_1_RREADY),
        .S01_AXI_rresp(versal_cips_0_CPM_PCIE_NOC_1_RRESP),
        .S01_AXI_ruser(versal_cips_0_CPM_PCIE_NOC_1_RUSER),
        .S01_AXI_rvalid(versal_cips_0_CPM_PCIE_NOC_1_RVALID),
        .S01_AXI_wdata(versal_cips_0_CPM_PCIE_NOC_1_WDATA),
        .S01_AXI_wlast(versal_cips_0_CPM_PCIE_NOC_1_WLAST),
        .S01_AXI_wready(versal_cips_0_CPM_PCIE_NOC_1_WREADY),
        .S01_AXI_wstrb(versal_cips_0_CPM_PCIE_NOC_1_WSTRB),
        .S01_AXI_wuser(versal_cips_0_CPM_PCIE_NOC_1_WUSER),
        .S01_AXI_wvalid(versal_cips_0_CPM_PCIE_NOC_1_WVALID),
        .aclk0(versal_cips_0_cpm_pcie_noc_axi0_clk),
        .aclk1(versal_cips_0_cpm_pcie_noc_axi1_clk),
        .aclk2(versal_cips_0_pl0_ref_clk),
        .sys_clk0_clk_n(sys_clk0_0_1_CLK_N),
        .sys_clk0_clk_p(sys_clk0_0_1_CLK_P));
  cpm_qdma_ep_part_pcie_qdma_mailbox_0_0 pcie_qdma_mailbox_0
       (.S_AXI_0_araddr(smartconnect_1_M00_AXI_ARADDR),
        .S_AXI_0_arprot(smartconnect_1_M00_AXI_ARPROT),
        .S_AXI_0_arready(smartconnect_1_M00_AXI_ARREADY),
        .S_AXI_0_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .S_AXI_0_awaddr(smartconnect_1_M00_AXI_AWADDR),
        .S_AXI_0_awprot(smartconnect_1_M00_AXI_AWPROT),
        .S_AXI_0_awready(smartconnect_1_M00_AXI_AWREADY),
        .S_AXI_0_awvalid(smartconnect_1_M00_AXI_AWVALID),
        .S_AXI_0_bready(smartconnect_1_M00_AXI_BREADY),
        .S_AXI_0_bresp(smartconnect_1_M00_AXI_BRESP),
        .S_AXI_0_bvalid(smartconnect_1_M00_AXI_BVALID),
        .S_AXI_0_rdata(smartconnect_1_M00_AXI_RDATA),
        .S_AXI_0_rready(smartconnect_1_M00_AXI_RREADY),
        .S_AXI_0_rresp(smartconnect_1_M00_AXI_RRESP),
        .S_AXI_0_rvalid(smartconnect_1_M00_AXI_RVALID),
        .S_AXI_0_wdata(smartconnect_1_M00_AXI_WDATA),
        .S_AXI_0_wready(smartconnect_1_M00_AXI_WREADY),
        .S_AXI_0_wstrb(smartconnect_1_M00_AXI_WSTRB),
        .S_AXI_0_wvalid(smartconnect_1_M00_AXI_WVALID),
        .axi_aclk(versal_cips_0_pl1_ref_clk),
        .axi_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .dma_flr_in_fnc(pcie_qdma_mailbox_0_dma_flr_done_fnc),
        .dma_flr_in_vld(pcie_qdma_mailbox_0_dma_flr_done_vld),
        .dma_flr_out_clr(pcie_qdma_mailbox_0_dma_flr_clear),
        .dma_flr_out_fnc(pcie_qdma_mailbox_0_dma_flr_fnc[11:0]),
        .dma_flr_out_set(pcie_qdma_mailbox_0_dma_flr_set),
        .dma_usr_irq_ack(pcie_qdma_mailbox_0_dma_usr_irq_ack),
        .dma_usr_irq_fail(pcie_qdma_mailbox_0_dma_usr_irq_fail),
        .dma_usr_irq_fnc(pcie_qdma_mailbox_0_dma_usr_irq_fnc),
        .dma_usr_irq_vec(pcie_qdma_mailbox_0_dma_usr_irq_vec),
        .dma_usr_irq_vld(pcie_qdma_mailbox_0_dma_usr_irq_valid),
        .ip_clk(versal_cips_0_pl0_ref_clk),
        .ip_resetn(versal_cips_0_dma1_axi_aresetn),
        .mgmt_cpl_dat(pcie_qdma_mailbox_0_pcie_mgmt_cpl_dat),
        .mgmt_cpl_rdy(pcie_qdma_mailbox_0_pcie_mgmt_cpl_rdy),
        .mgmt_cpl_sts(pcie_qdma_mailbox_0_pcie_mgmt_cpl_sts),
        .mgmt_cpl_vld(pcie_qdma_mailbox_0_pcie_mgmt_cpl_vld),
        .mgmt_req_adr(pcie_qdma_mailbox_0_pcie_mgmt_req_adr),
        .mgmt_req_cmd(pcie_qdma_mailbox_0_pcie_mgmt_req_cmd),
        .mgmt_req_dat(pcie_qdma_mailbox_0_pcie_mgmt_req_dat),
        .mgmt_req_fnc(pcie_qdma_mailbox_0_pcie_mgmt_req_fnc),
        .mgmt_req_msc(pcie_qdma_mailbox_0_pcie_mgmt_req_msc),
        .mgmt_req_rdy(pcie_qdma_mailbox_0_pcie_mgmt_req_rdy),
        .mgmt_req_vld(pcie_qdma_mailbox_0_pcie_mgmt_req_vld),
        .usr_flr_clr(usr_flr_0_1_clear),
        .usr_flr_done_fnc(usr_flr_0_1_done_fnc),
        .usr_flr_done_vld(usr_flr_0_1_done_vld),
        .usr_flr_fnc(usr_flr_0_1_fnc),
        .usr_flr_set(usr_flr_0_1_set),
        .usr_irq_ack(usr_irq_0_1_ack),
        .usr_irq_fail(usr_irq_0_1_fail),
        .usr_irq_fnc(usr_irq_0_1_fnc),
        .usr_irq_vec(usr_irq_0_1_vec),
        .usr_irq_vld(usr_irq_0_1_valid));
  cpm_qdma_ep_part_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(versal_cips_0_dma1_axi_aresetn),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(versal_cips_0_pl1_ref_clk));
  cpm_qdma_ep_part_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .S00_AXI_araddr(axi_noc_0_M01_AXI_ARADDR),
        .S00_AXI_arburst(axi_noc_0_M01_AXI_ARBURST),
        .S00_AXI_arcache(axi_noc_0_M01_AXI_ARCACHE),
        .S00_AXI_arid(axi_noc_0_M01_AXI_ARID),
        .S00_AXI_arlen(axi_noc_0_M01_AXI_ARLEN),
        .S00_AXI_arlock(axi_noc_0_M01_AXI_ARLOCK),
        .S00_AXI_arprot(axi_noc_0_M01_AXI_ARPROT),
        .S00_AXI_arqos(axi_noc_0_M01_AXI_ARQOS),
        .S00_AXI_arready(axi_noc_0_M01_AXI_ARREADY),
        .S00_AXI_arsize(axi_noc_0_M01_AXI_ARSIZE),
        .S00_AXI_aruser(axi_noc_0_M01_AXI_ARUSER),
        .S00_AXI_arvalid(axi_noc_0_M01_AXI_ARVALID),
        .S00_AXI_awaddr(axi_noc_0_M01_AXI_AWADDR),
        .S00_AXI_awburst(axi_noc_0_M01_AXI_AWBURST),
        .S00_AXI_awcache(axi_noc_0_M01_AXI_AWCACHE),
        .S00_AXI_awid(axi_noc_0_M01_AXI_AWID),
        .S00_AXI_awlen(axi_noc_0_M01_AXI_AWLEN),
        .S00_AXI_awlock(axi_noc_0_M01_AXI_AWLOCK),
        .S00_AXI_awprot(axi_noc_0_M01_AXI_AWPROT),
        .S00_AXI_awqos(axi_noc_0_M01_AXI_AWQOS),
        .S00_AXI_awready(axi_noc_0_M01_AXI_AWREADY),
        .S00_AXI_awsize(axi_noc_0_M01_AXI_AWSIZE),
        .S00_AXI_awuser(axi_noc_0_M01_AXI_AWUSER),
        .S00_AXI_awvalid(axi_noc_0_M01_AXI_AWVALID),
        .S00_AXI_bid(axi_noc_0_M01_AXI_BID),
        .S00_AXI_bready(axi_noc_0_M01_AXI_BREADY),
        .S00_AXI_bresp(axi_noc_0_M01_AXI_BRESP),
        .S00_AXI_bvalid(axi_noc_0_M01_AXI_BVALID),
        .S00_AXI_rdata(axi_noc_0_M01_AXI_RDATA),
        .S00_AXI_rid(axi_noc_0_M01_AXI_RID),
        .S00_AXI_rlast(axi_noc_0_M01_AXI_RLAST),
        .S00_AXI_rready(axi_noc_0_M01_AXI_RREADY),
        .S00_AXI_rresp(axi_noc_0_M01_AXI_RRESP),
        .S00_AXI_rvalid(axi_noc_0_M01_AXI_RVALID),
        .S00_AXI_wdata(axi_noc_0_M01_AXI_WDATA),
        .S00_AXI_wlast(axi_noc_0_M01_AXI_WLAST),
        .S00_AXI_wready(axi_noc_0_M01_AXI_WREADY),
        .S00_AXI_wstrb(axi_noc_0_M01_AXI_WSTRB),
        .S00_AXI_wvalid(axi_noc_0_M01_AXI_WVALID),
        .aclk(versal_cips_0_pl0_ref_clk),
        .aresetn(versal_cips_0_dma1_axi_aresetn));
  cpm_qdma_ep_part_smartconnect_1_0 smartconnect_1
       (.M00_AXI_araddr(smartconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arprot(smartconnect_1_M00_AXI_ARPROT),
        .M00_AXI_arready(smartconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awprot(smartconnect_1_M00_AXI_AWPROT),
        .M00_AXI_awready(smartconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_1_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_1_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_1_M00_AXI_WVALID),
        .S00_AXI_araddr(axi_noc_0_M02_AXI_ARADDR),
        .S00_AXI_arburst(axi_noc_0_M02_AXI_ARBURST),
        .S00_AXI_arcache(axi_noc_0_M02_AXI_ARCACHE),
        .S00_AXI_arid(axi_noc_0_M02_AXI_ARID),
        .S00_AXI_arlen(axi_noc_0_M02_AXI_ARLEN),
        .S00_AXI_arlock(axi_noc_0_M02_AXI_ARLOCK),
        .S00_AXI_arprot(axi_noc_0_M02_AXI_ARPROT),
        .S00_AXI_arqos(axi_noc_0_M02_AXI_ARQOS),
        .S00_AXI_arready(axi_noc_0_M02_AXI_ARREADY),
        .S00_AXI_arsize(axi_noc_0_M02_AXI_ARSIZE),
        .S00_AXI_aruser(axi_noc_0_M02_AXI_ARUSER),
        .S00_AXI_arvalid(axi_noc_0_M02_AXI_ARVALID),
        .S00_AXI_awaddr(axi_noc_0_M02_AXI_AWADDR),
        .S00_AXI_awburst(axi_noc_0_M02_AXI_AWBURST),
        .S00_AXI_awcache(axi_noc_0_M02_AXI_AWCACHE),
        .S00_AXI_awid(axi_noc_0_M02_AXI_AWID),
        .S00_AXI_awlen(axi_noc_0_M02_AXI_AWLEN),
        .S00_AXI_awlock(axi_noc_0_M02_AXI_AWLOCK),
        .S00_AXI_awprot(axi_noc_0_M02_AXI_AWPROT),
        .S00_AXI_awqos(axi_noc_0_M02_AXI_AWQOS),
        .S00_AXI_awready(axi_noc_0_M02_AXI_AWREADY),
        .S00_AXI_awsize(axi_noc_0_M02_AXI_AWSIZE),
        .S00_AXI_awuser(axi_noc_0_M02_AXI_AWUSER),
        .S00_AXI_awvalid(axi_noc_0_M02_AXI_AWVALID),
        .S00_AXI_bid(axi_noc_0_M02_AXI_BID),
        .S00_AXI_bready(axi_noc_0_M02_AXI_BREADY),
        .S00_AXI_bresp(axi_noc_0_M02_AXI_BRESP),
        .S00_AXI_bvalid(axi_noc_0_M02_AXI_BVALID),
        .S00_AXI_rdata(axi_noc_0_M02_AXI_RDATA),
        .S00_AXI_rid(axi_noc_0_M02_AXI_RID),
        .S00_AXI_rlast(axi_noc_0_M02_AXI_RLAST),
        .S00_AXI_rready(axi_noc_0_M02_AXI_RREADY),
        .S00_AXI_rresp(axi_noc_0_M02_AXI_RRESP),
        .S00_AXI_rvalid(axi_noc_0_M02_AXI_RVALID),
        .S00_AXI_wdata(axi_noc_0_M02_AXI_WDATA),
        .S00_AXI_wlast(axi_noc_0_M02_AXI_WLAST),
        .S00_AXI_wready(axi_noc_0_M02_AXI_WREADY),
        .S00_AXI_wstrb(axi_noc_0_M02_AXI_WSTRB),
        .S00_AXI_wvalid(axi_noc_0_M02_AXI_WVALID),
        .aclk(versal_cips_0_pl1_ref_clk),
        .aclk1(versal_cips_0_pl0_ref_clk),
        .aresetn(proc_sys_reset_0_interconnect_aresetn));
  cpm_qdma_ep_part_versal_cips_0_0 versal_cips_0
       (.CPM_PCIE_NOC_0_araddr(versal_cips_0_CPM_PCIE_NOC_0_ARADDR),
        .CPM_PCIE_NOC_0_arburst(versal_cips_0_CPM_PCIE_NOC_0_ARBURST),
        .CPM_PCIE_NOC_0_arcache(versal_cips_0_CPM_PCIE_NOC_0_ARCACHE),
        .CPM_PCIE_NOC_0_arid(versal_cips_0_CPM_PCIE_NOC_0_ARID),
        .CPM_PCIE_NOC_0_arlen(versal_cips_0_CPM_PCIE_NOC_0_ARLEN),
        .CPM_PCIE_NOC_0_arlock(versal_cips_0_CPM_PCIE_NOC_0_ARLOCK),
        .CPM_PCIE_NOC_0_arprot(versal_cips_0_CPM_PCIE_NOC_0_ARPROT),
        .CPM_PCIE_NOC_0_arqos(versal_cips_0_CPM_PCIE_NOC_0_ARQOS),
        .CPM_PCIE_NOC_0_arready(versal_cips_0_CPM_PCIE_NOC_0_ARREADY),
        .CPM_PCIE_NOC_0_arsize(versal_cips_0_CPM_PCIE_NOC_0_ARSIZE),
        .CPM_PCIE_NOC_0_aruser(versal_cips_0_CPM_PCIE_NOC_0_ARUSER),
        .CPM_PCIE_NOC_0_arvalid(versal_cips_0_CPM_PCIE_NOC_0_ARVALID),
        .CPM_PCIE_NOC_0_awaddr(versal_cips_0_CPM_PCIE_NOC_0_AWADDR),
        .CPM_PCIE_NOC_0_awburst(versal_cips_0_CPM_PCIE_NOC_0_AWBURST),
        .CPM_PCIE_NOC_0_awcache(versal_cips_0_CPM_PCIE_NOC_0_AWCACHE),
        .CPM_PCIE_NOC_0_awid(versal_cips_0_CPM_PCIE_NOC_0_AWID),
        .CPM_PCIE_NOC_0_awlen(versal_cips_0_CPM_PCIE_NOC_0_AWLEN),
        .CPM_PCIE_NOC_0_awlock(versal_cips_0_CPM_PCIE_NOC_0_AWLOCK),
        .CPM_PCIE_NOC_0_awprot(versal_cips_0_CPM_PCIE_NOC_0_AWPROT),
        .CPM_PCIE_NOC_0_awqos(versal_cips_0_CPM_PCIE_NOC_0_AWQOS),
        .CPM_PCIE_NOC_0_awready(versal_cips_0_CPM_PCIE_NOC_0_AWREADY),
        .CPM_PCIE_NOC_0_awsize(versal_cips_0_CPM_PCIE_NOC_0_AWSIZE),
        .CPM_PCIE_NOC_0_awuser(versal_cips_0_CPM_PCIE_NOC_0_AWUSER),
        .CPM_PCIE_NOC_0_awvalid(versal_cips_0_CPM_PCIE_NOC_0_AWVALID),
        .CPM_PCIE_NOC_0_bid(versal_cips_0_CPM_PCIE_NOC_0_BID),
        .CPM_PCIE_NOC_0_bready(versal_cips_0_CPM_PCIE_NOC_0_BREADY),
        .CPM_PCIE_NOC_0_bresp(versal_cips_0_CPM_PCIE_NOC_0_BRESP),
        .CPM_PCIE_NOC_0_bvalid(versal_cips_0_CPM_PCIE_NOC_0_BVALID),
        .CPM_PCIE_NOC_0_rdata(versal_cips_0_CPM_PCIE_NOC_0_RDATA),
        .CPM_PCIE_NOC_0_rid(versal_cips_0_CPM_PCIE_NOC_0_RID),
        .CPM_PCIE_NOC_0_rlast(versal_cips_0_CPM_PCIE_NOC_0_RLAST),
        .CPM_PCIE_NOC_0_rready(versal_cips_0_CPM_PCIE_NOC_0_RREADY),
        .CPM_PCIE_NOC_0_rresp(versal_cips_0_CPM_PCIE_NOC_0_RRESP),
        .CPM_PCIE_NOC_0_ruser(versal_cips_0_CPM_PCIE_NOC_0_RUSER),
        .CPM_PCIE_NOC_0_rvalid(versal_cips_0_CPM_PCIE_NOC_0_RVALID),
        .CPM_PCIE_NOC_0_wdata(versal_cips_0_CPM_PCIE_NOC_0_WDATA),
        .CPM_PCIE_NOC_0_wlast(versal_cips_0_CPM_PCIE_NOC_0_WLAST),
        .CPM_PCIE_NOC_0_wready(versal_cips_0_CPM_PCIE_NOC_0_WREADY),
        .CPM_PCIE_NOC_0_wstrb(versal_cips_0_CPM_PCIE_NOC_0_WSTRB),
        .CPM_PCIE_NOC_0_wuser(versal_cips_0_CPM_PCIE_NOC_0_WUSER),
        .CPM_PCIE_NOC_0_wvalid(versal_cips_0_CPM_PCIE_NOC_0_WVALID),
        .CPM_PCIE_NOC_1_araddr(versal_cips_0_CPM_PCIE_NOC_1_ARADDR),
        .CPM_PCIE_NOC_1_arburst(versal_cips_0_CPM_PCIE_NOC_1_ARBURST),
        .CPM_PCIE_NOC_1_arcache(versal_cips_0_CPM_PCIE_NOC_1_ARCACHE),
        .CPM_PCIE_NOC_1_arid(versal_cips_0_CPM_PCIE_NOC_1_ARID),
        .CPM_PCIE_NOC_1_arlen(versal_cips_0_CPM_PCIE_NOC_1_ARLEN),
        .CPM_PCIE_NOC_1_arlock(versal_cips_0_CPM_PCIE_NOC_1_ARLOCK),
        .CPM_PCIE_NOC_1_arprot(versal_cips_0_CPM_PCIE_NOC_1_ARPROT),
        .CPM_PCIE_NOC_1_arqos(versal_cips_0_CPM_PCIE_NOC_1_ARQOS),
        .CPM_PCIE_NOC_1_arready(versal_cips_0_CPM_PCIE_NOC_1_ARREADY),
        .CPM_PCIE_NOC_1_arsize(versal_cips_0_CPM_PCIE_NOC_1_ARSIZE),
        .CPM_PCIE_NOC_1_aruser(versal_cips_0_CPM_PCIE_NOC_1_ARUSER),
        .CPM_PCIE_NOC_1_arvalid(versal_cips_0_CPM_PCIE_NOC_1_ARVALID),
        .CPM_PCIE_NOC_1_awaddr(versal_cips_0_CPM_PCIE_NOC_1_AWADDR),
        .CPM_PCIE_NOC_1_awburst(versal_cips_0_CPM_PCIE_NOC_1_AWBURST),
        .CPM_PCIE_NOC_1_awcache(versal_cips_0_CPM_PCIE_NOC_1_AWCACHE),
        .CPM_PCIE_NOC_1_awid(versal_cips_0_CPM_PCIE_NOC_1_AWID),
        .CPM_PCIE_NOC_1_awlen(versal_cips_0_CPM_PCIE_NOC_1_AWLEN),
        .CPM_PCIE_NOC_1_awlock(versal_cips_0_CPM_PCIE_NOC_1_AWLOCK),
        .CPM_PCIE_NOC_1_awprot(versal_cips_0_CPM_PCIE_NOC_1_AWPROT),
        .CPM_PCIE_NOC_1_awqos(versal_cips_0_CPM_PCIE_NOC_1_AWQOS),
        .CPM_PCIE_NOC_1_awready(versal_cips_0_CPM_PCIE_NOC_1_AWREADY),
        .CPM_PCIE_NOC_1_awsize(versal_cips_0_CPM_PCIE_NOC_1_AWSIZE),
        .CPM_PCIE_NOC_1_awuser(versal_cips_0_CPM_PCIE_NOC_1_AWUSER),
        .CPM_PCIE_NOC_1_awvalid(versal_cips_0_CPM_PCIE_NOC_1_AWVALID),
        .CPM_PCIE_NOC_1_bid(versal_cips_0_CPM_PCIE_NOC_1_BID),
        .CPM_PCIE_NOC_1_bready(versal_cips_0_CPM_PCIE_NOC_1_BREADY),
        .CPM_PCIE_NOC_1_bresp(versal_cips_0_CPM_PCIE_NOC_1_BRESP),
        .CPM_PCIE_NOC_1_bvalid(versal_cips_0_CPM_PCIE_NOC_1_BVALID),
        .CPM_PCIE_NOC_1_rdata(versal_cips_0_CPM_PCIE_NOC_1_RDATA),
        .CPM_PCIE_NOC_1_rid(versal_cips_0_CPM_PCIE_NOC_1_RID),
        .CPM_PCIE_NOC_1_rlast(versal_cips_0_CPM_PCIE_NOC_1_RLAST),
        .CPM_PCIE_NOC_1_rready(versal_cips_0_CPM_PCIE_NOC_1_RREADY),
        .CPM_PCIE_NOC_1_rresp(versal_cips_0_CPM_PCIE_NOC_1_RRESP),
        .CPM_PCIE_NOC_1_ruser(versal_cips_0_CPM_PCIE_NOC_1_RUSER),
        .CPM_PCIE_NOC_1_rvalid(versal_cips_0_CPM_PCIE_NOC_1_RVALID),
        .CPM_PCIE_NOC_1_wdata(versal_cips_0_CPM_PCIE_NOC_1_WDATA),
        .CPM_PCIE_NOC_1_wlast(versal_cips_0_CPM_PCIE_NOC_1_WLAST),
        .CPM_PCIE_NOC_1_wready(versal_cips_0_CPM_PCIE_NOC_1_WREADY),
        .CPM_PCIE_NOC_1_wstrb(versal_cips_0_CPM_PCIE_NOC_1_WSTRB),
        .CPM_PCIE_NOC_1_wuser(versal_cips_0_CPM_PCIE_NOC_1_WUSER),
        .CPM_PCIE_NOC_1_wvalid(versal_cips_0_CPM_PCIE_NOC_1_WVALID),
        .M_AXI_FPD_arready(1'b0),
        .M_AXI_FPD_awready(1'b0),
        .M_AXI_FPD_bid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_FPD_bresp({1'b0,1'b0}),
        .M_AXI_FPD_bvalid(1'b0),
        .M_AXI_FPD_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_FPD_rid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_FPD_rlast(1'b0),
        .M_AXI_FPD_rresp({1'b0,1'b0}),
        .M_AXI_FPD_rvalid(1'b0),
        .M_AXI_FPD_wready(1'b0),
        .PCIE1_GT_grx_n(versal_cips_0_PCIE1_GT_GRX_N),
        .PCIE1_GT_grx_p(versal_cips_0_PCIE1_GT_GRX_P),
        .PCIE1_GT_gtx_n(versal_cips_0_PCIE1_GT_GTX_N),
        .PCIE1_GT_gtx_p(versal_cips_0_PCIE1_GT_GTX_P),
        .cpm_cor_irq(versal_cips_0_cpm_cor_irq),
        .cpm_irq0(cpm_irq0_0_1),
        .cpm_irq1(cpm_irq1_0_1),
        .cpm_misc_irq(versal_cips_0_cpm_misc_irq),
        .cpm_pcie_noc_axi0_clk(versal_cips_0_cpm_pcie_noc_axi0_clk),
        .cpm_pcie_noc_axi1_clk(versal_cips_0_cpm_pcie_noc_axi1_clk),
        .cpm_uncor_irq(versal_cips_0_cpm_uncor_irq),
        .dma1_axi_aresetn(versal_cips_0_dma1_axi_aresetn),
        .dma1_axis_c2h_dmawr_cmp(versal_cips_0_dma1_axis_c2h_dmawr_cmp),
        .dma1_axis_c2h_dmawr_port_id(versal_cips_0_dma1_axis_c2h_dmawr_port_id),
        .dma1_axis_c2h_dmawr_target_vch(versal_cips_0_dma1_axis_c2h_dmawr_target_vch),
        .dma1_axis_c2h_status_drop(versal_cips_0_dma1_axis_c2h_status_drop),
        .dma1_axis_c2h_status_error(versal_cips_0_dma1_axis_c2h_status_error),
        .dma1_axis_c2h_status_last(versal_cips_0_dma1_axis_c2h_status_last),
        .dma1_axis_c2h_status_qid(versal_cips_0_dma1_axis_c2h_status_qid),
        .dma1_axis_c2h_status_status_cmp(versal_cips_0_dma1_axis_c2h_status_status_cmp),
        .dma1_axis_c2h_status_valid(versal_cips_0_dma1_axis_c2h_status_valid),
        .dma1_c2h_byp_in_mm_0_cidx(dma1_c2h_byp_in_mm_0_0_1_cidx),
        .dma1_c2h_byp_in_mm_0_error(dma1_c2h_byp_in_mm_0_0_1_error),
        .dma1_c2h_byp_in_mm_0_func(dma1_c2h_byp_in_mm_0_0_1_func),
        .dma1_c2h_byp_in_mm_0_len(dma1_c2h_byp_in_mm_0_0_1_len),
        .dma1_c2h_byp_in_mm_0_mrkr_req(dma1_c2h_byp_in_mm_0_0_1_mrkr_req),
        .dma1_c2h_byp_in_mm_0_no_dma(dma1_c2h_byp_in_mm_0_0_1_no_dma),
        .dma1_c2h_byp_in_mm_0_port_id(dma1_c2h_byp_in_mm_0_0_1_port_id),
        .dma1_c2h_byp_in_mm_0_qid(dma1_c2h_byp_in_mm_0_0_1_qid),
        .dma1_c2h_byp_in_mm_0_radr(dma1_c2h_byp_in_mm_0_0_1_radr),
        .dma1_c2h_byp_in_mm_0_ready(dma1_c2h_byp_in_mm_0_0_1_ready),
        .dma1_c2h_byp_in_mm_0_sdi(dma1_c2h_byp_in_mm_0_0_1_sdi),
        .dma1_c2h_byp_in_mm_0_valid(dma1_c2h_byp_in_mm_0_0_1_valid),
        .dma1_c2h_byp_in_mm_0_wadr(dma1_c2h_byp_in_mm_0_0_1_wadr),
        .dma1_c2h_byp_in_mm_1_cidx(dma1_c2h_byp_in_mm_1_0_1_cidx),
        .dma1_c2h_byp_in_mm_1_error(dma1_c2h_byp_in_mm_1_0_1_error),
        .dma1_c2h_byp_in_mm_1_func(dma1_c2h_byp_in_mm_1_0_1_func),
        .dma1_c2h_byp_in_mm_1_len(dma1_c2h_byp_in_mm_1_0_1_len),
        .dma1_c2h_byp_in_mm_1_mrkr_req(dma1_c2h_byp_in_mm_1_0_1_mrkr_req),
        .dma1_c2h_byp_in_mm_1_no_dma(dma1_c2h_byp_in_mm_1_0_1_no_dma),
        .dma1_c2h_byp_in_mm_1_port_id(dma1_c2h_byp_in_mm_1_0_1_port_id),
        .dma1_c2h_byp_in_mm_1_qid(dma1_c2h_byp_in_mm_1_0_1_qid),
        .dma1_c2h_byp_in_mm_1_radr(dma1_c2h_byp_in_mm_1_0_1_radr),
        .dma1_c2h_byp_in_mm_1_ready(dma1_c2h_byp_in_mm_1_0_1_ready),
        .dma1_c2h_byp_in_mm_1_sdi(dma1_c2h_byp_in_mm_1_0_1_sdi),
        .dma1_c2h_byp_in_mm_1_valid(dma1_c2h_byp_in_mm_1_0_1_valid),
        .dma1_c2h_byp_in_mm_1_wadr(dma1_c2h_byp_in_mm_1_0_1_wadr),
        .dma1_c2h_byp_in_st_csh_addr(dma1_c2h_byp_in_st_csh_0_1_addr),
        .dma1_c2h_byp_in_st_csh_error(dma1_c2h_byp_in_st_csh_0_1_error),
        .dma1_c2h_byp_in_st_csh_func(dma1_c2h_byp_in_st_csh_0_1_func),
        .dma1_c2h_byp_in_st_csh_pfch_tag(dma1_c2h_byp_in_st_csh_0_1_pfch_tag),
        .dma1_c2h_byp_in_st_csh_port_id(dma1_c2h_byp_in_st_csh_0_1_port_id),
        .dma1_c2h_byp_in_st_csh_qid(dma1_c2h_byp_in_st_csh_0_1_qid),
        .dma1_c2h_byp_in_st_csh_ready(dma1_c2h_byp_in_st_csh_0_1_ready),
        .dma1_c2h_byp_in_st_csh_valid(dma1_c2h_byp_in_st_csh_0_1_valid),
        .dma1_c2h_byp_out_cidx(versal_cips_0_dma1_c2h_byp_out_cidx),
        .dma1_c2h_byp_out_dsc(versal_cips_0_dma1_c2h_byp_out_dsc),
        .dma1_c2h_byp_out_dsc_sz(versal_cips_0_dma1_c2h_byp_out_dsc_sz),
        .dma1_c2h_byp_out_error(versal_cips_0_dma1_c2h_byp_out_error),
        .dma1_c2h_byp_out_fmt(versal_cips_0_dma1_c2h_byp_out_fmt),
        .dma1_c2h_byp_out_func(versal_cips_0_dma1_c2h_byp_out_func),
        .dma1_c2h_byp_out_mm_chn(versal_cips_0_dma1_c2h_byp_out_mm_chn),
        .dma1_c2h_byp_out_pfch_tag(versal_cips_0_dma1_c2h_byp_out_pfch_tag),
        .dma1_c2h_byp_out_port_id(versal_cips_0_dma1_c2h_byp_out_port_id),
        .dma1_c2h_byp_out_qid(versal_cips_0_dma1_c2h_byp_out_qid),
        .dma1_c2h_byp_out_ready(versal_cips_0_dma1_c2h_byp_out_ready),
        .dma1_c2h_byp_out_st_mm(versal_cips_0_dma1_c2h_byp_out_st_mm),
        .dma1_c2h_byp_out_valid(versal_cips_0_dma1_c2h_byp_out_valid),
        .dma1_dsc_crdt_in_crdt(dma1_dsc_crdt_in_0_1_crdt),
        .dma1_dsc_crdt_in_dir(dma1_dsc_crdt_in_0_1_dir),
        .dma1_dsc_crdt_in_fence(dma1_dsc_crdt_in_0_1_fence),
        .dma1_dsc_crdt_in_qid(dma1_dsc_crdt_in_0_1_qid),
        .dma1_dsc_crdt_in_rdy(dma1_dsc_crdt_in_0_1_rdy),
        .dma1_dsc_crdt_in_valid(dma1_dsc_crdt_in_0_1_valid),
        .dma1_h2c_byp_in_mm_0_cidx(dma1_h2c_byp_in_mm_0_0_1_cidx),
        .dma1_h2c_byp_in_mm_0_error(dma1_h2c_byp_in_mm_0_0_1_error),
        .dma1_h2c_byp_in_mm_0_func(dma1_h2c_byp_in_mm_0_0_1_func),
        .dma1_h2c_byp_in_mm_0_len(dma1_h2c_byp_in_mm_0_0_1_len),
        .dma1_h2c_byp_in_mm_0_mrkr_req(dma1_h2c_byp_in_mm_0_0_1_mrkr_req),
        .dma1_h2c_byp_in_mm_0_no_dma(dma1_h2c_byp_in_mm_0_0_1_no_dma),
        .dma1_h2c_byp_in_mm_0_port_id(dma1_h2c_byp_in_mm_0_0_1_port_id),
        .dma1_h2c_byp_in_mm_0_qid(dma1_h2c_byp_in_mm_0_0_1_qid),
        .dma1_h2c_byp_in_mm_0_radr(dma1_h2c_byp_in_mm_0_0_1_radr),
        .dma1_h2c_byp_in_mm_0_ready(dma1_h2c_byp_in_mm_0_0_1_ready),
        .dma1_h2c_byp_in_mm_0_sdi(dma1_h2c_byp_in_mm_0_0_1_sdi),
        .dma1_h2c_byp_in_mm_0_valid(dma1_h2c_byp_in_mm_0_0_1_valid),
        .dma1_h2c_byp_in_mm_0_wadr(dma1_h2c_byp_in_mm_0_0_1_wadr),
        .dma1_h2c_byp_in_mm_1_cidx(dma1_h2c_byp_in_mm_1_0_1_cidx),
        .dma1_h2c_byp_in_mm_1_error(dma1_h2c_byp_in_mm_1_0_1_error),
        .dma1_h2c_byp_in_mm_1_func(dma1_h2c_byp_in_mm_1_0_1_func),
        .dma1_h2c_byp_in_mm_1_len(dma1_h2c_byp_in_mm_1_0_1_len),
        .dma1_h2c_byp_in_mm_1_mrkr_req(dma1_h2c_byp_in_mm_1_0_1_mrkr_req),
        .dma1_h2c_byp_in_mm_1_no_dma(dma1_h2c_byp_in_mm_1_0_1_no_dma),
        .dma1_h2c_byp_in_mm_1_port_id(dma1_h2c_byp_in_mm_1_0_1_port_id),
        .dma1_h2c_byp_in_mm_1_qid(dma1_h2c_byp_in_mm_1_0_1_qid),
        .dma1_h2c_byp_in_mm_1_radr(dma1_h2c_byp_in_mm_1_0_1_radr),
        .dma1_h2c_byp_in_mm_1_ready(dma1_h2c_byp_in_mm_1_0_1_ready),
        .dma1_h2c_byp_in_mm_1_sdi(dma1_h2c_byp_in_mm_1_0_1_sdi),
        .dma1_h2c_byp_in_mm_1_valid(dma1_h2c_byp_in_mm_1_0_1_valid),
        .dma1_h2c_byp_in_mm_1_wadr(dma1_h2c_byp_in_mm_1_0_1_wadr),
        .dma1_h2c_byp_in_st_addr(dma1_h2c_byp_in_st_0_1_addr),
        .dma1_h2c_byp_in_st_cidx(dma1_h2c_byp_in_st_0_1_cidx),
        .dma1_h2c_byp_in_st_eop(dma1_h2c_byp_in_st_0_1_eop),
        .dma1_h2c_byp_in_st_error(dma1_h2c_byp_in_st_0_1_error),
        .dma1_h2c_byp_in_st_func(dma1_h2c_byp_in_st_0_1_func),
        .dma1_h2c_byp_in_st_len(dma1_h2c_byp_in_st_0_1_len),
        .dma1_h2c_byp_in_st_mrkr_req(dma1_h2c_byp_in_st_0_1_mrkr_req),
        .dma1_h2c_byp_in_st_no_dma(dma1_h2c_byp_in_st_0_1_no_dma),
        .dma1_h2c_byp_in_st_port_id(dma1_h2c_byp_in_st_0_1_port_id),
        .dma1_h2c_byp_in_st_qid(dma1_h2c_byp_in_st_0_1_qid),
        .dma1_h2c_byp_in_st_ready(dma1_h2c_byp_in_st_0_1_ready),
        .dma1_h2c_byp_in_st_sdi(dma1_h2c_byp_in_st_0_1_sdi),
        .dma1_h2c_byp_in_st_sop(dma1_h2c_byp_in_st_0_1_sop),
        .dma1_h2c_byp_in_st_valid(dma1_h2c_byp_in_st_0_1_valid),
        .dma1_h2c_byp_out_cidx(versal_cips_0_dma1_h2c_byp_out_cidx),
        .dma1_h2c_byp_out_dsc(versal_cips_0_dma1_h2c_byp_out_dsc),
        .dma1_h2c_byp_out_dsc_sz(versal_cips_0_dma1_h2c_byp_out_dsc_sz),
        .dma1_h2c_byp_out_error(versal_cips_0_dma1_h2c_byp_out_error),
        .dma1_h2c_byp_out_fmt(versal_cips_0_dma1_h2c_byp_out_fmt),
        .dma1_h2c_byp_out_func(versal_cips_0_dma1_h2c_byp_out_func),
        .dma1_h2c_byp_out_mm_chn(versal_cips_0_dma1_h2c_byp_out_mm_chn),
        .dma1_h2c_byp_out_port_id(versal_cips_0_dma1_h2c_byp_out_port_id),
        .dma1_h2c_byp_out_qid(versal_cips_0_dma1_h2c_byp_out_qid),
        .dma1_h2c_byp_out_ready(versal_cips_0_dma1_h2c_byp_out_ready),
        .dma1_h2c_byp_out_st_mm(versal_cips_0_dma1_h2c_byp_out_st_mm),
        .dma1_h2c_byp_out_valid(versal_cips_0_dma1_h2c_byp_out_valid),
        .dma1_intrfc_clk(versal_cips_0_pl0_ref_clk),
        .dma1_intrfc_resetn(dma1_intrfc_resetn_0_1),
        .dma1_m_axis_h2c_err(versal_cips_0_dma1_m_axis_h2c_err),
        .dma1_m_axis_h2c_mdata(versal_cips_0_dma1_m_axis_h2c_mdata),
        .dma1_m_axis_h2c_mty(versal_cips_0_dma1_m_axis_h2c_mty),
        .dma1_m_axis_h2c_port_id(versal_cips_0_dma1_m_axis_h2c_port_id),
        .dma1_m_axis_h2c_qid(versal_cips_0_dma1_m_axis_h2c_qid),
        .dma1_m_axis_h2c_tcrc(versal_cips_0_dma1_m_axis_h2c_tcrc),
        .dma1_m_axis_h2c_tdata(versal_cips_0_dma1_m_axis_h2c_tdata),
        .dma1_m_axis_h2c_tlast(versal_cips_0_dma1_m_axis_h2c_tlast),
        .dma1_m_axis_h2c_tready(versal_cips_0_dma1_m_axis_h2c_tready),
        .dma1_m_axis_h2c_tvalid(versal_cips_0_dma1_m_axis_h2c_tvalid),
        .dma1_m_axis_h2c_zero_byte(versal_cips_0_dma1_m_axis_h2c_zero_byte),
        .dma1_mgmt_cpl_dat(pcie_qdma_mailbox_0_pcie_mgmt_cpl_dat),
        .dma1_mgmt_cpl_rdy(pcie_qdma_mailbox_0_pcie_mgmt_cpl_rdy),
        .dma1_mgmt_cpl_sts(pcie_qdma_mailbox_0_pcie_mgmt_cpl_sts),
        .dma1_mgmt_cpl_vld(pcie_qdma_mailbox_0_pcie_mgmt_cpl_vld),
        .dma1_mgmt_req_adr(pcie_qdma_mailbox_0_pcie_mgmt_req_adr),
        .dma1_mgmt_req_cmd(pcie_qdma_mailbox_0_pcie_mgmt_req_cmd),
        .dma1_mgmt_req_dat(pcie_qdma_mailbox_0_pcie_mgmt_req_dat),
        .dma1_mgmt_req_fnc({1'b0,pcie_qdma_mailbox_0_pcie_mgmt_req_fnc}),
        .dma1_mgmt_req_msc(pcie_qdma_mailbox_0_pcie_mgmt_req_msc),
        .dma1_mgmt_req_rdy(pcie_qdma_mailbox_0_pcie_mgmt_req_rdy),
        .dma1_mgmt_req_vld(pcie_qdma_mailbox_0_pcie_mgmt_req_vld),
        .dma1_qsts_out_data(versal_cips_0_dma1_qsts_out_data),
        .dma1_qsts_out_op(versal_cips_0_dma1_qsts_out_op),
        .dma1_qsts_out_port_id(versal_cips_0_dma1_qsts_out_port_id),
        .dma1_qsts_out_qid(versal_cips_0_dma1_qsts_out_qid),
        .dma1_qsts_out_rdy(versal_cips_0_dma1_qsts_out_rdy),
        .dma1_qsts_out_vld(versal_cips_0_dma1_qsts_out_vld),
        .dma1_s_axis_c2h_cmpt_cmpt_type(dma1_s_axis_c2h_cmpt_0_1_cmpt_type),
        .dma1_s_axis_c2h_cmpt_col_idx(dma1_s_axis_c2h_cmpt_0_1_col_idx),
        .dma1_s_axis_c2h_cmpt_data(dma1_s_axis_c2h_cmpt_0_1_data),
        .dma1_s_axis_c2h_cmpt_dpar(dma1_s_axis_c2h_cmpt_0_1_dpar),
        .dma1_s_axis_c2h_cmpt_err_idx(dma1_s_axis_c2h_cmpt_0_1_err_idx),
        .dma1_s_axis_c2h_cmpt_marker(dma1_s_axis_c2h_cmpt_0_1_marker),
        .dma1_s_axis_c2h_cmpt_no_wrb_marker(dma1_s_axis_c2h_cmpt_0_1_no_wrb_marker),
        .dma1_s_axis_c2h_cmpt_port_id(dma1_s_axis_c2h_cmpt_0_1_port_id),
        .dma1_s_axis_c2h_cmpt_qid(dma1_s_axis_c2h_cmpt_0_1_qid),
        .dma1_s_axis_c2h_cmpt_size(dma1_s_axis_c2h_cmpt_0_1_size),
        .dma1_s_axis_c2h_cmpt_tready(dma1_s_axis_c2h_cmpt_0_1_tready),
        .dma1_s_axis_c2h_cmpt_tvalid(dma1_s_axis_c2h_cmpt_0_1_tvalid),
        .dma1_s_axis_c2h_cmpt_user_trig(dma1_s_axis_c2h_cmpt_0_1_user_trig),
        .dma1_s_axis_c2h_cmpt_wait_pld_pkt_id(dma1_s_axis_c2h_cmpt_0_1_wait_pld_pkt_id),
        .dma1_s_axis_c2h_ctrl_has_cmpt(dma1_s_axis_c2h_0_1_ctrl_has_cmpt),
        .dma1_s_axis_c2h_ctrl_len(dma1_s_axis_c2h_0_1_ctrl_len),
        .dma1_s_axis_c2h_ctrl_marker(dma1_s_axis_c2h_0_1_ctrl_marker),
        .dma1_s_axis_c2h_ctrl_port_id(dma1_s_axis_c2h_0_1_ctrl_port_id),
        .dma1_s_axis_c2h_ctrl_qid(dma1_s_axis_c2h_0_1_ctrl_qid),
        .dma1_s_axis_c2h_ecc(dma1_s_axis_c2h_0_1_ecc),
        .dma1_s_axis_c2h_mty(dma1_s_axis_c2h_0_1_mty),
        .dma1_s_axis_c2h_tcrc(dma1_s_axis_c2h_0_1_tcrc),
        .dma1_s_axis_c2h_tdata(dma1_s_axis_c2h_0_1_tdata),
        .dma1_s_axis_c2h_tlast(dma1_s_axis_c2h_0_1_tlast),
        .dma1_s_axis_c2h_tready(dma1_s_axis_c2h_0_1_tready),
        .dma1_s_axis_c2h_tvalid(dma1_s_axis_c2h_0_1_tvalid),
        .dma1_st_rx_msg_tdata(versal_cips_0_dma1_st_rx_msg_TDATA),
        .dma1_st_rx_msg_tlast(versal_cips_0_dma1_st_rx_msg_TLAST),
        .dma1_st_rx_msg_tready(versal_cips_0_dma1_st_rx_msg_TREADY),
        .dma1_st_rx_msg_tvalid(versal_cips_0_dma1_st_rx_msg_TVALID),
        .dma1_tm_dsc_sts_avl(versal_cips_0_dma1_tm_dsc_sts_avl),
        .dma1_tm_dsc_sts_byp(versal_cips_0_dma1_tm_dsc_sts_byp),
        .dma1_tm_dsc_sts_dir(versal_cips_0_dma1_tm_dsc_sts_dir),
        .dma1_tm_dsc_sts_error(versal_cips_0_dma1_tm_dsc_sts_error),
        .dma1_tm_dsc_sts_irq_arm(versal_cips_0_dma1_tm_dsc_sts_irq_arm),
        .dma1_tm_dsc_sts_mm(versal_cips_0_dma1_tm_dsc_sts_mm),
        .dma1_tm_dsc_sts_pidx(versal_cips_0_dma1_tm_dsc_sts_pidx),
        .dma1_tm_dsc_sts_port_id(versal_cips_0_dma1_tm_dsc_sts_port_id),
        .dma1_tm_dsc_sts_qen(versal_cips_0_dma1_tm_dsc_sts_qen),
        .dma1_tm_dsc_sts_qid(versal_cips_0_dma1_tm_dsc_sts_qid),
        .dma1_tm_dsc_sts_qinv(versal_cips_0_dma1_tm_dsc_sts_qinv),
        .dma1_tm_dsc_sts_rdy(versal_cips_0_dma1_tm_dsc_sts_rdy),
        .dma1_tm_dsc_sts_valid(versal_cips_0_dma1_tm_dsc_sts_valid),
        .dma1_usr_flr_clear(pcie_qdma_mailbox_0_dma_flr_clear),
        .dma1_usr_flr_done_fnc({1'b0,pcie_qdma_mailbox_0_dma_flr_done_fnc}),
        .dma1_usr_flr_done_vld(pcie_qdma_mailbox_0_dma_flr_done_vld),
        .dma1_usr_flr_fnc(pcie_qdma_mailbox_0_dma_flr_fnc),
        .dma1_usr_flr_set(pcie_qdma_mailbox_0_dma_flr_set),
        .dma1_usr_irq_ack(pcie_qdma_mailbox_0_dma_usr_irq_ack),
        .dma1_usr_irq_fail(pcie_qdma_mailbox_0_dma_usr_irq_fail),
        .dma1_usr_irq_fnc({1'b0,pcie_qdma_mailbox_0_dma_usr_irq_fnc}),
        .dma1_usr_irq_valid(pcie_qdma_mailbox_0_dma_usr_irq_valid),
        .dma1_usr_irq_vec({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,pcie_qdma_mailbox_0_dma_usr_irq_vec}),
        .gt_refclk1_clk_n(gt_refclk1_0_1_CLK_N),
        .gt_refclk1_clk_p(gt_refclk1_0_1_CLK_P),
        .m_axi_fpd_aclk(versal_cips_0_pl0_ref_clk),
        .pcie1_pipe_ep_commands_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_pipe_ep_rx_0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_pipe_ep_rx_1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_pipe_ep_rx_10({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_pipe_ep_rx_11({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_pipe_ep_rx_12({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_pipe_ep_rx_13({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_pipe_ep_rx_14({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_pipe_ep_rx_15({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_pipe_ep_rx_2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_pipe_ep_rx_3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_pipe_ep_rx_4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_pipe_ep_rx_5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_pipe_ep_rx_6({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_pipe_ep_rx_7({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_pipe_ep_rx_8({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_pipe_ep_rx_9({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pl0_ref_clk(versal_cips_0_pl0_ref_clk),
        .pl1_ref_clk(versal_cips_0_pl1_ref_clk));
endmodule
