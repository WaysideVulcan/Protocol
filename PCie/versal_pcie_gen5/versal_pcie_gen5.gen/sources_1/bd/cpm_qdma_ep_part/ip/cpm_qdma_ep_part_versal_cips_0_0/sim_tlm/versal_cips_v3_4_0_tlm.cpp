
 
 
 
 
 
 
 


// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
// DO NOT MODIFY THIS FILE.


#include "versal_cips_v3_4_0_tlm.h"
#include "extensions/pmc_aie_extension.h"
#include<fstream>

xtlm::xtlm_aximm_target_socket* __attribute__((weak)) get_aie_npi_rd_socket();
xtlm::xtlm_aximm_target_socket* __attribute__((weak)) get_aie_npi_wr_socket();

/***************************************************************************************
*   Global method, get registered with tlm2xtlm bridge
*   This function is called when tlm2xtlm bridge convert tlm payload to xtlm payload.
*
*   caller:     tlm2xtlm bridge
*   purpose:    To get master id and other parameters out of genattr_extension
*               and use master id to AxUSER PIN of xtlm payload.
*
*
***************************************************************************************/
void get_extensions_from_tlm(xtlm::aximm_payload* xtlm_pay, const tlm::tlm_generic_payload* gp)
{
    if((xtlm_pay == NULL) || (gp == NULL))
        return;
    if((gp->get_command() == tlm::TLM_WRITE_COMMAND) && (xtlm_pay->get_awuser_size() > 0))
    {
  genattr_extension* ext = NULL;
  gp->get_extension(ext);
        if(ext == NULL)
            return;
  //Portion of master ID(master_id[5:0]) are transfered on AxUSER bits(refere Zynq UltraScale+ TRM page.no:414)
  uint32_t val = ext->get_master_id() && 0x3F;
    unsigned char* ptr = xtlm_pay->get_awuser_ptr();
    unsigned int size  = xtlm_pay->get_awuser_size();
    *ptr = (unsigned char)val;

    }
    else if((gp->get_command() == tlm::TLM_READ_COMMAND) && (xtlm_pay->get_aruser_size() > 0))
    {
        genattr_extension* ext = NULL;
        gp->get_extension(ext);
        if(ext == NULL)
            return;
        //Portion of master ID(master_id[5:0]) are transfered on AxUSER bits(refere Zynq UltraScale+ TRM page.no:414)
        uint32_t val = ext->get_master_id() && 0x3F;
    unsigned char* ptr = xtlm_pay->get_aruser_ptr();
    unsigned int size  = xtlm_pay->get_aruser_size();
    *ptr = (unsigned char)val;
  }
}
void get_extensions_from_tlm_pmc_noc(xtlm::aximm_payload* xtlm_pay, const tlm::tlm_generic_payload* gp)
{
    if((xtlm_pay == NULL) || (gp == NULL))
        return;
    if((gp->get_command() == tlm::TLM_WRITE_COMMAND) && (xtlm_pay->get_awuser_size() > 0))
    {
  genattr_extension* ext = NULL;
  gp->get_extension(ext);
        if(ext == NULL)
            return;
  //Portion of master ID(master_id[5:0]) are transfered on AxUSER bits(refere Zynq UltraScale+ TRM page.no:414)
  uint32_t val = ext->get_master_id() && 0x3F;
    unsigned char* ptr = xtlm_pay->get_awuser_ptr();
    unsigned int size  = xtlm_pay->get_awuser_size();
    *ptr = (unsigned char)val;

    }
    else if((gp->get_command() == tlm::TLM_READ_COMMAND) && (xtlm_pay->get_aruser_size() > 0))
    {
        genattr_extension* ext = NULL;
        gp->get_extension(ext);
        if(ext == NULL)
            return;
        //Portion of master ID(master_id[5:0]) are transfered on AxUSER bits(refere Zynq UltraScale+ TRM page.no:414)
        uint32_t val = ext->get_master_id() && 0x3F;
    unsigned char* ptr = xtlm_pay->get_aruser_ptr();
    unsigned int size  = xtlm_pay->get_aruser_size();
    *ptr = (unsigned char)val;
  }
  if((gp->get_address() >= 0x20000000000) && (gp->get_address() <= 0x200FFFFFFFF)) {
        xsc::extension::pmc_aie_extension *m_pmc_aie_extension = new xsc::extension::pmc_aie_extension;
        xtlm_pay->set_extension(m_pmc_aie_extension);
  }
}

/***************************************************************************************
*   Global method, get registered with xtlm2tlm bridge
*   This function is called when xtlm2tlm bridge convert xtlm payload to tlm payload.
*
*   caller:     xtlm2tlm bridge
*   purpose:    To create and add master id and other parameters to genattr_extension.
*               Master id red from AxID PIN of xtlm payload.
*
*
***************************************************************************************/
void add_extensions_to_tlm(const xtlm::aximm_payload* xtlm_pay, tlm::tlm_generic_payload* gp)
{
    if(gp == NULL)
        return;
  uint8_t val = 0;
    if((gp->get_command() != tlm::TLM_WRITE_COMMAND) && (gp->get_command() != tlm::TLM_READ_COMMAND))
        return;
  //portion of master ID bits(master_id[5:0]) are derived from the AXI ID(AWID/ARID). (refere Zynq UltraScale+ TRM page.no:414,415)
  val = ((uint8_t)(xtlm_pay->get_axi_id())) && 0x3F;
  genattr_extension* ext = new genattr_extension;
  ext->set_master_id(val);
  gp->set_extension(ext);
  gp->set_streaming_width(gp->get_data_length());
  if(gp->get_command() != tlm::TLM_WRITE_COMMAND)
  {
    gp->set_byte_enable_length(0);
    gp->set_byte_enable_ptr(0);
  }
}

