#ifndef IP_DPSS_VCK190_PT_VERSAL_CIPS_0_0_H_
#define IP_DPSS_VCK190_PT_VERSAL_CIPS_0_0_H_

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


#ifndef XTLM
#include "xtlm.h"
#endif
#ifndef SYSTEMC_INCLUDED
#include <systemc>
#endif

#if defined(_MSC_VER)
#define DllExport __declspec(dllexport)
#elif defined(__GNUC__)
#define DllExport __attribute__ ((visibility("default")))
#else
#define DllExport
#endif

#include "dpss_vck190_pt_versal_cips_0_0_sc.h"




#ifdef XILINX_SIMULATOR
class DllExport dpss_vck190_pt_versal_cips_0_0 : public dpss_vck190_pt_versal_cips_0_0_sc
{
public:

  dpss_vck190_pt_versal_cips_0_0(const sc_core::sc_module_name& nm);
  virtual ~dpss_vck190_pt_versal_cips_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_out< bool > pl0_ref_clk;
  sc_core::sc_out< bool > pl1_ref_clk;
  sc_core::sc_out< bool > pl0_resetn;
  sc_core::sc_in< bool > m_axi_fpd_aclk;
  sc_core::sc_in< bool > m_axi_lpd_aclk;
  sc_core::sc_out< bool > fpd_cci_noc_axi0_clk;
  sc_core::sc_out< bool > fpd_cci_noc_axi1_clk;
  sc_core::sc_out< bool > fpd_cci_noc_axi2_clk;
  sc_core::sc_out< bool > fpd_cci_noc_axi3_clk;
  sc_core::sc_in< bool > pl_ps_irq0;
  sc_core::sc_in< bool > pl_ps_irq1;
  sc_core::sc_in< bool > pl_ps_irq2;
  sc_core::sc_in< bool > pl_ps_irq3;
  sc_core::sc_in< bool > pl_ps_irq4;
  sc_core::sc_in< bool > pl_ps_irq5;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_awid;
  sc_core::sc_out< sc_dt::sc_bv<44> > M_AXI_FPD_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > M_AXI_FPD_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_FPD_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > M_AXI_FPD_awburst;
  sc_core::sc_out< bool > M_AXI_FPD_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_FPD_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_FPD_awprot;
  sc_core::sc_out< bool > M_AXI_FPD_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_awuser;
  sc_core::sc_in< bool > M_AXI_FPD_awready;
  sc_core::sc_out< bool > M_AXI_FPD_wlast;
  sc_core::sc_out< bool > M_AXI_FPD_wvalid;
  sc_core::sc_in< bool > M_AXI_FPD_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > M_AXI_FPD_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > M_AXI_FPD_bresp;
  sc_core::sc_in< bool > M_AXI_FPD_bvalid;
  sc_core::sc_out< bool > M_AXI_FPD_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_arid;
  sc_core::sc_out< sc_dt::sc_bv<44> > M_AXI_FPD_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > M_AXI_FPD_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_FPD_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > M_AXI_FPD_arburst;
  sc_core::sc_out< bool > M_AXI_FPD_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_FPD_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_FPD_arprot;
  sc_core::sc_out< bool > M_AXI_FPD_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_aruser;
  sc_core::sc_in< bool > M_AXI_FPD_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > M_AXI_FPD_rid;
  sc_core::sc_in< sc_dt::sc_bv<2> > M_AXI_FPD_rresp;
  sc_core::sc_in< bool > M_AXI_FPD_rlast;
  sc_core::sc_in< bool > M_AXI_FPD_rvalid;
  sc_core::sc_out< bool > M_AXI_FPD_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_FPD_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_FPD_arqos;
  sc_core::sc_out< sc_dt::sc_bv<128> > M_AXI_FPD_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_wstrb;
  sc_core::sc_in< sc_dt::sc_bv<128> > M_AXI_FPD_rdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_awid;
  sc_core::sc_out< sc_dt::sc_bv<44> > M_AXI_LPD_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > M_AXI_LPD_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_LPD_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > M_AXI_LPD_awburst;
  sc_core::sc_out< bool > M_AXI_LPD_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_LPD_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_LPD_awprot;
  sc_core::sc_out< bool > M_AXI_LPD_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_awuser;
  sc_core::sc_in< bool > M_AXI_LPD_awready;
  sc_core::sc_out< bool > M_AXI_LPD_wlast;
  sc_core::sc_out< bool > M_AXI_LPD_wvalid;
  sc_core::sc_in< bool > M_AXI_LPD_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > M_AXI_LPD_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > M_AXI_LPD_bresp;
  sc_core::sc_in< bool > M_AXI_LPD_bvalid;
  sc_core::sc_out< bool > M_AXI_LPD_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_arid;
  sc_core::sc_out< sc_dt::sc_bv<44> > M_AXI_LPD_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > M_AXI_LPD_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_LPD_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > M_AXI_LPD_arburst;
  sc_core::sc_out< bool > M_AXI_LPD_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_LPD_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_LPD_arprot;
  sc_core::sc_out< bool > M_AXI_LPD_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_aruser;
  sc_core::sc_in< bool > M_AXI_LPD_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > M_AXI_LPD_rid;
  sc_core::sc_in< sc_dt::sc_bv<2> > M_AXI_LPD_rresp;
  sc_core::sc_in< bool > M_AXI_LPD_rlast;
  sc_core::sc_in< bool > M_AXI_LPD_rvalid;
  sc_core::sc_out< bool > M_AXI_LPD_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_LPD_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_LPD_arqos;
  sc_core::sc_out< sc_dt::sc_bv<128> > M_AXI_LPD_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_wstrb;
  sc_core::sc_in< sc_dt::sc_bv<128> > M_AXI_LPD_rdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_0_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_0_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_0_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_0_awburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_0_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_0_awprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_0_awuser;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_CCI_NOC_0_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > FPD_CCI_NOC_0_wuser;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_wlast;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_wvalid;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_0_bresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_bvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_0_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_0_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_0_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_0_arburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_0_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_0_arprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_0_aruser;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_CCI_NOC_0_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_0_rresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_rlast;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_rvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_0_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_0_arqos;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_1_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_1_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_1_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_1_awburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_1_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_1_awprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_1_awuser;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_CCI_NOC_1_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > FPD_CCI_NOC_1_wuser;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_wlast;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_wvalid;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_1_bresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_bvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_1_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_1_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_1_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_1_arburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_1_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_1_arprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_1_aruser;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_CCI_NOC_1_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_1_rresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_rlast;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_rvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_1_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_1_arqos;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_2_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_2_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_2_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_2_awburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_2_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_2_awprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_2_awuser;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_CCI_NOC_2_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > FPD_CCI_NOC_2_wuser;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_wlast;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_wvalid;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_2_bresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_bvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_2_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_2_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_2_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_2_arburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_2_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_2_arprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_2_aruser;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_CCI_NOC_2_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_2_rresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_rlast;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_rvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_2_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_2_arqos;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_3_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_3_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_3_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_3_awburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_3_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_3_awprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_3_awuser;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_CCI_NOC_3_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > FPD_CCI_NOC_3_wuser;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_wlast;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_wvalid;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_3_bresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_bvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_3_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_3_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_3_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_3_arburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_3_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_3_arprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_3_aruser;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_CCI_NOC_3_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_3_rresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_rlast;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_rvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_3_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_3_arqos;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_xtlm2pin_t<128,44,16,16,1,1,16,1>* mp_M_AXI_FPD_transactor;
  xtlm::xaximm_xtlm2pin_t<128,44,16,16,1,1,16,1>* mp_M_AXI_LPD_transactor;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>* mp_FPD_CCI_NOC_0_transactor;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>* mp_FPD_CCI_NOC_1_transactor;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>* mp_FPD_CCI_NOC_2_transactor;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>* mp_FPD_CCI_NOC_3_transactor;

};
#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
class DllExport dpss_vck190_pt_versal_cips_0_0 : public dpss_vck190_pt_versal_cips_0_0_sc
{
public:

