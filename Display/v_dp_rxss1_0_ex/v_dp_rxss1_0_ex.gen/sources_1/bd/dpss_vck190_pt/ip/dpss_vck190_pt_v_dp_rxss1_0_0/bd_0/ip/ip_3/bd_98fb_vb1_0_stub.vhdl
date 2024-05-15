-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu May  9 19:05:20 2024
-- Host        : Vulcan running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_v_dp_rxss1_0_0/bd_0/ip/ip_3/bd_98fb_vb1_0_stub.vhdl
-- Design      : bd_98fb_vb1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvc1902-vsva2197-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_98fb_vb1_0 is
  Port ( 
    vid_pixel_clk : in STD_LOGIC;
    vid_reset : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_pixel0 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    vid_pixel1 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    vid_pixel2 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    vid_pixel3 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    dp_hres : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pixel_mode : in STD_LOGIC_VECTOR ( 2 downto 0 );
    bpc : in STD_LOGIC_VECTOR ( 2 downto 0 );
    color_format : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 119 downto 0 );
    m_axis_video_tlast : out STD_LOGIC;
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    wr_error : out STD_LOGIC;
    rd_error : out STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    hres_cntr_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    vres_cntr_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_port : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );

end bd_98fb_vb1_0;

architecture stub of bd_98fb_vb1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "vid_pixel_clk,vid_reset,vid_active_video,vid_vsync,vid_hsync,vid_pixel0[47:0],vid_pixel1[47:0],vid_pixel2[47:0],vid_pixel3[47:0],dp_hres[15:0],pixel_mode[2:0],bpc[2:0],color_format[2:0],m_axis_aclk,m_axis_video_tdata[119:0],m_axis_video_tlast,m_axis_video_tvalid,m_axis_video_tready,wr_error,rd_error,m_axis_video_tuser[0:0],hres_cntr_out[15:0],vres_cntr_out[15:0],debug_port[4:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dp_videoaxi4s_bridge_v1_0_2,Vivado 2023.2";
begin
end;