/*
template<int INIT_WIDTH, int TARGET_WIDTH>
class tlm_width_conversion :public sc_module {
  public:
    tlm_utils::simple_initiator_socket<tlm_width_conversion<INIT_WIDTH,TARGET_WIDTH>, INIT_WIDTH> initsock;
    tlm_utils::simple_target_socket<tlm_width_conversion<INIT_WIDTH,TARGET_WIDTH>, TARGET_WIDTH> tarsock;
    tlm_width_conversion<INIT_WIDTH, TARGET_WIDTH>(sc_module_name name):sc_module(name){
        tarsock.register_b_transport(this, &tlm_width_conversion<INIT_WIDTH, TARGET_WIDTH>::b_transport);
        tarsock.register_get_direct_mem_ptr(this, &tlm_width_conversion<INIT_WIDTH, TARGET_WIDTH>::get_direct_mem_ptr);
        tarsock.register_transport_dbg(this, &tlm_width_conversion<INIT_WIDTH, TARGET_WIDTH>::transport_dbg);
    }
    private:
    void b_transport(tlm::tlm_generic_payload& trans, sc_core::sc_time& delay){
        initsock->b_transport(trans, delay);
    }
    unsigned int transport_dbg(tlm::tlm_generic_payload& trans){
        return initsock->transport_dbg(trans);
    }
    bool get_direct_mem_ptr(tlm::tlm_generic_payload& trans, tlm::tlm_dmi& dmi_data){
        return initsock->get_direct_mem_ptr(trans, dmi_data);
    }
};
*/

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                              //
// File:            versal_cips_v3_4_tlm.cpp                                                                         //
//                                                                                                              //
// Description:     versal_cips_v3_4_0_tlm class is a sc_module, act as intermediate layer between                     //
//                  xilinx_zynqmp qemu wrapper and Vivado generated systemc simulation ip wrapper.              //
//                  it's basically created for supporting tlm based xilinx_zynqmp from xtlm based vivado        //
//                  generated systemc wrapper. this wrapper is live only when SELECTED_SIM_MODEL is set         //
//                  to tlm. it's also act as bridge between vivado wrapper and xilinx_zynqmp wrapper.           //
//                  it fill the the gap between input/output ports of vivado generated wrapper to               //
//                  xilinx_zynqmp wrapper signals. This wrapper is auto generated by ttcl scripts               //
//                  based on IP configuration in vivado.                                                        //
//                                                                                                              //
//                                                                                                              //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
namespace cips_tlm {
    void export_simulation();
    void setup_for_mcpath() __attribute__ ((constructor));
}
//TODO update clk with original freq from PARAM
//constructor having three paramters
// 1. module name in sc_module_name objec,
// 2. reference to map object of name and integer value pairs
// 3. reference to map object of name and string value pairs
// All the model parameters (integer and string) which are configuration parameters
// of ZynqUltraScale+ IP propogated from Vivado
versal_cips_v3_4_0_tlm :: versal_cips_v3_4_0_tlm (sc_core::sc_module_name name,
  xsc::common_cpp::properties model_param_props) : sc_module(name) //registering module name with parent
    ,pl0_ref_clk("pl0_ref_clk")
    ,pl1_ref_clk("pl1_ref_clk")
    ,pl0_resetn("pl0_resetn")
    ,m_axi_fpd_aclk("m_axi_fpd_aclk")
    ,cpm_pcie_noc_axi0_clk("cpm_pcie_noc_axi0_clk")
    ,cpm_pcie_noc_axi1_clk("cpm_pcie_noc_axi1_clk")
    ,dma1_intrfc_clk("dma1_intrfc_clk")
    ,cpm_misc_irq("cpm_misc_irq")
    ,cpm_cor_irq("cpm_cor_irq")
    ,cpm_uncor_irq("cpm_uncor_irq")
    ,cpm_irq0("cpm_irq0")
    ,cpm_irq1("cpm_irq1")
    ,dma1_axi_aresetn("dma1_axi_aresetn")
    ,dma1_intrfc_resetn("dma1_intrfc_resetn")
    ,dma1_mgmt_cpl_vld("dma1_mgmt_cpl_vld")
    ,dma1_mgmt_req_rdy("dma1_mgmt_req_rdy")
    ,dma1_mgmt_cpl_rdy("dma1_mgmt_cpl_rdy")
    ,dma1_mgmt_req_vld("dma1_mgmt_req_vld")
    ,dma1_mgmt_cpl_sts("dma1_mgmt_cpl_sts")
    ,dma1_mgmt_cpl_dat("dma1_mgmt_cpl_dat")
    ,dma1_mgmt_req_cmd("dma1_mgmt_req_cmd")
    ,dma1_mgmt_req_fnc("dma1_mgmt_req_fnc")
    ,dma1_mgmt_req_msc("dma1_mgmt_req_msc")
    ,dma1_mgmt_req_adr("dma1_mgmt_req_adr")
    ,dma1_mgmt_req_dat("dma1_mgmt_req_dat")
    ,dma1_c2h_byp_in_mm_0_ready("dma1_c2h_byp_in_mm_0_ready")
    ,dma1_c2h_byp_in_mm_0_sdi("dma1_c2h_byp_in_mm_0_sdi")
    ,dma1_c2h_byp_in_mm_0_valid("dma1_c2h_byp_in_mm_0_valid")
    ,dma1_c2h_byp_in_mm_0_error("dma1_c2h_byp_in_mm_0_error")
    ,dma1_c2h_byp_in_mm_0_no_dma("dma1_c2h_byp_in_mm_0_no_dma")
    ,dma1_c2h_byp_in_mm_0_mrkr_req("dma1_c2h_byp_in_mm_0_mrkr_req")
    ,dma1_c2h_byp_in_mm_0_len("dma1_c2h_byp_in_mm_0_len")
    ,dma1_c2h_byp_in_mm_0_qid("dma1_c2h_byp_in_mm_0_qid")
    ,dma1_c2h_byp_in_mm_0_func("dma1_c2h_byp_in_mm_0_func")
    ,dma1_c2h_byp_in_mm_0_cidx("dma1_c2h_byp_in_mm_0_cidx")
    ,dma1_c2h_byp_in_mm_0_radr("dma1_c2h_byp_in_mm_0_radr")
    ,dma1_c2h_byp_in_mm_0_wadr("dma1_c2h_byp_in_mm_0_wadr")
    ,dma1_c2h_byp_in_mm_0_port_id("dma1_c2h_byp_in_mm_0_port_id")
    ,dma1_c2h_byp_in_mm_1_ready("dma1_c2h_byp_in_mm_1_ready")
    ,dma1_c2h_byp_in_mm_1_sdi("dma1_c2h_byp_in_mm_1_sdi")
    ,dma1_c2h_byp_in_mm_1_valid("dma1_c2h_byp_in_mm_1_valid")
    ,dma1_c2h_byp_in_mm_1_error("dma1_c2h_byp_in_mm_1_error")
    ,dma1_c2h_byp_in_mm_1_no_dma("dma1_c2h_byp_in_mm_1_no_dma")
    ,dma1_c2h_byp_in_mm_1_mrkr_req("dma1_c2h_byp_in_mm_1_mrkr_req")
    ,dma1_c2h_byp_in_mm_1_len("dma1_c2h_byp_in_mm_1_len")
    ,dma1_c2h_byp_in_mm_1_qid("dma1_c2h_byp_in_mm_1_qid")
    ,dma1_c2h_byp_in_mm_1_func("dma1_c2h_byp_in_mm_1_func")
    ,dma1_c2h_byp_in_mm_1_cidx("dma1_c2h_byp_in_mm_1_cidx")
    ,dma1_c2h_byp_in_mm_1_radr("dma1_c2h_byp_in_mm_1_radr")
    ,dma1_c2h_byp_in_mm_1_wadr("dma1_c2h_byp_in_mm_1_wadr")
    ,dma1_c2h_byp_in_mm_1_port_id("dma1_c2h_byp_in_mm_1_port_id")
    ,dma1_c2h_byp_in_st_csh_ready("dma1_c2h_byp_in_st_csh_ready")
    ,dma1_c2h_byp_in_st_csh_valid("dma1_c2h_byp_in_st_csh_valid")
    ,dma1_c2h_byp_in_st_csh_error("dma1_c2h_byp_in_st_csh_error")
    ,dma1_c2h_byp_in_st_csh_qid("dma1_c2h_byp_in_st_csh_qid")
    ,dma1_c2h_byp_in_st_csh_func("dma1_c2h_byp_in_st_csh_func")
    ,dma1_c2h_byp_in_st_csh_addr("dma1_c2h_byp_in_st_csh_addr")
    ,dma1_c2h_byp_in_st_csh_port_id("dma1_c2h_byp_in_st_csh_port_id")
    ,dma1_c2h_byp_in_st_csh_pfch_tag("dma1_c2h_byp_in_st_csh_pfch_tag")
    ,dma1_c2h_byp_out_valid("dma1_c2h_byp_out_valid")
    ,dma1_c2h_byp_out_error("dma1_c2h_byp_out_error")
    ,dma1_c2h_byp_out_st_mm("dma1_c2h_byp_out_st_mm")
    ,dma1_c2h_byp_out_mm_chn("dma1_c2h_byp_out_mm_chn")
    ,dma1_c2h_byp_out_ready("dma1_c2h_byp_out_ready")
    ,dma1_c2h_byp_out_fmt("dma1_c2h_byp_out_fmt")
    ,dma1_c2h_byp_out_qid("dma1_c2h_byp_out_qid")
    ,dma1_c2h_byp_out_dsc("dma1_c2h_byp_out_dsc")
    ,dma1_c2h_byp_out_func("dma1_c2h_byp_out_func")
    ,dma1_c2h_byp_out_cidx("dma1_c2h_byp_out_cidx")
    ,dma1_c2h_byp_out_dsc_sz("dma1_c2h_byp_out_dsc_sz")
    ,dma1_c2h_byp_out_port_id("dma1_c2h_byp_out_port_id")
    ,dma1_c2h_byp_out_pfch_tag("dma1_c2h_byp_out_pfch_tag")
    ,dma1_h2c_byp_in_mm_0_ready("dma1_h2c_byp_in_mm_0_ready")
    ,dma1_h2c_byp_in_mm_0_sdi("dma1_h2c_byp_in_mm_0_sdi")
    ,dma1_h2c_byp_in_mm_0_valid("dma1_h2c_byp_in_mm_0_valid")
    ,dma1_h2c_byp_in_mm_0_error("dma1_h2c_byp_in_mm_0_error")
    ,dma1_h2c_byp_in_mm_0_no_dma("dma1_h2c_byp_in_mm_0_no_dma")
    ,dma1_h2c_byp_in_mm_0_mrkr_req("dma1_h2c_byp_in_mm_0_mrkr_req")
    ,dma1_h2c_byp_in_mm_0_len("dma1_h2c_byp_in_mm_0_len")
    ,dma1_h2c_byp_in_mm_0_qid("dma1_h2c_byp_in_mm_0_qid")
    ,dma1_h2c_byp_in_mm_0_func("dma1_h2c_byp_in_mm_0_func")
    ,dma1_h2c_byp_in_mm_0_cidx("dma1_h2c_byp_in_mm_0_cidx")
    ,dma1_h2c_byp_in_mm_0_radr("dma1_h2c_byp_in_mm_0_radr")
    ,dma1_h2c_byp_in_mm_0_wadr("dma1_h2c_byp_in_mm_0_wadr")
    ,dma1_h2c_byp_in_mm_0_port_id("dma1_h2c_byp_in_mm_0_port_id")
    ,dma1_h2c_byp_in_mm_1_ready("dma1_h2c_byp_in_mm_1_ready")
    ,dma1_h2c_byp_in_mm_1_sdi("dma1_h2c_byp_in_mm_1_sdi")
    ,dma1_h2c_byp_in_mm_1_valid("dma1_h2c_byp_in_mm_1_valid")
    ,dma1_h2c_byp_in_mm_1_error("dma1_h2c_byp_in_mm_1_error")
    ,dma1_h2c_byp_in_mm_1_no_dma("dma1_h2c_byp_in_mm_1_no_dma")
    ,dma1_h2c_byp_in_mm_1_mrkr_req("dma1_h2c_byp_in_mm_1_mrkr_req")
    ,dma1_h2c_byp_in_mm_1_len("dma1_h2c_byp_in_mm_1_len")
    ,dma1_h2c_byp_in_mm_1_qid("dma1_h2c_byp_in_mm_1_qid")
    ,dma1_h2c_byp_in_mm_1_func("dma1_h2c_byp_in_mm_1_func")
    ,dma1_h2c_byp_in_mm_1_cidx("dma1_h2c_byp_in_mm_1_cidx")
    ,dma1_h2c_byp_in_mm_1_radr("dma1_h2c_byp_in_mm_1_radr")
    ,dma1_h2c_byp_in_mm_1_wadr("dma1_h2c_byp_in_mm_1_wadr")
    ,dma1_h2c_byp_in_mm_1_port_id("dma1_h2c_byp_in_mm_1_port_id")
    ,dma1_h2c_byp_in_st_ready("dma1_h2c_byp_in_st_ready")
    ,dma1_h2c_byp_in_st_eop("dma1_h2c_byp_in_st_eop")
    ,dma1_h2c_byp_in_st_sdi("dma1_h2c_byp_in_st_sdi")
    ,dma1_h2c_byp_in_st_sop("dma1_h2c_byp_in_st_sop")
    ,dma1_h2c_byp_in_st_valid("dma1_h2c_byp_in_st_valid")
    ,dma1_h2c_byp_in_st_error("dma1_h2c_byp_in_st_error")
    ,dma1_h2c_byp_in_st_no_dma("dma1_h2c_byp_in_st_no_dma")
    ,dma1_h2c_byp_in_st_mrkr_req("dma1_h2c_byp_in_st_mrkr_req")
    ,dma1_h2c_byp_in_st_len("dma1_h2c_byp_in_st_len")
    ,dma1_h2c_byp_in_st_qid("dma1_h2c_byp_in_st_qid")
    ,dma1_h2c_byp_in_st_func("dma1_h2c_byp_in_st_func")
    ,dma1_h2c_byp_in_st_addr("dma1_h2c_byp_in_st_addr")
    ,dma1_h2c_byp_in_st_cidx("dma1_h2c_byp_in_st_cidx")
    ,dma1_h2c_byp_in_st_port_id("dma1_h2c_byp_in_st_port_id")
    ,dma1_h2c_byp_out_valid("dma1_h2c_byp_out_valid")
    ,dma1_h2c_byp_out_error("dma1_h2c_byp_out_error")
    ,dma1_h2c_byp_out_st_mm("dma1_h2c_byp_out_st_mm")
    ,dma1_h2c_byp_out_mm_chn("dma1_h2c_byp_out_mm_chn")
    ,dma1_h2c_byp_out_ready("dma1_h2c_byp_out_ready")
    ,dma1_h2c_byp_out_fmt("dma1_h2c_byp_out_fmt")
    ,dma1_h2c_byp_out_qid("dma1_h2c_byp_out_qid")
    ,dma1_h2c_byp_out_dsc("dma1_h2c_byp_out_dsc")
    ,dma1_h2c_byp_out_func("dma1_h2c_byp_out_func")
    ,dma1_h2c_byp_out_cidx("dma1_h2c_byp_out_cidx")
    ,dma1_h2c_byp_out_dsc_sz("dma1_h2c_byp_out_dsc_sz")
    ,dma1_h2c_byp_out_port_id("dma1_h2c_byp_out_port_id")
    ,dma1_axis_c2h_dmawr_cmp("dma1_axis_c2h_dmawr_cmp")
    ,dma1_axis_c2h_dmawr_target_vch("dma1_axis_c2h_dmawr_target_vch")
    ,dma1_axis_c2h_dmawr_port_id("dma1_axis_c2h_dmawr_port_id")
    ,dma1_s_axis_c2h_tready("dma1_s_axis_c2h_tready")
    ,dma1_s_axis_c2h_tlast("dma1_s_axis_c2h_tlast")
    ,dma1_s_axis_c2h_tvalid("dma1_s_axis_c2h_tvalid")
    ,dma1_s_axis_c2h_tcrc("dma1_s_axis_c2h_tcrc")
    ,dma1_s_axis_c2h_tdata("dma1_s_axis_c2h_tdata")
    ,dma1_s_axis_c2h_mty("dma1_s_axis_c2h_mty")
    ,dma1_s_axis_c2h_ecc("dma1_s_axis_c2h_ecc")
    ,dma1_s_axis_c2h_ctrl_marker("dma1_s_axis_c2h_ctrl_marker")
    ,dma1_s_axis_c2h_ctrl_has_cmpt("dma1_s_axis_c2h_ctrl_has_cmpt")
    ,dma1_s_axis_c2h_ctrl_len("dma1_s_axis_c2h_ctrl_len")
    ,dma1_s_axis_c2h_ctrl_qid("dma1_s_axis_c2h_ctrl_qid")
    ,dma1_s_axis_c2h_ctrl_port_id("dma1_s_axis_c2h_ctrl_port_id")
    ,dma1_s_axis_c2h_cmpt_marker("dma1_s_axis_c2h_cmpt_marker")
    ,dma1_s_axis_c2h_cmpt_user_trig("dma1_s_axis_c2h_cmpt_user_trig")
    ,dma1_s_axis_c2h_cmpt_size("dma1_s_axis_c2h_cmpt_size")
    ,dma1_s_axis_c2h_cmpt_qid("dma1_s_axis_c2h_cmpt_qid")
    ,dma1_s_axis_c2h_cmpt_no_wrb_marker("dma1_s_axis_c2h_cmpt_no_wrb_marker")
    ,dma1_s_axis_c2h_cmpt_port_id("dma1_s_axis_c2h_cmpt_port_id")
    ,dma1_s_axis_c2h_cmpt_col_idx("dma1_s_axis_c2h_cmpt_col_idx")
    ,dma1_s_axis_c2h_cmpt_err_idx("dma1_s_axis_c2h_cmpt_err_idx")
    ,dma1_s_axis_c2h_cmpt_wait_pld_pkt_id("dma1_s_axis_c2h_cmpt_wait_pld_pkt_id")
    ,dma1_s_axis_c2h_cmpt_tready("dma1_s_axis_c2h_cmpt_tready")
    ,dma1_s_axis_c2h_cmpt_tvalid("dma1_s_axis_c2h_cmpt_tvalid")
    ,dma1_s_axis_c2h_cmpt_dpar("dma1_s_axis_c2h_cmpt_dpar")
    ,dma1_s_axis_c2h_cmpt_data("dma1_s_axis_c2h_cmpt_data")
    ,dma1_s_axis_c2h_cmpt_cmpt_type("dma1_s_axis_c2h_cmpt_cmpt_type")
    ,dma1_m_axis_h2c_tlast("dma1_m_axis_h2c_tlast")
    ,dma1_m_axis_h2c_err("dma1_m_axis_h2c_err")
    ,dma1_m_axis_h2c_tvalid("dma1_m_axis_h2c_tvalid")
    ,dma1_m_axis_h2c_tdata("dma1_m_axis_h2c_tdata")
    ,dma1_m_axis_h2c_zero_byte("dma1_m_axis_h2c_zero_byte")
    ,dma1_m_axis_h2c_tready("dma1_m_axis_h2c_tready")
    ,dma1_m_axis_h2c_tcrc("dma1_m_axis_h2c_tcrc")
    ,dma1_m_axis_h2c_mty("dma1_m_axis_h2c_mty")
    ,dma1_m_axis_h2c_qid("dma1_m_axis_h2c_qid")
    ,dma1_m_axis_h2c_mdata("dma1_m_axis_h2c_mdata")
    ,dma1_m_axis_h2c_port_id("dma1_m_axis_h2c_port_id")
    ,dma1_axis_c2h_status_last("dma1_axis_c2h_status_last")
    ,dma1_axis_c2h_status_drop("dma1_axis_c2h_status_drop")
    ,dma1_axis_c2h_status_error("dma1_axis_c2h_status_error")
    ,dma1_axis_c2h_status_valid("dma1_axis_c2h_status_valid")
    ,dma1_axis_c2h_status_status_cmp("dma1_axis_c2h_status_status_cmp")
    ,dma1_axis_c2h_status_qid("dma1_axis_c2h_status_qid")
    ,dma1_qsts_out_vld("dma1_qsts_out_vld")
    ,dma1_qsts_out_op("dma1_qsts_out_op")
    ,dma1_qsts_out_rdy("dma1_qsts_out_rdy")
    ,dma1_qsts_out_qid("dma1_qsts_out_qid")
    ,dma1_qsts_out_data("dma1_qsts_out_data")
    ,dma1_qsts_out_port_id("dma1_qsts_out_port_id")
    ,dma1_dsc_crdt_in_rdy("dma1_dsc_crdt_in_rdy")
    ,dma1_dsc_crdt_in_dir("dma1_dsc_crdt_in_dir")
    ,dma1_dsc_crdt_in_valid("dma1_dsc_crdt_in_valid")
    ,dma1_dsc_crdt_in_fence("dma1_dsc_crdt_in_fence")
    ,dma1_dsc_crdt_in_qid("dma1_dsc_crdt_in_qid")
    ,dma1_dsc_crdt_in_crdt("dma1_dsc_crdt_in_crdt")
    ,dma1_usr_irq_ack("dma1_usr_irq_ack")
    ,dma1_usr_irq_fail("dma1_usr_irq_fail")
    ,dma1_usr_irq_valid("dma1_usr_irq_valid")
    ,dma1_usr_irq_vec("dma1_usr_irq_vec")
    ,dma1_usr_irq_fnc("dma1_usr_irq_fnc")
    ,dma1_tm_dsc_sts_mm("dma1_tm_dsc_sts_mm")
    ,dma1_tm_dsc_sts_qen("dma1_tm_dsc_sts_qen")
    ,dma1_tm_dsc_sts_byp("dma1_tm_dsc_sts_byp")
    ,dma1_tm_dsc_sts_dir("dma1_tm_dsc_sts_dir")
    ,dma1_tm_dsc_sts_error("dma1_tm_dsc_sts_error")
    ,dma1_tm_dsc_sts_valid("dma1_tm_dsc_sts_valid")
    ,dma1_tm_dsc_sts_qinv("dma1_tm_dsc_sts_qinv")
    ,dma1_tm_dsc_sts_irq_arm("dma1_tm_dsc_sts_irq_arm")
    ,dma1_tm_dsc_sts_rdy("dma1_tm_dsc_sts_rdy")
    ,dma1_tm_dsc_sts_qid("dma1_tm_dsc_sts_qid")
    ,dma1_tm_dsc_sts_avl("dma1_tm_dsc_sts_avl")
    ,dma1_tm_dsc_sts_pidx("dma1_tm_dsc_sts_pidx")
    ,dma1_tm_dsc_sts_port_id("dma1_tm_dsc_sts_port_id")
    ,dma1_usr_flr_set("dma1_usr_flr_set")
    ,dma1_usr_flr_clear("dma1_usr_flr_clear")
    ,dma1_usr_flr_fnc("dma1_usr_flr_fnc")
    ,dma1_usr_flr_done_vld("dma1_usr_flr_done_vld")
    ,dma1_usr_flr_done_fnc("dma1_usr_flr_done_fnc")
    ,PCIE1_GT_grx_n("PCIE1_GT_grx_n")
    ,PCIE1_GT_gtx_n("PCIE1_GT_gtx_n")
    ,PCIE1_GT_grx_p("PCIE1_GT_grx_p")
    ,PCIE1_GT_gtx_p("PCIE1_GT_gtx_p")
    ,gt_refclk1_clk_n("gt_refclk1_clk_n")
    ,gt_refclk1_clk_p("gt_refclk1_clk_p")
    ,pcie1_pipe_ep_tx_0("pcie1_pipe_ep_tx_0")
    ,pcie1_pipe_ep_rx_0("pcie1_pipe_ep_rx_0")
    ,pcie1_pipe_ep_tx_1("pcie1_pipe_ep_tx_1")
    ,pcie1_pipe_ep_rx_1("pcie1_pipe_ep_rx_1")
    ,pcie1_pipe_ep_tx_2("pcie1_pipe_ep_tx_2")
    ,pcie1_pipe_ep_rx_2("pcie1_pipe_ep_rx_2")
    ,pcie1_pipe_ep_tx_3("pcie1_pipe_ep_tx_3")
    ,pcie1_pipe_ep_rx_3("pcie1_pipe_ep_rx_3")
    ,pcie1_pipe_ep_tx_4("pcie1_pipe_ep_tx_4")
    ,pcie1_pipe_ep_rx_4("pcie1_pipe_ep_rx_4")
    ,pcie1_pipe_ep_tx_5("pcie1_pipe_ep_tx_5")
    ,pcie1_pipe_ep_rx_5("pcie1_pipe_ep_rx_5")
    ,pcie1_pipe_ep_tx_6("pcie1_pipe_ep_tx_6")
    ,pcie1_pipe_ep_rx_6("pcie1_pipe_ep_rx_6")
    ,pcie1_pipe_ep_tx_7("pcie1_pipe_ep_tx_7")
    ,pcie1_pipe_ep_rx_7("pcie1_pipe_ep_rx_7")
    ,pcie1_pipe_ep_tx_8("pcie1_pipe_ep_tx_8")
    ,pcie1_pipe_ep_rx_8("pcie1_pipe_ep_rx_8")
    ,pcie1_pipe_ep_tx_9("pcie1_pipe_ep_tx_9")
    ,pcie1_pipe_ep_rx_9("pcie1_pipe_ep_rx_9")
    ,pcie1_pipe_ep_tx_10("pcie1_pipe_ep_tx_10")
    ,pcie1_pipe_ep_rx_10("pcie1_pipe_ep_rx_10")
    ,pcie1_pipe_ep_tx_11("pcie1_pipe_ep_tx_11")
    ,pcie1_pipe_ep_rx_11("pcie1_pipe_ep_rx_11")
    ,pcie1_pipe_ep_tx_12("pcie1_pipe_ep_tx_12")
    ,pcie1_pipe_ep_rx_12("pcie1_pipe_ep_rx_12")
    ,pcie1_pipe_ep_tx_13("pcie1_pipe_ep_tx_13")
    ,pcie1_pipe_ep_rx_13("pcie1_pipe_ep_rx_13")
    ,pcie1_pipe_ep_tx_14("pcie1_pipe_ep_tx_14")
    ,pcie1_pipe_ep_rx_14("pcie1_pipe_ep_rx_14")
    ,pcie1_pipe_ep_tx_15("pcie1_pipe_ep_tx_15")
    ,pcie1_pipe_ep_rx_15("pcie1_pipe_ep_rx_15")
    ,pcie1_pipe_ep_commands_in("pcie1_pipe_ep_commands_in")
    ,pcie1_pipe_ep_commands_out("pcie1_pipe_ep_commands_out")
    ,pl0_ref_clk_clk("pl0_ref_clk_clk", sc_time(2.3301203397173786,sc_core::SC_NS))//clock period in NANO oseconds = 1000/freq(in MZ)
    ,pl1_ref_clk_clk("pl1_ref_clk_clk", sc_time(4.000040032400644,sc_core::SC_NS))//clock period in NANO seconds = 1000/freq(in MZ)

    ,dummy_noc_pcie_sig("dummy_noc_pcie_sig")
    ,m_rp_bridge_M_AXI_FPD("m_rp_bridge_M_AXI_FPD")
    ,m_rp_bridge_CPM_PCIE_NOC_1("m_rp_bridge_CPM_PCIE_NOC_1")
    ,dummy_usr_irq_req("dummy_usr_irq_req")
    ,dummy_usr_irq_ack("dummy_usr_irq_ack")
{
    cips_tlm::export_simulation();
    fpd_cci_noc_clk = NULL;
    lpd_axi_noc_clk_sig = NULL;
    {
        char str[] = "100_MHz";
        char * pch = strtok (str,"_");
        uint64_t clk_period =0;
        sscanf(pch, "%d", &clk_period);
        cpm_pcie_noc_axi0_clk_sig = new sc_core::sc_clock("cpm_pcie_noc_axi0_clk_sig", sc_core::sc_time(1000/clk_period,sc_core::SC_NS));
    }
  //  Start versal_cips_v3_4_0_tlm()
  //creating instances of xtlm slave sockets
  //initializing input clocks and pointers to NULL of sim_qdma when ps_noc_pcie IF is enabled..
  m_sim_qdma_ptr = NULL;
  sim_qdma_interconnect = NULL;
M_AXI_FPD_tlm_aximm_write_socket = new xtlm::xtlm_aximm_initiator_socket("M_AXI_FPD_tlm_aximm_write_socket",128);
M_AXI_FPD_tlm_aximm_read_socket = new xtlm::xtlm_aximm_initiator_socket("M_AXI_FPD_tlm_aximm_read_socket",128);
CPM_PCIE_NOC_0_tlm_aximm_write_socket = new xtlm::xtlm_aximm_initiator_socket("CPM_PCIE_NOC_0_tlm_aximm_write_socket",128 );
CPM_PCIE_NOC_0_tlm_aximm_read_socket = new xtlm::xtlm_aximm_initiator_socket("CPM_PCIE_NOC_0_tlm_aximm_read_socket",128 );
CPM_PCIE_NOC_1_tlm_aximm_write_socket = new xtlm::xtlm_aximm_initiator_socket("CPM_PCIE_NOC_1_tlm_aximm_write_socket",128 );
CPM_PCIE_NOC_1_tlm_aximm_read_socket = new xtlm::xtlm_aximm_initiator_socket("CPM_PCIE_NOC_1_tlm_aximm_read_socket",128 );
        //Adding AXIMM/AXIS interfaces here
dma1_st_rx_msg_tlm_axis_socket = new xtlm::xtlm_axis_initiator_socket("dma1_st_rx_msg_socket",32);
        axis_master_stub.push_back(new xtlm::xtlm_axis_initiator_stub("dma1_st_rx_msg_stub", 32));                
        axis_master_stub.back()->initiator_socket(*dma1_st_rx_msg_tlm_axis_socket); 
  
        //Adding AXIMM/AXIS interfaces here for XRAM
  char* tcpip_addr = getenv("COSIM_MACHINE_TCPIP_ADDRESS");
  char* unix_addr = getenv("COSIM_MACHINE_PATH");
  char* skt_name;
  if (unix_addr != NULL){
      skt_name = strdup(unix_addr);
  } else if (tcpip_addr != NULL) {
      skt_name = strdup(tcpip_addr);
  } else {
      tcpip_addr = "NO_IP_ADDRESS";
      skt_name = strdup(tcpip_addr);
  }
  m_zynq3_tlm_model = new xilinx_versal_vitis("xilinx_versal_vitis",skt_name);

  //quantumkeeper value update
  char* qk_value = getenv("TLM_QUANTUM_IN_PS");
  if(qk_value != NULL) {
      double value = atof(qk_value);
      m_zynq3_tlm_model->m_qk.set_global_quantum(sc_core::sc_time(value,SC_PS));
  } else {
      m_zynq3_tlm_model->m_qk.set_global_quantum(sc_core::sc_time(20,SC_NS));
  }
  m_zynq3_tlm_model->m_qk.reset();



  XRAM_connections();

  //instantiating TLM2XTLM bridge and stiching it between
  //if_ps_noc_pcie_0 initiator socket of zynqmp Qemu tlm wrapper to FPD_AXI_NOC_0_tlm_aximm_write_socket/rd_socket sockets
  enable_sim_qdma();

  //instantiating TLM2XTLM bridge and stiching it between
  //m_axi_gp_0 initiator socket of zynqmp Qemu tlm wrapper to M_AXI_FPD_tlm_aximm_write_socket/rd_socket sockets
  m_rp_bridge_M_AXI_FPD.clk(m_axi_fpd_aclk);
  m_rp_bridge_M_AXI_FPD.wr_socket.bind(*M_AXI_FPD_tlm_aximm_write_socket);
  m_rp_bridge_M_AXI_FPD.rd_socket.bind(*M_AXI_FPD_tlm_aximm_read_socket);
  m_rp_bridge_M_AXI_FPD.target_socket.bind(*m_zynq3_tlm_model->m_axi_fpd);
  //instantiating TLM2XTLM bridge and stiching it between
  //if_ps_noc_pcie_1 initiator socket of zynqmp Qemu tlm wrapper to FPD_AXI_NOC_1_tlm_aximm_write_socket/rd_socket sockets
  m_rp_bridge_CPM_PCIE_NOC_1.clk(cpm_pcie_noc_axi1_clk);
  m_rp_bridge_CPM_PCIE_NOC_1.wr_socket.bind(*CPM_PCIE_NOC_1_tlm_aximm_write_socket);
  m_rp_bridge_CPM_PCIE_NOC_1.rd_socket.bind(*CPM_PCIE_NOC_1_tlm_aximm_read_socket);
  m_rp_bridge_CPM_PCIE_NOC_1.target_socket.bind(*m_zynq3_tlm_model->cpm_pcie_noc_1);


  SC_METHOD(pl_ps_irq_method);
  dont_initialize();

  SC_METHOD(trigger_pl0_ref_clk_pin);
  sensitive << pl0_ref_clk_clk;
  dont_initialize();
  SC_METHOD(trigger_pl1_ref_clk_pin);
  sensitive << pl1_ref_clk_clk;
  dont_initialize();



  m_rp_bridge_M_AXI_FPD.registerUserExtensionHandlerCallback(&get_extensions_from_tlm);

  m_zynq3_tlm_model->rst(qemu_rst);

  //initializing input clocks of sim_qdma when ps_noc_pcie IF is enabled..
  if(m_sim_qdma_ptr != NULL){
      m_sim_qdma_ptr->m_aximm_aclk.bind(*cpm_pcie_noc_axi0_clk_sig);
      m_sim_qdma_ptr->m_axictrl_aclk.bind(*cpm_pcie_noc_axi0_clk_sig);
  }
    SC_METHOD(trigger_ps_noc_pcie_axi0_clk_pin);
    sensitive << *cpm_pcie_noc_axi0_clk_sig;
    dont_initialize();
  SC_METHOD(pl0_resetn_trigger);
  sensitive << m_zynq3_tlm_model->pl_reset[0];
  //  End versal_cips_v3_4_0_tlm()
}