  dpss_vck190_pt_versal_cips_0_0(const sc_core::sc_module_name& nm);
  virtual ~dpss_vck190_pt_versal_cips_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_out< bool > pl0_ref_clk;
  sc_core::sc_out< bool > pl1_ref_clk;
  sc_core::sc_out< bool > pl0_resetn;
  sc_core::sc_in< bool > m_axi_fpd_aclk;
  sc_core::sc_in< bool > m_axi_lpd_aclk;
  sc_core::sc_out< bool > fpd_cci_noc_axi0_clk;
  sc_core::sc_out< bool > fpd_cci_noc_axi1_clk;
  sc_core::sc_out< bool > fpd_cci_noc_axi2_clk;
  sc_core::sc_out< bool > fpd_cci_noc_axi3_clk;
  sc_core::sc_in< bool > pl_ps_irq0;
  sc_core::sc_in< bool > pl_ps_irq1;
  sc_core::sc_in< bool > pl_ps_irq2;
  sc_core::sc_in< bool > pl_ps_irq3;
  sc_core::sc_in< bool > pl_ps_irq4;
  sc_core::sc_in< bool > pl_ps_irq5;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_awid;
  sc_core::sc_out< sc_dt::sc_bv<44> > M_AXI_FPD_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > M_AXI_FPD_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_FPD_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > M_AXI_FPD_awburst;
  sc_core::sc_out< bool > M_AXI_FPD_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_FPD_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_FPD_awprot;
  sc_core::sc_out< bool > M_AXI_FPD_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_awuser;
  sc_core::sc_in< bool > M_AXI_FPD_awready;
  sc_core::sc_out< bool > M_AXI_FPD_wlast;
  sc_core::sc_out< bool > M_AXI_FPD_wvalid;
  sc_core::sc_in< bool > M_AXI_FPD_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > M_AXI_FPD_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > M_AXI_FPD_bresp;
  sc_core::sc_in< bool > M_AXI_FPD_bvalid;
  sc_core::sc_out< bool > M_AXI_FPD_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_arid;
  sc_core::sc_out< sc_dt::sc_bv<44> > M_AXI_FPD_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > M_AXI_FPD_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_FPD_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > M_AXI_FPD_arburst;
  sc_core::sc_out< bool > M_AXI_FPD_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_FPD_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_FPD_arprot;
  sc_core::sc_out< bool > M_AXI_FPD_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_aruser;
  sc_core::sc_in< bool > M_AXI_FPD_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > M_AXI_FPD_rid;
  sc_core::sc_in< sc_dt::sc_bv<2> > M_AXI_FPD_rresp;
  sc_core::sc_in< bool > M_AXI_FPD_rlast;
  sc_core::sc_in< bool > M_AXI_FPD_rvalid;
  sc_core::sc_out< bool > M_AXI_FPD_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_FPD_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_FPD_arqos;
  sc_core::sc_out< sc_dt::sc_bv<128> > M_AXI_FPD_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_wstrb;
  sc_core::sc_in< sc_dt::sc_bv<128> > M_AXI_FPD_rdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_awid;
  sc_core::sc_out< sc_dt::sc_bv<44> > M_AXI_LPD_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > M_AXI_LPD_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_LPD_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > M_AXI_LPD_awburst;
  sc_core::sc_out< bool > M_AXI_LPD_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_LPD_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_LPD_awprot;
  sc_core::sc_out< bool > M_AXI_LPD_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_awuser;
  sc_core::sc_in< bool > M_AXI_LPD_awready;
  sc_core::sc_out< bool > M_AXI_LPD_wlast;
  sc_core::sc_out< bool > M_AXI_LPD_wvalid;
  sc_core::sc_in< bool > M_AXI_LPD_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > M_AXI_LPD_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > M_AXI_LPD_bresp;
  sc_core::sc_in< bool > M_AXI_LPD_bvalid;
  sc_core::sc_out< bool > M_AXI_LPD_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_arid;
  sc_core::sc_out< sc_dt::sc_bv<44> > M_AXI_LPD_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > M_AXI_LPD_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_LPD_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > M_AXI_LPD_arburst;
  sc_core::sc_out< bool > M_AXI_LPD_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_LPD_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_LPD_arprot;
  sc_core::sc_out< bool > M_AXI_LPD_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_aruser;
  sc_core::sc_in< bool > M_AXI_LPD_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > M_AXI_LPD_rid;
  sc_core::sc_in< sc_dt::sc_bv<2> > M_AXI_LPD_rresp;
  sc_core::sc_in< bool > M_AXI_LPD_rlast;
  sc_core::sc_in< bool > M_AXI_LPD_rvalid;
  sc_core::sc_out< bool > M_AXI_LPD_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_LPD_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_LPD_arqos;
  sc_core::sc_out< sc_dt::sc_bv<128> > M_AXI_LPD_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_wstrb;
  sc_core::sc_in< sc_dt::sc_bv<128> > M_AXI_LPD_rdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_0_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_0_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_0_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_0_awburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_0_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_0_awprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_0_awuser;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_CCI_NOC_0_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > FPD_CCI_NOC_0_wuser;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_wlast;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_wvalid;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_0_bresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_bvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_0_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_0_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_0_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_0_arburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_0_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_0_arprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_0_aruser;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_CCI_NOC_0_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_0_rresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_rlast;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_rvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_0_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_0_arqos;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_1_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_1_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_1_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_1_awburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_1_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_1_awprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_1_awuser;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_CCI_NOC_1_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > FPD_CCI_NOC_1_wuser;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_wlast;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_wvalid;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_1_bresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_bvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_1_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_1_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_1_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_1_arburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_1_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_1_arprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_1_aruser;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_CCI_NOC_1_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_1_rresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_rlast;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_rvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_1_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_1_arqos;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_2_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_2_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_2_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_2_awburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_2_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_2_awprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_2_awuser;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_CCI_NOC_2_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > FPD_CCI_NOC_2_wuser;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_wlast;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_wvalid;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_2_bresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_bvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_2_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_2_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_2_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_2_arburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_2_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_2_arprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_2_aruser;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_CCI_NOC_2_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_2_rresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_rlast;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_rvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_2_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_2_arqos;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_3_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_3_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_3_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_3_awburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_3_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_3_awprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_3_awuser;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_CCI_NOC_3_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > FPD_CCI_NOC_3_wuser;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_wlast;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_wvalid;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_3_bresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_bvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_3_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_3_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_3_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_3_arburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_3_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_3_arprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_3_aruser;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_CCI_NOC_3_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_3_rresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_rlast;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_rvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_3_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_3_arqos;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_xtlm2pin_t<128,44,16,16,1,1,16,1>* mp_M_AXI_FPD_transactor;
  xtlm::xaximm_xtlm2pin_t<128,44,16,16,1,1,16,1>* mp_M_AXI_LPD_transactor;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>* mp_FPD_CCI_NOC_0_transactor;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>* mp_FPD_CCI_NOC_1_transactor;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>* mp_FPD_CCI_NOC_2_transactor;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>* mp_FPD_CCI_NOC_3_transactor;

};
#endif // XM_SYSTEMC




