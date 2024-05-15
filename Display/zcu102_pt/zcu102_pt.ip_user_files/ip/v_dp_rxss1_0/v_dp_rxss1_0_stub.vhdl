-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu May  9 17:23:37 2024
-- Host        : Vulcan running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Vulcan/Protocol/Display/zcu102_pt/zcu102_pt.gen/sources_1/ip/v_dp_rxss1_0/v_dp_rxss1_0_stub.vhdl
-- Design      : v_dp_rxss1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity v_dp_rxss1_0 is
  Port ( 
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    rx_vid_clk : in STD_LOGIC;
    rx_vid_rst : in STD_LOGIC;
    m_axis_aclk_stream1 : in STD_LOGIC;
    aux_rx_io_p : inout STD_LOGIC;
    aux_rx_io_n : inout STD_LOGIC;
    rx_lnk_clk : in STD_LOGIC;
    rx_hpd : out STD_LOGIC;
    dprxss_dp_irq : out STD_LOGIC;
    rx_misc0_str1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_misc1_str1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    adaptive_sdp_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    adaptive_sdp_vld : out STD_LOGIC;
    ext_rst : out STD_LOGIC_VECTOR ( 0 to 0 );
    dprxss_iic_irq : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_stream1_tdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axis_video_stream1_tlast : out STD_LOGIC;
    m_axis_video_stream1_tready : in STD_LOGIC;
    m_axis_video_stream1_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_stream1_tvalid : out STD_LOGIC;
    s_axis_lnk_rx_lane0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_lnk_rx_lane0_tready : out STD_LOGIC;
    s_axis_lnk_rx_lane0_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axis_lnk_rx_lane0_tvalid : in STD_LOGIC;
    m_axis_phy_rx_sb_control_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_phy_rx_sb_control_tready : in STD_LOGIC;
    m_axis_phy_rx_sb_control_tvalid : out STD_LOGIC;
    s_axis_phy_rx_sb_status_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_phy_rx_sb_status_tready : out STD_LOGIC;
    s_axis_phy_rx_sb_status_tvalid : in STD_LOGIC;
    s_axis_lnk_rx_lane3_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_lnk_rx_lane3_tready : out STD_LOGIC;
    s_axis_lnk_rx_lane3_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axis_lnk_rx_lane3_tvalid : in STD_LOGIC;
    s_axis_lnk_rx_lane2_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_lnk_rx_lane2_tready : out STD_LOGIC;
    s_axis_lnk_rx_lane2_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axis_lnk_rx_lane2_tvalid : in STD_LOGIC;
    s_axis_lnk_rx_lane1_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_lnk_rx_lane1_tready : out STD_LOGIC;
    s_axis_lnk_rx_lane1_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axis_lnk_rx_lane1_tvalid : in STD_LOGIC;
    edid_iic_scl_i : in STD_LOGIC;
    edid_iic_scl_o : out STD_LOGIC;
    edid_iic_scl_t : out STD_LOGIC;
    edid_iic_sda_i : in STD_LOGIC;
    edid_iic_sda_o : out STD_LOGIC;
    edid_iic_sda_t : out STD_LOGIC;
    ext_iic_scl_i : in STD_LOGIC;
    ext_iic_scl_o : out STD_LOGIC;
    ext_iic_scl_t : out STD_LOGIC;
    ext_iic_sda_i : in STD_LOGIC;
    ext_iic_sda_o : out STD_LOGIC;
    ext_iic_sda_t : out STD_LOGIC
  );

end v_dp_rxss1_0;

architecture stub of v_dp_rxss1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_aclk,s_axi_aresetn,rx_vid_clk,rx_vid_rst,m_axis_aclk_stream1,aux_rx_io_p,aux_rx_io_n,rx_lnk_clk,rx_hpd,dprxss_dp_irq,rx_misc0_str1[7:0],rx_misc1_str1[7:0],adaptive_sdp_out[31:0],adaptive_sdp_vld,ext_rst[0:0],dprxss_iic_irq,s_axi_awaddr[31:0],s_axi_awprot[2:0],s_axi_awvalid[0:0],s_axi_awready[0:0],s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid[0:0],s_axi_wready[0:0],s_axi_bresp[1:0],s_axi_bvalid[0:0],s_axi_bready[0:0],s_axi_araddr[31:0],s_axi_arprot[2:0],s_axi_arvalid[0:0],s_axi_arready[0:0],s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid[0:0],s_axi_rready[0:0],m_axis_video_stream1_tdata[95:0],m_axis_video_stream1_tlast,m_axis_video_stream1_tready,m_axis_video_stream1_tuser[0:0],m_axis_video_stream1_tvalid,s_axis_lnk_rx_lane0_tdata[31:0],s_axis_lnk_rx_lane0_tready,s_axis_lnk_rx_lane0_tuser[11:0],s_axis_lnk_rx_lane0_tvalid,m_axis_phy_rx_sb_control_tdata[7:0],m_axis_phy_rx_sb_control_tready,m_axis_phy_rx_sb_control_tvalid,s_axis_phy_rx_sb_status_tdata[15:0],s_axis_phy_rx_sb_status_tready,s_axis_phy_rx_sb_status_tvalid,s_axis_lnk_rx_lane3_tdata[31:0],s_axis_lnk_rx_lane3_tready,s_axis_lnk_rx_lane3_tuser[11:0],s_axis_lnk_rx_lane3_tvalid,s_axis_lnk_rx_lane2_tdata[31:0],s_axis_lnk_rx_lane2_tready,s_axis_lnk_rx_lane2_tuser[11:0],s_axis_lnk_rx_lane2_tvalid,s_axis_lnk_rx_lane1_tdata[31:0],s_axis_lnk_rx_lane1_tready,s_axis_lnk_rx_lane1_tuser[11:0],s_axis_lnk_rx_lane1_tvalid,edid_iic_scl_i,edid_iic_scl_o,edid_iic_scl_t,edid_iic_sda_i,edid_iic_sda_o,edid_iic_sda_t,ext_iic_scl_i,ext_iic_scl_o,ext_iic_scl_t,ext_iic_sda_i,ext_iic_sda_o,ext_iic_sda_t";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_ac35_0,Vivado 2023.2";
begin
end;
