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

// IP VLNV: xilinx.com:ip:v_dp_rxss1:3.1
// IP Revision: 1

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
v_dp_rxss1_0 your_instance_name (
  .s_axi_aclk(s_axi_aclk),                                            // input wire s_axi_aclk
  .s_axi_aresetn(s_axi_aresetn),                                      // input wire s_axi_aresetn
  .rx_vid_clk(rx_vid_clk),                                            // input wire rx_vid_clk
  .rx_vid_rst(rx_vid_rst),                                            // input wire rx_vid_rst
  .m_axis_aclk_stream1(m_axis_aclk_stream1),                          // input wire m_axis_aclk_stream1
  .aux_rx_io_p(aux_rx_io_p),                                          // inout wire aux_rx_io_p
  .aux_rx_io_n(aux_rx_io_n),                                          // inout wire aux_rx_io_n
  .rx_dec_clk(rx_dec_clk),                                            // input wire rx_dec_clk
  .rx_lnk_clk(rx_lnk_clk),                                            // input wire rx_lnk_clk
  .rx_hpd(rx_hpd),                                                    // output wire rx_hpd
  .dprxss_dp_irq(dprxss_dp_irq),                                      // output wire dprxss_dp_irq
  .rx_gt_ctrl_out(rx_gt_ctrl_out),                                    // output wire [31 : 0] rx_gt_ctrl_out
  .rx_misc0_str1(rx_misc0_str1),                                      // output wire [7 : 0] rx_misc0_str1
  .rx_misc1_str1(rx_misc1_str1),                                      // output wire [7 : 0] rx_misc1_str1
  .adaptive_sdp_out(adaptive_sdp_out),                                // output wire [31 : 0] adaptive_sdp_out
  .adaptive_sdp_vld(adaptive_sdp_vld),                                // output wire adaptive_sdp_vld
  .ext_rst(ext_rst),                                                  // output wire [0 : 0] ext_rst
  .dprxss_iic_irq(dprxss_iic_irq),                                    // output wire dprxss_iic_irq
  .s_axi_awaddr(s_axi_awaddr),                                        // input wire [31 : 0] s_axi_awaddr
  .s_axi_awprot(s_axi_awprot),                                        // input wire [2 : 0] s_axi_awprot
  .s_axi_awvalid(s_axi_awvalid),                                      // input wire [0 : 0] s_axi_awvalid
  .s_axi_awready(s_axi_awready),                                      // output wire [0 : 0] s_axi_awready
  .s_axi_wdata(s_axi_wdata),                                          // input wire [31 : 0] s_axi_wdata
  .s_axi_wstrb(s_axi_wstrb),                                          // input wire [3 : 0] s_axi_wstrb
  .s_axi_wvalid(s_axi_wvalid),                                        // input wire [0 : 0] s_axi_wvalid
  .s_axi_wready(s_axi_wready),                                        // output wire [0 : 0] s_axi_wready
  .s_axi_bresp(s_axi_bresp),                                          // output wire [1 : 0] s_axi_bresp
  .s_axi_bvalid(s_axi_bvalid),                                        // output wire [0 : 0] s_axi_bvalid
  .s_axi_bready(s_axi_bready),                                        // input wire [0 : 0] s_axi_bready
  .s_axi_araddr(s_axi_araddr),                                        // input wire [31 : 0] s_axi_araddr
  .s_axi_arprot(s_axi_arprot),                                        // input wire [2 : 0] s_axi_arprot
  .s_axi_arvalid(s_axi_arvalid),                                      // input wire [0 : 0] s_axi_arvalid
  .s_axi_arready(s_axi_arready),                                      // output wire [0 : 0] s_axi_arready
  .s_axi_rdata(s_axi_rdata),                                          // output wire [31 : 0] s_axi_rdata
  .s_axi_rresp(s_axi_rresp),                                          // output wire [1 : 0] s_axi_rresp
  .s_axi_rvalid(s_axi_rvalid),                                        // output wire [0 : 0] s_axi_rvalid
  .s_axi_rready(s_axi_rready),                                        // input wire [0 : 0] s_axi_rready
  .m_axis_video_stream1_tdata(m_axis_video_stream1_tdata),            // output wire [95 : 0] m_axis_video_stream1_tdata
  .m_axis_video_stream1_tlast(m_axis_video_stream1_tlast),            // output wire m_axis_video_stream1_tlast
  .m_axis_video_stream1_tready(m_axis_video_stream1_tready),          // input wire m_axis_video_stream1_tready
  .m_axis_video_stream1_tuser(m_axis_video_stream1_tuser),            // output wire [0 : 0] m_axis_video_stream1_tuser
  .m_axis_video_stream1_tvalid(m_axis_video_stream1_tvalid),          // output wire m_axis_video_stream1_tvalid
  .s_axis_lnk_rx_lane0_tdata(s_axis_lnk_rx_lane0_tdata),              // input wire [31 : 0] s_axis_lnk_rx_lane0_tdata
  .s_axis_lnk_rx_lane0_tready(s_axis_lnk_rx_lane0_tready),            // output wire s_axis_lnk_rx_lane0_tready
  .s_axis_lnk_rx_lane0_tuser(s_axis_lnk_rx_lane0_tuser),              // input wire [11 : 0] s_axis_lnk_rx_lane0_tuser
  .s_axis_lnk_rx_lane0_tvalid(s_axis_lnk_rx_lane0_tvalid),            // input wire s_axis_lnk_rx_lane0_tvalid
  .m_axis_phy_rx_sb_control_tdata(m_axis_phy_rx_sb_control_tdata),    // output wire [7 : 0] m_axis_phy_rx_sb_control_tdata
  .m_axis_phy_rx_sb_control_tready(m_axis_phy_rx_sb_control_tready),  // input wire m_axis_phy_rx_sb_control_tready
  .m_axis_phy_rx_sb_control_tvalid(m_axis_phy_rx_sb_control_tvalid),  // output wire m_axis_phy_rx_sb_control_tvalid
  .s_axis_phy_rx_sb_status_tdata(s_axis_phy_rx_sb_status_tdata),      // input wire [15 : 0] s_axis_phy_rx_sb_status_tdata
  .s_axis_phy_rx_sb_status_tready(s_axis_phy_rx_sb_status_tready),    // output wire s_axis_phy_rx_sb_status_tready
  .s_axis_phy_rx_sb_status_tvalid(s_axis_phy_rx_sb_status_tvalid),    // input wire s_axis_phy_rx_sb_status_tvalid
  .s_axis_lnk_rx_lane3_tdata(s_axis_lnk_rx_lane3_tdata),              // input wire [31 : 0] s_axis_lnk_rx_lane3_tdata
  .s_axis_lnk_rx_lane3_tready(s_axis_lnk_rx_lane3_tready),            // output wire s_axis_lnk_rx_lane3_tready
  .s_axis_lnk_rx_lane3_tuser(s_axis_lnk_rx_lane3_tuser),              // input wire [11 : 0] s_axis_lnk_rx_lane3_tuser
  .s_axis_lnk_rx_lane3_tvalid(s_axis_lnk_rx_lane3_tvalid),            // input wire s_axis_lnk_rx_lane3_tvalid
  .s_axis_lnk_rx_lane2_tdata(s_axis_lnk_rx_lane2_tdata),              // input wire [31 : 0] s_axis_lnk_rx_lane2_tdata
  .s_axis_lnk_rx_lane2_tready(s_axis_lnk_rx_lane2_tready),            // output wire s_axis_lnk_rx_lane2_tready
  .s_axis_lnk_rx_lane2_tuser(s_axis_lnk_rx_lane2_tuser),              // input wire [11 : 0] s_axis_lnk_rx_lane2_tuser
  .s_axis_lnk_rx_lane2_tvalid(s_axis_lnk_rx_lane2_tvalid),            // input wire s_axis_lnk_rx_lane2_tvalid
  .s_axis_lnk_rx_lane1_tdata(s_axis_lnk_rx_lane1_tdata),              // input wire [31 : 0] s_axis_lnk_rx_lane1_tdata
  .s_axis_lnk_rx_lane1_tready(s_axis_lnk_rx_lane1_tready),            // output wire s_axis_lnk_rx_lane1_tready
  .s_axis_lnk_rx_lane1_tuser(s_axis_lnk_rx_lane1_tuser),              // input wire [11 : 0] s_axis_lnk_rx_lane1_tuser
  .s_axis_lnk_rx_lane1_tvalid(s_axis_lnk_rx_lane1_tvalid),            // input wire s_axis_lnk_rx_lane1_tvalid
  .edid_iic_scl_i(edid_iic_scl_i),                                    // input wire edid_iic_scl_i
  .edid_iic_scl_o(edid_iic_scl_o),                                    // output wire edid_iic_scl_o
  .edid_iic_scl_t(edid_iic_scl_t),                                    // output wire edid_iic_scl_t
  .edid_iic_sda_i(edid_iic_sda_i),                                    // input wire edid_iic_sda_i
  .edid_iic_sda_o(edid_iic_sda_o),                                    // output wire edid_iic_sda_o
  .edid_iic_sda_t(edid_iic_sda_t),                                    // output wire edid_iic_sda_t
  .ext_iic_scl_i(ext_iic_scl_i),                                      // input wire ext_iic_scl_i
  .ext_iic_scl_o(ext_iic_scl_o),                                      // output wire ext_iic_scl_o
  .ext_iic_scl_t(ext_iic_scl_t),                                      // output wire ext_iic_scl_t
  .ext_iic_sda_i(ext_iic_sda_i),                                      // input wire ext_iic_sda_i
  .ext_iic_sda_o(ext_iic_sda_o),                                      // output wire ext_iic_sda_o
  .ext_iic_sda_t(ext_iic_sda_t)                                      // output wire ext_iic_sda_t
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file v_dp_rxss1_0.v when simulating
// the core, v_dp_rxss1_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