versal_cips_v3_4_0_tlm :: ~versal_cips_v3_4_0_tlm() {
  //deleting dynamically created objects
  if(fpd_cci_noc_clk != NULL) {
      delete fpd_cci_noc_clk;
      fpd_cci_noc_clk = NULL;
  }
  if(lpd_axi_noc_clk_sig != NULL) {
      delete lpd_axi_noc_clk_sig;
      lpd_axi_noc_clk_sig = NULL;
  }
  delete cpm_pcie_noc_axi0_clk_sig;
  cpm_pcie_noc_axi0_clk_sig = NULL;
    delete M_AXI_FPD_tlm_aximm_write_socket;
    delete M_AXI_FPD_tlm_aximm_read_socket;
M_AXI_FPD_tlm_aximm_write_socket = NULL;
M_AXI_FPD_tlm_aximm_read_socket = NULL;
    delete CPM_PCIE_NOC_0_tlm_aximm_write_socket;
    delete CPM_PCIE_NOC_0_tlm_aximm_read_socket;
CPM_PCIE_NOC_0_tlm_aximm_write_socket = NULL;
CPM_PCIE_NOC_0_tlm_aximm_read_socket = NULL;
    delete CPM_PCIE_NOC_1_tlm_aximm_write_socket;
    delete CPM_PCIE_NOC_1_tlm_aximm_read_socket;
CPM_PCIE_NOC_1_tlm_aximm_write_socket = NULL;
CPM_PCIE_NOC_1_tlm_aximm_read_socket = NULL;
    delete dma1_st_rx_msg_tlm_axis_socket;
dma1_st_rx_msg_tlm_axis_socket = NULL;

    if(m_xtlm2tlm_10 != 0) {
        delete m_xtlm2tlm_10;
    }

  //deleting the thread object, RdWrTCPSocket and rwd_tlmmodel
  if(m_sim_qdma_ptr != NULL){
    delete m_sim_qdma_ptr;
    m_sim_qdma_ptr = NULL;
  }
  if(sim_qdma_interconnect != NULL){
    delete sim_qdma_interconnect;
    sim_qdma_interconnect = NULL;
  }
}

