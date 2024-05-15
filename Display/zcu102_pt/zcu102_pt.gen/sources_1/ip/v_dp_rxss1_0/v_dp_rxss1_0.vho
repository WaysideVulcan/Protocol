-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.
-- IP VLNV: xilinx.com:ip:v_dp_rxss1:3.1
-- IP Revision: 1

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT v_dp_rxss1_0
  PORT (
    s_axi_aclk : IN STD_LOGIC;
    s_axi_aresetn : IN STD_LOGIC;
    rx_vid_clk : IN STD_LOGIC;
    rx_vid_rst : IN STD_LOGIC;
    m_axis_aclk_stream1 : IN STD_LOGIC;
    aux_rx_io_p : INOUT STD_LOGIC;
    aux_rx_io_n : INOUT STD_LOGIC;
    rx_lnk_clk : IN STD_LOGIC;
    rx_hpd : OUT STD_LOGIC;
    dprxss_dp_irq : OUT STD_LOGIC;
    rx_misc0_str1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    rx_misc1_str1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    adaptive_sdp_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    adaptive_sdp_vld : OUT STD_LOGIC;
    ext_rst : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    dprxss_iic_irq : OUT STD_LOGIC;
    s_axi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_awvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_awready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_wvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_wready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_bvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_bready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_arvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_arready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_rready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axis_video_stream1_tdata : OUT STD_LOGIC_VECTOR(95 DOWNTO 0);
    m_axis_video_stream1_tlast : OUT STD_LOGIC;
    m_axis_video_stream1_tready : IN STD_LOGIC;
    m_axis_video_stream1_tuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axis_video_stream1_tvalid : OUT STD_LOGIC;
    s_axis_lnk_rx_lane0_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_lnk_rx_lane0_tready : OUT STD_LOGIC;
    s_axis_lnk_rx_lane0_tuser : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_axis_lnk_rx_lane0_tvalid : IN STD_LOGIC;
    m_axis_phy_rx_sb_control_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axis_phy_rx_sb_control_tready : IN STD_LOGIC;
    m_axis_phy_rx_sb_control_tvalid : OUT STD_LOGIC;
    s_axis_phy_rx_sb_status_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axis_phy_rx_sb_status_tready : OUT STD_LOGIC;
    s_axis_phy_rx_sb_status_tvalid : IN STD_LOGIC;
    s_axis_lnk_rx_lane3_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_lnk_rx_lane3_tready : OUT STD_LOGIC;
    s_axis_lnk_rx_lane3_tuser : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_axis_lnk_rx_lane3_tvalid : IN STD_LOGIC;
    s_axis_lnk_rx_lane2_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_lnk_rx_lane2_tready : OUT STD_LOGIC;
    s_axis_lnk_rx_lane2_tuser : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_axis_lnk_rx_lane2_tvalid : IN STD_LOGIC;
    s_axis_lnk_rx_lane1_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_lnk_rx_lane1_tready : OUT STD_LOGIC;
    s_axis_lnk_rx_lane1_tuser : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_axis_lnk_rx_lane1_tvalid : IN STD_LOGIC;
    edid_iic_scl_i : IN STD_LOGIC;
    edid_iic_scl_o : OUT STD_LOGIC;
    edid_iic_scl_t : OUT STD_LOGIC;
    edid_iic_sda_i : IN STD_LOGIC;
    edid_iic_sda_o : OUT STD_LOGIC;
    edid_iic_sda_t : OUT STD_LOGIC;
    ext_iic_scl_i : IN STD_LOGIC;
    ext_iic_scl_o : OUT STD_LOGIC;
    ext_iic_scl_t : OUT STD_LOGIC;
    ext_iic_sda_i : IN STD_LOGIC;
    ext_iic_sda_o : OUT STD_LOGIC;
    ext_iic_sda_t : OUT STD_LOGIC 
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : v_dp_rxss1_0
  PORT MAP (
    s_axi_aclk => s_axi_aclk,
    s_axi_aresetn => s_axi_aresetn,
    rx_vid_clk => rx_vid_clk,
    rx_vid_rst => rx_vid_rst,
    m_axis_aclk_stream1 => m_axis_aclk_stream1,
    aux_rx_io_p => aux_rx_io_p,
    aux_rx_io_n => aux_rx_io_n,
    rx_lnk_clk => rx_lnk_clk,
    rx_hpd => rx_hpd,
    dprxss_dp_irq => dprxss_dp_irq,
    rx_misc0_str1 => rx_misc0_str1,
    rx_misc1_str1 => rx_misc1_str1,
    adaptive_sdp_out => adaptive_sdp_out,
    adaptive_sdp_vld => adaptive_sdp_vld,
    ext_rst => ext_rst,
    dprxss_iic_irq => dprxss_iic_irq,
    s_axi_awaddr => s_axi_awaddr,
    s_axi_awprot => s_axi_awprot,
    s_axi_awvalid => s_axi_awvalid,
    s_axi_awready => s_axi_awready,
    s_axi_wdata => s_axi_wdata,
    s_axi_wstrb => s_axi_wstrb,
    s_axi_wvalid => s_axi_wvalid,
    s_axi_wready => s_axi_wready,
    s_axi_bresp => s_axi_bresp,
    s_axi_bvalid => s_axi_bvalid,
    s_axi_bready => s_axi_bready,
    s_axi_araddr => s_axi_araddr,
    s_axi_arprot => s_axi_arprot,
    s_axi_arvalid => s_axi_arvalid,
    s_axi_arready => s_axi_arready,
    s_axi_rdata => s_axi_rdata,
    s_axi_rresp => s_axi_rresp,
    s_axi_rvalid => s_axi_rvalid,
    s_axi_rready => s_axi_rready,
    m_axis_video_stream1_tdata => m_axis_video_stream1_tdata,
    m_axis_video_stream1_tlast => m_axis_video_stream1_tlast,
    m_axis_video_stream1_tready => m_axis_video_stream1_tready,
    m_axis_video_stream1_tuser => m_axis_video_stream1_tuser,
    m_axis_video_stream1_tvalid => m_axis_video_stream1_tvalid,
    s_axis_lnk_rx_lane0_tdata => s_axis_lnk_rx_lane0_tdata,
    s_axis_lnk_rx_lane0_tready => s_axis_lnk_rx_lane0_tready,
    s_axis_lnk_rx_lane0_tuser => s_axis_lnk_rx_lane0_tuser,
    s_axis_lnk_rx_lane0_tvalid => s_axis_lnk_rx_lane0_tvalid,
    m_axis_phy_rx_sb_control_tdata => m_axis_phy_rx_sb_control_tdata,
    m_axis_phy_rx_sb_control_tready => m_axis_phy_rx_sb_control_tready,
    m_axis_phy_rx_sb_control_tvalid => m_axis_phy_rx_sb_control_tvalid,
    s_axis_phy_rx_sb_status_tdata => s_axis_phy_rx_sb_status_tdata,
    s_axis_phy_rx_sb_status_tready => s_axis_phy_rx_sb_status_tready,
    s_axis_phy_rx_sb_status_tvalid => s_axis_phy_rx_sb_status_tvalid,
    s_axis_lnk_rx_lane3_tdata => s_axis_lnk_rx_lane3_tdata,
    s_axis_lnk_rx_lane3_tready => s_axis_lnk_rx_lane3_tready,
    s_axis_lnk_rx_lane3_tuser => s_axis_lnk_rx_lane3_tuser,
    s_axis_lnk_rx_lane3_tvalid => s_axis_lnk_rx_lane3_tvalid,
    s_axis_lnk_rx_lane2_tdata => s_axis_lnk_rx_lane2_tdata,
    s_axis_lnk_rx_lane2_tready => s_axis_lnk_rx_lane2_tready,
    s_axis_lnk_rx_lane2_tuser => s_axis_lnk_rx_lane2_tuser,
    s_axis_lnk_rx_lane2_tvalid => s_axis_lnk_rx_lane2_tvalid,
    s_axis_lnk_rx_lane1_tdata => s_axis_lnk_rx_lane1_tdata,
    s_axis_lnk_rx_lane1_tready => s_axis_lnk_rx_lane1_tready,
    s_axis_lnk_rx_lane1_tuser => s_axis_lnk_rx_lane1_tuser,
    s_axis_lnk_rx_lane1_tvalid => s_axis_lnk_rx_lane1_tvalid,
    edid_iic_scl_i => edid_iic_scl_i,
    edid_iic_scl_o => edid_iic_scl_o,
    edid_iic_scl_t => edid_iic_scl_t,
    edid_iic_sda_i => edid_iic_sda_i,
    edid_iic_sda_o => edid_iic_sda_o,
    edid_iic_sda_t => edid_iic_sda_t,
    ext_iic_scl_i => ext_iic_scl_i,
    ext_iic_scl_o => ext_iic_scl_o,
    ext_iic_scl_t => ext_iic_scl_t,
    ext_iic_sda_i => ext_iic_sda_i,
    ext_iic_sda_o => ext_iic_sda_o,
    ext_iic_sda_t => ext_iic_sda_t
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file v_dp_rxss1_0.vhd when simulating
-- the core, v_dp_rxss1_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.



