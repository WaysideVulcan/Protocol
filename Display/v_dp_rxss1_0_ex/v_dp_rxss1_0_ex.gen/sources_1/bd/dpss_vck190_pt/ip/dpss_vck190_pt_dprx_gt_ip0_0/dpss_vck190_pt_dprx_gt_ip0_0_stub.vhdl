-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu May  9 19:08:13 2024
-- Host        : Vulcan running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_dprx_gt_ip0_0/dpss_vck190_pt_dprx_gt_ip0_0_stub.vhdl
-- Design      : dpss_vck190_pt_dprx_gt_ip0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvc1902-vsva2197-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dpss_vck190_pt_dprx_gt_ip0_0 is
  Port ( 
    gt_ctrl_aclk : in STD_LOGIC;
    gt_ctrl_aresetn : in STD_LOGIC;
    dp_gt_ctrl : in STD_LOGIC_VECTOR ( 31 downto 0 );
    status_sb_rx_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    status_sb_rx_tvalid : out STD_LOGIC;
    status_sb_rx_tready : in STD_LOGIC;
    control_sb_rx_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    control_sb_rx_tvalid : in STD_LOGIC;
    control_sb_rx_tready : out STD_LOGIC;
    ch0_rxdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ch0_rxuserrdy : out STD_LOGIC;
    ch0_rxpmaresetdone : in STD_LOGIC;
    ch0_rxmstdatapathreset : out STD_LOGIC;
    ch0_rxprogdivreset : out STD_LOGIC;
    ch0_rxresetdone : in STD_LOGIC;
    ch0_rxbufstatus : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ch0_rxmstreset : out STD_LOGIC;
    ch0_rxmstresetdone : in STD_LOGIC;
    ch0_rxcdrlock : in STD_LOGIC;
    ch0_rxbyteisaligned : in STD_LOGIC;
    ch0_rxctrl0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ch0_rxctrl1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ch0_rxctrl3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ch0_rxlpmen : out STD_LOGIC;
    ch0_rxpd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ch0_rxpolarity : out STD_LOGIC;
    ch0_rxprbserr : in STD_LOGIC;
    ch0_rxprbssel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ch0_rxrate : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ch0_rxpcsresetmask : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ch0_rxpmaresetmask : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ch1_rxdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ch1_rxuserrdy : out STD_LOGIC;
    ch1_rxpmaresetdone : in STD_LOGIC;
    ch1_rxmstdatapathreset : out STD_LOGIC;
    ch1_rxprogdivreset : out STD_LOGIC;
    ch1_rxresetdone : in STD_LOGIC;
    ch1_rxbufstatus : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ch1_rxmstreset : out STD_LOGIC;
    ch1_rxmstresetdone : in STD_LOGIC;
    ch1_rxcdrlock : in STD_LOGIC;
    ch1_rxbyteisaligned : in STD_LOGIC;
    ch1_rxctrl0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ch1_rxctrl1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ch1_rxctrl3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ch1_rxlpmen : out STD_LOGIC;
    ch1_rxpd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ch1_rxpolarity : out STD_LOGIC;
    ch1_rxprbserr : in STD_LOGIC;
    ch1_rxprbssel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ch1_rxrate : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ch1_rxpcsresetmask : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ch1_rxpmaresetmask : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ch2_rxdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ch2_rxuserrdy : out STD_LOGIC;
    ch2_rxpmaresetdone : in STD_LOGIC;
    ch2_rxmstdatapathreset : out STD_LOGIC;
    ch2_rxprogdivreset : out STD_LOGIC;
    ch2_rxresetdone : in STD_LOGIC;
    ch2_rxbufstatus : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ch2_rxmstreset : out STD_LOGIC;
    ch2_rxmstresetdone : in STD_LOGIC;
    ch2_rxcdrlock : in STD_LOGIC;
    ch2_rxbyteisaligned : in STD_LOGIC;
    ch2_rxctrl0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ch2_rxctrl1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ch2_rxctrl3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ch2_rxlpmen : out STD_LOGIC;
    ch2_rxpd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ch2_rxpolarity : out STD_LOGIC;
    ch2_rxprbserr : in STD_LOGIC;
    ch2_rxprbssel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ch2_rxrate : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ch2_rxpcsresetmask : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ch2_rxpmaresetmask : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ch3_rxdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ch3_rxuserrdy : out STD_LOGIC;
    ch3_rxpmaresetdone : in STD_LOGIC;
    ch3_rxmstdatapathreset : out STD_LOGIC;
    ch3_rxprogdivreset : out STD_LOGIC;
    ch3_rxresetdone : in STD_LOGIC;
    ch3_rxbufstatus : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ch3_rxmstreset : out STD_LOGIC;
    ch3_rxmstresetdone : in STD_LOGIC;
    ch3_rxcdrlock : in STD_LOGIC;
    ch3_rxbyteisaligned : in STD_LOGIC;
    ch3_rxctrl0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ch3_rxctrl1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ch3_rxctrl3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ch3_rxlpmen : out STD_LOGIC;
    ch3_rxpd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ch3_rxpolarity : out STD_LOGIC;
    ch3_rxprbserr : in STD_LOGIC;
    ch3_rxprbssel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ch3_rxrate : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ch3_rxpcsresetmask : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ch3_rxpmaresetmask : out STD_LOGIC_VECTOR ( 6 downto 0 );
    rx_axi4s_ch0_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rx_axi4s_ch0_tuser : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rx_axi4s_ch0_tvalid : out STD_LOGIC;
    rx_axi4s_ch0_tready : in STD_LOGIC;
    rx_axi4s_ch1_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rx_axi4s_ch1_tuser : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rx_axi4s_ch1_tvalid : out STD_LOGIC;
    rx_axi4s_ch1_tready : in STD_LOGIC;
    rx_axi4s_ch2_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rx_axi4s_ch2_tuser : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rx_axi4s_ch2_tvalid : out STD_LOGIC;
    rx_axi4s_ch2_tready : in STD_LOGIC;
    rx_axi4s_ch3_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rx_axi4s_ch3_tuser : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rx_axi4s_ch3_tvalid : out STD_LOGIC;
    rx_axi4s_ch3_tready : in STD_LOGIC;
    gt_rxusrclk : in STD_LOGIC;
    rx_mmcm_locked : in STD_LOGIC;
    rx_pll0_locked : in STD_LOGIC;
    rx_pll1_locked : in STD_LOGIC;
    rx_pll1_reset : out STD_LOGIC;
    rx_pll0_reset : out STD_LOGIC;
    rx_bufg_gt_clr : out STD_LOGIC;
    gt_powergood : in STD_LOGIC
  );