//Method which is sentive to pl0_ref_clk_clk sc_clock object
//pl0_ref_clk pin written based on pl0_ref_clk_clk clock value
void versal_cips_v3_4_0_tlm :: trigger_pl0_ref_clk_pin() {
    pl0_ref_clk.write(pl0_ref_clk_clk.read());
}
//Method which is sentive to pl1_ref_clk_clk sc_clock object
//pl1_ref_clk pin written based on pl1_ref_clk_clk clock value
void versal_cips_v3_4_0_tlm :: trigger_pl1_ref_clk_pin() {
    pl1_ref_clk.write(pl1_ref_clk_clk.read());
}
//TODO: use of proper clock freq..
void versal_cips_v3_4_0_tlm :: trigger_ps_noc_pcie_axi0_clk_pin() {
  cpm_pcie_noc_axi0_clk.write(cpm_pcie_noc_axi0_clk_sig->read());
}


void versal_cips_v3_4_0_tlm :: pl_ps_irq_method() {
}
//pl0_resetn output reset pin get toggle when emio bank 2's 31th signal gets toggled
//EMIO[2] bank 31th(GPIO[95] signal)acts as reset signal to the PL(refer Zynq UltraScale+ TRM, page no:761)
void versal_cips_v3_4_0_tlm :: pl0_resetn_trigger() {
    pl0_resetn.write(m_zynq3_tlm_model->pl_reset[0]);
}