#ifdef RIVIERA
class DllExport dpss_vck190_pt_versal_cips_0_0 : public dpss_vck190_pt_versal_cips_0_0_sc
{
public:

  dpss_vck190_pt_versal_cips_0_0(const sc_core::sc_module_name& nm);
  virtual ~dpss_vck190_pt_versal_cips_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_out< bool > pl0_ref_clk;
  sc_core::sc_out< bool > pl1_ref_clk;
  sc_core::sc_out< bool > pl0_resetn;
  sc_core::sc_in< bool > m_axi_fpd_aclk;
  sc_core::sc_in< bool > m_axi_lpd_aclk;
  sc_core::sc_out< bool > fpd_cci_noc_axi0_clk;
  sc_core::sc_out< bool > fpd_cci_noc_axi1_clk;
  sc_core::sc_out< bool > fpd_cci_noc_axi2_clk;
  sc_core::sc_out< bool > fpd_cci_noc_axi3_clk;
  sc_core::sc_in< bool > pl_ps_irq0;
  sc_core::sc_in< bool > pl_ps_irq1;
  sc_core::sc_in< bool > pl_ps_irq2;
  sc_core::sc_in< bool > pl_ps_irq3;
  sc_core::sc_in< bool > pl_ps_irq4;
  sc_core::sc_in< bool > pl_ps_irq5;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_awid;
  sc_core::sc_out< sc_dt::sc_bv<44> > M_AXI_FPD_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > M_AXI_FPD_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_FPD_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > M_AXI_FPD_awburst;
  sc_core::sc_out< bool > M_AXI_FPD_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_FPD_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_FPD_awprot;
  sc_core::sc_out< bool > M_AXI_FPD_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_awuser;
  sc_core::sc_in< bool > M_AXI_FPD_awready;
  sc_core::sc_out< bool > M_AXI_FPD_wlast;
  sc_core::sc_out< bool > M_AXI_FPD_wvalid;
  sc_core::sc_in< bool > M_AXI_FPD_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > M_AXI_FPD_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > M_AXI_FPD_bresp;
  sc_core::sc_in< bool > M_AXI_FPD_bvalid;
  sc_core::sc_out< bool > M_AXI_FPD_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_arid;
  sc_core::sc_out< sc_dt::sc_bv<44> > M_AXI_FPD_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > M_AXI_FPD_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_FPD_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > M_AXI_FPD_arburst;
  sc_core::sc_out< bool > M_AXI_FPD_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_FPD_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_FPD_arprot;
  sc_core::sc_out< bool > M_AXI_FPD_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_aruser;
  sc_core::sc_in< bool > M_AXI_FPD_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > M_AXI_FPD_rid;
  sc_core::sc_in< sc_dt::sc_bv<2> > M_AXI_FPD_rresp;
  sc_core::sc_in< bool > M_AXI_FPD_rlast;
  sc_core::sc_in< bool > M_AXI_FPD_rvalid;
  sc_core::sc_out< bool > M_AXI_FPD_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_FPD_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_FPD_arqos;
  sc_core::sc_out< sc_dt::sc_bv<128> > M_AXI_FPD_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_wstrb;
  sc_core::sc_in< sc_dt::sc_bv<128> > M_AXI_FPD_rdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_awid;
  sc_core::sc_out< sc_dt::sc_bv<44> > M_AXI_LPD_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > M_AXI_LPD_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_LPD_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > M_AXI_LPD_awburst;
  sc_core::sc_out< bool > M_AXI_LPD_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_LPD_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_LPD_awprot;
  sc_core::sc_out< bool > M_AXI_LPD_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_awuser;
  sc_core::sc_in< bool > M_AXI_LPD_awready;
  sc_core::sc_out< bool > M_AXI_LPD_wlast;
  sc_core::sc_out< bool > M_AXI_LPD_wvalid;
  sc_core::sc_in< bool > M_AXI_LPD_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > M_AXI_LPD_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > M_AXI_LPD_bresp;
  sc_core::sc_in< bool > M_AXI_LPD_bvalid;
  sc_core::sc_out< bool > M_AXI_LPD_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_arid;
  sc_core::sc_out< sc_dt::sc_bv<44> > M_AXI_LPD_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > M_AXI_LPD_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_LPD_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > M_AXI_LPD_arburst;
  sc_core::sc_out< bool > M_AXI_LPD_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_LPD_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_LPD_arprot;
  sc_core::sc_out< bool > M_AXI_LPD_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_aruser;
  sc_core::sc_in< bool > M_AXI_LPD_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > M_AXI_LPD_rid;
  sc_core::sc_in< sc_dt::sc_bv<2> > M_AXI_LPD_rresp;
  sc_core::sc_in< bool > M_AXI_LPD_rlast;
  sc_core::sc_in< bool > M_AXI_LPD_rvalid;
  sc_core::sc_out< bool > M_AXI_LPD_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_LPD_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_LPD_arqos;
  sc_core::sc_out< sc_dt::sc_bv<128> > M_AXI_LPD_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_wstrb;
  sc_core::sc_in< sc_dt::sc_bv<128> > M_AXI_LPD_rdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_0_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_0_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_0_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_0_awburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_0_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_0_awprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_0_awuser;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_CCI_NOC_0_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > FPD_CCI_NOC_0_wuser;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_wlast;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_wvalid;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_0_bresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_bvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_0_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_0_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_0_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_0_arburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_0_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_0_arprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_0_aruser;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_CCI_NOC_0_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_0_rresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_rlast;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_rvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_0_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_0_arqos;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_1_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_1_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_1_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_1_awburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_1_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_1_awprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_1_awuser;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_CCI_NOC_1_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > FPD_CCI_NOC_1_wuser;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_wlast;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_wvalid;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_1_bresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_bvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_1_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_1_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_1_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_1_arburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_1_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_1_arprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_1_aruser;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_CCI_NOC_1_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_1_rresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_rlast;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_rvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_1_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_1_arqos;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_2_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_2_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_2_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_2_awburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_2_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_2_awprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_2_awuser;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_CCI_NOC_2_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > FPD_CCI_NOC_2_wuser;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_wlast;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_wvalid;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_2_bresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_bvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_2_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_2_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_2_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_2_arburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_2_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_2_arprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_2_aruser;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_CCI_NOC_2_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_2_rresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_rlast;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_rvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_2_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_2_arqos;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_3_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_3_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_3_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_3_awburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_3_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_3_awprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_3_awuser;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_CCI_NOC_3_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > FPD_CCI_NOC_3_wuser;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_wlast;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_wvalid;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_3_bresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_bvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_3_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_3_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_3_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_3_arburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_3_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_3_arprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_3_aruser;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_CCI_NOC_3_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_3_rresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_rlast;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_rvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_3_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_3_arqos;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_xtlm2pin_t<128,44,16,16,1,1,16,1>* mp_M_AXI_FPD_transactor;
  xtlm::xaximm_xtlm2pin_t<128,44,16,16,1,1,16,1>* mp_M_AXI_LPD_transactor;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>* mp_FPD_CCI_NOC_0_transactor;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>* mp_FPD_CCI_NOC_1_transactor;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>* mp_FPD_CCI_NOC_2_transactor;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>* mp_FPD_CCI_NOC_3_transactor;

};
#endif // RIVIERA




