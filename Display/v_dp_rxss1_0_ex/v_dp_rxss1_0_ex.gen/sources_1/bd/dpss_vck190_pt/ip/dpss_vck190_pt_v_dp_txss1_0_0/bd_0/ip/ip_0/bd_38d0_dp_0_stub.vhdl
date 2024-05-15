-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu May  9 19:12:36 2024
-- Host        : Vulcan running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_v_dp_txss1_0_0/bd_0/ip/ip_0/bd_38d0_dp_0_stub.vhdl
-- Design      : bd_38d0_dp_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvc1902-vsva2197-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_38d0_dp_0 is
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
    tx_vid_clk : in STD_LOGIC;
    tx_vid_rst : in STD_LOGIC;
    tx_vid_vsync : in STD_LOGIC;
    tx_vid_hsync : in STD_LOGIC;
    tx_vid_oddeven : in STD_LOGIC;
    tx_vid_enable : in STD_LOGIC;
    tx_vid_pixel0 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    tx_vid_pixel1 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    tx_vid_pixel2 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    tx_vid_pixel3 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    tx_gt_ctrl_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tx_bpc : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tx_video_format : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tx_ppc : out STD_LOGIC_VECTOR ( 2 downto 0 );
    txss_axi_control : out STD_LOGIC_VECTOR ( 31 downto 0 );
    txss_axi_status : in STD_LOGIC_VECTOR ( 31 downto 0 );
    aux_tx_data_in : in STD_LOGIC;
    aux_tx_data_out : out STD_LOGIC;
    aux_tx_data_en_out_n : out STD_LOGIC;
    tx_hpd : in STD_LOGIC;
    s_aud_axis_aclk : in STD_LOGIC;
    s_aud_axis_aresetn : in STD_LOGIC;
    aud_clk : in STD_LOGIC;
    aud_rst : in STD_LOGIC;
    s_axis_audio_ingress_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_audio_ingress_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_audio_ingress_tvalid : in STD_LOGIC;
    s_axis_audio_ingress_tready : out STD_LOGIC;
    tx_enc_clk : in STD_LOGIC;
    tx_lnk_clk : in STD_LOGIC;
    lnk_tx_axi4s_lane0_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    lnk_tx_axi4s_lane0_tuser : out STD_LOGIC_VECTOR ( 11 downto 0 );
    lnk_tx_axi4s_lane0_tvalid : out STD_LOGIC;
    lnk_tx_axi4s_lane0_tready : in STD_LOGIC;
    lnk_tx_axi4s_lane1_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    lnk_tx_axi4s_lane1_tuser : out STD_LOGIC_VECTOR ( 11 downto 0 );
    lnk_tx_axi4s_lane1_tvalid : out STD_LOGIC;
    lnk_tx_axi4s_lane1_tready : in STD_LOGIC;
    lnk_tx_axi4s_lane2_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    lnk_tx_axi4s_lane2_tuser : out STD_LOGIC_VECTOR ( 11 downto 0 );
    lnk_tx_axi4s_lane2_tvalid : out STD_LOGIC;
    lnk_tx_axi4s_lane2_tready : in STD_LOGIC;
    lnk_tx_axi4s_lane3_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    lnk_tx_axi4s_lane3_tuser : out STD_LOGIC_VECTOR ( 11 downto 0 );
    lnk_tx_axi4s_lane3_tvalid : out STD_LOGIC;
    lnk_tx_axi4s_lane3_tready : in STD_LOGIC;
    lnk_tx_sb_status_axi4s_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    lnk_tx_sb_status_axi4s_tvalid : in STD_LOGIC;
    lnk_tx_sb_status_axi4s_tready : out STD_LOGIC;
    link_bw_high_out : out STD_LOGIC;
    link_bw_hbr2_out : out STD_LOGIC;
    bw_changed_out : out STD_LOGIC
  );

end bd_38d0_dp_0;

architecture stub of bd_38d0_dp_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_aclk,s_axi_aresetn,s_axi_awaddr[31:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[31:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,axi_int,tx_vid_clk,tx_vid_rst,tx_vid_vsync,tx_vid_hsync,tx_vid_oddeven,tx_vid_enable,tx_vid_pixel0[47:0],tx_vid_pixel1[47:0],tx_vid_pixel2[47:0],tx_vid_pixel3[47:0],tx_gt_ctrl_out[31:0],tx_bpc[2:0],tx_video_format[2:0],tx_ppc[2:0],txss_axi_control[31:0],txss_axi_status[31:0],aux_tx_data_in,aux_tx_data_out,aux_tx_data_en_out_n,tx_hpd,s_aud_axis_aclk,s_aud_axis_aresetn,aud_clk,aud_rst,s_axis_audio_ingress_tdata[31:0],s_axis_audio_ingress_tid[7:0],s_axis_audio_ingress_tvalid,s_axis_audio_ingress_tready,tx_enc_clk,tx_lnk_clk,lnk_tx_axi4s_lane0_tdata[31:0],lnk_tx_axi4s_lane0_tuser[11:0],lnk_tx_axi4s_lane0_tvalid,lnk_tx_axi4s_lane0_tready,lnk_tx_axi4s_lane1_tdata[31:0],lnk_tx_axi4s_lane1_tuser[11:0],lnk_tx_axi4s_lane1_tvalid,lnk_tx_axi4s_lane1_tready,lnk_tx_axi4s_lane2_tdata[31:0],lnk_tx_axi4s_lane2_tuser[11:0],lnk_tx_axi4s_lane2_tvalid,lnk_tx_axi4s_lane2_tready,lnk_tx_axi4s_lane3_tdata[31:0],lnk_tx_axi4s_lane3_tuser[11:0],lnk_tx_axi4s_lane3_tvalid,lnk_tx_axi4s_lane3_tready,lnk_tx_sb_status_axi4s_tdata[7:0],lnk_tx_sb_status_axi4s_tvalid,lnk_tx_sb_status_axi4s_tready,link_bw_high_out,link_bw_hbr2_out,bw_changed_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_38d0_dp_0_dport_wrapper,Vivado 2023.2";
begin
end;