void versal_cips_v3_4_0_tlm :: start_of_simulation()
{
  qemu_rst.write(false);
  char* tcpip_addr = getenv("COSIM_MACHINE_TCPIP_ADDRESS");
  char* unix_addr = getenv("COSIM_MACHINE_PATH");
  if(tcpip_addr == NULL && unix_addr == NULL) {
      std::cerr << "\n\n############################################################## \n#\n"
                << " #  You have set SELECTED_SIM_MODLE=TLM for Versal CIPS block.\n" 
                << " #  Since this requires software content, the QEMU based simulation in Vivado will not generate any transactions on master interfaces and will also not respond to any transactions on slave interfaces.\n" 
                << " #  To use SW driven simulation, create use the Vitis flow\n" 
                << "\n#\n##############################################################\n\n";
      //exit(0);
  }
}
void versal_cips_v3_4_0_tlm :: rwd_tlmmodule_init() {
}

void versal_cips_v3_4_0_tlm :: enable_sim_qdma() {
  xsc::common_cpp::properties model_param_props;
  model_param_props.addBool("C_M_AXIMM_1_ENABLE", "true");
  model_param_props.addBool("C_M_AXIMM_2_ENABLE", "false");
  model_param_props.addLong("C_M_AXIMM_2_BURST_LEN","16");
  model_param_props.addLong("C_M_AXIMM_2_ID_WIDTH", "1");
  model_param_props.addLong("C_M_AXIMM_2_ADDR_WIDTH", "32");
  model_param_props.addLong("C_M_AXIMM_2_DATA_WIDTH", "32");
  model_param_props.addLong("C_M_AXIMM_2_AWUSER_WIDTH", "1");
  model_param_props.addLong("C_M_AXIMM_2_ARUSER_WIDTH", "1");
  model_param_props.addLong("C_M_AXIMM_2_WUSER_WIDTH", "1");
  model_param_props.addLong("C_M_AXIMM_2_RUSER_WIDTH", "1");
  model_param_props.addLong("C_M_AXIMM_2_BUSER_WIDTH", "1");
  model_param_props.addLong("C_M_AXIMM_1_BURST_LEN", "16");
  model_param_props.addLong("C_M_AXIMM_1_ID_WIDTH", "1");
  model_param_props.addLong("C_M_AXIMM_1_ADDR_WIDTH", "38");
  model_param_props.addLong("C_M_AXIMM_1_DATA_WIDTH", "32");
  model_param_props.addLong("C_M_AXIMM_1_AWUSER_WIDTH", "32");
  model_param_props.addLong("C_M_AXIMM_1_ARUSER_WIDTH", "32");
  model_param_props.addLong("C_M_AXIMM_1_WUSER_WIDTH", "1");
  model_param_props.addLong("C_M_AXIMM_1_RUSER_WIDTH", "1");
  model_param_props.addLong("C_M_AXIMM_1_BUSER_WIDTH", "1");
  model_param_props.addLong("C_M_AXICTRL_ADDR_WIDTH", "64");
  std::string ctrl_data_width = std::to_string(128);
  model_param_props.addLong("C_M_AXICTRL_DATA_WIDTH", ctrl_data_width.c_str());
  model_param_props.addLong("C_M_AXICTRL_TRANSACTIONS_NUM", "4");
  model_param_props.addLong("C_M_AXIMM_BURST_LEN", "16");
  model_param_props.addLong("C_M_AXIMM_ID_WIDTH", "1");
  model_param_props.addLong("C_M_AXIMM_ADDR_WIDTH", "64");
  std::string mm_data_width = std::to_string(128);
  model_param_props.addLong("C_M_AXIMM_DATA_WIDTH", mm_data_width.c_str());
  model_param_props.addLong("C_M_AXIMM_AWUSER_WIDTH", "32");
  model_param_props.addLong("C_M_AXIMM_ARUSER_WIDTH","32");
  model_param_props.addLong("C_M_AXIMM_WUSER_WIDTH","1");
  model_param_props.addLong("C_M_AXIMM_RUSER_WIDTH","1");
  model_param_props.addLong("C_M_AXIMM_BUSER_WIDTH","1");
  model_param_props.addBitString("C_M_AXIMM_2_TARGET_SLAVE_BASE_ADDR", "01000000000000000000000000000000",32);
  model_param_props.addBitString("C_M_AXIMM_1_TARGET_SLAVE_BASE_ADDR", "01000000000000000000000000000000",32);
  model_param_props.addBitString("C_M_AXICTRL_START_DATA_VALUE", "10101010000000000000000000000000",32);
  model_param_props.addBitString("C_M_AXICTRL_TARGET_SLAVE_BASE_ADDR", "01000000000000000000000000000000",32);
  model_param_props.addBitString("C_M_AXIMM_TARGET_SLAVE_BASE_ADDR", "01000000000000000000000000000000",32);
  model_param_props.addBool("C_M_AXIMM_AUX_ENABLE", "false");
  model_param_props.addBool("C_STM_ITF_ENABLE", "false");
  model_param_props.addBool("C_S_AXIMM_ENABLE", "false");
  model_param_props.addLong("C_S_AXIMM_ADDR_WIDTH","0");
  model_param_props.addLong("C_S_AXIMM_WDATA_WIDTH","0");
  model_param_props.addLong("C_M_AXIMM_AUX_ADDR_WIDTH","32");
  model_param_props.addLong("C_M_AXIMM_AUX_DATA_WIDTH", "32");
  model_param_props.addLong("C_M_AXIS_TDATA_WIDTH", "32");
  model_param_props.addLong("C_S_AXIS_TDATA_WIDTH", "32");
  



  


  m_sim_qdma_ptr = new sim_qdma("sim_qdma", model_param_props,&bar_info);
  //m_sim_qdma_ptr = new sim_qdma("sim_qdma", model_param_props);
  dummy_noc_pcie_sig.write(true);
  m_sim_qdma_ptr->m_aximm_aresetn.bind(dummy_noc_pcie_sig);
  m_sim_qdma_ptr->m_axictrl_aresetn.bind(dummy_noc_pcie_sig);
  m_sim_qdma_ptr->usr_irq_req(dummy_usr_irq_req);
  m_sim_qdma_ptr->usr_irq_ack(dummy_usr_irq_ack);

  xsc::common_cpp::properties imp_prop;
  imp_prop.addLong("C_NUM_SI","2");
  imp_prop.addLong("C_NUM_MI","1");
  imp_prop.addLong("C_ADDR_RANGES","1");

  std::string width = std::to_string(128);
  imp_prop.addLong("C_M00_AXI_DATA_WIDTH",width.c_str());
  imp_prop.addLong("C_M00_AXI_ADDR_WIDTH","64");
  imp_prop.addLong("C_M00_A00_BASE_ADDRESS","0x0");
  imp_prop.addLong("C_M00_A00_ADDR_RANGE","0xFFFFFFFFFFFFFFFF");

  imp_prop.addLong("C_S00_AXI_DATA_WIDTH",width.c_str());
  imp_prop.addLong("C_S00_AXI_ADDR_WIDTH","64");
  imp_prop.addLong("C_S01_AXI_DATA_WIDTH",width.c_str());
  imp_prop.addLong("C_S01_AXI_ADDR_WIDTH","64");

  imp_prop.addLong("C_M00_S00_CONNECTIVITY","1");
  imp_prop.addLong("C_M00_S01_CONNECTIVITY","1");
  sim_qdma_interconnect = new xtlm_simple_interconnect_model("SIM_XDMA_interconnect",imp_prop);
  sim_qdma_interconnect->initiator_wr_sockets[0]->bind(*CPM_PCIE_NOC_0_tlm_aximm_write_socket);
  sim_qdma_interconnect->initiator_rd_sockets[0]->bind(*CPM_PCIE_NOC_0_tlm_aximm_read_socket);
  m_sim_qdma_ptr->initiator_ctrl_rd_socket->bind(*sim_qdma_interconnect->target_rd_sockets[1]);
  m_sim_qdma_ptr->initiator_ctrl_wr_socket->bind(*sim_qdma_interconnect->target_wr_sockets[1]);
  m_sim_qdma_ptr->initiator_mm_wr_socket->bind(*sim_qdma_interconnect->target_wr_sockets[0]);
  m_sim_qdma_ptr->initiator_mm_rd_socket->bind(*sim_qdma_interconnect->target_rd_sockets[0]);


}
template <int IN_WIDTH, int OUT_WIDTH>
rptlm2xtlm_converter<IN_WIDTH, OUT_WIDTH>::rptlm2xtlm_converter(sc_module_name name):sc_module(name)
  ,target_socket("target_socket")
  ,wr_socket("init_wr_socket",OUT_WIDTH)
  ,rd_socket("init_rd_socket",OUT_WIDTH)
  ,m_btrans_conv("b_transport_converter")
  ,xtlm_bridge("tlm2xtlmbridge")
{
  target_socket.bind(m_btrans_conv.target_socket);
  m_btrans_conv.initiator_socket.bind(xtlm_bridge.target_socket);
  xtlm_bridge.rd_socket->bind(rd_socket);
  xtlm_bridge.wr_socket->bind(wr_socket);
}
template <int IN_WIDTH, int OUT_WIDTH>
void rptlm2xtlm_converter<IN_WIDTH, OUT_WIDTH>::registerUserExtensionHandlerCallback(
  void (*callback)(xtlm::aximm_payload*,
    const tlm::tlm_generic_payload*)) {
  xtlm_bridge.registerUserExtensionHandlerCallback(callback);
}
template <int IN_WIDTH, int OUT_WIDTH>
void rptlm2xtlm_converter<IN_WIDTH, OUT_WIDTH>::before_end_of_elaboration() {
  m_btrans_conv.clk(clk);
}