#ifdef VCSSYSTEMC
#include "utils/xtlm_aximm_initiator_stub.h"

class DllExport dpss_vck190_pt_versal_cips_0_0 : public dpss_vck190_pt_versal_cips_0_0_sc
{
public:

  dpss_vck190_pt_versal_cips_0_0(const sc_core::sc_module_name& nm);
  virtual ~dpss_vck190_pt_versal_cips_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_out< bool > pl0_ref_clk;
  sc_core::sc_out< bool > pl1_ref_clk;
  sc_core::sc_out< bool > pl0_resetn;
  sc_core::sc_in< bool > m_axi_fpd_aclk;
  sc_core::sc_in< bool > m_axi_lpd_aclk;
  sc_core::sc_out< bool > fpd_cci_noc_axi0_clk;
  sc_core::sc_out< bool > fpd_cci_noc_axi1_clk;
  sc_core::sc_out< bool > fpd_cci_noc_axi2_clk;
  sc_core::sc_out< bool > fpd_cci_noc_axi3_clk;
  sc_core::sc_in< bool > pl_ps_irq0;
  sc_core::sc_in< bool > pl_ps_irq1;
  sc_core::sc_in< bool > pl_ps_irq2;
  sc_core::sc_in< bool > pl_ps_irq3;
  sc_core::sc_in< bool > pl_ps_irq4;
  sc_core::sc_in< bool > pl_ps_irq5;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_awid;
  sc_core::sc_out< sc_dt::sc_bv<44> > M_AXI_FPD_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > M_AXI_FPD_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_FPD_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > M_AXI_FPD_awburst;
  sc_core::sc_out< bool > M_AXI_FPD_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_FPD_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_FPD_awprot;
  sc_core::sc_out< bool > M_AXI_FPD_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_awuser;
  sc_core::sc_in< bool > M_AXI_FPD_awready;
  sc_core::sc_out< bool > M_AXI_FPD_wlast;
  sc_core::sc_out< bool > M_AXI_FPD_wvalid;
  sc_core::sc_in< bool > M_AXI_FPD_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > M_AXI_FPD_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > M_AXI_FPD_bresp;
  sc_core::sc_in< bool > M_AXI_FPD_bvalid;
  sc_core::sc_out< bool > M_AXI_FPD_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_arid;
  sc_core::sc_out< sc_dt::sc_bv<44> > M_AXI_FPD_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > M_AXI_FPD_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_FPD_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > M_AXI_FPD_arburst;
  sc_core::sc_out< bool > M_AXI_FPD_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_FPD_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_FPD_arprot;
  sc_core::sc_out< bool > M_AXI_FPD_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_aruser;
  sc_core::sc_in< bool > M_AXI_FPD_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > M_AXI_FPD_rid;
  sc_core::sc_in< sc_dt::sc_bv<2> > M_AXI_FPD_rresp;
  sc_core::sc_in< bool > M_AXI_FPD_rlast;
  sc_core::sc_in< bool > M_AXI_FPD_rvalid;
  sc_core::sc_out< bool > M_AXI_FPD_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_FPD_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_FPD_arqos;
  sc_core::sc_out< sc_dt::sc_bv<128> > M_AXI_FPD_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_wstrb;
  sc_core::sc_in< sc_dt::sc_bv<128> > M_AXI_FPD_rdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_awid;
  sc_core::sc_out< sc_dt::sc_bv<44> > M_AXI_LPD_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > M_AXI_LPD_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_LPD_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > M_AXI_LPD_awburst;
  sc_core::sc_out< bool > M_AXI_LPD_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_LPD_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_LPD_awprot;
  sc_core::sc_out< bool > M_AXI_LPD_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_awuser;
  sc_core::sc_in< bool > M_AXI_LPD_awready;
  sc_core::sc_out< bool > M_AXI_LPD_wlast;
  sc_core::sc_out< bool > M_AXI_LPD_wvalid;
  sc_core::sc_in< bool > M_AXI_LPD_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > M_AXI_LPD_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > M_AXI_LPD_bresp;
  sc_core::sc_in< bool > M_AXI_LPD_bvalid;
  sc_core::sc_out< bool > M_AXI_LPD_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_arid;
  sc_core::sc_out< sc_dt::sc_bv<44> > M_AXI_LPD_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > M_AXI_LPD_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_LPD_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > M_AXI_LPD_arburst;
  sc_core::sc_out< bool > M_AXI_LPD_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_LPD_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_LPD_arprot;
  sc_core::sc_out< bool > M_AXI_LPD_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_aruser;
  sc_core::sc_in< bool > M_AXI_LPD_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > M_AXI_LPD_rid;
  sc_core::sc_in< sc_dt::sc_bv<2> > M_AXI_LPD_rresp;
  sc_core::sc_in< bool > M_AXI_LPD_rlast;
  sc_core::sc_in< bool > M_AXI_LPD_rvalid;
  sc_core::sc_out< bool > M_AXI_LPD_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_LPD_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_LPD_arqos;
  sc_core::sc_out< sc_dt::sc_bv<128> > M_AXI_LPD_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_wstrb;
  sc_core::sc_in< sc_dt::sc_bv<128> > M_AXI_LPD_rdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_0_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_0_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_0_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_0_awburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_0_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_0_awprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_0_awuser;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_CCI_NOC_0_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > FPD_CCI_NOC_0_wuser;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_wlast;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_wvalid;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_0_bresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_bvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_0_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_0_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_0_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_0_arburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_0_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_0_arprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_0_aruser;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_CCI_NOC_0_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_0_rresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_rlast;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_rvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_0_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_0_arqos;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_1_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_1_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_1_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_1_awburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_1_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_1_awprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_1_awuser;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_CCI_NOC_1_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > FPD_CCI_NOC_1_wuser;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_wlast;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_wvalid;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_1_bresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_bvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_1_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_1_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_1_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_1_arburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_1_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_1_arprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_1_aruser;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_CCI_NOC_1_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_1_rresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_rlast;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_rvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_1_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_1_arqos;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_2_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_2_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_2_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_2_awburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_2_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_2_awprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_2_awuser;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_CCI_NOC_2_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > FPD_CCI_NOC_2_wuser;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_wlast;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_wvalid;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_2_bresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_bvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_2_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_2_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_2_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_2_arburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_2_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_2_arprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_2_aruser;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_CCI_NOC_2_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_2_rresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_rlast;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_rvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_2_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_2_arqos;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_3_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_3_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_3_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_3_awburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_3_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_3_awprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_3_awuser;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_CCI_NOC_3_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > FPD_CCI_NOC_3_wuser;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_wlast;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_wvalid;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_3_bresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_bvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_3_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_3_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_3_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_3_arburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_3_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_3_arprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_3_aruser;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_CCI_NOC_3_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_3_rresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_rlast;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_rvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_3_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_3_arqos;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_xtlm2pin_t<128,44,16,16,1,1,16,1>* mp_M_AXI_FPD_transactor;
  xtlm::xaximm_xtlm2pin_t<128,44,16,16,1,1,16,1>* mp_M_AXI_LPD_transactor;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>* mp_FPD_CCI_NOC_0_transactor;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>* mp_FPD_CCI_NOC_1_transactor;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>* mp_FPD_CCI_NOC_2_transactor;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>* mp_FPD_CCI_NOC_3_transactor;

