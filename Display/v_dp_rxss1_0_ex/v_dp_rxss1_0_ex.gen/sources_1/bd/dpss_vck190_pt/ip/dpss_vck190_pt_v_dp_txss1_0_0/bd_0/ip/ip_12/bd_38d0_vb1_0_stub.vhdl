-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu May  9 19:11:13 2024
-- Host        : Vulcan running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_v_dp_txss1_0_0/bd_0/ip/ip_12/bd_38d0_vb1_0_stub.vhdl
-- Design      : bd_38d0_vb1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvc1902-vsva2197-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_38d0_vb1_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    soft_reset : in STD_LOGIC;
    video_in_tdata : in STD_LOGIC_VECTOR ( 119 downto 0 );
    video_in_tlast : in STD_LOGIC;
    video_in_tuser : in STD_LOGIC;
    video_in_tvalid : in STD_LOGIC;
    video_in_tready : out STD_LOGIC;
    vtiming_in_vblank : in STD_LOGIC_VECTOR ( 0 to 0 );
    vtiming_in_active_video : in STD_LOGIC_VECTOR ( 0 to 0 );
    vtiming_in_vsync : in STD_LOGIC_VECTOR ( 0 to 0 );
    vtiming_in_hblank : in STD_LOGIC_VECTOR ( 0 to 0 );
    vtiming_in_hsync : in STD_LOGIC_VECTOR ( 0 to 0 );
    vtiming_in_field_id : in STD_LOGIC_VECTOR ( 0 to 0 );
    vid_io_out_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    vtg_ce : out STD_LOGIC;
    tx_vid_clk : out STD_LOGIC;
    tx_vid_reset : out STD_LOGIC;
    tx_vid_vsync : out STD_LOGIC_VECTOR ( 0 to 0 );
    tx_vid_hsync : out STD_LOGIC_VECTOR ( 0 to 0 );
    tx_odd_even : out STD_LOGIC;
    tx_vid_enable : out STD_LOGIC_VECTOR ( 0 to 0 );
    tx_vid_pixel0 : out STD_LOGIC_VECTOR ( 47 downto 0 );
    tx_vid_pixel1 : out STD_LOGIC_VECTOR ( 47 downto 0 );
    tx_vid_pixel2 : out STD_LOGIC_VECTOR ( 47 downto 0 );
    tx_vid_pixel3 : out STD_LOGIC_VECTOR ( 47 downto 0 );
    locked : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    sof_state_out : out STD_LOGIC;
    ppc : in STD_LOGIC_VECTOR ( 2 downto 0 );
    vid_format : in STD_LOGIC_VECTOR ( 2 downto 0 );
    vid_io_out_ce : in STD_LOGIC;
    fid : in STD_LOGIC;
    aclken : in STD_LOGIC
  );

end bd_38d0_vb1_0;

architecture stub of bd_38d0_vb1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,soft_reset,video_in_tdata[119:0],video_in_tlast,video_in_tuser,video_in_tvalid,video_in_tready,vtiming_in_vblank[0:0],vtiming_in_active_video[0:0],vtiming_in_vsync[0:0],vtiming_in_hblank[0:0],vtiming_in_hsync[0:0],vtiming_in_field_id[0:0],vid_io_out_clk,rst,vtg_ce,tx_vid_clk,tx_vid_reset,tx_vid_vsync[0:0],tx_vid_hsync[0:0],tx_odd_even,tx_vid_enable[0:0],tx_vid_pixel0[47:0],tx_vid_pixel1[47:0],tx_vid_pixel2[47:0],tx_vid_pixel3[47:0],locked,overflow,underflow,sof_state_out,ppc[2:0],vid_format[2:0],vid_io_out_ce,fid,aclken";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi4svideo_bridge_v1_0_17,Vivado 2023.2";
begin
end;