void versal_cips_v3_4_0_tlm :: before_end_of_elaboration() {
    {
        m_rp_bridge_pmc_npi_aie2 = NULL;
    }
    m_zynq3_tlm_model->tie_off();
}

void versal_cips_v3_4_0_tlm :: end_of_elaboration() {
}
void versal_cips_v3_4_0_tlm :: XRAM_connections() {

  unsigned int intf_count = 0;

if(intf_count > 0) {
  unsigned int count = 0;
  std::stringstream ss;
  ss << intf_count;
  std::string str = ss.str();

  std::string intr_addr_width[4] = {
    "C_S00_AXI_ADDR_WIDTH",    
    "C_S01_AXI_ADDR_WIDTH",    
    "C_S02_AXI_ADDR_WIDTH",    
    "C_S03_AXI_ADDR_WIDTH" };    

  std::string intr_datawidth[4] = {
    "C_S00_AXI_DATA_WIDTH",
    "C_S01_AXI_DATA_WIDTH",
    "C_S02_AXI_DATA_WIDTH",
    "C_S03_AXI_DATA_WIDTH" };

  std::string intf_connectivity[4] = {
    "C_M00_S00_CONNECTIVITY",
    "C_M00_S01_CONNECTIVITY",
    "C_M00_S02_CONNECTIVITY",
    "C_M00_S03_CONNECTIVITY" };

  xsc::common_cpp::properties imp_prop;
  imp_prop.addLong("C_NUM_SI",str.c_str());
  imp_prop.addLong("C_NUM_MI","1");
  imp_prop.addLong("C_ADDR_RANGES","1");

  std::string width;

  imp_prop.addLong("C_M00_AXI_DATA_WIDTH","32");
  imp_prop.addLong("C_M00_AXI_ADDR_WIDTH","64");
  imp_prop.addLong("C_M00_A00_BASE_ADDRESS","0x0");
  imp_prop.addLong("C_M00_A00_ADDR_RANGE","0xFFFFFFFFFFFFFFFF");

  xram_interconnect = new xtlm_simple_interconnect_model("XRAM_interconnect",imp_prop);
  count =0;
  
  m_xtlm2tlm_10 = new xtlm::xaximm_xtlm2tlm_t<32,32>("XRAM_xtlm2tlm_bg");
  xram_interconnect->initiator_wr_sockets[0]->bind(*m_xtlm2tlm_10->wr_socket);
  xram_interconnect->initiator_rd_sockets[0]->bind(*m_xtlm2tlm_10->rd_socket);
  m_zynq3_tlm_model->s_axi_xram->bind(m_xtlm2tlm_10->initiator_socket);

} else {
   xram_interconnect = 0;
   m_xtlm2tlm_10 = 0;
}

}