  // Transactor stubs
  xtlm::xtlm_aximm_initiator_stub * FPD_CCI_NOC_0_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * FPD_CCI_NOC_0_transactor_initiator_wr_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * FPD_CCI_NOC_1_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * FPD_CCI_NOC_1_transactor_initiator_wr_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * FPD_CCI_NOC_2_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * FPD_CCI_NOC_2_transactor_initiator_wr_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * FPD_CCI_NOC_3_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * FPD_CCI_NOC_3_transactor_initiator_wr_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M_AXI_FPD_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M_AXI_FPD_transactor_initiator_wr_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M_AXI_LPD_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M_AXI_LPD_transactor_initiator_wr_socket_stub;

  // Socket stubs

};
#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
#include "utils/xtlm_aximm_initiator_stub.h"

class DllExport dpss_vck190_pt_versal_cips_0_0 : public dpss_vck190_pt_versal_cips_0_0_sc
{
public:

  dpss_vck190_pt_versal_cips_0_0(const sc_core::sc_module_name& nm);
  virtual ~dpss_vck190_pt_versal_cips_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_out< bool > pl0_ref_clk;
  sc_core::sc_out< bool > pl1_ref_clk;
  sc_core::sc_out< bool > pl0_resetn;
  sc_core::sc_in< bool > m_axi_fpd_aclk;
  sc_core::sc_in< bool > m_axi_lpd_aclk;
  sc_core::sc_out< bool > fpd_cci_noc_axi0_clk;
  sc_core::sc_out< bool > fpd_cci_noc_axi1_clk;
  sc_core::sc_out< bool > fpd_cci_noc_axi2_clk;
  sc_core::sc_out< bool > fpd_cci_noc_axi3_clk;
  sc_core::sc_in< bool > pl_ps_irq0;
  sc_core::sc_in< bool > pl_ps_irq1;
  sc_core::sc_in< bool > pl_ps_irq2;
  sc_core::sc_in< bool > pl_ps_irq3;
  sc_core::sc_in< bool > pl_ps_irq4;
  sc_core::sc_in< bool > pl_ps_irq5;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_awid;
  sc_core::sc_out< sc_dt::sc_bv<44> > M_AXI_FPD_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > M_AXI_FPD_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_FPD_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > M_AXI_FPD_awburst;
  sc_core::sc_out< bool > M_AXI_FPD_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_FPD_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_FPD_awprot;
  sc_core::sc_out< bool > M_AXI_FPD_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_awuser;
  sc_core::sc_in< bool > M_AXI_FPD_awready;
  sc_core::sc_out< bool > M_AXI_FPD_wlast;
  sc_core::sc_out< bool > M_AXI_FPD_wvalid;
  sc_core::sc_in< bool > M_AXI_FPD_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > M_AXI_FPD_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > M_AXI_FPD_bresp;
  sc_core::sc_in< bool > M_AXI_FPD_bvalid;
  sc_core::sc_out< bool > M_AXI_FPD_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_arid;
  sc_core::sc_out< sc_dt::sc_bv<44> > M_AXI_FPD_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > M_AXI_FPD_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_FPD_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > M_AXI_FPD_arburst;
  sc_core::sc_out< bool > M_AXI_FPD_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_FPD_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_FPD_arprot;
  sc_core::sc_out< bool > M_AXI_FPD_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_aruser;
  sc_core::sc_in< bool > M_AXI_FPD_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > M_AXI_FPD_rid;
  sc_core::sc_in< sc_dt::sc_bv<2> > M_AXI_FPD_rresp;
  sc_core::sc_in< bool > M_AXI_FPD_rlast;
  sc_core::sc_in< bool > M_AXI_FPD_rvalid;
  sc_core::sc_out< bool > M_AXI_FPD_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_FPD_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_FPD_arqos;
  sc_core::sc_out< sc_dt::sc_bv<128> > M_AXI_FPD_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_FPD_wstrb;
  sc_core::sc_in< sc_dt::sc_bv<128> > M_AXI_FPD_rdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_awid;
  sc_core::sc_out< sc_dt::sc_bv<44> > M_AXI_LPD_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > M_AXI_LPD_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_LPD_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > M_AXI_LPD_awburst;
  sc_core::sc_out< bool > M_AXI_LPD_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_LPD_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_LPD_awprot;
  sc_core::sc_out< bool > M_AXI_LPD_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_awuser;
  sc_core::sc_in< bool > M_AXI_LPD_awready;
  sc_core::sc_out< bool > M_AXI_LPD_wlast;
  sc_core::sc_out< bool > M_AXI_LPD_wvalid;
  sc_core::sc_in< bool > M_AXI_LPD_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > M_AXI_LPD_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > M_AXI_LPD_bresp;
  sc_core::sc_in< bool > M_AXI_LPD_bvalid;
  sc_core::sc_out< bool > M_AXI_LPD_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_arid;
  sc_core::sc_out< sc_dt::sc_bv<44> > M_AXI_LPD_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > M_AXI_LPD_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_LPD_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > M_AXI_LPD_arburst;
  sc_core::sc_out< bool > M_AXI_LPD_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_LPD_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > M_AXI_LPD_arprot;
  sc_core::sc_out< bool > M_AXI_LPD_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_aruser;
  sc_core::sc_in< bool > M_AXI_LPD_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > M_AXI_LPD_rid;
  sc_core::sc_in< sc_dt::sc_bv<2> > M_AXI_LPD_rresp;
  sc_core::sc_in< bool > M_AXI_LPD_rlast;
  sc_core::sc_in< bool > M_AXI_LPD_rvalid;
  sc_core::sc_out< bool > M_AXI_LPD_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_LPD_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > M_AXI_LPD_arqos;
  sc_core::sc_out< sc_dt::sc_bv<128> > M_AXI_LPD_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > M_AXI_LPD_wstrb;
  sc_core::sc_in< sc_dt::sc_bv<128> > M_AXI_LPD_rdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_0_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_0_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_0_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_0_awburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_0_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_0_awprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_0_awuser;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_CCI_NOC_0_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > FPD_CCI_NOC_0_wuser;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_wlast;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_wvalid;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_0_bresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_bvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_0_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_0_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_0_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_0_arburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_0_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_0_arprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_0_aruser;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_0_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_CCI_NOC_0_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_0_rresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_rlast;
  sc_core::sc_in< bool > FPD_CCI_NOC_0_rvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_0_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_0_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_0_arqos;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_1_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_1_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_1_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_1_awburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_1_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_1_awprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_1_awuser;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_CCI_NOC_1_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > FPD_CCI_NOC_1_wuser;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_wlast;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_wvalid;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_1_bresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_bvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_1_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_1_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_1_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_1_arburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_1_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_1_arprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_1_aruser;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_1_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_CCI_NOC_1_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_1_rresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_rlast;
  sc_core::sc_in< bool > FPD_CCI_NOC_1_rvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_1_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_1_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_1_arqos;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_2_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_2_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_2_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_2_awburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_2_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_2_awprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_2_awuser;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_CCI_NOC_2_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > FPD_CCI_NOC_2_wuser;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_wlast;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_wvalid;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_2_bresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_bvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_2_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_2_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_2_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_2_arburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_2_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_2_arprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_2_aruser;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_2_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_CCI_NOC_2_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_2_rresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_rlast;
  sc_core::sc_in< bool > FPD_CCI_NOC_2_rvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_2_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_2_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_2_arqos;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_awid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_3_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_3_awlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_3_awsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_3_awburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_awlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_3_awcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_3_awprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_awvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_3_awuser;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_awready;
  sc_core::sc_out< sc_dt::sc_bv<128> > FPD_CCI_NOC_3_wdata;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_wstrb;
  sc_core::sc_out< sc_dt::sc_bv<17> > FPD_CCI_NOC_3_wuser;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_wlast;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_wvalid;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_wready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_bid;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_3_bresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_bvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_bready;
  sc_core::sc_out< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > FPD_CCI_NOC_3_araddr;
  sc_core::sc_out< sc_dt::sc_bv<8> > FPD_CCI_NOC_3_arlen;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_3_arsize;
  sc_core::sc_out< sc_dt::sc_bv<2> > FPD_CCI_NOC_3_arburst;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_arlock;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_3_arcache;
  sc_core::sc_out< sc_dt::sc_bv<3> > FPD_CCI_NOC_3_arprot;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_arvalid;
  sc_core::sc_out< sc_dt::sc_bv<18> > FPD_CCI_NOC_3_aruser;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_arready;
  sc_core::sc_in< sc_dt::sc_bv<16> > FPD_CCI_NOC_3_rid;
  sc_core::sc_in< sc_dt::sc_bv<128> > FPD_CCI_NOC_3_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > FPD_CCI_NOC_3_rresp;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_rlast;
  sc_core::sc_in< bool > FPD_CCI_NOC_3_rvalid;
  sc_core::sc_out< bool > FPD_CCI_NOC_3_rready;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_3_awqos;
  sc_core::sc_out< sc_dt::sc_bv<4> > FPD_CCI_NOC_3_arqos;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_xtlm2pin_t<128,44,16,16,1,1,16,1>* mp_M_AXI_FPD_transactor;
  xtlm::xaximm_xtlm2pin_t<128,44,16,16,1,1,16,1>* mp_M_AXI_LPD_transactor;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>* mp_FPD_CCI_NOC_0_transactor;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>* mp_FPD_CCI_NOC_1_transactor;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>* mp_FPD_CCI_NOC_2_transactor;
  xtlm::xaximm_xtlm2pin_t<128,64,16,18,17,1,18,1>* mp_FPD_CCI_NOC_3_transactor;

  // Transactor stubs
  xtlm::xtlm_aximm_initiator_stub * FPD_CCI_NOC_0_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * FPD_CCI_NOC_0_transactor_initiator_wr_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * FPD_CCI_NOC_1_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * FPD_CCI_NOC_1_transactor_initiator_wr_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * FPD_CCI_NOC_2_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * FPD_CCI_NOC_2_transactor_initiator_wr_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * FPD_CCI_NOC_3_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * FPD_CCI_NOC_3_transactor_initiator_wr_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M_AXI_FPD_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M_AXI_FPD_transactor_initiator_wr_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M_AXI_LPD_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M_AXI_LPD_transactor_initiator_wr_socket_stub;

  // Socket stubs

};
#endif // MTI_SYSTEMC
#endif // IP_DPSS_VCK190_PT_VERSAL_CIPS_0_0_H_
