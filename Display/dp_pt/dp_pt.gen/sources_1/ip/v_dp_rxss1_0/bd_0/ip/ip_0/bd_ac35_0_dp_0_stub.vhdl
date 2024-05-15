-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu May  9 15:09:35 2024
-- Host        : Vulcan running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Vulcan/Protocol/Display/dp_pt/dp_pt.gen/sources_1/ip/v_dp_rxss1_0/bd_0/ip/ip_0/bd_ac35_0_dp_0_stub.vhdl
-- Design      : bd_ac35_0_dp_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvc1902-vsva2197-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_ac35_0_dp_0 is
  Port ( 
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    axi_int : out STD_LOGIC;
    rx_vid_clk : in STD_LOGIC;
    rx_vid_rst : in STD_LOGIC;
    rx_vid_vsync : out STD_LOGIC;
    rx_vid_hsync : out STD_LOGIC;
    rx_vid_oddeven : out STD_LOGIC;
    rx_vid_enable : out STD_LOGIC;
    rx_vid_pixel0 : out STD_LOGIC_VECTOR ( 47 downto 0 );
    rx_vid_pixel1 : out STD_LOGIC_VECTOR ( 47 downto 0 );
    rx_vid_pixel2 : out STD_LOGIC_VECTOR ( 47 downto 0 );
    rx_vid_pixel3 : out STD_LOGIC_VECTOR ( 47 downto 0 );
    rx_gt_ctrl_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    lnk_m_vid : out STD_LOGIC_VECTOR ( 23 downto 0 );
    lnk_n_vid : out STD_LOGIC_VECTOR ( 23 downto 0 );
    rx_misc0_str1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_misc1_str1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aux_rx_io_p : inout STD_LOGIC;
    aux_rx_io_n : inout STD_LOGIC;
    rx_hpd : out STD_LOGIC;
    i2c_sda_in : in STD_LOGIC;
    i2c_sda_enable_n : out STD_LOGIC;
    i2c_sda_o : out STD_LOGIC;
    i2c_scl_in : in STD_LOGIC;
    i2c_scl_enable_n : out STD_LOGIC;
    i2c_scl_o : out STD_LOGIC;
    rx_dec_clk : in STD_LOGIC;
    rx_lnk_clk : in STD_LOGIC;
    lnk_rx_axi4s_lane0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    lnk_rx_axi4s_lane0_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    lnk_rx_axi4s_lane0_tvalid : in STD_LOGIC;
    lnk_rx_axi4s_lane0_tready : out STD_LOGIC;
    lnk_rx_axi4s_lane1_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    lnk_rx_axi4s_lane1_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    lnk_rx_axi4s_lane1_tvalid : in STD_LOGIC;
    lnk_rx_axi4s_lane1_tready : out STD_LOGIC;
    lnk_rx_axi4s_lane2_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    lnk_rx_axi4s_lane2_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    lnk_rx_axi4s_lane2_tvalid : in STD_LOGIC;
    lnk_rx_axi4s_lane2_tready : out STD_LOGIC;
    lnk_rx_axi4s_lane3_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    lnk_rx_axi4s_lane3_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    lnk_rx_axi4s_lane3_tvalid : in STD_LOGIC;
    lnk_rx_axi4s_lane3_tready : out STD_LOGIC;
    lnk_rx_sb_status_axi4s_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    lnk_rx_sb_status_axi4s_tvalid : in STD_LOGIC;
    lnk_rx_sb_status_axi4s_tready : out STD_LOGIC;
    lnk_rx_sb_control_axi4s_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    lnk_rx_sb_control_axi4s_tvalid : out STD_LOGIC;
    lnk_rx_sb_control_axi4s_tready : in STD_LOGIC;
    link_bw_high_out : out STD_LOGIC;
    link_bw_hbr2_out : out STD_LOGIC;
    bw_changed_out : out STD_LOGIC;
    rx_vid_pixel_mode : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rx_vid_msa_hres : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rx_vid_msa_vres : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rx_bpc : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rx_cformat : out STD_LOGIC_VECTOR ( 2 downto 0 );
    adaptive_sdp_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    adaptive_sdp_vld : out STD_LOGIC
  );

end bd_ac35_0_dp_0;

architecture stub of bd_ac35_0_dp_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_aclk,s_axi_aresetn,s_axi_awaddr[31:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[31:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,axi_int,rx_vid_clk,rx_vid_rst,rx_vid_vsync,rx_vid_hsync,rx_vid_oddeven,rx_vid_enable,rx_vid_pixel0[47:0],rx_vid_pixel1[47:0],rx_vid_pixel2[47:0],rx_vid_pixel3[47:0],rx_gt_ctrl_out[31:0],lnk_m_vid[23:0],lnk_n_vid[23:0],rx_misc0_str1[7:0],rx_misc1_str1[7:0],aux_rx_io_p,aux_rx_io_n,rx_hpd,i2c_sda_in,i2c_sda_enable_n,i2c_sda_o,i2c_scl_in,i2c_scl_enable_n,i2c_scl_o,rx_dec_clk,rx_lnk_clk,lnk_rx_axi4s_lane0_tdata[31:0],lnk_rx_axi4s_lane0_tuser[11:0],lnk_rx_axi4s_lane0_tvalid,lnk_rx_axi4s_lane0_tready,lnk_rx_axi4s_lane1_tdata[31:0],lnk_rx_axi4s_lane1_tuser[11:0],lnk_rx_axi4s_lane1_tvalid,lnk_rx_axi4s_lane1_tready,lnk_rx_axi4s_lane2_tdata[31:0],lnk_rx_axi4s_lane2_tuser[11:0],lnk_rx_axi4s_lane2_tvalid,lnk_rx_axi4s_lane2_tready,lnk_rx_axi4s_lane3_tdata[31:0],lnk_rx_axi4s_lane3_tuser[11:0],lnk_rx_axi4s_lane3_tvalid,lnk_rx_axi4s_lane3_tready,lnk_rx_sb_status_axi4s_tdata[15:0],lnk_rx_sb_status_axi4s_tvalid,lnk_rx_sb_status_axi4s_tready,lnk_rx_sb_control_axi4s_tdata[7:0],lnk_rx_sb_control_axi4s_tvalid,lnk_rx_sb_control_axi4s_tready,link_bw_high_out,link_bw_hbr2_out,bw_changed_out,rx_vid_pixel_mode[2:0],rx_vid_msa_hres[15:0],rx_vid_msa_vres[15:0],rx_bpc[2:0],rx_cformat[2:0],adaptive_sdp_out[31:0],adaptive_sdp_vld";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_ac35_0_dp_0_dport_wrapper,Vivado 2023.2";
begin
end;