end dpss_vck190_pt_dprx_gt_ip0_0;

architecture stub of dpss_vck190_pt_dprx_gt_ip0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "gt_ctrl_aclk,gt_ctrl_aresetn,dp_gt_ctrl[31:0],status_sb_rx_tdata[15:0],status_sb_rx_tvalid,status_sb_rx_tready,control_sb_rx_tdata[7:0],control_sb_rx_tvalid,control_sb_rx_tready,ch0_rxdata[31:0],ch0_rxuserrdy,ch0_rxpmaresetdone,ch0_rxmstdatapathreset,ch0_rxprogdivreset,ch0_rxresetdone,ch0_rxbufstatus[2:0],ch0_rxmstreset,ch0_rxmstresetdone,ch0_rxcdrlock,ch0_rxbyteisaligned,ch0_rxctrl0[15:0],ch0_rxctrl1[15:0],ch0_rxctrl3[7:0],ch0_rxlpmen,ch0_rxpd[1:0],ch0_rxpolarity,ch0_rxprbserr,ch0_rxprbssel[3:0],ch0_rxrate[2:0],ch0_rxpcsresetmask[4:0],ch0_rxpmaresetmask[6:0],ch1_rxdata[31:0],ch1_rxuserrdy,ch1_rxpmaresetdone,ch1_rxmstdatapathreset,ch1_rxprogdivreset,ch1_rxresetdone,ch1_rxbufstatus[2:0],ch1_rxmstreset,ch1_rxmstresetdone,ch1_rxcdrlock,ch1_rxbyteisaligned,ch1_rxctrl0[15:0],ch1_rxctrl1[15:0],ch1_rxctrl3[7:0],ch1_rxlpmen,ch1_rxpd[1:0],ch1_rxpolarity,ch1_rxprbserr,ch1_rxprbssel[3:0],ch1_rxrate[2:0],ch1_rxpcsresetmask[4:0],ch1_rxpmaresetmask[6:0],ch2_rxdata[31:0],ch2_rxuserrdy,ch2_rxpmaresetdone,ch2_rxmstdatapathreset,ch2_rxprogdivreset,ch2_rxresetdone,ch2_rxbufstatus[2:0],ch2_rxmstreset,ch2_rxmstresetdone,ch2_rxcdrlock,ch2_rxbyteisaligned,ch2_rxctrl0[15:0],ch2_rxctrl1[15:0],ch2_rxctrl3[7:0],ch2_rxlpmen,ch2_rxpd[1:0],ch2_rxpolarity,ch2_rxprbserr,ch2_rxprbssel[3:0],ch2_rxrate[2:0],ch2_rxpcsresetmask[4:0],ch2_rxpmaresetmask[6:0],ch3_rxdata[31:0],ch3_rxuserrdy,ch3_rxpmaresetdone,ch3_rxmstdatapathreset,ch3_rxprogdivreset,ch3_rxresetdone,ch3_rxbufstatus[2:0],ch3_rxmstreset,ch3_rxmstresetdone,ch3_rxcdrlock,ch3_rxbyteisaligned,ch3_rxctrl0[15:0],ch3_rxctrl1[15:0],ch3_rxctrl3[7:0],ch3_rxlpmen,ch3_rxpd[1:0],ch3_rxpolarity,ch3_rxprbserr,ch3_rxprbssel[3:0],ch3_rxrate[2:0],ch3_rxpcsresetmask[4:0],ch3_rxpmaresetmask[6:0],rx_axi4s_ch0_tdata[31:0],rx_axi4s_ch0_tuser[11:0],rx_axi4s_ch0_tvalid,rx_axi4s_ch0_tready,rx_axi4s_ch1_tdata[31:0],rx_axi4s_ch1_tuser[11:0],rx_axi4s_ch1_tvalid,rx_axi4s_ch1_tready,rx_axi4s_ch2_tdata[31:0],rx_axi4s_ch2_tuser[11:0],rx_axi4s_ch2_tvalid,rx_axi4s_ch2_tready,rx_axi4s_ch3_tdata[31:0],rx_axi4s_ch3_tuser[11:0],rx_axi4s_ch3_tvalid,rx_axi4s_ch3_tready,gt_rxusrclk,rx_mmcm_locked,rx_pll0_locked,rx_pll1_locked,rx_pll1_reset,rx_pll0_reset,rx_bufg_gt_clr,gt_powergood";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dpss_vck190_pt_dprx_gt_ip0_0_top,Vivado 2023.2";
begin
end;