namespace cips_tlm {
    void export_simulation() {
        static bool call = false;
        if(!call) {
            call = true;
            auto cosim_path = std::getenv("COSIM_MACHINE_PATH");
            if(cosim_path)  // return if env is already set
                return;
            const char* unix_sock = "unix:./qemu-rport-_pl@0";
            int ret = std::system("ls qemu-rport-_pl@0");
            if(ret != 0){
                return;
            }
            setenv("COSIM_MACHINE_PATH",unix_sock,0);
    
            std::string noc_mem_file = "noc_memory_config.txt";
            std::ifstream fin(noc_mem_file.c_str(), std::ios::in);
            if(!fin.good()) {
                return;
            }
            setenv("NOCSIM_MULTI_DRAM_FILE",noc_mem_file.c_str(),0);
        }
    }
    void setup_for_mcpath() {
        auto mcpath_env = std::getenv("QEMU_MACHINE_PATH");
        if(mcpath_env == nullptr)
            return;
        std::string noc_org_file_path(mcpath_env);
        noc_org_file_path.append("/noc_memory_config.txt");
        std::ifstream noc_org_file(noc_org_file_path.c_str());
        if (!noc_org_file.is_open())
            return;
        std::string line;
        std::ofstream new_noc_file("noc_memory_config_reloc.txt");
        if(!new_noc_file.is_open())
            return;
        while (std::getline(noc_org_file, line))
        {
            new_noc_file<< mcpath_env<< "/" <<line<<std::endl ;
        }
        noc_org_file.close();
        new_noc_file.close();
        std::string noc_full_path("noc_memory_config_reloc.txt");
        setenv("NOCSIM_MULTI_DRAM_FILE",noc_full_path.c_str(),1);
    }
}
