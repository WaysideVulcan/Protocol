-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu May  9 19:08:13 2024
-- Host        : Vulcan running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_dprx_gt_ip0_0/dpss_vck190_pt_dprx_gt_ip0_0_sim_netlist.vhdl
-- Design      : dpss_vck190_pt_dprx_gt_ip0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvc1902-vsva2197-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single : entity is "xpm_cdc_array_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single : entity is 3;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single : entity is "ARRAY_SINGLE";
end dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single;

architecture STRUCTURE of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single is
  signal async_path_bit : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \syncstages_ff[0]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \syncstages_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \syncstages_ff[0]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[0]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[1]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[1]\ : signal is "true";
  attribute async_reg of \syncstages_ff[1]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[1]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[2]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[2]\ : signal is "true";
  attribute async_reg of \syncstages_ff[2]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[2]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[3]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[3]\ : signal is "true";
  attribute async_reg of \syncstages_ff[3]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[3]\ : signal is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][2]\ : label is "ARRAY_SINGLE";
begin
  async_path_bit(2 downto 0) <= src_in(2 downto 0);
  dest_out(2 downto 0) <= \syncstages_ff[3]\(2 downto 0);
\syncstages_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(0),
      Q => \syncstages_ff[0]\(0),
      R => '0'
    );
\syncstages_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(1),
      Q => \syncstages_ff[0]\(1),
      R => '0'
    );
\syncstages_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(2),
      Q => \syncstages_ff[0]\(2),
      R => '0'
    );
\syncstages_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(0),
      Q => \syncstages_ff[1]\(0),
      R => '0'
    );
\syncstages_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(1),
      Q => \syncstages_ff[1]\(1),
      R => '0'
    );
\syncstages_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(2),
      Q => \syncstages_ff[1]\(2),
      R => '0'
    );
\syncstages_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(0),
      Q => \syncstages_ff[2]\(0),
      R => '0'
    );
\syncstages_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(1),
      Q => \syncstages_ff[2]\(1),
      R => '0'
    );
\syncstages_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(2),
      Q => \syncstages_ff[2]\(2),
      R => '0'
    );
\syncstages_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(0),
      Q => \syncstages_ff[3]\(0),
      R => '0'
    );
\syncstages_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(1),
      Q => \syncstages_ff[3]\(1),
      R => '0'
    );
\syncstages_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(2),
      Q => \syncstages_ff[3]\(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__5\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__5\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__5\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__5\ : entity is "xpm_cdc_array_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__5\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__5\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__5\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__5\ : entity is 3;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__5\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__5\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__5\ : entity is "ARRAY_SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__5\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__5\ is
  signal async_path_bit : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \syncstages_ff[0]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \syncstages_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \syncstages_ff[0]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[0]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[1]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[1]\ : signal is "true";
  attribute async_reg of \syncstages_ff[1]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[1]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[2]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[2]\ : signal is "true";
  attribute async_reg of \syncstages_ff[2]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[2]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[3]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[3]\ : signal is "true";
  attribute async_reg of \syncstages_ff[3]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[3]\ : signal is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][2]\ : label is "ARRAY_SINGLE";
begin
  async_path_bit(1 downto 0) <= src_in(1 downto 0);
  dest_out(2 downto 0) <= \syncstages_ff[3]\(2 downto 0);
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => async_path_bit(2)
    );
\syncstages_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(0),
      Q => \syncstages_ff[0]\(0),
      R => '0'
    );
\syncstages_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(1),
      Q => \syncstages_ff[0]\(1),
      R => '0'
    );
\syncstages_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(2),
      Q => \syncstages_ff[0]\(2),
      R => '0'
    );
\syncstages_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(0),
      Q => \syncstages_ff[1]\(0),
      R => '0'
    );
\syncstages_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(1),
      Q => \syncstages_ff[1]\(1),
      R => '0'
    );
\syncstages_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(2),
      Q => \syncstages_ff[1]\(2),
      R => '0'
    );
\syncstages_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(0),
      Q => \syncstages_ff[2]\(0),
      R => '0'
    );
\syncstages_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(1),
      Q => \syncstages_ff[2]\(1),
      R => '0'
    );
\syncstages_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(2),
      Q => \syncstages_ff[2]\(2),
      R => '0'
    );
\syncstages_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(0),
      Q => \syncstages_ff[3]\(0),
      R => '0'
    );
\syncstages_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(1),
      Q => \syncstages_ff[3]\(1),
      R => '0'
    );
\syncstages_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(2),
      Q => \syncstages_ff[3]\(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__6\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__6\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__6\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__6\ : entity is "xpm_cdc_array_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__6\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__6\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__6\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__6\ : entity is 3;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__6\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__6\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__6\ : entity is "ARRAY_SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__6\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__6\ is
  signal async_path_bit : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \syncstages_ff[0]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \syncstages_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \syncstages_ff[0]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[0]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[1]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[1]\ : signal is "true";
  attribute async_reg of \syncstages_ff[1]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[1]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[2]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[2]\ : signal is "true";
  attribute async_reg of \syncstages_ff[2]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[2]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[3]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[3]\ : signal is "true";
  attribute async_reg of \syncstages_ff[3]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[3]\ : signal is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][2]\ : label is "ARRAY_SINGLE";
begin
  async_path_bit(2 downto 0) <= src_in(2 downto 0);
  dest_out(2 downto 0) <= \syncstages_ff[3]\(2 downto 0);
\syncstages_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(0),
      Q => \syncstages_ff[0]\(0),
      R => '0'
    );
\syncstages_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(1),
      Q => \syncstages_ff[0]\(1),
      R => '0'
    );
\syncstages_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(2),
      Q => \syncstages_ff[0]\(2),
      R => '0'
    );
\syncstages_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(0),
      Q => \syncstages_ff[1]\(0),
      R => '0'
    );
\syncstages_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(1),
      Q => \syncstages_ff[1]\(1),
      R => '0'
    );
\syncstages_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(2),
      Q => \syncstages_ff[1]\(2),
      R => '0'
    );
\syncstages_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(0),
      Q => \syncstages_ff[2]\(0),
      R => '0'
    );
\syncstages_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(1),
      Q => \syncstages_ff[2]\(1),
      R => '0'
    );
\syncstages_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(2),
      Q => \syncstages_ff[2]\(2),
      R => '0'
    );
\syncstages_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(0),
      Q => \syncstages_ff[3]\(0),
      R => '0'
    );
\syncstages_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(1),
      Q => \syncstages_ff[3]\(1),
      R => '0'
    );
\syncstages_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(2),
      Q => \syncstages_ff[3]\(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__7\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__7\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__7\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__7\ : entity is "xpm_cdc_array_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__7\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__7\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__7\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__7\ : entity is 3;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__7\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__7\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__7\ : entity is "ARRAY_SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__7\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__7\ is
  signal async_path_bit : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \syncstages_ff[0]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \syncstages_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \syncstages_ff[0]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[0]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[1]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[1]\ : signal is "true";
  attribute async_reg of \syncstages_ff[1]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[1]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[2]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[2]\ : signal is "true";
  attribute async_reg of \syncstages_ff[2]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[2]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[3]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[3]\ : signal is "true";
  attribute async_reg of \syncstages_ff[3]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[3]\ : signal is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][2]\ : label is "ARRAY_SINGLE";
begin
  async_path_bit(2 downto 0) <= src_in(2 downto 0);
  dest_out(2 downto 0) <= \syncstages_ff[3]\(2 downto 0);
\syncstages_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(0),
      Q => \syncstages_ff[0]\(0),
      R => '0'
    );
\syncstages_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(1),
      Q => \syncstages_ff[0]\(1),
      R => '0'
    );
\syncstages_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(2),
      Q => \syncstages_ff[0]\(2),
      R => '0'
    );
\syncstages_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(0),
      Q => \syncstages_ff[1]\(0),
      R => '0'
    );
\syncstages_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(1),
      Q => \syncstages_ff[1]\(1),
      R => '0'
    );
\syncstages_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(2),
      Q => \syncstages_ff[1]\(2),
      R => '0'
    );
\syncstages_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(0),
      Q => \syncstages_ff[2]\(0),
      R => '0'
    );
\syncstages_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(1),
      Q => \syncstages_ff[2]\(1),
      R => '0'
    );
\syncstages_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(2),
      Q => \syncstages_ff[2]\(2),
      R => '0'
    );
\syncstages_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(0),
      Q => \syncstages_ff[3]\(0),
      R => '0'
    );
\syncstages_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(1),
      Q => \syncstages_ff[3]\(1),
      R => '0'
    );
\syncstages_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(2),
      Q => \syncstages_ff[3]\(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__8\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__8\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__8\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__8\ : entity is "xpm_cdc_array_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__8\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__8\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__8\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__8\ : entity is 3;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__8\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__8\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__8\ : entity is "ARRAY_SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__8\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__8\ is
  signal async_path_bit : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \syncstages_ff[0]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \syncstages_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \syncstages_ff[0]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[0]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[1]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[1]\ : signal is "true";
  attribute async_reg of \syncstages_ff[1]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[1]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[2]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[2]\ : signal is "true";
  attribute async_reg of \syncstages_ff[2]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[2]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[3]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[3]\ : signal is "true";
  attribute async_reg of \syncstages_ff[3]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[3]\ : signal is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][2]\ : label is "ARRAY_SINGLE";
begin
  async_path_bit(2 downto 0) <= src_in(2 downto 0);
  dest_out(2 downto 0) <= \syncstages_ff[3]\(2 downto 0);
\syncstages_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(0),
      Q => \syncstages_ff[0]\(0),
      R => '0'
    );
\syncstages_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(1),
      Q => \syncstages_ff[0]\(1),
      R => '0'
    );
\syncstages_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(2),
      Q => \syncstages_ff[0]\(2),
      R => '0'
    );
\syncstages_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(0),
      Q => \syncstages_ff[1]\(0),
      R => '0'
    );
\syncstages_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(1),
      Q => \syncstages_ff[1]\(1),
      R => '0'
    );
\syncstages_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(2),
      Q => \syncstages_ff[1]\(2),
      R => '0'
    );
\syncstages_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(0),
      Q => \syncstages_ff[2]\(0),
      R => '0'
    );
\syncstages_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(1),
      Q => \syncstages_ff[2]\(1),
      R => '0'
    );
\syncstages_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(2),
      Q => \syncstages_ff[2]\(2),
      R => '0'
    );
\syncstages_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(0),
      Q => \syncstages_ff[3]\(0),
      R => '0'
    );
\syncstages_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(1),
      Q => \syncstages_ff[3]\(1),
      R => '0'
    );
\syncstages_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(2),
      Q => \syncstages_ff[3]\(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst : entity is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst : entity is "ASYNC_RST";
end dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst;

architecture STRUCTURE of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst is
  signal arststages_ff : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[2]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(2);
\arststages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      Q => arststages_ff(0),
      R => '0'
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      Q => arststages_ff(1),
      R => '0'
    );
\arststages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(1),
      Q => arststages_ff(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__1\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__1\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__1\ : entity is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__1\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__1\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__1\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__1\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__1\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__1\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__1\ : entity is "ASYNC_RST";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__1\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__1\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[2]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(2);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
\arststages_ff_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(1),
      PRE => src_arst,
      Q => arststages_ff(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__2\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__2\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__2\ : entity is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__2\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__2\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__2\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__2\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__2\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__2\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__2\ : entity is "ASYNC_RST";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__2\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__2\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[2]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(2);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
\arststages_ff_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(1),
      PRE => src_arst,
      Q => arststages_ff(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__3\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__3\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__3\ : entity is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__3\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__3\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__3\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__3\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__3\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__3\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__3\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__3\ : entity is "ASYNC_RST";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__3\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__3\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[2]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(2);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
\arststages_ff_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(1),
      PRE => src_arst,
      Q => arststages_ff(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__4\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__4\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__4\ : entity is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__4\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__4\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__4\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__4\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__4\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__4\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__4\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__4\ : entity is "ASYNC_RST";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__4\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__4\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[2]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(2);
\arststages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      Q => arststages_ff(0),
      R => '0'
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      Q => arststages_ff(1),
      R => '0'
    );
\arststages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(1),
      Q => arststages_ff(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single : entity is "SINGLE";
end dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single;

architecture STRUCTURE of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__41\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__41\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__41\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__41\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__41\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__41\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__41\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__41\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__41\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__41\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__41\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__41\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__42\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__42\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__42\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__42\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__42\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__42\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__42\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__42\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__42\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__42\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__42\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__42\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__43\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__43\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__43\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__43\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__43\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__43\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__43\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__43\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__43\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__43\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__43\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__43\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__44\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__44\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__44\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__44\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__44\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__44\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__44\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__44\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__44\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__44\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__44\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__44\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__45\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__45\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__45\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__45\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__45\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__45\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__45\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__45\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__45\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__45\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__45\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__45\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__46\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__46\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__46\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__46\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__46\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__46\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__46\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__46\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__46\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__46\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__46\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__46\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__47\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__47\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__47\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__47\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__47\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__47\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__47\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__47\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__47\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__47\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__47\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__47\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__48\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__48\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__48\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__48\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__48\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__48\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__48\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__48\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__48\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__48\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__48\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__48\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__49\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__49\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__49\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__49\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__49\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__49\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__49\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__49\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__49\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__49\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__49\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__49\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__50\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__50\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__50\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__50\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__50\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__50\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__50\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__50\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__50\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__50\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__50\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__50\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__51\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__51\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__51\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__51\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__51\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__51\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__51\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__51\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__51\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__51\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__51\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__51\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__52\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__52\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__52\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__52\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__52\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__52\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__52\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__52\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__52\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__52\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__52\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__52\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__53\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__53\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__53\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__53\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__53\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__53\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__53\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__53\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__53\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__53\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__53\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__53\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__54\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__54\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__54\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__54\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__54\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__54\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__54\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__54\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__54\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__54\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__54\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__54\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__55\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__55\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__55\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__55\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__55\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__55\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__55\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__55\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__55\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__55\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__55\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__55\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__56\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__56\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__56\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__56\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__56\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__56\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__56\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__56\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__56\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__56\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__56\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__56\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__57\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__57\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__57\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__57\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__57\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__57\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__57\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__57\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__57\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__57\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__57\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__57\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__58\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__58\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__58\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__58\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__58\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__58\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__58\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__58\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__58\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__58\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__58\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__58\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__59\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__59\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__59\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__59\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__59\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__59\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__59\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__59\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__59\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__59\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__59\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__59\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__60\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__60\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__60\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__60\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__60\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__60\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__60\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__60\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__60\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__60\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__60\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__60\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__61\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__61\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__61\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__61\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__61\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__61\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__61\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__61\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__61\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__61\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__61\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__61\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__62\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__62\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__62\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__62\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__62\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__62\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__62\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__62\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__62\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__62\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__62\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__62\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__63\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__63\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__63\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__63\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__63\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__63\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__63\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__63\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__63\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__63\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__63\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__63\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__64\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__64\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__64\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__64\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__64\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__64\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__64\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__64\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__64\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__64\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__64\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__64\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__65\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__65\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__65\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__65\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__65\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__65\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__65\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__65\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__65\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__65\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__65\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__65\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__66\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__66\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__66\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__66\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__66\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__66\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__66\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__66\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__66\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__66\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__66\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__66\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__67\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__67\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__67\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__67\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__67\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__67\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__67\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__67\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__67\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__67\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__67\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__67\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__68\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__68\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__68\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__68\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__68\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__68\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__68\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__68\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__68\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__68\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__68\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__68\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__69\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__69\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__69\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__69\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__69\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__69\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__69\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__69\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__69\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__69\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__69\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__69\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__70\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__70\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__70\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__70\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__70\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__70\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__70\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__70\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__70\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__70\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__70\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__70\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__71\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__71\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__71\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__71\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__71\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__71\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__71\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__71\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__71\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__71\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__71\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__71\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__72\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__72\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__72\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__72\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__72\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__72\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__72\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__72\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__72\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__72\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__72\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__72\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__73\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__73\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__73\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__73\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__73\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__73\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__73\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__73\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__73\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__73\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__73\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__73\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__74\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__74\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__74\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__74\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__74\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__74\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__74\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__74\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__74\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__74\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__74\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__74\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__75\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__75\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__75\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__75\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__75\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__75\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__75\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__75\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__75\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__75\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__75\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__75\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__76\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__76\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__76\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__76\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__76\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__76\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__76\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__76\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__76\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__76\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__76\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__76\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__77\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__77\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__77\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__77\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__77\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__77\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__77\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__77\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__77\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__77\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__77\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__77\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__78\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__78\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__78\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__78\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__78\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__78\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__78\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__78\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__78\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__78\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__78\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__78\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__79\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__79\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__79\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__79\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__79\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__79\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__79\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__79\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__79\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__79\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__79\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__79\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__80\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__80\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__80\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__80\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__80\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__80\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__80\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__80\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__80\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__80\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__80\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__80\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0\ is
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
src_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in,
      Q => p_0_in(0),
      R => '0'
    );
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => p_0_in(0),
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__4\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__4\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__4\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__4\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__4\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__4\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__4\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__4\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__4\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__4\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__4\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__4\ is
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
src_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in,
      Q => p_0_in(0),
      R => '0'
    );
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => p_0_in(0),
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__5\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__5\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__5\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__5\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__5\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__5\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__5\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__5\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__5\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__5\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__5\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__5\ is
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
src_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in,
      Q => p_0_in(0),
      R => '0'
    );
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => p_0_in(0),
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__6\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__6\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__6\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__6\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__6\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__6\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__6\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__6\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__6\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__6\ : entity is "SINGLE";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__6\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__6\ is
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
src_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in,
      Q => p_0_in(0),
      R => '0'
    );
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => p_0_in(0),
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst : entity is 3;
  attribute INIT : string;
  attribute INIT of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst : entity is "SYNC_RST";
end dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst;

architecture STRUCTURE of dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(2);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__5\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__5\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__5\ : entity is 3;
  attribute INIT : string;
  attribute INIT of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__5\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__5\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__5\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__5\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__5\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__5\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__5\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__5\ : entity is "SYNC_RST";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__5\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__5\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(2);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__6\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__6\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__6\ : entity is 3;
  attribute INIT : string;
  attribute INIT of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__6\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__6\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__6\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__6\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__6\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__6\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__6\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__6\ : entity is "SYNC_RST";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__6\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__6\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(2);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__7\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__7\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__7\ : entity is 3;
  attribute INIT : string;
  attribute INIT of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__7\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__7\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__7\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__7\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__7\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__7\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__7\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__7\ : entity is "SYNC_RST";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__7\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__7\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(2);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__8\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__8\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__8\ : entity is 3;
  attribute INIT : string;
  attribute INIT of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__8\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__8\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__8\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__8\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__8\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__8\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__8\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__8\ : entity is "SYNC_RST";
end \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__8\;

architecture STRUCTURE of \dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__8\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(2);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst is
  port (
    mst_rx_reset : out STD_LOGIC;
    mst_rx_dp_reset : out STD_LOGIC;
    rxuserrdy_out : out STD_LOGIC;
    gtwiz_reset_all_in : in STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC;
    gtwiz_reset_tx_datapath_in : in STD_LOGIC;
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC;
    gtpowergood_in : in STD_LOGIC;
    mst_tx_resetdone : in STD_LOGIC;
    mst_rx_resetdone : in STD_LOGIC;
    gtwiz_reset_userclk_tx_active_in : in STD_LOGIC;
    gtwiz_reset_userclk_rx_active_in : in STD_LOGIC
  );
end dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst;

architecture STRUCTURE of dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst is
  signal gtwiz_reset_userclk_rx_active_sync : STD_LOGIC;
  signal rxuserrdy_out_int : STD_LOGIC;
  signal \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.gtpowergood_sync_master\ : STD_LOGIC;
  signal \use_master_reset.gtwiz_reset_sync_master\ : STD_LOGIC;
  signal \use_master_reset.gtwiz_rx_dp_reset_sync_master\ : STD_LOGIC;
  signal \use_master_reset.gtwiz_rx_reset_sync_master\ : STD_LOGIC;
  signal \use_master_reset.mst_rx_dp_reset_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.mst_rx_reset_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.mst_rx_reset_i_2_n_0\ : STD_LOGIC;
  signal \use_master_reset.rxuserrdy_out_int_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_clr_rx\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_clr_rx_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_2_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_2_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_2_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[14]_i_1_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[17]_i_1_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[17]_i_1_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[17]_i_1_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_1_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_1_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_1_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_2_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_2_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_2_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[1]_i_1_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[1]_i_1_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[1]_i_1_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[21]_i_1_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[21]_i_1_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[22]_i_1_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[22]_i_1_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[22]_i_1_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_1_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_1_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_1_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_2_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_2_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_2_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[5]_i_1_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_sat_rx\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_sat_rx_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_sat_rx_i_2_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_sat_rx_i_3_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_sat_rx_i_4_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_mstresetdone_timer_sat_rx_i_5_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_reset_all_master_rx\ : STD_LOGIC;
  signal \use_master_reset.sm_reset_all_master_rx01_out\ : STD_LOGIC;
  signal \use_master_reset.sm_reset_all_master_rx[0]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_reset_all_master_rx[1]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_reset_all_master_rx[2]_i_2_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_reset_all_master_rx[2]_i_3_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_reset_all_master_rx_reg_n_0_[0]\ : STD_LOGIC;
  signal \use_master_reset.sm_reset_all_master_rx_reg_n_0_[1]\ : STD_LOGIC;
  signal \use_master_reset.sm_reset_all_master_rx_reg_n_0_[2]\ : STD_LOGIC;
  signal \use_master_reset.sm_reset_all_timer_clr_master_rx\ : STD_LOGIC;
  signal \use_master_reset.sm_reset_all_timer_clr_master_rx_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_reset_all_timer_ctr_master_rx\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \use_master_reset.sm_reset_all_timer_ctr_master_rx0_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_reset_all_timer_ctr_master_rx[0]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_reset_all_timer_ctr_master_rx[1]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_reset_all_timer_ctr_master_rx[2]_i_1_n_0\ : STD_LOGIC;
  signal \use_master_reset.sm_reset_all_timer_sat_master_rx\ : STD_LOGIC;
  signal \use_master_reset.sm_reset_all_timer_sat_master_rx_i_1_n_0\ : STD_LOGIC;
  signal NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_dest_rst_UNCONNECTED : STD_LOGIC;
  signal \NLW_use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_dest_arst_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_1_dest_rst_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_dp_dest_arst_UNCONNECTED\ : STD_LOGIC;
  attribute DEF_VAL : string;
  attribute DEF_VAL of dpss_vck190_pt_dprx_gt_ip0_0_gtreset_bit_synchronizer_gtwiz_reset_rx_active_inst : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of dpss_vck190_pt_dprx_gt_ip0_0_gtreset_bit_synchronizer_gtwiz_reset_rx_active_inst : label is 3;
  attribute INIT : string;
  attribute INIT of dpss_vck190_pt_dprx_gt_ip0_0_gtreset_bit_synchronizer_gtwiz_reset_rx_active_inst : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of dpss_vck190_pt_dprx_gt_ip0_0_gtreset_bit_synchronizer_gtwiz_reset_rx_active_inst : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of dpss_vck190_pt_dprx_gt_ip0_0_gtreset_bit_synchronizer_gtwiz_reset_rx_active_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of dpss_vck190_pt_dprx_gt_ip0_0_gtreset_bit_synchronizer_gtwiz_reset_rx_active_inst : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of dpss_vck190_pt_dprx_gt_ip0_0_gtreset_bit_synchronizer_gtwiz_reset_rx_active_inst : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of dpss_vck190_pt_dprx_gt_ip0_0_gtreset_bit_synchronizer_gtwiz_reset_rx_active_inst : label is "TRUE";
  attribute DEF_VAL of dpss_vck190_pt_dprx_gt_ip0_0_gtreset_bit_synchronizer_gtwiz_reset_userclk_tx_active_inst : label is "1'b0";
  attribute DEST_SYNC_FF of dpss_vck190_pt_dprx_gt_ip0_0_gtreset_bit_synchronizer_gtwiz_reset_userclk_tx_active_inst : label is 3;
  attribute INIT of dpss_vck190_pt_dprx_gt_ip0_0_gtreset_bit_synchronizer_gtwiz_reset_userclk_tx_active_inst : label is "0";
  attribute INIT_SYNC_FF of dpss_vck190_pt_dprx_gt_ip0_0_gtreset_bit_synchronizer_gtwiz_reset_userclk_tx_active_inst : label is 0;
  attribute SIM_ASSERT_CHK of dpss_vck190_pt_dprx_gt_ip0_0_gtreset_bit_synchronizer_gtwiz_reset_userclk_tx_active_inst : label is 0;
  attribute VERSION of dpss_vck190_pt_dprx_gt_ip0_0_gtreset_bit_synchronizer_gtwiz_reset_userclk_tx_active_inst : label is 0;
  attribute XPM_CDC of dpss_vck190_pt_dprx_gt_ip0_0_gtreset_bit_synchronizer_gtwiz_reset_userclk_tx_active_inst : label is "SYNC_RST";
  attribute XPM_MODULE of dpss_vck190_pt_dprx_gt_ip0_0_gtreset_bit_synchronizer_gtwiz_reset_userclk_tx_active_inst : label is "TRUE";
  attribute DEF_VAL of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_bit_synchronizer_gtpowergood_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_bit_synchronizer_gtpowergood_inst\ : label is 3;
  attribute INIT of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_bit_synchronizer_gtpowergood_inst\ : label is "0";
  attribute INIT_SYNC_FF of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_bit_synchronizer_gtpowergood_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_bit_synchronizer_gtpowergood_inst\ : label is 0;
  attribute VERSION of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_bit_synchronizer_gtpowergood_inst\ : label is 0;
  attribute XPM_CDC of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_bit_synchronizer_gtpowergood_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_bit_synchronizer_gtpowergood_inst\ : label is "TRUE";
  attribute DEF_VAL of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst\ : label is 3;
  attribute INIT_SYNC_FF of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst\ : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst\ : label is 1;
  attribute VERSION of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst\ : label is 0;
  attribute XPM_CDC of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst\ : label is "TRUE";
  attribute DEF_VAL of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx\ : label is "1'b0";
  attribute DEST_SYNC_FF of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx\ : label is 3;
  attribute INIT_SYNC_FF of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx\ : label is 0;
  attribute INV_DEF_VAL of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx\ : label is 1;
  attribute VERSION of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx\ : label is 0;
  attribute XPM_CDC of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx\ : label is "ASYNC_RST";
  attribute XPM_MODULE of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx\ : label is "TRUE";
  attribute DEF_VAL of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx_1\ : label is "1'b0";
  attribute DEST_SYNC_FF of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx_1\ : label is 3;
  attribute INIT of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx_1\ : label is "0";
  attribute INIT_SYNC_FF of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx_1\ : label is 0;
  attribute SIM_ASSERT_CHK of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx_1\ : label is 0;
  attribute VERSION of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx_1\ : label is 0;
  attribute XPM_CDC of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx_1\ : label is "SYNC_RST";
  attribute XPM_MODULE of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx_1\ : label is "TRUE";
  attribute DEF_VAL of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx_dp\ : label is "1'b0";
  attribute DEST_SYNC_FF of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx_dp\ : label is 3;
  attribute INIT_SYNC_FF of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx_dp\ : label is 0;
  attribute INV_DEF_VAL of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx_dp\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx_dp\ : label is 1;
  attribute VERSION of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx_dp\ : label is 0;
  attribute XPM_CDC of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx_dp\ : label is "ASYNC_RST";
  attribute XPM_MODULE of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx_dp\ : label is "TRUE";
  attribute DEF_VAL of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx\ : label is "1'b0";
  attribute DEST_SYNC_FF of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx\ : label is 3;
  attribute INIT_SYNC_FF of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx\ : label is 0;
  attribute INV_DEF_VAL of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx\ : label is 1;
  attribute VERSION of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx\ : label is 0;
  attribute XPM_CDC of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx\ : label is "ASYNC_RST";
  attribute XPM_MODULE of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx\ : label is "TRUE";
  attribute DEF_VAL of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_1\ : label is "1'b0";
  attribute DEST_SYNC_FF of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_1\ : label is 3;
  attribute INIT of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_1\ : label is "0";
  attribute INIT_SYNC_FF of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_1\ : label is 0;
  attribute SIM_ASSERT_CHK of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_1\ : label is 0;
  attribute VERSION of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_1\ : label is 0;
  attribute XPM_CDC of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_1\ : label is "SYNC_RST";
  attribute XPM_MODULE of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_1\ : label is "TRUE";
  attribute DEF_VAL of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_dp\ : label is "1'b0";
  attribute DEST_SYNC_FF of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_dp\ : label is 3;
  attribute INIT_SYNC_FF of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_dp\ : label is 0;
  attribute INV_DEF_VAL of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_dp\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_dp\ : label is 1;
  attribute VERSION of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_dp\ : label is 0;
  attribute XPM_CDC of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_dp\ : label is "ASYNC_RST";
  attribute XPM_MODULE of \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_dp\ : label is "TRUE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \use_master_reset.mst_rx_dp_reset_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \use_master_reset.mst_rx_reset_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \use_master_reset.rxuserrdy_out_int_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \use_master_reset.sm_mstresetdone_timer_clr_rx_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \use_master_reset.sm_reset_all_master_rx[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \use_master_reset.sm_reset_all_master_rx[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \use_master_reset.sm_reset_all_master_rx[2]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \use_master_reset.sm_reset_all_timer_clr_master_rx_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \use_master_reset.sm_reset_all_timer_clr_master_rx_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \use_master_reset.sm_reset_all_timer_ctr_master_rx[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \use_master_reset.sm_reset_all_timer_ctr_master_rx[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \use_master_reset.sm_reset_all_timer_sat_master_rx_i_1\ : label is "soft_lutpair0";
begin
dpss_vck190_pt_dprx_gt_ip0_0_gtreset_bit_synchronizer_gtwiz_reset_rx_active_inst: entity work.dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst
     port map (
      dest_clk => gtwiz_reset_clk_freerun_in,
      dest_rst => gtwiz_reset_userclk_rx_active_sync,
      src_rst => gtwiz_reset_userclk_rx_active_in
    );
dpss_vck190_pt_dprx_gt_ip0_0_gtreset_bit_synchronizer_gtwiz_reset_userclk_tx_active_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__8\
     port map (
      dest_clk => gtwiz_reset_clk_freerun_in,
      dest_rst => NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_dest_rst_UNCONNECTED,
      src_rst => gtwiz_reset_userclk_tx_active_in
    );
rxuserrdy_out_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rxuserrdy_out_int,
      I1 => gtwiz_reset_userclk_rx_active_sync,
      O => rxuserrdy_out
    );
\use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_bit_synchronizer_gtpowergood_inst\: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__5\
     port map (
      dest_clk => gtwiz_reset_clk_freerun_in,
      dest_rst => \use_master_reset.gtpowergood_sync_master\,
      src_rst => gtpowergood_in
    );
\use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst\: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__1\
     port map (
      dest_arst => \use_master_reset.gtwiz_reset_sync_master\,
      dest_clk => gtwiz_reset_clk_freerun_in,
      src_arst => gtwiz_reset_all_in
    );
\use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx\: entity work.dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst
     port map (
      dest_arst => \use_master_reset.gtwiz_rx_reset_sync_master\,
      dest_clk => gtwiz_reset_clk_freerun_in,
      src_arst => '0'
    );
\use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx_1\: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__7\
     port map (
      dest_clk => gtwiz_reset_clk_freerun_in,
      dest_rst => \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx_1_n_0\,
      src_rst => mst_rx_resetdone
    );
\use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx_dp\: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__4\
     port map (
      dest_arst => \use_master_reset.gtwiz_rx_dp_reset_sync_master\,
      dest_clk => gtwiz_reset_clk_freerun_in,
      src_arst => '0'
    );
\use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx\: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__3\
     port map (
      dest_arst => \NLW_use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_dest_arst_UNCONNECTED\,
      dest_clk => gtwiz_reset_clk_freerun_in,
      src_arst => gtwiz_reset_tx_pll_and_datapath_in
    );
\use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_1\: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_sync_rst__6\
     port map (
      dest_clk => gtwiz_reset_clk_freerun_in,
      dest_rst => \NLW_use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_1_dest_rst_UNCONNECTED\,
      src_rst => mst_tx_resetdone
    );
\use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_dp\: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_async_rst__2\
     port map (
      dest_arst => \NLW_use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_tx_dp_dest_arst_UNCONNECTED\,
      dest_clk => gtwiz_reset_clk_freerun_in,
      src_arst => gtwiz_reset_tx_datapath_in
    );
\use_master_reset.mst_rx_dp_reset_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[0]\,
      I1 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[1]\,
      I2 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[2]\,
      O => \use_master_reset.mst_rx_dp_reset_i_1_n_0\
    );
\use_master_reset.mst_rx_dp_reset_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => '1',
      D => \use_master_reset.mst_rx_dp_reset_i_1_n_0\,
      Q => mst_rx_dp_reset,
      R => \use_master_reset.mst_rx_reset_i_1_n_0\
    );
\use_master_reset.mst_rx_reset_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \use_master_reset.gtwiz_rx_reset_sync_master\,
      I1 => \use_master_reset.gtwiz_reset_sync_master\,
      O => \use_master_reset.mst_rx_reset_i_1_n_0\
    );
\use_master_reset.mst_rx_reset_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[1]\,
      I1 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[2]\,
      O => \use_master_reset.mst_rx_reset_i_2_n_0\
    );
\use_master_reset.mst_rx_reset_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => '1',
      D => \use_master_reset.mst_rx_reset_i_2_n_0\,
      Q => mst_rx_reset,
      S => \use_master_reset.mst_rx_reset_i_1_n_0\
    );
\use_master_reset.rxuserrdy_out_int_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[0]\,
      I1 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[2]\,
      I2 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[1]\,
      O => \use_master_reset.rxuserrdy_out_int_i_1_n_0\
    );
\use_master_reset.rxuserrdy_out_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => '1',
      D => \use_master_reset.rxuserrdy_out_int_i_1_n_0\,
      Q => rxuserrdy_out_int,
      R => \use_master_reset.mst_rx_reset_i_1_n_0\
    );
\use_master_reset.sm_mstresetdone_timer_clr_rx_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[0]\,
      I1 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[1]\,
      I2 => \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx_1_n_0\,
      I3 => \use_master_reset.sm_mstresetdone_timer_sat_rx\,
      I4 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[2]\,
      O => \use_master_reset.sm_mstresetdone_timer_clr_rx_i_1_n_0\
    );
\use_master_reset.sm_mstresetdone_timer_clr_rx_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => '1',
      D => \use_master_reset.sm_mstresetdone_timer_clr_rx_i_1_n_0\,
      Q => \use_master_reset.sm_mstresetdone_timer_clr_rx\,
      S => \use_master_reset.mst_rx_reset_i_1_n_0\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \use_master_reset.sm_mstresetdone_timer_sat_rx_i_2_n_0\,
      I1 => \use_master_reset.sm_mstresetdone_timer_sat_rx_i_3_n_0\,
      I2 => \use_master_reset.sm_mstresetdone_timer_sat_rx_i_4_n_0\,
      I3 => \use_master_reset.sm_mstresetdone_timer_sat_rx_i_5_n_0\,
      O => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[0]_i_2_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(0),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[0]_i_2\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FFFFFF00FF0000FF"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[0]_i_2_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(0),
      I4 => '0',
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[0]_i_2_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[0]_i_2_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[0]_i_2_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_1_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(10),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_1\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FF00000000FFFF00"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_1_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(10),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_2_n_0\,
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_1_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_1_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_2\: unisim.vcomponents.LOOKAHEAD8
    generic map(
      LOOKB => "TRUE",
      LOOKD => "TRUE",
      LOOKF => "TRUE",
      LOOKH => "TRUE"
    )
        port map (
      CIN => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_2_n_3\,
      COUTB => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_2_n_0\,
      COUTD => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_2_n_1\,
      COUTF => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_2_n_2\,
      COUTH => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_2_n_3\,
      CYA => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[8]_i_1_n_2\,
      CYB => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[9]_i_1_n_2\,
      CYC => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_1_n_2\,
      CYD => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[11]_i_1_n_2\,
      CYE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[12]_i_1_n_2\,
      CYF => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[13]_i_1_n_2\,
      CYG => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[14]_i_1_n_2\,
      CYH => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[15]_i_1_n_2\,
      GEA => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[8]_i_1_n_0\,
      GEB => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[9]_i_1_n_0\,
      GEC => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_1_n_0\,
      GED => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[11]_i_1_n_0\,
      GEE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[12]_i_1_n_0\,
      GEF => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[13]_i_1_n_0\,
      GEG => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[14]_i_1_n_0\,
      GEH => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[15]_i_1_n_0\,
      PROPA => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[8]_i_1_n_3\,
      PROPB => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[9]_i_1_n_3\,
      PROPC => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_1_n_3\,
      PROPD => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[11]_i_1_n_3\,
      PROPE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[12]_i_1_n_3\,
      PROPF => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[13]_i_1_n_3\,
      PROPG => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[14]_i_1_n_3\,
      PROPH => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[15]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[11]_i_1_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(11),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[11]_i_1\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FF00000000FFFF00"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[11]_i_1_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(11),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_1_n_2\,
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[11]_i_1_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[11]_i_1_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[11]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[12]_i_1_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(12),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[12]_i_1\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FF00000000FFFF00"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[12]_i_1_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(12),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_2_n_1\,
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[12]_i_1_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[12]_i_1_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[12]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[13]_i_1_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(13),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[13]_i_1\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FF00000000FFFF00"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[13]_i_1_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(13),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[12]_i_1_n_2\,
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[13]_i_1_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[13]_i_1_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[13]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[14]_i_1_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(14),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[14]_i_1\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FF00000000FFFF00"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[14]_i_1_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(14),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_2_n_2\,
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[14]_i_1_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[14]_i_1_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[14]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[15]_i_1_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(15),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[15]_i_1\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FF00000000FFFF00"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[15]_i_1_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(15),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[14]_i_1_n_2\,
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[15]_i_1_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[15]_i_1_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[15]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[16]_i_1_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(16),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[16]_i_1\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FF00000000FFFF00"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[16]_i_1_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(16),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_2_n_3\,
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[16]_i_1_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[16]_i_1_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[16]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[17]_i_1_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(17),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[17]_i_1\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FF00000000FFFF00"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[17]_i_1_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(17),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[16]_i_1_n_2\,
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[17]_i_1_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[17]_i_1_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[17]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_1_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(18),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_1\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FF00000000FFFF00"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_1_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(18),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_2_n_0\,
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_1_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_1_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_2\: unisim.vcomponents.LOOKAHEAD8
    generic map(
      LOOKB => "TRUE",
      LOOKD => "TRUE",
      LOOKF => "TRUE",
      LOOKH => "TRUE"
    )
        port map (
      CIN => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[10]_i_2_n_3\,
      COUTB => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_2_n_0\,
      COUTD => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_2_n_1\,
      COUTF => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_2_n_2\,
      COUTH => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_2_n_3\,
      CYA => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[16]_i_1_n_2\,
      CYB => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[17]_i_1_n_2\,
      CYC => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_1_n_2\,
      CYD => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[19]_i_1_n_2\,
      CYE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[20]_i_1_n_2\,
      CYF => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[21]_i_1_n_2\,
      CYG => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[22]_i_1_n_2\,
      CYH => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[23]_i_1_n_2\,
      GEA => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[16]_i_1_n_0\,
      GEB => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[17]_i_1_n_0\,
      GEC => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_1_n_0\,
      GED => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[19]_i_1_n_0\,
      GEE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[20]_i_1_n_0\,
      GEF => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[21]_i_1_n_0\,
      GEG => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[22]_i_1_n_0\,
      GEH => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[23]_i_1_n_0\,
      PROPA => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[16]_i_1_n_3\,
      PROPB => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[17]_i_1_n_3\,
      PROPC => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_1_n_3\,
      PROPD => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[19]_i_1_n_3\,
      PROPE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[20]_i_1_n_3\,
      PROPF => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[21]_i_1_n_3\,
      PROPG => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[22]_i_1_n_3\,
      PROPH => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[23]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[19]_i_1_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(19),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[19]_i_1\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FF00000000FFFF00"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[19]_i_1_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(19),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_1_n_2\,
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[19]_i_1_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[19]_i_1_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[19]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[1]_i_1_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(1),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[1]_i_1\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FF00000000FFFF00"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[1]_i_1_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(1),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[0]_i_2_n_2\,
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[1]_i_1_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[1]_i_1_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[1]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[20]_i_1_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(20),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[20]_i_1\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FF00000000FFFF00"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[20]_i_1_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(20),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_2_n_1\,
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[20]_i_1_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[20]_i_1_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[20]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[21]_i_1_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(21),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[21]_i_1\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FF00000000FFFF00"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[21]_i_1_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(21),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[20]_i_1_n_2\,
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[21]_i_1_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[21]_i_1_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[21]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[22]_i_1_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(22),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[22]_i_1\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FF00000000FFFF00"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[22]_i_1_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(22),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[18]_i_2_n_2\,
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[22]_i_1_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[22]_i_1_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[22]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[23]_i_1_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(23),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[23]_i_1\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FF00FF0000FFFF00"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[23]_i_1_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(23),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[22]_i_1_n_2\,
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[23]_i_1_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[23]_i_1_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[23]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_1_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(2),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_1\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FF00000000FFFF00"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_1_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(2),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_2_n_0\,
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_1_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_1_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_2\: unisim.vcomponents.LOOKAHEAD8
    generic map(
      LOOKB => "FALSE",
      LOOKD => "TRUE",
      LOOKF => "TRUE",
      LOOKH => "TRUE"
    )
        port map (
      CIN => '0',
      COUTB => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_2_n_0\,
      COUTD => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_2_n_1\,
      COUTF => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_2_n_2\,
      COUTH => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_2_n_3\,
      CYA => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[0]_i_2_n_2\,
      CYB => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[1]_i_1_n_2\,
      CYC => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_1_n_2\,
      CYD => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[3]_i_1_n_2\,
      CYE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[4]_i_1_n_2\,
      CYF => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[5]_i_1_n_2\,
      CYG => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[6]_i_1_n_2\,
      CYH => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[7]_i_1_n_2\,
      GEA => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[0]_i_2_n_0\,
      GEB => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[1]_i_1_n_0\,
      GEC => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_1_n_0\,
      GED => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[3]_i_1_n_0\,
      GEE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[4]_i_1_n_0\,
      GEF => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[5]_i_1_n_0\,
      GEG => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[6]_i_1_n_0\,
      GEH => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[7]_i_1_n_0\,
      PROPA => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[0]_i_2_n_3\,
      PROPB => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[1]_i_1_n_3\,
      PROPC => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_1_n_3\,
      PROPD => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[3]_i_1_n_3\,
      PROPE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[4]_i_1_n_3\,
      PROPF => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[5]_i_1_n_3\,
      PROPG => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[6]_i_1_n_3\,
      PROPH => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[7]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[3]_i_1_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(3),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[3]_i_1\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FF00000000FFFF00"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[3]_i_1_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(3),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_1_n_2\,
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[3]_i_1_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[3]_i_1_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[3]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[4]_i_1_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(4),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[4]_i_1\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FF00000000FFFF00"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[4]_i_1_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(4),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_2_n_1\,
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[4]_i_1_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[4]_i_1_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[4]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[5]_i_1_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(5),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[5]_i_1\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FF00000000FFFF00"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[5]_i_1_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(5),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[4]_i_1_n_2\,
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[5]_i_1_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[5]_i_1_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[5]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[6]_i_1_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(6),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[6]_i_1\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FF00000000FFFF00"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[6]_i_1_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(6),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_2_n_2\,
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[6]_i_1_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[6]_i_1_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[6]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[7]_i_1_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(7),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[7]_i_1\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FF00000000FFFF00"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[7]_i_1_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(7),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[6]_i_1_n_2\,
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[7]_i_1_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[7]_i_1_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[7]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[8]_i_1_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(8),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[8]_i_1\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FF00000000FFFF00"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[8]_i_1_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(8),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[2]_i_2_n_3\,
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[8]_i_1_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[8]_i_1_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[8]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_mstresetdone_timer_ctr_rx[0]_i_1_n_0\,
      D => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[9]_i_1_n_1\,
      Q => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(9),
      R => \use_master_reset.sm_mstresetdone_timer_clr_rx\
    );
\use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[9]_i_1\: unisim.vcomponents.LUT6CY
    generic map(
      INIT => X"FF00000000FFFF00"
    )
        port map (
      GE => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[9]_i_1_n_0\,
      I0 => '1',
      I1 => '1',
      I2 => '1',
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(9),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[8]_i_1_n_2\,
      O51 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[9]_i_1_n_1\,
      O52 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[9]_i_1_n_2\,
      PROP => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg[9]_i_1_n_3\
    );
\use_master_reset.sm_mstresetdone_timer_sat_rx_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0400"
    )
        port map (
      I0 => \use_master_reset.sm_mstresetdone_timer_sat_rx_i_2_n_0\,
      I1 => \use_master_reset.sm_mstresetdone_timer_sat_rx_i_3_n_0\,
      I2 => \use_master_reset.sm_mstresetdone_timer_sat_rx_i_4_n_0\,
      I3 => \use_master_reset.sm_mstresetdone_timer_sat_rx_i_5_n_0\,
      I4 => \use_master_reset.sm_mstresetdone_timer_sat_rx\,
      I5 => \use_master_reset.sm_mstresetdone_timer_clr_rx\,
      O => \use_master_reset.sm_mstresetdone_timer_sat_rx_i_1_n_0\
    );
\use_master_reset.sm_mstresetdone_timer_sat_rx_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(0),
      I1 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(1),
      I2 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(2),
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(3),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(4),
      I5 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(5),
      O => \use_master_reset.sm_mstresetdone_timer_sat_rx_i_2_n_0\
    );
\use_master_reset.sm_mstresetdone_timer_sat_rx_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(9),
      I1 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(10),
      I2 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(11),
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(8),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(6),
      I5 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(7),
      O => \use_master_reset.sm_mstresetdone_timer_sat_rx_i_3_n_0\
    );
\use_master_reset.sm_mstresetdone_timer_sat_rx_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(12),
      I1 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(13),
      I2 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(14),
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(15),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(16),
      I5 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(17),
      O => \use_master_reset.sm_mstresetdone_timer_sat_rx_i_4_n_0\
    );
\use_master_reset.sm_mstresetdone_timer_sat_rx_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(21),
      I1 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(23),
      I2 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(22),
      I3 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(20),
      I4 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(18),
      I5 => \use_master_reset.sm_mstresetdone_timer_ctr_rx_reg\(19),
      O => \use_master_reset.sm_mstresetdone_timer_sat_rx_i_5_n_0\
    );
\use_master_reset.sm_mstresetdone_timer_sat_rx_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => '1',
      D => \use_master_reset.sm_mstresetdone_timer_sat_rx_i_1_n_0\,
      Q => \use_master_reset.sm_mstresetdone_timer_sat_rx\,
      R => '0'
    );
\use_master_reset.sm_reset_all_master_rx[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1514"
    )
        port map (
      I0 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[0]\,
      I1 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[1]\,
      I2 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[2]\,
      I3 => \use_master_reset.gtpowergood_sync_master\,
      O => \use_master_reset.sm_reset_all_master_rx[0]_i_1_n_0\
    );
\use_master_reset.sm_reset_all_master_rx[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[0]\,
      I1 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[1]\,
      O => \use_master_reset.sm_reset_all_master_rx[1]_i_1_n_0\
    );
\use_master_reset.sm_reset_all_master_rx[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC77FC44FCBB30BB"
    )
        port map (
      I0 => \use_master_reset.gtwiz_rx_dp_reset_sync_master\,
      I1 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[2]\,
      I2 => \use_master_reset.sm_reset_all_master_rx[2]_i_3_n_0\,
      I3 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[1]\,
      I4 => \use_master_reset.sm_reset_all_master_rx01_out\,
      I5 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[0]\,
      O => \use_master_reset.sm_reset_all_master_rx\
    );
\use_master_reset.sm_reset_all_master_rx[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[0]\,
      I1 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[1]\,
      I2 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[2]\,
      O => \use_master_reset.sm_reset_all_master_rx[2]_i_2_n_0\
    );
\use_master_reset.sm_reset_all_master_rx[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCB8"
    )
        port map (
      I0 => \use_master_reset.sm_mstresetdone_timer_sat_rx\,
      I1 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[0]\,
      I2 => gtwiz_reset_userclk_rx_active_sync,
      I3 => \use_master_reset.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_master_reset_synchronizer_gtwiz_reset_all_inst_rx_1_n_0\,
      O => \use_master_reset.sm_reset_all_master_rx[2]_i_3_n_0\
    );
\use_master_reset.sm_reset_all_master_rx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_reset_all_master_rx\,
      D => \use_master_reset.sm_reset_all_master_rx[0]_i_1_n_0\,
      Q => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[0]\,
      R => \use_master_reset.mst_rx_reset_i_1_n_0\
    );
\use_master_reset.sm_reset_all_master_rx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_reset_all_master_rx\,
      D => \use_master_reset.sm_reset_all_master_rx[1]_i_1_n_0\,
      Q => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[1]\,
      R => \use_master_reset.mst_rx_reset_i_1_n_0\
    );
\use_master_reset.sm_reset_all_master_rx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_reset_all_master_rx\,
      D => \use_master_reset.sm_reset_all_master_rx[2]_i_2_n_0\,
      Q => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[2]\,
      R => \use_master_reset.mst_rx_reset_i_1_n_0\
    );
\use_master_reset.sm_reset_all_timer_clr_master_rx_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFD"
    )
        port map (
      I0 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[0]\,
      I1 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[1]\,
      I2 => \use_master_reset.sm_reset_all_master_rx01_out\,
      I3 => \use_master_reset.sm_reset_all_master_rx_reg_n_0_[2]\,
      O => \use_master_reset.sm_reset_all_timer_clr_master_rx_i_1_n_0\
    );
\use_master_reset.sm_reset_all_timer_clr_master_rx_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \use_master_reset.sm_reset_all_timer_sat_master_rx\,
      I1 => \use_master_reset.sm_reset_all_timer_clr_master_rx\,
      O => \use_master_reset.sm_reset_all_master_rx01_out\
    );
\use_master_reset.sm_reset_all_timer_clr_master_rx_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => '1',
      D => \use_master_reset.sm_reset_all_timer_clr_master_rx_i_1_n_0\,
      Q => \use_master_reset.sm_reset_all_timer_clr_master_rx\,
      S => \use_master_reset.mst_rx_reset_i_1_n_0\
    );
\use_master_reset.sm_reset_all_timer_ctr_master_rx0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \use_master_reset.sm_reset_all_timer_ctr_master_rx\(2),
      I1 => \use_master_reset.sm_reset_all_timer_ctr_master_rx\(0),
      I2 => \use_master_reset.sm_reset_all_timer_ctr_master_rx\(1),
      O => \use_master_reset.sm_reset_all_timer_ctr_master_rx0_n_0\
    );
\use_master_reset.sm_reset_all_timer_ctr_master_rx[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \use_master_reset.sm_reset_all_timer_ctr_master_rx\(0),
      O => \use_master_reset.sm_reset_all_timer_ctr_master_rx[0]_i_1_n_0\
    );
\use_master_reset.sm_reset_all_timer_ctr_master_rx[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \use_master_reset.sm_reset_all_timer_ctr_master_rx\(0),
      I1 => \use_master_reset.sm_reset_all_timer_ctr_master_rx\(1),
      O => \use_master_reset.sm_reset_all_timer_ctr_master_rx[1]_i_1_n_0\
    );
\use_master_reset.sm_reset_all_timer_ctr_master_rx[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \use_master_reset.sm_reset_all_timer_ctr_master_rx\(2),
      I1 => \use_master_reset.sm_reset_all_timer_ctr_master_rx\(0),
      I2 => \use_master_reset.sm_reset_all_timer_ctr_master_rx\(1),
      O => \use_master_reset.sm_reset_all_timer_ctr_master_rx[2]_i_1_n_0\
    );
\use_master_reset.sm_reset_all_timer_ctr_master_rx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_reset_all_timer_ctr_master_rx0_n_0\,
      D => \use_master_reset.sm_reset_all_timer_ctr_master_rx[0]_i_1_n_0\,
      Q => \use_master_reset.sm_reset_all_timer_ctr_master_rx\(0),
      R => \use_master_reset.sm_reset_all_timer_clr_master_rx\
    );
\use_master_reset.sm_reset_all_timer_ctr_master_rx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => \use_master_reset.sm_reset_all_timer_ctr_master_rx0_n_0\,
      D => \use_master_reset.sm_reset_all_timer_ctr_master_rx[1]_i_1_n_0\,
      Q => \use_master_reset.sm_reset_all_timer_ctr_master_rx\(1),
      R => \use_master_reset.sm_reset_all_timer_clr_master_rx\
    );
\use_master_reset.sm_reset_all_timer_ctr_master_rx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => '1',
      D => \use_master_reset.sm_reset_all_timer_ctr_master_rx[2]_i_1_n_0\,
      Q => \use_master_reset.sm_reset_all_timer_ctr_master_rx\(2),
      R => \use_master_reset.sm_reset_all_timer_clr_master_rx\
    );
\use_master_reset.sm_reset_all_timer_sat_master_rx_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF80"
    )
        port map (
      I0 => \use_master_reset.sm_reset_all_timer_ctr_master_rx\(2),
      I1 => \use_master_reset.sm_reset_all_timer_ctr_master_rx\(0),
      I2 => \use_master_reset.sm_reset_all_timer_ctr_master_rx\(1),
      I3 => \use_master_reset.sm_reset_all_timer_sat_master_rx\,
      I4 => \use_master_reset.sm_reset_all_timer_clr_master_rx\,
      O => \use_master_reset.sm_reset_all_timer_sat_master_rx_i_1_n_0\
    );
\use_master_reset.sm_reset_all_timer_sat_master_rx_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in,
      CE => '1',
      D => \use_master_reset.sm_reset_all_timer_sat_master_rx_i_1_n_0\,
      Q => \use_master_reset.sm_reset_all_timer_sat_master_rx\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dpss_vck190_pt_dprx_gt_ip0_0_gtreset is
  port (
    gtwiz_reset_clk_freerun_in : in STD_LOGIC;
    gtwiz_reset_all_in : in STD_LOGIC;
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC;
    gtwiz_reset_tx_datapath_in : in STD_LOGIC;
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC;
    gtwiz_reset_rx_datapath_in : in STD_LOGIC;
    gtwiz_reset_rx_cdr_stable_out : out STD_LOGIC;
    gtwiz_reset_tx_done_out : out STD_LOGIC;
    gtwiz_reset_rx_done_out : out STD_LOGIC;
    gtwiz_reset_userclk_tx_active_in : in STD_LOGIC;
    gtwiz_reset_userclk_rx_active_in : in STD_LOGIC;
    gtpowergood_in : in STD_LOGIC;
    txusrclk2_in : in STD_LOGIC;
    ilo_reset_done : in STD_LOGIC;
    plllock_tx_in : in STD_LOGIC;
    txresetdone_in : in STD_LOGIC;
    rxusrclk2_in : in STD_LOGIC;
    plllock_rx_in : in STD_LOGIC;
    rxcdrlock_in : in STD_LOGIC;
    rxresetdone_in : in STD_LOGIC;
    pllreset_tx_out : out STD_LOGIC;
    txprogdivreset_out : out STD_LOGIC;
    iloreset_out : out STD_LOGIC;
    mst_tx_reset : out STD_LOGIC;
    mst_rx_reset : out STD_LOGIC;
    mst_tx_dp_reset : out STD_LOGIC;
    mst_rx_dp_reset : out STD_LOGIC;
    mst_tx_resetdone : in STD_LOGIC;
    mst_rx_resetdone : in STD_LOGIC;
    pcie_enable : in STD_LOGIC;
    pcie_rstb_out : out STD_LOGIC;
    gttxreset_out : out STD_LOGIC;
    txuserrdy_out : out STD_LOGIC;
    pllreset_rx_out : out STD_LOGIC;
    rxprogdivreset_out : out STD_LOGIC;
    gtrxreset_out : out STD_LOGIC;
    rxuserrdy_out : out STD_LOGIC;
    rx_clr_out : out STD_LOGIC;
    rx_clrb_leaf_out : out STD_LOGIC;
    tx_clr_out : out STD_LOGIC;
    tx_clrb_leaf_out : out STD_LOGIC;
    tx_enabled_tie_in : in STD_LOGIC;
    rx_enabled_tie_in : in STD_LOGIC;
    shared_pll_tie_in : in STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dpss_vck190_pt_dprx_gt_ip0_0_gtreset : entity is "dpss_vck190_pt_dprx_gt_ip0_0_gtreset,dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of dpss_vck190_pt_dprx_gt_ip0_0_gtreset : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of dpss_vck190_pt_dprx_gt_ip0_0_gtreset : entity is "dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst,Vivado 2023.2";
end dpss_vck190_pt_dprx_gt_ip0_0_gtreset;

architecture STRUCTURE of dpss_vck190_pt_dprx_gt_ip0_0_gtreset is
  signal \<const0>\ : STD_LOGIC;
begin
  gtrxreset_out <= \<const0>\;
  gttxreset_out <= \<const0>\;
  gtwiz_reset_rx_cdr_stable_out <= \<const0>\;
  gtwiz_reset_rx_done_out <= \<const0>\;
  gtwiz_reset_tx_done_out <= \<const0>\;
  iloreset_out <= \<const0>\;
  mst_tx_dp_reset <= \<const0>\;
  mst_tx_reset <= \<const0>\;
  pcie_rstb_out <= \<const0>\;
  pllreset_rx_out <= \<const0>\;
  pllreset_tx_out <= \<const0>\;
  rx_clr_out <= \<const0>\;
  rx_clrb_leaf_out <= \<const0>\;
  rxprogdivreset_out <= \<const0>\;
  tx_clr_out <= \<const0>\;
  tx_clrb_leaf_out <= \<const0>\;
  txprogdivreset_out <= \<const0>\;
  txuserrdy_out <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst
     port map (
      gtpowergood_in => gtpowergood_in,
      gtwiz_reset_all_in => gtwiz_reset_all_in,
      gtwiz_reset_clk_freerun_in => gtwiz_reset_clk_freerun_in,
      gtwiz_reset_tx_datapath_in => gtwiz_reset_tx_datapath_in,
      gtwiz_reset_tx_pll_and_datapath_in => gtwiz_reset_tx_pll_and_datapath_in,
      gtwiz_reset_userclk_rx_active_in => gtwiz_reset_userclk_rx_active_in,
      gtwiz_reset_userclk_tx_active_in => gtwiz_reset_userclk_tx_active_in,
      mst_rx_dp_reset => mst_rx_dp_reset,
      mst_rx_reset => mst_rx_reset,
      mst_rx_resetdone => mst_rx_resetdone,
      mst_tx_resetdone => mst_tx_resetdone,
      rxuserrdy_out => rxuserrdy_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dpss_vck190_pt_dprx_gt_ip0_0_top is
  port (
    clk_100mhz : in STD_LOGIC;
    gt_ctrl_aclk : in STD_LOGIC;
    gt_ctrl_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    dp_gt_ctrl : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gt_rxusrclk : in STD_LOGIC;
    gt_txusrclk : in STD_LOGIC;
    tx_bufg_gt_clr : out STD_LOGIC;
    rx_bufg_gt_clr : out STD_LOGIC;
    ch0_iloresetdone : in STD_LOGIC;
    ch1_iloresetdone : in STD_LOGIC;
    ch2_iloresetdone : in STD_LOGIC;
    ch3_iloresetdone : in STD_LOGIC;
    ch0_iloreset : out STD_LOGIC;
    ch1_iloreset : out STD_LOGIC;
    ch2_iloreset : out STD_LOGIC;
    ch3_iloreset : out STD_LOGIC;
    gt_powergood : in STD_LOGIC;
    tx_pll0_reset : out STD_LOGIC;
    tx_pll1_reset : out STD_LOGIC;
    rx_pll0_reset : out STD_LOGIC;
    rx_pll1_reset : out STD_LOGIC;
    hsclk0_rpllpd : out STD_LOGIC;
    hsclk1_rpllpd : out STD_LOGIC;
    hsclk0_lcpllpd : out STD_LOGIC;
    hsclk1_lcpllpd : out STD_LOGIC;
    tx_pll0_locked : in STD_LOGIC;
    tx_pll1_locked : in STD_LOGIC;
    rx_pll0_locked : in STD_LOGIC;
    rx_pll1_locked : in STD_LOGIC;
    tx_mmcm_locked : in STD_LOGIC;
    rx_mmcm_locked : in STD_LOGIC;
    tx_axi4s_ch0_tready : out STD_LOGIC;
    tx_axi4s_ch0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tx_axi4s_ch0_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    tx_axi4s_ch0_tvalid : in STD_LOGIC;
    tx_axi4s_ch1_tready : out STD_LOGIC;
    tx_axi4s_ch1_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tx_axi4s_ch1_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    tx_axi4s_ch1_tvalid : in STD_LOGIC;
    tx_axi4s_ch2_tready : out STD_LOGIC;
    tx_axi4s_ch2_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tx_axi4s_ch2_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    tx_axi4s_ch2_tvalid : in STD_LOGIC;
    tx_axi4s_ch3_tready : out STD_LOGIC;
    tx_axi4s_ch3_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tx_axi4s_ch3_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    tx_axi4s_ch3_tvalid : in STD_LOGIC;
    status_sb_tx_tvalid : out STD_LOGIC;
    status_sb_tx_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    status_sb_tx_tready : in STD_LOGIC;
    sdi_gt_ctrl : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sdi_gt_sts : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sdi_ctrl_sb_rx_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sdi_ctrl_sb_rx_in_tvalid : in STD_LOGIC;
    sdi_ctrl_sb_rx_in_tready : out STD_LOGIC;
    sdi_ctrl_sb_rx_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sdi_ctrl_sb_rx_out_tvalid : out STD_LOGIC;
    sdi_ctrl_sb_rx_out_tready : in STD_LOGIC;
    sdi_ctrl_sb_tx_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sdi_ctrl_sb_tx_in_tvalid : in STD_LOGIC;
    sdi_ctrl_sb_tx_in_tready : out STD_LOGIC;
    sdi_ctrl_sb_tx_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sdi_ctrl_sb_tx_out_tvalid : out STD_LOGIC;
    sdi_ctrl_sb_tx_out_tready : in STD_LOGIC;
    ch0_txmstdatapathreset : out STD_LOGIC;
    ch0_txpmareset : out STD_LOGIC;
    ch0_txpcsresetmask : out STD_LOGIC;
    ch0_txpmaresetmask : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ch0_txpcsreset : out STD_LOGIC;
    ch0_txuserrdy : out STD_LOGIC;
    ch0_txprogdivreset : out STD_LOGIC;
    ch0_txpd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ch0_tx8b10ben : out STD_LOGIC;
    ch0_txpolarity : out STD_LOGIC;
    ch0_txprbssel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ch0_txprbsforceerr : out STD_LOGIC;
    ch0_txdiffctrl : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ch0_txprecursor : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ch0_txpostcursor : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ch0_txinhibit : out STD_LOGIC;
    ch0_txresetdone : in STD_LOGIC;
    ch0_txpmaresetdone : in STD_LOGIC;
    ch0_txmstreset : out STD_LOGIC;
    ch0_txmstresetdone : in STD_LOGIC;
    ch0_txdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ch0_txctrl1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ch0_txctrl0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ch0_txctrl2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ch0_txrate : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ch0_txphaligndone : in STD_LOGIC;
    ch0_txelecidle : out STD_LOGIC;
    ch0_txbufstatus : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ch1_txmstdatapathreset : out STD_LOGIC;
    ch1_txpmareset : out STD_LOGIC;
    ch1_txpcsresetmask : out STD_LOGIC;
    ch1_txpmaresetmask : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ch1_txpcsreset : out STD_LOGIC;
    ch1_txuserrdy : out STD_LOGIC;
    ch1_txprogdivreset : out STD_LOGIC;
    ch1_txpd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ch1_tx8b10ben : out STD_LOGIC;
    ch1_txpolarity : out STD_LOGIC;
    ch1_txprbssel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ch1_txprbsforceerr : out STD_LOGIC;
    ch1_txdiffctrl : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ch1_txprecursor : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ch1_txpostcursor : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ch1_txinhibit : out STD_LOGIC;
    ch1_txresetdone : in STD_LOGIC;
    ch1_txpmaresetdone : in STD_LOGIC;
    ch1_txmstreset : out STD_LOGIC;
    ch1_txmstresetdone : in STD_LOGIC;
    ch1_txdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ch1_txctrl1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ch1_txctrl0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ch1_txctrl2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ch1_txrate : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ch2_txmstdatapathreset : out STD_LOGIC;
    ch2_txpmareset : out STD_LOGIC;
    ch2_txpcsresetmask : out STD_LOGIC;
    ch2_txpmaresetmask : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ch2_txpcsreset : out STD_LOGIC;
    ch2_txuserrdy : out STD_LOGIC;
    ch2_pllgtrst : out STD_LOGIC;
    ch2_txprogdivreset : out STD_LOGIC;
    ch2_txpd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ch2_tx8b10ben : out STD_LOGIC;
    ch2_txpolarity : out STD_LOGIC;
    ch2_txprbssel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ch2_txprbsforceerr : out STD_LOGIC;
    ch2_txdiffctrl : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ch2_txprecursor : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ch2_txpostcursor : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ch2_txinhibit : out STD_LOGIC;
    ch2_txresetdone : in STD_LOGIC;
    ch2_txpmaresetdone : in STD_LOGIC;
    ch2_txmstreset : out STD_LOGIC;
    ch2_txmstresetdone : in STD_LOGIC;
    ch2_txdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ch2_txctrl1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ch2_txctrl0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ch2_txctrl2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ch2_txrate : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ch3_txmstdatapathreset : out STD_LOGIC;
    ch3_txpmareset : out STD_LOGIC;
    ch3_txpcsresetmask : out STD_LOGIC;
    ch3_txpmaresetmask : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ch3_txpcsreset : out STD_LOGIC;
    ch3_txuserrdy : out STD_LOGIC;
    ch3_pllgtrst : out STD_LOGIC;
    ch3_txprogdivreset : out STD_LOGIC;
    ch3_txpd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ch3_tx8b10ben : out STD_LOGIC;
    ch3_txpolarity : out STD_LOGIC;
    ch3_txprbssel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ch3_txprbsforceerr : out STD_LOGIC;
    ch3_txdiffctrl : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ch3_txprecursor : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ch3_txpostcursor : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ch3_txinhibit : out STD_LOGIC;
    ch3_txresetdone : in STD_LOGIC;
    ch3_txpmaresetdone : in STD_LOGIC;
    ch3_txmstreset : out STD_LOGIC;
    ch3_txmstresetdone : in STD_LOGIC;
    ch3_txdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ch3_txctrl1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ch3_txctrl0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ch3_txctrl2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ch3_txrate : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rx_axi4s_ch0_tvalid : out STD_LOGIC;
    rx_axi4s_ch0_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rx_axi4s_ch0_tuser : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rx_axi4s_ch0_tready : in STD_LOGIC;
    rx_axi4s_ch1_tvalid : out STD_LOGIC;
    rx_axi4s_ch1_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rx_axi4s_ch1_tuser : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rx_axi4s_ch1_tready : in STD_LOGIC;
    rx_axi4s_ch2_tvalid : out STD_LOGIC;
    rx_axi4s_ch2_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rx_axi4s_ch2_tuser : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rx_axi4s_ch2_tready : in STD_LOGIC;
    rx_axi4s_ch3_tvalid : out STD_LOGIC;
    rx_axi4s_ch3_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rx_axi4s_ch3_tuser : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rx_axi4s_ch3_tready : in STD_LOGIC;
    control_sb_rx_tready : out STD_LOGIC;
    control_sb_rx_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    control_sb_rx_tvalid : in STD_LOGIC;
    status_sb_rx_tvalid : out STD_LOGIC;
    status_sb_rx_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    status_sb_rx_tready : in STD_LOGIC;
    ch0_rxmstdatapathreset : out STD_LOGIC;
    ch0_rxpmareset : out STD_LOGIC;
    ch0_rxpcsresetmask : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ch0_rxpmaresetmask : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ch0_rxbufreset : out STD_LOGIC;
    ch0_rxpllgtrst : out STD_LOGIC;
    ch0_rxprogdivreset : out STD_LOGIC;
    ch0_rxpd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ch0_rxuserrdy : out STD_LOGIC;
    ch0_rx8b10ben : out STD_LOGIC;
    ch0_rxpolarity : out STD_LOGIC;
    ch0_rxprbscntrst : out STD_LOGIC;
    ch0_rxprbssel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ch0_rxlpmen : out STD_LOGIC;
    ch0_rxresetdone : in STD_LOGIC;
    ch0_rxpmaresetdone : in STD_LOGIC;
    ch0_rxmstreset : out STD_LOGIC;
    ch0_rxmstresetdone : in STD_LOGIC;
    ch0_rxcdrlock : in STD_LOGIC;
    ch0_rxbyteisaligned : in STD_LOGIC;
    ch0_rxbufstatus : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ch0_rxprbserr : in STD_LOGIC;
    ch0_rxdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ch0_rxctrl1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ch0_rxctrl0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ch0_rxctrl3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ch0_rxrate : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ch1_rxmstdatapathreset : out STD_LOGIC;
    ch1_rxpmareset : out STD_LOGIC;
    ch1_rxpcsresetmask : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ch1_rxpmaresetmask : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ch1_rxbufreset : out STD_LOGIC;
    ch1_rxpllgtrst : out STD_LOGIC;
    ch1_rxprogdivreset : out STD_LOGIC;
    ch1_rxpd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ch1_rxuserrdy : out STD_LOGIC;
    ch1_rx8b10ben : out STD_LOGIC;
    ch1_rxpolarity : out STD_LOGIC;
    ch1_rxprbscntrst : out STD_LOGIC;
    ch1_rxprbssel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ch1_rxlpmen : out STD_LOGIC;
    ch1_rxresetdone : in STD_LOGIC;
    ch1_rxpmaresetdone : in STD_LOGIC;
    ch1_rxmstreset : out STD_LOGIC;
    ch1_rxmstresetdone : in STD_LOGIC;
    ch1_rxcdrlock : in STD_LOGIC;
    ch1_rxbyteisaligned : in STD_LOGIC;
    ch1_rxbufstatus : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ch1_rxprbserr : in STD_LOGIC;
    ch1_rxdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ch1_rxctrl1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ch1_rxctrl0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ch1_rxctrl3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ch1_rxrate : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ch2_rxmstdatapathreset : out STD_LOGIC;
    ch2_rxpmareset : out STD_LOGIC;
    ch2_rxpcsresetmask : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ch2_rxpmaresetmask : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ch2_rxbufreset : out STD_LOGIC;
    ch2_rxpllgtrst : out STD_LOGIC;
    ch2_rxprogdivreset : out STD_LOGIC;
    ch2_rxpd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ch2_rxuserrdy : out STD_LOGIC;
    ch2_rx8b10ben : out STD_LOGIC;
    ch2_rxpolarity : out STD_LOGIC;
    ch2_rxprbscntrst : out STD_LOGIC;
    ch2_rxprbssel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ch2_rxlpmen : out STD_LOGIC;
    ch2_rxresetdone : in STD_LOGIC;
    ch2_rxpmaresetdone : in STD_LOGIC;
    ch2_rxmstreset : out STD_LOGIC;
    ch2_rxmstresetdone : in STD_LOGIC;
    ch2_rxcdrlock : in STD_LOGIC;
    ch2_rxbyteisaligned : in STD_LOGIC;
    ch2_rxbufstatus : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ch2_rxprbserr : in STD_LOGIC;
    ch2_rxdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ch2_rxctrl1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ch2_rxctrl0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ch2_rxctrl3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ch2_rxrate : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ch3_rxmstdatapathreset : out STD_LOGIC;
    ch3_rxpmareset : out STD_LOGIC;
    ch3_rxpcsresetmask : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ch3_rxpmaresetmask : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ch3_rxbufreset : out STD_LOGIC;
    ch3_rxpllgtrst : out STD_LOGIC;
    ch3_rxprogdivreset : out STD_LOGIC;
    ch3_rxpd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ch3_rxuserrdy : out STD_LOGIC;
    ch3_rx8b10ben : out STD_LOGIC;
    ch3_rxpolarity : out STD_LOGIC;
    ch3_rxprbscntrst : out STD_LOGIC;
    ch3_rxprbssel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ch3_rxlpmen : out STD_LOGIC;
    ch3_rxresetdone : in STD_LOGIC;
    ch3_rxpmaresetdone : in STD_LOGIC;
    ch3_rxmstreset : out STD_LOGIC;
    ch3_rxmstresetdone : in STD_LOGIC;
    ch3_rxcdrlock : in STD_LOGIC;
    ch3_rxbyteisaligned : in STD_LOGIC;
    ch3_rxbufstatus : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ch3_rxprbserr : in STD_LOGIC;
    ch3_rxdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ch3_rxctrl1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ch3_rxctrl0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ch3_rxctrl3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ch3_rxrate : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute C_ENABLE_RX : integer;
  attribute C_ENABLE_RX of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 1;
  attribute C_ENABLE_TX : integer;
  attribute C_ENABLE_TX of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 0;
  attribute C_NEW_DP : integer;
  attribute C_NEW_DP of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 1;
  attribute C_PROTOCOL : integer;
  attribute C_PROTOCOL of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 0;
  attribute C_RX_NUM_CH : integer;
  attribute C_RX_NUM_CH of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 4;
  attribute C_RX_PLL : integer;
  attribute C_RX_PLL of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 1;
  attribute C_RX_RATE : integer;
  attribute C_RX_RATE of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 3;
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 8;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 32;
  attribute C_TX_NUM_CH : integer;
  attribute C_TX_NUM_CH of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 4;
  attribute C_TX_PLL : integer;
  attribute C_TX_PLL of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 0;
  attribute C_TX_RATE : integer;
  attribute C_TX_RATE of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 1;
  attribute C_USE_AXILITE : integer;
  attribute C_USE_AXILITE of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 0;
  attribute C_USE_MSTR : integer;
  attribute C_USE_MSTR of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 1;
  attribute control_sb_rx_TDATA_WIDTH : integer;
  attribute control_sb_rx_TDATA_WIDTH of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 8;
  attribute control_sb_tx_TDATA_WIDTH : integer;
  attribute control_sb_tx_TDATA_WIDTH of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 32;
  attribute rx_axi4s_ch_INT_TDATA_WIDTH : integer;
  attribute rx_axi4s_ch_INT_TDATA_WIDTH of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 40;
  attribute rx_axi4s_ch_TDATA_WIDTH : integer;
  attribute rx_axi4s_ch_TDATA_WIDTH of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 32;
  attribute rx_axi4s_ch_TUSER_WIDTH : integer;
  attribute rx_axi4s_ch_TUSER_WIDTH of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 12;
  attribute status_sb_rx_TDATA_WIDTH : integer;
  attribute status_sb_rx_TDATA_WIDTH of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 16;
  attribute status_sb_tx_TDATA_WIDTH : integer;
  attribute status_sb_tx_TDATA_WIDTH of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 8;
  attribute tx_axi4s_ch_INT_TDATA_WIDTH : integer;
  attribute tx_axi4s_ch_INT_TDATA_WIDTH of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 40;
  attribute tx_axi4s_ch_TDATA_WIDTH : integer;
  attribute tx_axi4s_ch_TDATA_WIDTH of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 32;
  attribute tx_axi4s_ch_TUSER_WIDTH : integer;
  attribute tx_axi4s_ch_TUSER_WIDTH of dpss_vck190_pt_dprx_gt_ip0_0_top : entity is 12;
end dpss_vck190_pt_dprx_gt_ip0_0_top;

architecture STRUCTURE of dpss_vck190_pt_dprx_gt_ip0_0_top is
  signal \<const0>\ : STD_LOGIC;
  signal \^ch0_rxctrl0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^ch0_rxctrl1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^ch0_rxctrl3\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^ch0_rxdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^ch1_rxctrl0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^ch1_rxctrl1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^ch1_rxctrl3\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^ch1_rxdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^ch2_rxctrl0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^ch2_rxctrl1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^ch2_rxctrl3\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^ch2_rxdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^ch3_rxctrl0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^ch3_rxctrl1\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^ch3_rxctrl3\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^ch3_rxdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^ch3_rxmstdatapathreset\ : STD_LOGIC;
  signal \^ch3_rxmstreset\ : STD_LOGIC;
  signal \^ch3_rxrate\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^ch3_rxuserrdy\ : STD_LOGIC;
  signal ch_rxmstresetdone4 : STD_LOGIC;
  signal ch_txmstresetdone4 : STD_LOGIC;
  signal \^dp_gt_ctrl\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal gtwiz_reset_all_in0 : STD_LOGIC;
  signal gtwiz_userclk_rx_active_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of gtwiz_userclk_rx_active_meta : signal is "true";
  signal gtwiz_userclk_rx_active_sync : STD_LOGIC;
  attribute async_reg of gtwiz_userclk_rx_active_sync : signal is "true";
  signal gtwiz_userclk_tx_active_meta : STD_LOGIC;
  attribute async_reg of gtwiz_userclk_tx_active_meta : signal is "true";
  signal gtwiz_userclk_tx_active_sync : STD_LOGIC;
  attribute async_reg of gtwiz_userclk_tx_active_sync : signal is "true";
  signal \^rx_bufg_gt_clr\ : STD_LOGIC;
  signal src_in0 : STD_LOGIC;
  signal src_in00_out : STD_LOGIC;
  signal src_in01_out : STD_LOGIC;
  signal src_in02_out : STD_LOGIC;
  signal \^status_sb_rx_tdata\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal tx_bufg_gt_clr_int2 : STD_LOGIC;
  signal NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_gtrxreset_out_UNCONNECTED : STD_LOGIC;
  signal NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_gttxreset_out_UNCONNECTED : STD_LOGIC;
  signal NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_gtwiz_reset_rx_cdr_stable_out_UNCONNECTED : STD_LOGIC;
  signal NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_gtwiz_reset_rx_done_out_UNCONNECTED : STD_LOGIC;
  signal NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_gtwiz_reset_tx_done_out_UNCONNECTED : STD_LOGIC;
  signal NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_iloreset_out_UNCONNECTED : STD_LOGIC;
  signal NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_mst_tx_dp_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_mst_tx_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_pcie_rstb_out_UNCONNECTED : STD_LOGIC;
  signal NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_pllreset_rx_out_UNCONNECTED : STD_LOGIC;
  signal NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_pllreset_tx_out_UNCONNECTED : STD_LOGIC;
  signal NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_rx_clr_out_UNCONNECTED : STD_LOGIC;
  signal NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_rx_clrb_leaf_out_UNCONNECTED : STD_LOGIC;
  signal NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_rxprogdivreset_out_UNCONNECTED : STD_LOGIC;
  signal NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_tx_clr_out_UNCONNECTED : STD_LOGIC;
  signal NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_tx_clrb_leaf_out_UNCONNECTED : STD_LOGIC;
  signal NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_txprogdivreset_out_UNCONNECTED : STD_LOGIC;
  signal NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_txuserrdy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch0_rxbufstatus_inst_dest_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_xpm_single_ch0_rxcdrlock_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch0_rxmstresetdone_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch0_rxpmaresetdone_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch0_rxprbserr_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch0_txmstresetdone_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch0_txmstresetdone_tx_usr_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch0_txpmaresetdone_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch0_txresetdone_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch1_rxbufstatus_inst_dest_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_xpm_single_ch1_rxcdrlock_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch1_rxmstresetdone_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch1_rxpmaresetdone_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch1_rxprbserr_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch1_txmstresetdone_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch1_txpmaresetdone_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch1_txresetdone_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch2_rxbufstatus_inst_dest_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_xpm_single_ch2_rxcdrlock_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch2_rxmstresetdone_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch2_rxpmaresetdone_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch2_rxprbserr_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch2_txmstresetdone_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch2_txpmaresetdone_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch2_txresetdone_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch3_rxbufstatus_inst_dest_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_xpm_single_ch3_rxcdrlock_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch3_rxmstresetdone_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch3_rxpmaresetdone_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch3_rxprbserr_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch3_txmstresetdone_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch3_txpmaresetdone_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_ch3_txresetdone_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_gt_powergood_rx_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_gt_powergood_tx_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_hsclk0_rpll_locked_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_hsclk1_rpll_locked_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_rxbufgt_clr_inst_dest_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_single_txbufgt_clr_inst_dest_out_UNCONNECTED : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst : label is "dpss_vck190_pt_dprx_gt_ip0_0_gtreset,dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst : label is "dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst,Vivado 2023.2";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of gtwiz_userclk_rx_active_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of gtwiz_userclk_rx_active_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of gtwiz_userclk_rx_active_sync_reg : label is std.standard.true;
  attribute KEEP of gtwiz_userclk_rx_active_sync_reg : label is "yes";
  attribute ASYNC_REG_boolean of gtwiz_userclk_tx_active_meta_reg : label is std.standard.true;
  attribute KEEP of gtwiz_userclk_tx_active_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of gtwiz_userclk_tx_active_sync_reg : label is std.standard.true;
  attribute KEEP of gtwiz_userclk_tx_active_sync_reg : label is "yes";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of xpm_array_rxrate_inst : label is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of xpm_array_rxrate_inst : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xpm_array_rxrate_inst : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of xpm_array_rxrate_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of xpm_array_rxrate_inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of xpm_array_rxrate_inst : label is 3;
  attribute XPM_CDC : string;
  attribute XPM_CDC of xpm_array_rxrate_inst : label is "ARRAY_SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_array_rxrate_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch0_rxbufstatus_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch0_rxbufstatus_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch0_rxbufstatus_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch0_rxbufstatus_inst : label is 0;
  attribute VERSION of xpm_single_ch0_rxbufstatus_inst : label is 0;
  attribute WIDTH of xpm_single_ch0_rxbufstatus_inst : label is 3;
  attribute XPM_CDC of xpm_single_ch0_rxbufstatus_inst : label is "ARRAY_SINGLE";
  attribute XPM_MODULE of xpm_single_ch0_rxbufstatus_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch0_rxbyteisaligned_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch0_rxbyteisaligned_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch0_rxbyteisaligned_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch0_rxbyteisaligned_inst : label is 0;
  attribute VERSION of xpm_single_ch0_rxbyteisaligned_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch0_rxbyteisaligned_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch0_rxbyteisaligned_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch0_rxcdrlock_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch0_rxcdrlock_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch0_rxcdrlock_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch0_rxcdrlock_inst : label is 0;
  attribute VERSION of xpm_single_ch0_rxcdrlock_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch0_rxcdrlock_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch0_rxcdrlock_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch0_rxmstresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch0_rxmstresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch0_rxmstresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch0_rxmstresetdone_inst : label is 0;
  attribute VERSION of xpm_single_ch0_rxmstresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch0_rxmstresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch0_rxmstresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch0_rxpmaresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch0_rxpmaresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch0_rxpmaresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch0_rxpmaresetdone_inst : label is 1;
  attribute VERSION of xpm_single_ch0_rxpmaresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch0_rxpmaresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch0_rxpmaresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch0_rxprbserr_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch0_rxprbserr_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch0_rxprbserr_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch0_rxprbserr_inst : label is 0;
  attribute VERSION of xpm_single_ch0_rxprbserr_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch0_rxprbserr_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch0_rxprbserr_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch0_rxresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch0_rxresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch0_rxresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch0_rxresetdone_inst : label is 0;
  attribute VERSION of xpm_single_ch0_rxresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch0_rxresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch0_rxresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch0_txmstresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch0_txmstresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch0_txmstresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch0_txmstresetdone_inst : label is 0;
  attribute VERSION of xpm_single_ch0_txmstresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch0_txmstresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch0_txmstresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch0_txmstresetdone_tx_usr : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch0_txmstresetdone_tx_usr : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch0_txmstresetdone_tx_usr : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch0_txmstresetdone_tx_usr : label is 0;
  attribute VERSION of xpm_single_ch0_txmstresetdone_tx_usr : label is 0;
  attribute XPM_CDC of xpm_single_ch0_txmstresetdone_tx_usr : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch0_txmstresetdone_tx_usr : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch0_txpmaresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch0_txpmaresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch0_txpmaresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch0_txpmaresetdone_inst : label is 1;
  attribute VERSION of xpm_single_ch0_txpmaresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch0_txpmaresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch0_txpmaresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch0_txresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch0_txresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch0_txresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch0_txresetdone_inst : label is 0;
  attribute VERSION of xpm_single_ch0_txresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch0_txresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch0_txresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch1_rxbufstatus_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch1_rxbufstatus_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch1_rxbufstatus_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch1_rxbufstatus_inst : label is 0;
  attribute VERSION of xpm_single_ch1_rxbufstatus_inst : label is 0;
  attribute WIDTH of xpm_single_ch1_rxbufstatus_inst : label is 3;
  attribute XPM_CDC of xpm_single_ch1_rxbufstatus_inst : label is "ARRAY_SINGLE";
  attribute XPM_MODULE of xpm_single_ch1_rxbufstatus_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch1_rxbyteisaligned_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch1_rxbyteisaligned_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch1_rxbyteisaligned_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch1_rxbyteisaligned_inst : label is 0;
  attribute VERSION of xpm_single_ch1_rxbyteisaligned_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch1_rxbyteisaligned_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch1_rxbyteisaligned_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch1_rxcdrlock_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch1_rxcdrlock_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch1_rxcdrlock_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch1_rxcdrlock_inst : label is 0;
  attribute VERSION of xpm_single_ch1_rxcdrlock_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch1_rxcdrlock_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch1_rxcdrlock_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch1_rxmstresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch1_rxmstresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch1_rxmstresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch1_rxmstresetdone_inst : label is 0;
  attribute VERSION of xpm_single_ch1_rxmstresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch1_rxmstresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch1_rxmstresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch1_rxpmaresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch1_rxpmaresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch1_rxpmaresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch1_rxpmaresetdone_inst : label is 0;
  attribute VERSION of xpm_single_ch1_rxpmaresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch1_rxpmaresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch1_rxpmaresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch1_rxprbserr_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch1_rxprbserr_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch1_rxprbserr_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch1_rxprbserr_inst : label is 0;
  attribute VERSION of xpm_single_ch1_rxprbserr_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch1_rxprbserr_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch1_rxprbserr_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch1_rxresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch1_rxresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch1_rxresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch1_rxresetdone_inst : label is 0;
  attribute VERSION of xpm_single_ch1_rxresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch1_rxresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch1_rxresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch1_txmstresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch1_txmstresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch1_txmstresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch1_txmstresetdone_inst : label is 0;
  attribute VERSION of xpm_single_ch1_txmstresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch1_txmstresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch1_txmstresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch1_txpmaresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch1_txpmaresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch1_txpmaresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch1_txpmaresetdone_inst : label is 0;
  attribute VERSION of xpm_single_ch1_txpmaresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch1_txpmaresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch1_txpmaresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch1_txresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch1_txresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch1_txresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch1_txresetdone_inst : label is 0;
  attribute VERSION of xpm_single_ch1_txresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch1_txresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch1_txresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch2_rxbufstatus_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch2_rxbufstatus_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch2_rxbufstatus_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch2_rxbufstatus_inst : label is 0;
  attribute VERSION of xpm_single_ch2_rxbufstatus_inst : label is 0;
  attribute WIDTH of xpm_single_ch2_rxbufstatus_inst : label is 3;
  attribute XPM_CDC of xpm_single_ch2_rxbufstatus_inst : label is "ARRAY_SINGLE";
  attribute XPM_MODULE of xpm_single_ch2_rxbufstatus_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch2_rxbyteisaligned_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch2_rxbyteisaligned_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch2_rxbyteisaligned_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch2_rxbyteisaligned_inst : label is 0;
  attribute VERSION of xpm_single_ch2_rxbyteisaligned_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch2_rxbyteisaligned_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch2_rxbyteisaligned_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch2_rxcdrlock_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch2_rxcdrlock_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch2_rxcdrlock_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch2_rxcdrlock_inst : label is 0;
  attribute VERSION of xpm_single_ch2_rxcdrlock_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch2_rxcdrlock_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch2_rxcdrlock_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch2_rxmstresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch2_rxmstresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch2_rxmstresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch2_rxmstresetdone_inst : label is 0;
  attribute VERSION of xpm_single_ch2_rxmstresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch2_rxmstresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch2_rxmstresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch2_rxpmaresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch2_rxpmaresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch2_rxpmaresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch2_rxpmaresetdone_inst : label is 0;
  attribute VERSION of xpm_single_ch2_rxpmaresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch2_rxpmaresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch2_rxpmaresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch2_rxprbserr_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch2_rxprbserr_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch2_rxprbserr_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch2_rxprbserr_inst : label is 0;
  attribute VERSION of xpm_single_ch2_rxprbserr_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch2_rxprbserr_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch2_rxprbserr_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch2_rxresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch2_rxresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch2_rxresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch2_rxresetdone_inst : label is 0;
  attribute VERSION of xpm_single_ch2_rxresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch2_rxresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch2_rxresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch2_txmstresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch2_txmstresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch2_txmstresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch2_txmstresetdone_inst : label is 0;
  attribute VERSION of xpm_single_ch2_txmstresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch2_txmstresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch2_txmstresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch2_txpmaresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch2_txpmaresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch2_txpmaresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch2_txpmaresetdone_inst : label is 0;
  attribute VERSION of xpm_single_ch2_txpmaresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch2_txpmaresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch2_txpmaresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch2_txresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch2_txresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch2_txresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch2_txresetdone_inst : label is 0;
  attribute VERSION of xpm_single_ch2_txresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch2_txresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch2_txresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch3_rxbufstatus_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch3_rxbufstatus_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch3_rxbufstatus_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch3_rxbufstatus_inst : label is 0;
  attribute VERSION of xpm_single_ch3_rxbufstatus_inst : label is 0;
  attribute WIDTH of xpm_single_ch3_rxbufstatus_inst : label is 3;
  attribute XPM_CDC of xpm_single_ch3_rxbufstatus_inst : label is "ARRAY_SINGLE";
  attribute XPM_MODULE of xpm_single_ch3_rxbufstatus_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch3_rxbyteisaligned_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch3_rxbyteisaligned_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch3_rxbyteisaligned_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch3_rxbyteisaligned_inst : label is 0;
  attribute VERSION of xpm_single_ch3_rxbyteisaligned_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch3_rxbyteisaligned_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch3_rxbyteisaligned_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch3_rxcdrlock_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch3_rxcdrlock_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch3_rxcdrlock_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch3_rxcdrlock_inst : label is 0;
  attribute VERSION of xpm_single_ch3_rxcdrlock_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch3_rxcdrlock_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch3_rxcdrlock_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch3_rxmstresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch3_rxmstresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch3_rxmstresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch3_rxmstresetdone_inst : label is 0;
  attribute VERSION of xpm_single_ch3_rxmstresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch3_rxmstresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch3_rxmstresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch3_rxpmaresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch3_rxpmaresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch3_rxpmaresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch3_rxpmaresetdone_inst : label is 0;
  attribute VERSION of xpm_single_ch3_rxpmaresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch3_rxpmaresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch3_rxpmaresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch3_rxprbserr_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch3_rxprbserr_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch3_rxprbserr_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch3_rxprbserr_inst : label is 0;
  attribute VERSION of xpm_single_ch3_rxprbserr_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch3_rxprbserr_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch3_rxprbserr_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch3_rxresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch3_rxresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch3_rxresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch3_rxresetdone_inst : label is 0;
  attribute VERSION of xpm_single_ch3_rxresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch3_rxresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch3_rxresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch3_txmstresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch3_txmstresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch3_txmstresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch3_txmstresetdone_inst : label is 0;
  attribute VERSION of xpm_single_ch3_txmstresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch3_txmstresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch3_txmstresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch3_txpmaresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch3_txpmaresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch3_txpmaresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch3_txpmaresetdone_inst : label is 0;
  attribute VERSION of xpm_single_ch3_txpmaresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch3_txpmaresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch3_txpmaresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_ch3_txresetdone_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_ch3_txresetdone_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_ch3_txresetdone_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_ch3_txresetdone_inst : label is 0;
  attribute VERSION of xpm_single_ch3_txresetdone_inst : label is 0;
  attribute XPM_CDC of xpm_single_ch3_txresetdone_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_ch3_txresetdone_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_gt_powergood_rx_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_gt_powergood_rx_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_gt_powergood_rx_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_gt_powergood_rx_inst : label is 0;
  attribute VERSION of xpm_single_gt_powergood_rx_inst : label is 0;
  attribute XPM_CDC of xpm_single_gt_powergood_rx_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_gt_powergood_rx_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_gt_powergood_tx_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_gt_powergood_tx_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_gt_powergood_tx_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_gt_powergood_tx_inst : label is 0;
  attribute VERSION of xpm_single_gt_powergood_tx_inst : label is 0;
  attribute XPM_CDC of xpm_single_gt_powergood_tx_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_gt_powergood_tx_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_hsclk0_lcpll_locked_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_hsclk0_lcpll_locked_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_hsclk0_lcpll_locked_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_hsclk0_lcpll_locked_inst : label is 0;
  attribute VERSION of xpm_single_hsclk0_lcpll_locked_inst : label is 0;
  attribute XPM_CDC of xpm_single_hsclk0_lcpll_locked_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_hsclk0_lcpll_locked_inst : label is "TRUE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of xpm_single_hsclk0_lcpll_locked_inst_i_1 : label is "soft_lutpair7";
  attribute DEST_SYNC_FF of xpm_single_hsclk0_rpll_locked_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_hsclk0_rpll_locked_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_hsclk0_rpll_locked_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_hsclk0_rpll_locked_inst : label is 0;
  attribute VERSION of xpm_single_hsclk0_rpll_locked_inst : label is 0;
  attribute XPM_CDC of xpm_single_hsclk0_rpll_locked_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_hsclk0_rpll_locked_inst : label is "TRUE";
  attribute SOFT_HLUTNM of xpm_single_hsclk0_rpll_locked_inst_i_1 : label is "soft_lutpair6";
  attribute DEST_SYNC_FF of xpm_single_hsclk1_lcpll_locked_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_hsclk1_lcpll_locked_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_hsclk1_lcpll_locked_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_hsclk1_lcpll_locked_inst : label is 0;
  attribute VERSION of xpm_single_hsclk1_lcpll_locked_inst : label is 0;
  attribute XPM_CDC of xpm_single_hsclk1_lcpll_locked_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_hsclk1_lcpll_locked_inst : label is "TRUE";
  attribute SOFT_HLUTNM of xpm_single_hsclk1_lcpll_locked_inst_i_1 : label is "soft_lutpair7";
  attribute DEST_SYNC_FF of xpm_single_hsclk1_rpll_locked_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_hsclk1_rpll_locked_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_hsclk1_rpll_locked_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_hsclk1_rpll_locked_inst : label is 0;
  attribute VERSION of xpm_single_hsclk1_rpll_locked_inst : label is 0;
  attribute XPM_CDC of xpm_single_hsclk1_rpll_locked_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_hsclk1_rpll_locked_inst : label is "TRUE";
  attribute SOFT_HLUTNM of xpm_single_hsclk1_rpll_locked_inst_i_1 : label is "soft_lutpair6";
  attribute DEST_SYNC_FF of xpm_single_rxbufgt_clr_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_rxbufgt_clr_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_rxbufgt_clr_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_rxbufgt_clr_inst : label is 1;
  attribute VERSION of xpm_single_rxbufgt_clr_inst : label is 0;
  attribute XPM_CDC of xpm_single_rxbufgt_clr_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_rxbufgt_clr_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_single_txbufgt_clr_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_single_txbufgt_clr_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_single_txbufgt_clr_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_single_txbufgt_clr_inst : label is 1;
  attribute VERSION of xpm_single_txbufgt_clr_inst : label is 0;
  attribute XPM_CDC of xpm_single_txbufgt_clr_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_single_txbufgt_clr_inst : label is "TRUE";
begin
  \^ch0_rxctrl0\(3 downto 0) <= ch0_rxctrl0(3 downto 0);
  \^ch0_rxctrl1\(3 downto 0) <= ch0_rxctrl1(3 downto 0);
  \^ch0_rxctrl3\(3 downto 0) <= ch0_rxctrl3(3 downto 0);
  \^ch0_rxdata\(31 downto 0) <= ch0_rxdata(31 downto 0);
  \^ch1_rxctrl0\(3 downto 0) <= ch1_rxctrl0(3 downto 0);
  \^ch1_rxctrl1\(3 downto 0) <= ch1_rxctrl1(3 downto 0);
  \^ch1_rxctrl3\(3 downto 0) <= ch1_rxctrl3(3 downto 0);
  \^ch1_rxdata\(31 downto 0) <= ch1_rxdata(31 downto 0);
  \^ch2_rxctrl0\(3 downto 0) <= ch2_rxctrl0(3 downto 0);
  \^ch2_rxctrl1\(3 downto 0) <= ch2_rxctrl1(3 downto 0);
  \^ch2_rxctrl3\(3 downto 0) <= ch2_rxctrl3(3 downto 0);
  \^ch2_rxdata\(31 downto 0) <= ch2_rxdata(31 downto 0);
  \^ch3_rxctrl0\(3 downto 0) <= ch3_rxctrl0(3 downto 0);
  \^ch3_rxctrl1\(3 downto 0) <= ch3_rxctrl1(3 downto 0);
  \^ch3_rxctrl3\(3 downto 0) <= ch3_rxctrl3(3 downto 0);
  \^ch3_rxdata\(31 downto 0) <= ch3_rxdata(31 downto 0);
  \^dp_gt_ctrl\(31 downto 30) <= dp_gt_ctrl(31 downto 30);
  \^dp_gt_ctrl\(3 downto 0) <= dp_gt_ctrl(3 downto 0);
  ch0_iloreset <= \<const0>\;
  ch0_rx8b10ben <= \<const0>\;
  ch0_rxbufreset <= \<const0>\;
  ch0_rxlpmen <= \<const0>\;
  ch0_rxmstdatapathreset <= \^ch3_rxmstdatapathreset\;
  ch0_rxmstreset <= \^ch3_rxmstreset\;
  ch0_rxpcsresetmask(4) <= \<const0>\;
  ch0_rxpcsresetmask(3) <= \<const0>\;
  ch0_rxpcsresetmask(2) <= \<const0>\;
  ch0_rxpcsresetmask(1) <= \<const0>\;
  ch0_rxpcsresetmask(0) <= \<const0>\;
  ch0_rxpd(1) <= \<const0>\;
  ch0_rxpd(0) <= \<const0>\;
  ch0_rxpllgtrst <= \<const0>\;
  ch0_rxpmareset <= \<const0>\;
  ch0_rxpmaresetmask(6) <= \<const0>\;
  ch0_rxpmaresetmask(5) <= \<const0>\;
  ch0_rxpmaresetmask(4) <= \<const0>\;
  ch0_rxpmaresetmask(3) <= \<const0>\;
  ch0_rxpmaresetmask(2) <= \<const0>\;
  ch0_rxpmaresetmask(1) <= \<const0>\;
  ch0_rxpmaresetmask(0) <= \<const0>\;
  ch0_rxpolarity <= \<const0>\;
  ch0_rxprbscntrst <= \<const0>\;
  ch0_rxprbssel(3) <= \<const0>\;
  ch0_rxprbssel(2) <= \<const0>\;
  ch0_rxprbssel(1) <= \<const0>\;
  ch0_rxprbssel(0) <= \<const0>\;
  ch0_rxprogdivreset <= \<const0>\;
  ch0_rxrate(2 downto 0) <= \^ch3_rxrate\(2 downto 0);
  ch0_rxuserrdy <= \^ch3_rxuserrdy\;
  ch0_tx8b10ben <= \<const0>\;
  ch0_txctrl0(15) <= \<const0>\;
  ch0_txctrl0(14) <= \<const0>\;
  ch0_txctrl0(13) <= \<const0>\;
  ch0_txctrl0(12) <= \<const0>\;
  ch0_txctrl0(11) <= \<const0>\;
  ch0_txctrl0(10) <= \<const0>\;
  ch0_txctrl0(9) <= \<const0>\;
  ch0_txctrl0(8) <= \<const0>\;
  ch0_txctrl0(7) <= \<const0>\;
  ch0_txctrl0(6) <= \<const0>\;
  ch0_txctrl0(5) <= \<const0>\;
  ch0_txctrl0(4) <= \<const0>\;
  ch0_txctrl0(3) <= \<const0>\;
  ch0_txctrl0(2) <= \<const0>\;
  ch0_txctrl0(1) <= \<const0>\;
  ch0_txctrl0(0) <= \<const0>\;
  ch0_txctrl1(15) <= \<const0>\;
  ch0_txctrl1(14) <= \<const0>\;
  ch0_txctrl1(13) <= \<const0>\;
  ch0_txctrl1(12) <= \<const0>\;
  ch0_txctrl1(11) <= \<const0>\;
  ch0_txctrl1(10) <= \<const0>\;
  ch0_txctrl1(9) <= \<const0>\;
  ch0_txctrl1(8) <= \<const0>\;
  ch0_txctrl1(7) <= \<const0>\;
  ch0_txctrl1(6) <= \<const0>\;
  ch0_txctrl1(5) <= \<const0>\;
  ch0_txctrl1(4) <= \<const0>\;
  ch0_txctrl1(3) <= \<const0>\;
  ch0_txctrl1(2) <= \<const0>\;
  ch0_txctrl1(1) <= \<const0>\;
  ch0_txctrl1(0) <= \<const0>\;
  ch0_txctrl2(7) <= \<const0>\;
  ch0_txctrl2(6) <= \<const0>\;
  ch0_txctrl2(5) <= \<const0>\;
  ch0_txctrl2(4) <= \<const0>\;
  ch0_txctrl2(3) <= \<const0>\;
  ch0_txctrl2(2) <= \<const0>\;
  ch0_txctrl2(1) <= \<const0>\;
  ch0_txctrl2(0) <= \<const0>\;
  ch0_txdata(31) <= \<const0>\;
  ch0_txdata(30) <= \<const0>\;
  ch0_txdata(29) <= \<const0>\;
  ch0_txdata(28) <= \<const0>\;
  ch0_txdata(27) <= \<const0>\;
  ch0_txdata(26) <= \<const0>\;
  ch0_txdata(25) <= \<const0>\;
  ch0_txdata(24) <= \<const0>\;
  ch0_txdata(23) <= \<const0>\;
  ch0_txdata(22) <= \<const0>\;
  ch0_txdata(21) <= \<const0>\;
  ch0_txdata(20) <= \<const0>\;
  ch0_txdata(19) <= \<const0>\;
  ch0_txdata(18) <= \<const0>\;
  ch0_txdata(17) <= \<const0>\;
  ch0_txdata(16) <= \<const0>\;
  ch0_txdata(15) <= \<const0>\;
  ch0_txdata(14) <= \<const0>\;
  ch0_txdata(13) <= \<const0>\;
  ch0_txdata(12) <= \<const0>\;
  ch0_txdata(11) <= \<const0>\;
  ch0_txdata(10) <= \<const0>\;
  ch0_txdata(9) <= \<const0>\;
  ch0_txdata(8) <= \<const0>\;
  ch0_txdata(7) <= \<const0>\;
  ch0_txdata(6) <= \<const0>\;
  ch0_txdata(5) <= \<const0>\;
  ch0_txdata(4) <= \<const0>\;
  ch0_txdata(3) <= \<const0>\;
  ch0_txdata(2) <= \<const0>\;
  ch0_txdata(1) <= \<const0>\;
  ch0_txdata(0) <= \<const0>\;
  ch0_txdiffctrl(4) <= \<const0>\;
  ch0_txdiffctrl(3) <= \<const0>\;
  ch0_txdiffctrl(2) <= \<const0>\;
  ch0_txdiffctrl(1) <= \<const0>\;
  ch0_txdiffctrl(0) <= \<const0>\;
  ch0_txelecidle <= \<const0>\;
  ch0_txinhibit <= \<const0>\;
  ch0_txmstdatapathreset <= \<const0>\;
  ch0_txmstreset <= \<const0>\;
  ch0_txpcsreset <= \<const0>\;
  ch0_txpcsresetmask <= \<const0>\;
  ch0_txpd(1) <= \<const0>\;
  ch0_txpd(0) <= \<const0>\;
  ch0_txpmareset <= \<const0>\;
  ch0_txpmaresetmask(2) <= \<const0>\;
  ch0_txpmaresetmask(1) <= \<const0>\;
  ch0_txpmaresetmask(0) <= \<const0>\;
  ch0_txpolarity <= \<const0>\;
  ch0_txpostcursor(4) <= \<const0>\;
  ch0_txpostcursor(3) <= \<const0>\;
  ch0_txpostcursor(2) <= \<const0>\;
  ch0_txpostcursor(1) <= \<const0>\;
  ch0_txpostcursor(0) <= \<const0>\;
  ch0_txprbsforceerr <= \<const0>\;
  ch0_txprbssel(3) <= \<const0>\;
  ch0_txprbssel(2) <= \<const0>\;
  ch0_txprbssel(1) <= \<const0>\;
  ch0_txprbssel(0) <= \<const0>\;
  ch0_txprecursor(4) <= \<const0>\;
  ch0_txprecursor(3) <= \<const0>\;
  ch0_txprecursor(2) <= \<const0>\;
  ch0_txprecursor(1) <= \<const0>\;
  ch0_txprecursor(0) <= \<const0>\;
  ch0_txprogdivreset <= \<const0>\;
  ch0_txrate(2) <= \<const0>\;
  ch0_txrate(1) <= \<const0>\;
  ch0_txrate(0) <= \<const0>\;
  ch0_txuserrdy <= \<const0>\;
  ch1_iloreset <= \<const0>\;
  ch1_rx8b10ben <= \<const0>\;
  ch1_rxbufreset <= \<const0>\;
  ch1_rxlpmen <= \<const0>\;
  ch1_rxmstdatapathreset <= \^ch3_rxmstdatapathreset\;
  ch1_rxmstreset <= \^ch3_rxmstreset\;
  ch1_rxpcsresetmask(4) <= \<const0>\;
  ch1_rxpcsresetmask(3) <= \<const0>\;
  ch1_rxpcsresetmask(2) <= \<const0>\;
  ch1_rxpcsresetmask(1) <= \<const0>\;
  ch1_rxpcsresetmask(0) <= \<const0>\;
  ch1_rxpd(1) <= \<const0>\;
  ch1_rxpd(0) <= \<const0>\;
  ch1_rxpllgtrst <= \<const0>\;
  ch1_rxpmareset <= \<const0>\;
  ch1_rxpmaresetmask(6) <= \<const0>\;
  ch1_rxpmaresetmask(5) <= \<const0>\;
  ch1_rxpmaresetmask(4) <= \<const0>\;
  ch1_rxpmaresetmask(3) <= \<const0>\;
  ch1_rxpmaresetmask(2) <= \<const0>\;
  ch1_rxpmaresetmask(1) <= \<const0>\;
  ch1_rxpmaresetmask(0) <= \<const0>\;
  ch1_rxpolarity <= \<const0>\;
  ch1_rxprbscntrst <= \<const0>\;
  ch1_rxprbssel(3) <= \<const0>\;
  ch1_rxprbssel(2) <= \<const0>\;
  ch1_rxprbssel(1) <= \<const0>\;
  ch1_rxprbssel(0) <= \<const0>\;
  ch1_rxprogdivreset <= \<const0>\;
  ch1_rxrate(2 downto 0) <= \^ch3_rxrate\(2 downto 0);
  ch1_rxuserrdy <= \^ch3_rxuserrdy\;
  ch1_tx8b10ben <= \<const0>\;
  ch1_txctrl0(15) <= \<const0>\;
  ch1_txctrl0(14) <= \<const0>\;
  ch1_txctrl0(13) <= \<const0>\;
  ch1_txctrl0(12) <= \<const0>\;
  ch1_txctrl0(11) <= \<const0>\;
  ch1_txctrl0(10) <= \<const0>\;
  ch1_txctrl0(9) <= \<const0>\;
  ch1_txctrl0(8) <= \<const0>\;
  ch1_txctrl0(7) <= \<const0>\;
  ch1_txctrl0(6) <= \<const0>\;
  ch1_txctrl0(5) <= \<const0>\;
  ch1_txctrl0(4) <= \<const0>\;
  ch1_txctrl0(3) <= \<const0>\;
  ch1_txctrl0(2) <= \<const0>\;
  ch1_txctrl0(1) <= \<const0>\;
  ch1_txctrl0(0) <= \<const0>\;
  ch1_txctrl1(15) <= \<const0>\;
  ch1_txctrl1(14) <= \<const0>\;
  ch1_txctrl1(13) <= \<const0>\;
  ch1_txctrl1(12) <= \<const0>\;
  ch1_txctrl1(11) <= \<const0>\;
  ch1_txctrl1(10) <= \<const0>\;
  ch1_txctrl1(9) <= \<const0>\;
  ch1_txctrl1(8) <= \<const0>\;
  ch1_txctrl1(7) <= \<const0>\;
  ch1_txctrl1(6) <= \<const0>\;
  ch1_txctrl1(5) <= \<const0>\;
  ch1_txctrl1(4) <= \<const0>\;
  ch1_txctrl1(3) <= \<const0>\;
  ch1_txctrl1(2) <= \<const0>\;
  ch1_txctrl1(1) <= \<const0>\;
  ch1_txctrl1(0) <= \<const0>\;
  ch1_txctrl2(7) <= \<const0>\;
  ch1_txctrl2(6) <= \<const0>\;
  ch1_txctrl2(5) <= \<const0>\;
  ch1_txctrl2(4) <= \<const0>\;
  ch1_txctrl2(3) <= \<const0>\;
  ch1_txctrl2(2) <= \<const0>\;
  ch1_txctrl2(1) <= \<const0>\;
  ch1_txctrl2(0) <= \<const0>\;
  ch1_txdata(31) <= \<const0>\;
  ch1_txdata(30) <= \<const0>\;
  ch1_txdata(29) <= \<const0>\;
  ch1_txdata(28) <= \<const0>\;
  ch1_txdata(27) <= \<const0>\;
  ch1_txdata(26) <= \<const0>\;
  ch1_txdata(25) <= \<const0>\;
  ch1_txdata(24) <= \<const0>\;
  ch1_txdata(23) <= \<const0>\;
  ch1_txdata(22) <= \<const0>\;
  ch1_txdata(21) <= \<const0>\;
  ch1_txdata(20) <= \<const0>\;
  ch1_txdata(19) <= \<const0>\;
  ch1_txdata(18) <= \<const0>\;
  ch1_txdata(17) <= \<const0>\;
  ch1_txdata(16) <= \<const0>\;
  ch1_txdata(15) <= \<const0>\;
  ch1_txdata(14) <= \<const0>\;
  ch1_txdata(13) <= \<const0>\;
  ch1_txdata(12) <= \<const0>\;
  ch1_txdata(11) <= \<const0>\;
  ch1_txdata(10) <= \<const0>\;
  ch1_txdata(9) <= \<const0>\;
  ch1_txdata(8) <= \<const0>\;
  ch1_txdata(7) <= \<const0>\;
  ch1_txdata(6) <= \<const0>\;
  ch1_txdata(5) <= \<const0>\;
  ch1_txdata(4) <= \<const0>\;
  ch1_txdata(3) <= \<const0>\;
  ch1_txdata(2) <= \<const0>\;
  ch1_txdata(1) <= \<const0>\;
  ch1_txdata(0) <= \<const0>\;
  ch1_txdiffctrl(4) <= \<const0>\;
  ch1_txdiffctrl(3) <= \<const0>\;
  ch1_txdiffctrl(2) <= \<const0>\;
  ch1_txdiffctrl(1) <= \<const0>\;
  ch1_txdiffctrl(0) <= \<const0>\;
  ch1_txinhibit <= \<const0>\;
  ch1_txmstdatapathreset <= \<const0>\;
  ch1_txmstreset <= \<const0>\;
  ch1_txpcsreset <= \<const0>\;
  ch1_txpcsresetmask <= \<const0>\;
  ch1_txpd(1) <= \<const0>\;
  ch1_txpd(0) <= \<const0>\;
  ch1_txpmareset <= \<const0>\;
  ch1_txpmaresetmask(2) <= \<const0>\;
  ch1_txpmaresetmask(1) <= \<const0>\;
  ch1_txpmaresetmask(0) <= \<const0>\;
  ch1_txpolarity <= \<const0>\;
  ch1_txpostcursor(4) <= \<const0>\;
  ch1_txpostcursor(3) <= \<const0>\;
  ch1_txpostcursor(2) <= \<const0>\;
  ch1_txpostcursor(1) <= \<const0>\;
  ch1_txpostcursor(0) <= \<const0>\;
  ch1_txprbsforceerr <= \<const0>\;
  ch1_txprbssel(3) <= \<const0>\;
  ch1_txprbssel(2) <= \<const0>\;
  ch1_txprbssel(1) <= \<const0>\;
  ch1_txprbssel(0) <= \<const0>\;
  ch1_txprecursor(4) <= \<const0>\;
  ch1_txprecursor(3) <= \<const0>\;
  ch1_txprecursor(2) <= \<const0>\;
  ch1_txprecursor(1) <= \<const0>\;
  ch1_txprecursor(0) <= \<const0>\;
  ch1_txprogdivreset <= \<const0>\;
  ch1_txrate(2) <= \<const0>\;
  ch1_txrate(1) <= \<const0>\;
  ch1_txrate(0) <= \<const0>\;
  ch1_txuserrdy <= \<const0>\;
  ch2_iloreset <= \<const0>\;
  ch2_pllgtrst <= \<const0>\;
  ch2_rx8b10ben <= \<const0>\;
  ch2_rxbufreset <= \<const0>\;
  ch2_rxlpmen <= \<const0>\;
  ch2_rxmstdatapathreset <= \^ch3_rxmstdatapathreset\;
  ch2_rxmstreset <= \^ch3_rxmstreset\;
  ch2_rxpcsresetmask(4) <= \<const0>\;
  ch2_rxpcsresetmask(3) <= \<const0>\;
  ch2_rxpcsresetmask(2) <= \<const0>\;
  ch2_rxpcsresetmask(1) <= \<const0>\;
  ch2_rxpcsresetmask(0) <= \<const0>\;
  ch2_rxpd(1) <= \<const0>\;
  ch2_rxpd(0) <= \<const0>\;
  ch2_rxpllgtrst <= \<const0>\;
  ch2_rxpmareset <= \<const0>\;
  ch2_rxpmaresetmask(6) <= \<const0>\;
  ch2_rxpmaresetmask(5) <= \<const0>\;
  ch2_rxpmaresetmask(4) <= \<const0>\;
  ch2_rxpmaresetmask(3) <= \<const0>\;
  ch2_rxpmaresetmask(2) <= \<const0>\;
  ch2_rxpmaresetmask(1) <= \<const0>\;
  ch2_rxpmaresetmask(0) <= \<const0>\;
  ch2_rxpolarity <= \<const0>\;
  ch2_rxprbscntrst <= \<const0>\;
  ch2_rxprbssel(3) <= \<const0>\;
  ch2_rxprbssel(2) <= \<const0>\;
  ch2_rxprbssel(1) <= \<const0>\;
  ch2_rxprbssel(0) <= \<const0>\;
  ch2_rxprogdivreset <= \<const0>\;
  ch2_rxrate(2 downto 0) <= \^ch3_rxrate\(2 downto 0);
  ch2_rxuserrdy <= \^ch3_rxuserrdy\;
  ch2_tx8b10ben <= \<const0>\;
  ch2_txctrl0(15) <= \<const0>\;
  ch2_txctrl0(14) <= \<const0>\;
  ch2_txctrl0(13) <= \<const0>\;
  ch2_txctrl0(12) <= \<const0>\;
  ch2_txctrl0(11) <= \<const0>\;
  ch2_txctrl0(10) <= \<const0>\;
  ch2_txctrl0(9) <= \<const0>\;
  ch2_txctrl0(8) <= \<const0>\;
  ch2_txctrl0(7) <= \<const0>\;
  ch2_txctrl0(6) <= \<const0>\;
  ch2_txctrl0(5) <= \<const0>\;
  ch2_txctrl0(4) <= \<const0>\;
  ch2_txctrl0(3) <= \<const0>\;
  ch2_txctrl0(2) <= \<const0>\;
  ch2_txctrl0(1) <= \<const0>\;
  ch2_txctrl0(0) <= \<const0>\;
  ch2_txctrl1(15) <= \<const0>\;
  ch2_txctrl1(14) <= \<const0>\;
  ch2_txctrl1(13) <= \<const0>\;
  ch2_txctrl1(12) <= \<const0>\;
  ch2_txctrl1(11) <= \<const0>\;
  ch2_txctrl1(10) <= \<const0>\;
  ch2_txctrl1(9) <= \<const0>\;
  ch2_txctrl1(8) <= \<const0>\;
  ch2_txctrl1(7) <= \<const0>\;
  ch2_txctrl1(6) <= \<const0>\;
  ch2_txctrl1(5) <= \<const0>\;
  ch2_txctrl1(4) <= \<const0>\;
  ch2_txctrl1(3) <= \<const0>\;
  ch2_txctrl1(2) <= \<const0>\;
  ch2_txctrl1(1) <= \<const0>\;
  ch2_txctrl1(0) <= \<const0>\;
  ch2_txctrl2(7) <= \<const0>\;
  ch2_txctrl2(6) <= \<const0>\;
  ch2_txctrl2(5) <= \<const0>\;
  ch2_txctrl2(4) <= \<const0>\;
  ch2_txctrl2(3) <= \<const0>\;
  ch2_txctrl2(2) <= \<const0>\;
  ch2_txctrl2(1) <= \<const0>\;
  ch2_txctrl2(0) <= \<const0>\;
  ch2_txdata(31) <= \<const0>\;
  ch2_txdata(30) <= \<const0>\;
  ch2_txdata(29) <= \<const0>\;
  ch2_txdata(28) <= \<const0>\;
  ch2_txdata(27) <= \<const0>\;
  ch2_txdata(26) <= \<const0>\;
  ch2_txdata(25) <= \<const0>\;
  ch2_txdata(24) <= \<const0>\;
  ch2_txdata(23) <= \<const0>\;
  ch2_txdata(22) <= \<const0>\;
  ch2_txdata(21) <= \<const0>\;
  ch2_txdata(20) <= \<const0>\;
  ch2_txdata(19) <= \<const0>\;
  ch2_txdata(18) <= \<const0>\;
  ch2_txdata(17) <= \<const0>\;
  ch2_txdata(16) <= \<const0>\;
  ch2_txdata(15) <= \<const0>\;
  ch2_txdata(14) <= \<const0>\;
  ch2_txdata(13) <= \<const0>\;
  ch2_txdata(12) <= \<const0>\;
  ch2_txdata(11) <= \<const0>\;
  ch2_txdata(10) <= \<const0>\;
  ch2_txdata(9) <= \<const0>\;
  ch2_txdata(8) <= \<const0>\;
  ch2_txdata(7) <= \<const0>\;
  ch2_txdata(6) <= \<const0>\;
  ch2_txdata(5) <= \<const0>\;
  ch2_txdata(4) <= \<const0>\;
  ch2_txdata(3) <= \<const0>\;
  ch2_txdata(2) <= \<const0>\;
  ch2_txdata(1) <= \<const0>\;
  ch2_txdata(0) <= \<const0>\;
  ch2_txdiffctrl(4) <= \<const0>\;
  ch2_txdiffctrl(3) <= \<const0>\;
  ch2_txdiffctrl(2) <= \<const0>\;
  ch2_txdiffctrl(1) <= \<const0>\;
  ch2_txdiffctrl(0) <= \<const0>\;
  ch2_txinhibit <= \<const0>\;
  ch2_txmstdatapathreset <= \<const0>\;
  ch2_txmstreset <= \<const0>\;
  ch2_txpcsreset <= \<const0>\;
  ch2_txpcsresetmask <= \<const0>\;
  ch2_txpd(1) <= \<const0>\;
  ch2_txpd(0) <= \<const0>\;
  ch2_txpmareset <= \<const0>\;
  ch2_txpmaresetmask(2) <= \<const0>\;
  ch2_txpmaresetmask(1) <= \<const0>\;
  ch2_txpmaresetmask(0) <= \<const0>\;
  ch2_txpolarity <= \<const0>\;
  ch2_txpostcursor(4) <= \<const0>\;
  ch2_txpostcursor(3) <= \<const0>\;
  ch2_txpostcursor(2) <= \<const0>\;
  ch2_txpostcursor(1) <= \<const0>\;
  ch2_txpostcursor(0) <= \<const0>\;
  ch2_txprbsforceerr <= \<const0>\;
  ch2_txprbssel(3) <= \<const0>\;
  ch2_txprbssel(2) <= \<const0>\;
  ch2_txprbssel(1) <= \<const0>\;
  ch2_txprbssel(0) <= \<const0>\;
  ch2_txprecursor(4) <= \<const0>\;
  ch2_txprecursor(3) <= \<const0>\;
  ch2_txprecursor(2) <= \<const0>\;
  ch2_txprecursor(1) <= \<const0>\;
  ch2_txprecursor(0) <= \<const0>\;
  ch2_txprogdivreset <= \<const0>\;
  ch2_txrate(2) <= \<const0>\;
  ch2_txrate(1) <= \<const0>\;
  ch2_txrate(0) <= \<const0>\;
  ch2_txuserrdy <= \<const0>\;
  ch3_iloreset <= \<const0>\;
  ch3_pllgtrst <= \<const0>\;
  ch3_rx8b10ben <= \<const0>\;
  ch3_rxbufreset <= \<const0>\;
  ch3_rxlpmen <= \<const0>\;
  ch3_rxmstdatapathreset <= \^ch3_rxmstdatapathreset\;
  ch3_rxmstreset <= \^ch3_rxmstreset\;
  ch3_rxpcsresetmask(4) <= \<const0>\;
  ch3_rxpcsresetmask(3) <= \<const0>\;
  ch3_rxpcsresetmask(2) <= \<const0>\;
  ch3_rxpcsresetmask(1) <= \<const0>\;
  ch3_rxpcsresetmask(0) <= \<const0>\;
  ch3_rxpd(1) <= \<const0>\;
  ch3_rxpd(0) <= \<const0>\;
  ch3_rxpllgtrst <= \<const0>\;
  ch3_rxpmareset <= \<const0>\;
  ch3_rxpmaresetmask(6) <= \<const0>\;
  ch3_rxpmaresetmask(5) <= \<const0>\;
  ch3_rxpmaresetmask(4) <= \<const0>\;
  ch3_rxpmaresetmask(3) <= \<const0>\;
  ch3_rxpmaresetmask(2) <= \<const0>\;
  ch3_rxpmaresetmask(1) <= \<const0>\;
  ch3_rxpmaresetmask(0) <= \<const0>\;
  ch3_rxpolarity <= \<const0>\;
  ch3_rxprbscntrst <= \<const0>\;
  ch3_rxprbssel(3) <= \<const0>\;
  ch3_rxprbssel(2) <= \<const0>\;
  ch3_rxprbssel(1) <= \<const0>\;
  ch3_rxprbssel(0) <= \<const0>\;
  ch3_rxprogdivreset <= \<const0>\;
  ch3_rxrate(2 downto 0) <= \^ch3_rxrate\(2 downto 0);
  ch3_rxuserrdy <= \^ch3_rxuserrdy\;
  ch3_tx8b10ben <= \<const0>\;
  ch3_txctrl0(15) <= \<const0>\;
  ch3_txctrl0(14) <= \<const0>\;
  ch3_txctrl0(13) <= \<const0>\;
  ch3_txctrl0(12) <= \<const0>\;
  ch3_txctrl0(11) <= \<const0>\;
  ch3_txctrl0(10) <= \<const0>\;
  ch3_txctrl0(9) <= \<const0>\;
  ch3_txctrl0(8) <= \<const0>\;
  ch3_txctrl0(7) <= \<const0>\;
  ch3_txctrl0(6) <= \<const0>\;
  ch3_txctrl0(5) <= \<const0>\;
  ch3_txctrl0(4) <= \<const0>\;
  ch3_txctrl0(3) <= \<const0>\;
  ch3_txctrl0(2) <= \<const0>\;
  ch3_txctrl0(1) <= \<const0>\;
  ch3_txctrl0(0) <= \<const0>\;
  ch3_txctrl1(15) <= \<const0>\;
  ch3_txctrl1(14) <= \<const0>\;
  ch3_txctrl1(13) <= \<const0>\;
  ch3_txctrl1(12) <= \<const0>\;
  ch3_txctrl1(11) <= \<const0>\;
  ch3_txctrl1(10) <= \<const0>\;
  ch3_txctrl1(9) <= \<const0>\;
  ch3_txctrl1(8) <= \<const0>\;
  ch3_txctrl1(7) <= \<const0>\;
  ch3_txctrl1(6) <= \<const0>\;
  ch3_txctrl1(5) <= \<const0>\;
  ch3_txctrl1(4) <= \<const0>\;
  ch3_txctrl1(3) <= \<const0>\;
  ch3_txctrl1(2) <= \<const0>\;
  ch3_txctrl1(1) <= \<const0>\;
  ch3_txctrl1(0) <= \<const0>\;
  ch3_txctrl2(7) <= \<const0>\;
  ch3_txctrl2(6) <= \<const0>\;
  ch3_txctrl2(5) <= \<const0>\;
  ch3_txctrl2(4) <= \<const0>\;
  ch3_txctrl2(3) <= \<const0>\;
  ch3_txctrl2(2) <= \<const0>\;
  ch3_txctrl2(1) <= \<const0>\;
  ch3_txctrl2(0) <= \<const0>\;
  ch3_txdata(31) <= \<const0>\;
  ch3_txdata(30) <= \<const0>\;
  ch3_txdata(29) <= \<const0>\;
  ch3_txdata(28) <= \<const0>\;
  ch3_txdata(27) <= \<const0>\;
  ch3_txdata(26) <= \<const0>\;
  ch3_txdata(25) <= \<const0>\;
  ch3_txdata(24) <= \<const0>\;
  ch3_txdata(23) <= \<const0>\;
  ch3_txdata(22) <= \<const0>\;
  ch3_txdata(21) <= \<const0>\;
  ch3_txdata(20) <= \<const0>\;
  ch3_txdata(19) <= \<const0>\;
  ch3_txdata(18) <= \<const0>\;
  ch3_txdata(17) <= \<const0>\;
  ch3_txdata(16) <= \<const0>\;
  ch3_txdata(15) <= \<const0>\;
  ch3_txdata(14) <= \<const0>\;
  ch3_txdata(13) <= \<const0>\;
  ch3_txdata(12) <= \<const0>\;
  ch3_txdata(11) <= \<const0>\;
  ch3_txdata(10) <= \<const0>\;
  ch3_txdata(9) <= \<const0>\;
  ch3_txdata(8) <= \<const0>\;
  ch3_txdata(7) <= \<const0>\;
  ch3_txdata(6) <= \<const0>\;
  ch3_txdata(5) <= \<const0>\;
  ch3_txdata(4) <= \<const0>\;
  ch3_txdata(3) <= \<const0>\;
  ch3_txdata(2) <= \<const0>\;
  ch3_txdata(1) <= \<const0>\;
  ch3_txdata(0) <= \<const0>\;
  ch3_txdiffctrl(4) <= \<const0>\;
  ch3_txdiffctrl(3) <= \<const0>\;
  ch3_txdiffctrl(2) <= \<const0>\;
  ch3_txdiffctrl(1) <= \<const0>\;
  ch3_txdiffctrl(0) <= \<const0>\;
  ch3_txinhibit <= \<const0>\;
  ch3_txmstdatapathreset <= \<const0>\;
  ch3_txmstreset <= \<const0>\;
  ch3_txpcsreset <= \<const0>\;
  ch3_txpcsresetmask <= \<const0>\;
  ch3_txpd(1) <= \<const0>\;
  ch3_txpd(0) <= \<const0>\;
  ch3_txpmareset <= \<const0>\;
  ch3_txpmaresetmask(2) <= \<const0>\;
  ch3_txpmaresetmask(1) <= \<const0>\;
  ch3_txpmaresetmask(0) <= \<const0>\;
  ch3_txpolarity <= \<const0>\;
  ch3_txpostcursor(4) <= \<const0>\;
  ch3_txpostcursor(3) <= \<const0>\;
  ch3_txpostcursor(2) <= \<const0>\;
  ch3_txpostcursor(1) <= \<const0>\;
  ch3_txpostcursor(0) <= \<const0>\;
  ch3_txprbsforceerr <= \<const0>\;
  ch3_txprbssel(3) <= \<const0>\;
  ch3_txprbssel(2) <= \<const0>\;
  ch3_txprbssel(1) <= \<const0>\;
  ch3_txprbssel(0) <= \<const0>\;
  ch3_txprecursor(4) <= \<const0>\;
  ch3_txprecursor(3) <= \<const0>\;
  ch3_txprecursor(2) <= \<const0>\;
  ch3_txprecursor(1) <= \<const0>\;
  ch3_txprecursor(0) <= \<const0>\;
  ch3_txprogdivreset <= \<const0>\;
  ch3_txrate(2) <= \<const0>\;
  ch3_txrate(1) <= \<const0>\;
  ch3_txrate(0) <= \<const0>\;
  ch3_txuserrdy <= \<const0>\;
  control_sb_rx_tready <= \<const0>\;
  hsclk0_lcpllpd <= \<const0>\;
  hsclk0_rpllpd <= \<const0>\;
  hsclk1_lcpllpd <= \<const0>\;
  hsclk1_rpllpd <= \<const0>\;
  rx_axi4s_ch0_tdata(31 downto 0) <= \^ch0_rxdata\(31 downto 0);
  rx_axi4s_ch0_tuser(11 downto 8) <= \^ch0_rxctrl3\(3 downto 0);
  rx_axi4s_ch0_tuser(7 downto 4) <= \^ch0_rxctrl1\(3 downto 0);
  rx_axi4s_ch0_tuser(3 downto 0) <= \^ch0_rxctrl0\(3 downto 0);
  rx_axi4s_ch0_tvalid <= \<const0>\;
  rx_axi4s_ch1_tdata(31 downto 0) <= \^ch1_rxdata\(31 downto 0);
  rx_axi4s_ch1_tuser(11 downto 8) <= \^ch1_rxctrl3\(3 downto 0);
  rx_axi4s_ch1_tuser(7 downto 4) <= \^ch1_rxctrl1\(3 downto 0);
  rx_axi4s_ch1_tuser(3 downto 0) <= \^ch1_rxctrl0\(3 downto 0);
  rx_axi4s_ch1_tvalid <= \<const0>\;
  rx_axi4s_ch2_tdata(31 downto 0) <= \^ch2_rxdata\(31 downto 0);
  rx_axi4s_ch2_tuser(11 downto 8) <= \^ch2_rxctrl3\(3 downto 0);
  rx_axi4s_ch2_tuser(7 downto 4) <= \^ch2_rxctrl1\(3 downto 0);
  rx_axi4s_ch2_tuser(3 downto 0) <= \^ch2_rxctrl0\(3 downto 0);
  rx_axi4s_ch2_tvalid <= \<const0>\;
  rx_axi4s_ch3_tdata(31 downto 0) <= \^ch3_rxdata\(31 downto 0);
  rx_axi4s_ch3_tuser(11 downto 8) <= \^ch3_rxctrl3\(3 downto 0);
  rx_axi4s_ch3_tuser(7 downto 4) <= \^ch3_rxctrl1\(3 downto 0);
  rx_axi4s_ch3_tuser(3 downto 0) <= \^ch3_rxctrl0\(3 downto 0);
  rx_axi4s_ch3_tvalid <= \<const0>\;
  rx_bufg_gt_clr <= \^rx_bufg_gt_clr\;
  rx_pll0_reset <= \^dp_gt_ctrl\(3);
  rx_pll1_reset <= \^dp_gt_ctrl\(3);
  s00_axi_arready <= \<const0>\;
  s00_axi_awready <= \<const0>\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_bvalid <= \<const0>\;
  s00_axi_rdata(31) <= \<const0>\;
  s00_axi_rdata(30) <= \<const0>\;
  s00_axi_rdata(29) <= \<const0>\;
  s00_axi_rdata(28) <= \<const0>\;
  s00_axi_rdata(27) <= \<const0>\;
  s00_axi_rdata(26) <= \<const0>\;
  s00_axi_rdata(25) <= \<const0>\;
  s00_axi_rdata(24) <= \<const0>\;
  s00_axi_rdata(23) <= \<const0>\;
  s00_axi_rdata(22) <= \<const0>\;
  s00_axi_rdata(21) <= \<const0>\;
  s00_axi_rdata(20) <= \<const0>\;
  s00_axi_rdata(19) <= \<const0>\;
  s00_axi_rdata(18) <= \<const0>\;
  s00_axi_rdata(17) <= \<const0>\;
  s00_axi_rdata(16) <= \<const0>\;
  s00_axi_rdata(15) <= \<const0>\;
  s00_axi_rdata(14) <= \<const0>\;
  s00_axi_rdata(13) <= \<const0>\;
  s00_axi_rdata(12) <= \<const0>\;
  s00_axi_rdata(11) <= \<const0>\;
  s00_axi_rdata(10) <= \<const0>\;
  s00_axi_rdata(9) <= \<const0>\;
  s00_axi_rdata(8) <= \<const0>\;
  s00_axi_rdata(7) <= \<const0>\;
  s00_axi_rdata(6) <= \<const0>\;
  s00_axi_rdata(5) <= \<const0>\;
  s00_axi_rdata(4) <= \<const0>\;
  s00_axi_rdata(3) <= \<const0>\;
  s00_axi_rdata(2) <= \<const0>\;
  s00_axi_rdata(1) <= \<const0>\;
  s00_axi_rdata(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  s00_axi_rvalid <= \<const0>\;
  s00_axi_wready <= \<const0>\;
  sdi_ctrl_sb_rx_in_tready <= \<const0>\;
  sdi_ctrl_sb_rx_out(31) <= \<const0>\;
  sdi_ctrl_sb_rx_out(30) <= \<const0>\;
  sdi_ctrl_sb_rx_out(29) <= \<const0>\;
  sdi_ctrl_sb_rx_out(28) <= \<const0>\;
  sdi_ctrl_sb_rx_out(27) <= \<const0>\;
  sdi_ctrl_sb_rx_out(26) <= \<const0>\;
  sdi_ctrl_sb_rx_out(25) <= \<const0>\;
  sdi_ctrl_sb_rx_out(24) <= \<const0>\;
  sdi_ctrl_sb_rx_out(23) <= \<const0>\;
  sdi_ctrl_sb_rx_out(22) <= \<const0>\;
  sdi_ctrl_sb_rx_out(21) <= \<const0>\;
  sdi_ctrl_sb_rx_out(20) <= \<const0>\;
  sdi_ctrl_sb_rx_out(19) <= \<const0>\;
  sdi_ctrl_sb_rx_out(18) <= \<const0>\;
  sdi_ctrl_sb_rx_out(17) <= \<const0>\;
  sdi_ctrl_sb_rx_out(16) <= \<const0>\;
  sdi_ctrl_sb_rx_out(15) <= \<const0>\;
  sdi_ctrl_sb_rx_out(14) <= \<const0>\;
  sdi_ctrl_sb_rx_out(13) <= \<const0>\;
  sdi_ctrl_sb_rx_out(12) <= \<const0>\;
  sdi_ctrl_sb_rx_out(11) <= \<const0>\;
  sdi_ctrl_sb_rx_out(10) <= \<const0>\;
  sdi_ctrl_sb_rx_out(9) <= \<const0>\;
  sdi_ctrl_sb_rx_out(8) <= \<const0>\;
  sdi_ctrl_sb_rx_out(7) <= \<const0>\;
  sdi_ctrl_sb_rx_out(6) <= \<const0>\;
  sdi_ctrl_sb_rx_out(5) <= \<const0>\;
  sdi_ctrl_sb_rx_out(4) <= \<const0>\;
  sdi_ctrl_sb_rx_out(3) <= \<const0>\;
  sdi_ctrl_sb_rx_out(2) <= \<const0>\;
  sdi_ctrl_sb_rx_out(1) <= \<const0>\;
  sdi_ctrl_sb_rx_out(0) <= \<const0>\;
  sdi_ctrl_sb_rx_out_tvalid <= \<const0>\;
  sdi_ctrl_sb_tx_in_tready <= \<const0>\;
  sdi_ctrl_sb_tx_out(31) <= \<const0>\;
  sdi_ctrl_sb_tx_out(30) <= \<const0>\;
  sdi_ctrl_sb_tx_out(29) <= \<const0>\;
  sdi_ctrl_sb_tx_out(28) <= \<const0>\;
  sdi_ctrl_sb_tx_out(27) <= \<const0>\;
  sdi_ctrl_sb_tx_out(26) <= \<const0>\;
  sdi_ctrl_sb_tx_out(25) <= \<const0>\;
  sdi_ctrl_sb_tx_out(24) <= \<const0>\;
  sdi_ctrl_sb_tx_out(23) <= \<const0>\;
  sdi_ctrl_sb_tx_out(22) <= \<const0>\;
  sdi_ctrl_sb_tx_out(21) <= \<const0>\;
  sdi_ctrl_sb_tx_out(20) <= \<const0>\;
  sdi_ctrl_sb_tx_out(19) <= \<const0>\;
  sdi_ctrl_sb_tx_out(18) <= \<const0>\;
  sdi_ctrl_sb_tx_out(17) <= \<const0>\;
  sdi_ctrl_sb_tx_out(16) <= \<const0>\;
  sdi_ctrl_sb_tx_out(15) <= \<const0>\;
  sdi_ctrl_sb_tx_out(14) <= \<const0>\;
  sdi_ctrl_sb_tx_out(13) <= \<const0>\;
  sdi_ctrl_sb_tx_out(12) <= \<const0>\;
  sdi_ctrl_sb_tx_out(11) <= \<const0>\;
  sdi_ctrl_sb_tx_out(10) <= \<const0>\;
  sdi_ctrl_sb_tx_out(9) <= \<const0>\;
  sdi_ctrl_sb_tx_out(8) <= \<const0>\;
  sdi_ctrl_sb_tx_out(7) <= \<const0>\;
  sdi_ctrl_sb_tx_out(6) <= \<const0>\;
  sdi_ctrl_sb_tx_out(5) <= \<const0>\;
  sdi_ctrl_sb_tx_out(4) <= \<const0>\;
  sdi_ctrl_sb_tx_out(3) <= \<const0>\;
  sdi_ctrl_sb_tx_out(2) <= \<const0>\;
  sdi_ctrl_sb_tx_out(1) <= \<const0>\;
  sdi_ctrl_sb_tx_out(0) <= \<const0>\;
  sdi_ctrl_sb_tx_out_tvalid <= \<const0>\;
  sdi_gt_sts(15) <= \<const0>\;
  sdi_gt_sts(14) <= \<const0>\;
  sdi_gt_sts(13) <= \<const0>\;
  sdi_gt_sts(12) <= \<const0>\;
  sdi_gt_sts(11) <= \<const0>\;
  sdi_gt_sts(10) <= \<const0>\;
  sdi_gt_sts(9) <= \<const0>\;
  sdi_gt_sts(8) <= \<const0>\;
  sdi_gt_sts(7) <= \<const0>\;
  sdi_gt_sts(6) <= \<const0>\;
  sdi_gt_sts(5) <= \<const0>\;
  sdi_gt_sts(4) <= \<const0>\;
  sdi_gt_sts(3) <= \<const0>\;
  sdi_gt_sts(2) <= \<const0>\;
  sdi_gt_sts(1) <= \<const0>\;
  sdi_gt_sts(0) <= \<const0>\;
  status_sb_rx_tdata(15) <= \<const0>\;
  status_sb_rx_tdata(14) <= \<const0>\;
  status_sb_rx_tdata(13) <= \<const0>\;
  status_sb_rx_tdata(12) <= \<const0>\;
  status_sb_rx_tdata(11 downto 8) <= \^status_sb_rx_tdata\(11 downto 8);
  status_sb_rx_tdata(7) <= \^status_sb_rx_tdata\(10);
  status_sb_rx_tdata(6 downto 2) <= \^status_sb_rx_tdata\(6 downto 2);
  status_sb_rx_tdata(1) <= \^status_sb_rx_tdata\(4);
  status_sb_rx_tdata(0) <= \^status_sb_rx_tdata\(0);
  status_sb_rx_tvalid <= \<const0>\;
  status_sb_tx_tdata(7) <= \<const0>\;
  status_sb_tx_tdata(6) <= \<const0>\;
  status_sb_tx_tdata(5) <= \<const0>\;
  status_sb_tx_tdata(4) <= \<const0>\;
  status_sb_tx_tdata(3) <= \<const0>\;
  status_sb_tx_tdata(2) <= \<const0>\;
  status_sb_tx_tdata(1) <= \<const0>\;
  status_sb_tx_tdata(0) <= \<const0>\;
  status_sb_tx_tvalid <= \<const0>\;
  tx_axi4s_ch0_tready <= \<const0>\;
  tx_axi4s_ch1_tready <= \<const0>\;
  tx_axi4s_ch2_tready <= \<const0>\;
  tx_axi4s_ch3_tready <= \<const0>\;
  tx_bufg_gt_clr <= \<const0>\;
  tx_pll0_reset <= \<const0>\;
  tx_pll1_reset <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst: entity work.dpss_vck190_pt_dprx_gt_ip0_0_gtreset
     port map (
      gtpowergood_in => gt_powergood,
      gtrxreset_out => NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_gtrxreset_out_UNCONNECTED,
      gttxreset_out => NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_gttxreset_out_UNCONNECTED,
      gtwiz_reset_all_in => gtwiz_reset_all_in0,
      gtwiz_reset_clk_freerun_in => gt_ctrl_aclk,
      gtwiz_reset_rx_cdr_stable_out => NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_gtwiz_reset_rx_cdr_stable_out_UNCONNECTED,
      gtwiz_reset_rx_datapath_in => '0',
      gtwiz_reset_rx_done_out => NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_gtwiz_reset_rx_done_out_UNCONNECTED,
      gtwiz_reset_rx_pll_and_datapath_in => '0',
      gtwiz_reset_tx_datapath_in => '0',
      gtwiz_reset_tx_done_out => NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_gtwiz_reset_tx_done_out_UNCONNECTED,
      gtwiz_reset_tx_pll_and_datapath_in => '0',
      gtwiz_reset_userclk_rx_active_in => gtwiz_userclk_rx_active_sync,
      gtwiz_reset_userclk_tx_active_in => '0',
      ilo_reset_done => '0',
      iloreset_out => NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_iloreset_out_UNCONNECTED,
      mst_rx_dp_reset => \^ch3_rxmstdatapathreset\,
      mst_rx_reset => \^ch3_rxmstreset\,
      mst_rx_resetdone => ch_rxmstresetdone4,
      mst_tx_dp_reset => NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_mst_tx_dp_reset_UNCONNECTED,
      mst_tx_reset => NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_mst_tx_reset_UNCONNECTED,
      mst_tx_resetdone => ch_txmstresetdone4,
      pcie_enable => '0',
      pcie_rstb_out => NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_pcie_rstb_out_UNCONNECTED,
      plllock_rx_in => '0',
      plllock_tx_in => '0',
      pllreset_rx_out => NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_pllreset_rx_out_UNCONNECTED,
      pllreset_tx_out => NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_pllreset_tx_out_UNCONNECTED,
      rx_clr_out => NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_rx_clr_out_UNCONNECTED,
      rx_clrb_leaf_out => NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_rx_clrb_leaf_out_UNCONNECTED,
      rx_enabled_tie_in => '1',
      rxcdrlock_in => '0',
      rxprogdivreset_out => NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_rxprogdivreset_out_UNCONNECTED,
      rxresetdone_in => '0',
      rxuserrdy_out => \^ch3_rxuserrdy\,
      rxusrclk2_in => '0',
      shared_pll_tie_in => '0',
      tx_clr_out => NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_tx_clr_out_UNCONNECTED,
      tx_clrb_leaf_out => NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_tx_clrb_leaf_out_UNCONNECTED,
      tx_enabled_tie_in => '0',
      txprogdivreset_out => NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_txprogdivreset_out_UNCONNECTED,
      txresetdone_in => '0',
      txuserrdy_out => NLW_dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_txuserrdy_out_UNCONNECTED,
      txusrclk2_in => '0'
    );
dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFFFFFFFF"
    )
        port map (
      I0 => \^dp_gt_ctrl\(31),
      I1 => \^dp_gt_ctrl\(0),
      I2 => \^dp_gt_ctrl\(30),
      I3 => control_sb_rx_tvalid,
      I4 => control_sb_rx_tdata(1),
      I5 => gt_ctrl_aresetn,
      O => gtwiz_reset_all_in0
    );
dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => ch3_txmstresetdone,
      I1 => ch0_txmstresetdone,
      I2 => ch1_txmstresetdone,
      I3 => ch2_txmstresetdone,
      O => ch_txmstresetdone4
    );
dpss_vck190_pt_dprx_gt_ip0_0_gtreset_inst_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => ch3_rxmstresetdone,
      I1 => ch0_rxmstresetdone,
      I2 => ch1_rxmstresetdone,
      I3 => ch2_rxmstresetdone,
      O => ch_rxmstresetdone4
    );
gtwiz_userclk_rx_active_meta_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt_ctrl_aclk,
      CE => '1',
      CLR => \^rx_bufg_gt_clr\,
      D => '1',
      Q => gtwiz_userclk_rx_active_meta
    );
gtwiz_userclk_rx_active_sync_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt_ctrl_aclk,
      CE => '1',
      CLR => \^rx_bufg_gt_clr\,
      D => gtwiz_userclk_rx_active_meta,
      Q => gtwiz_userclk_rx_active_sync
    );
gtwiz_userclk_tx_active_meta_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => tx_pll0_locked,
      I1 => ch0_txpmaresetdone,
      I2 => ch1_txpmaresetdone,
      I3 => tx_pll1_locked,
      I4 => ch3_txpmaresetdone,
      I5 => ch2_txpmaresetdone,
      O => tx_bufg_gt_clr_int2
    );
gtwiz_userclk_tx_active_meta_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt_ctrl_aclk,
      CE => '1',
      CLR => tx_bufg_gt_clr_int2,
      D => '1',
      Q => gtwiz_userclk_tx_active_meta
    );
gtwiz_userclk_tx_active_sync_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt_ctrl_aclk,
      CE => '1',
      CLR => tx_bufg_gt_clr_int2,
      D => gtwiz_userclk_tx_active_meta,
      Q => gtwiz_userclk_tx_active_sync
    );
rx_bufg_gt_clr_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => rx_pll0_locked,
      I1 => ch0_rxpmaresetdone,
      I2 => ch1_rxpmaresetdone,
      I3 => rx_pll1_locked,
      I4 => ch3_rxpmaresetdone,
      I5 => ch2_rxpmaresetdone,
      O => \^rx_bufg_gt_clr\
    );
xpm_array_rxrate_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__5\
     port map (
      dest_clk => gt_rxusrclk,
      dest_out(2 downto 0) => \^ch3_rxrate\(2 downto 0),
      src_clk => '0',
      src_in(2) => '0',
      src_in(1 downto 0) => \^dp_gt_ctrl\(2 downto 1)
    );
xpm_single_ch0_rxbufstatus_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__6\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out(2 downto 0) => NLW_xpm_single_ch0_rxbufstatus_inst_dest_out_UNCONNECTED(2 downto 0),
      src_clk => '0',
      src_in(2 downto 0) => ch0_rxbufstatus(2 downto 0)
    );
xpm_single_ch0_rxbyteisaligned_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__59\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => \^status_sb_rx_tdata\(2),
      src_clk => '0',
      src_in => ch0_rxbyteisaligned
    );
xpm_single_ch0_rxcdrlock_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__61\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch0_rxcdrlock_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch0_rxcdrlock
    );
xpm_single_ch0_rxmstresetdone_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__78\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch0_rxmstresetdone_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch0_rxmstresetdone
    );
xpm_single_ch0_rxpmaresetdone_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__5\
     port map (
      dest_clk => gt_rxusrclk,
      dest_out => NLW_xpm_single_ch0_rxpmaresetdone_inst_dest_out_UNCONNECTED,
      src_clk => gt_ctrl_aclk,
      src_in => ch0_rxpmaresetdone
    );
xpm_single_ch0_rxprbserr_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__62\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch0_rxprbserr_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch0_rxprbserr
    );
xpm_single_ch0_rxresetdone_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__60\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => \^status_sb_rx_tdata\(0),
      src_clk => '0',
      src_in => ch0_rxresetdone
    );
xpm_single_ch0_txmstresetdone_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__54\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch0_txmstresetdone_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch0_txmstresetdone
    );
xpm_single_ch0_txmstresetdone_tx_usr: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__55\
     port map (
      dest_clk => gt_txusrclk,
      dest_out => NLW_xpm_single_ch0_txmstresetdone_tx_usr_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch0_txmstresetdone
    );
xpm_single_ch0_txpmaresetdone_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__4\
     port map (
      dest_clk => gt_txusrclk,
      dest_out => NLW_xpm_single_ch0_txpmaresetdone_inst_dest_out_UNCONNECTED,
      src_clk => gt_ctrl_aclk,
      src_in => ch0_txpmaresetdone
    );
xpm_single_ch0_txresetdone_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__47\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch0_txresetdone_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch0_txresetdone
    );
xpm_single_ch1_rxbufstatus_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__7\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out(2 downto 0) => NLW_xpm_single_ch1_rxbufstatus_inst_dest_out_UNCONNECTED(2 downto 0),
      src_clk => '0',
      src_in(2 downto 0) => ch1_rxbufstatus(2 downto 0)
    );
xpm_single_ch1_rxbyteisaligned_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__63\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => \^status_sb_rx_tdata\(5),
      src_clk => '0',
      src_in => ch1_rxbyteisaligned
    );
xpm_single_ch1_rxcdrlock_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__66\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch1_rxcdrlock_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch1_rxcdrlock
    );
xpm_single_ch1_rxmstresetdone_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__79\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch1_rxmstresetdone_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch1_rxmstresetdone
    );
xpm_single_ch1_rxpmaresetdone_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__65\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch1_rxpmaresetdone_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch1_rxpmaresetdone
    );
xpm_single_ch1_rxprbserr_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__67\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch1_rxprbserr_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch1_rxprbserr
    );
xpm_single_ch1_rxresetdone_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__64\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => \^status_sb_rx_tdata\(3),
      src_clk => '0',
      src_in => ch1_rxresetdone
    );
xpm_single_ch1_txmstresetdone_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__56\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch1_txmstresetdone_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch1_txmstresetdone
    );
xpm_single_ch1_txpmaresetdone_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__51\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch1_txpmaresetdone_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch1_txpmaresetdone
    );
xpm_single_ch1_txresetdone_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__48\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch1_txresetdone_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch1_txresetdone
    );
xpm_single_ch2_rxbufstatus_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single__8\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out(2 downto 0) => NLW_xpm_single_ch2_rxbufstatus_inst_dest_out_UNCONNECTED(2 downto 0),
      src_clk => '0',
      src_in(2 downto 0) => ch2_rxbufstatus(2 downto 0)
    );
xpm_single_ch2_rxbyteisaligned_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__68\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => \^status_sb_rx_tdata\(8),
      src_clk => '0',
      src_in => ch2_rxbyteisaligned
    );
xpm_single_ch2_rxcdrlock_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__71\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch2_rxcdrlock_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch2_rxcdrlock
    );
xpm_single_ch2_rxmstresetdone_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__80\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch2_rxmstresetdone_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch2_rxmstresetdone
    );
xpm_single_ch2_rxpmaresetdone_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__70\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch2_rxpmaresetdone_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch2_rxpmaresetdone
    );
xpm_single_ch2_rxprbserr_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__72\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch2_rxprbserr_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch2_rxprbserr
    );
xpm_single_ch2_rxresetdone_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__69\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => \^status_sb_rx_tdata\(6),
      src_clk => '0',
      src_in => ch2_rxresetdone
    );
xpm_single_ch2_txmstresetdone_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__57\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch2_txmstresetdone_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch2_txmstresetdone
    );
xpm_single_ch2_txpmaresetdone_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__52\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch2_txpmaresetdone_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch2_txpmaresetdone
    );
xpm_single_ch2_txresetdone_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__49\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch2_txresetdone_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch2_txresetdone
    );
xpm_single_ch3_rxbufstatus_inst: entity work.dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_array_single
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out(2 downto 0) => NLW_xpm_single_ch3_rxbufstatus_inst_dest_out_UNCONNECTED(2 downto 0),
      src_clk => '0',
      src_in(2 downto 0) => ch3_rxbufstatus(2 downto 0)
    );
xpm_single_ch3_rxbyteisaligned_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__73\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => \^status_sb_rx_tdata\(11),
      src_clk => '0',
      src_in => ch3_rxbyteisaligned
    );
xpm_single_ch3_rxcdrlock_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__76\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch3_rxcdrlock_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch3_rxcdrlock
    );
xpm_single_ch3_rxmstresetdone_inst: entity work.dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch3_rxmstresetdone_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch3_rxmstresetdone
    );
xpm_single_ch3_rxpmaresetdone_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__75\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch3_rxpmaresetdone_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch3_rxpmaresetdone
    );
xpm_single_ch3_rxprbserr_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__77\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch3_rxprbserr_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch3_rxprbserr
    );
xpm_single_ch3_rxresetdone_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__74\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => \^status_sb_rx_tdata\(9),
      src_clk => '0',
      src_in => ch3_rxresetdone
    );
xpm_single_ch3_txmstresetdone_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__58\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch3_txmstresetdone_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch3_txmstresetdone
    );
xpm_single_ch3_txpmaresetdone_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__53\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch3_txpmaresetdone_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch3_txpmaresetdone
    );
xpm_single_ch3_txresetdone_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__50\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_ch3_txresetdone_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => ch3_txresetdone
    );
xpm_single_gt_powergood_rx_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__42\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_gt_powergood_rx_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => gt_powergood
    );
xpm_single_gt_powergood_tx_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__41\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_gt_powergood_tx_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => gt_powergood
    );
xpm_single_hsclk0_lcpll_locked_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__45\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => \^status_sb_rx_tdata\(4),
      src_clk => '0',
      src_in => src_in00_out
    );
xpm_single_hsclk0_lcpll_locked_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rx_pll0_locked,
      I1 => rx_mmcm_locked,
      O => src_in00_out
    );
xpm_single_hsclk0_rpll_locked_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__43\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_hsclk0_rpll_locked_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => src_in02_out
    );
xpm_single_hsclk0_rpll_locked_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tx_pll0_locked,
      I1 => tx_mmcm_locked,
      O => src_in02_out
    );
xpm_single_hsclk1_lcpll_locked_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__46\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => \^status_sb_rx_tdata\(10),
      src_clk => '0',
      src_in => src_in0
    );
xpm_single_hsclk1_lcpll_locked_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rx_pll1_locked,
      I1 => rx_mmcm_locked,
      O => src_in0
    );
xpm_single_hsclk1_rpll_locked_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__44\
     port map (
      dest_clk => gt_ctrl_aclk,
      dest_out => NLW_xpm_single_hsclk1_rpll_locked_inst_dest_out_UNCONNECTED,
      src_clk => '0',
      src_in => src_in01_out
    );
xpm_single_hsclk1_rpll_locked_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tx_pll1_locked,
      I1 => tx_mmcm_locked,
      O => src_in01_out
    );
xpm_single_rxbufgt_clr_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0__6\
     port map (
      dest_clk => gt_rxusrclk,
      dest_out => NLW_xpm_single_rxbufgt_clr_inst_dest_out_UNCONNECTED,
      src_clk => gt_ctrl_aclk,
      src_in => '0'
    );
xpm_single_txbufgt_clr_inst: entity work.\dpss_vck190_pt_dprx_gt_ip0_0_xpm_cdc_single__parameterized0\
     port map (
      dest_clk => gt_rxusrclk,
      dest_out => NLW_xpm_single_txbufgt_clr_inst_dest_out_UNCONNECTED,
      src_clk => gt_ctrl_aclk,
      src_in => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dpss_vck190_pt_dprx_gt_ip0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dpss_vck190_pt_dprx_gt_ip0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dpss_vck190_pt_dprx_gt_ip0_0 : entity is "dpss_vck190_pt_dprx_gt_ip0_0,dpss_vck190_pt_dprx_gt_ip0_0_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of dpss_vck190_pt_dprx_gt_ip0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of dpss_vck190_pt_dprx_gt_ip0_0 : entity is "dpss_vck190_pt_dprx_gt_ip0_0_top,Vivado 2023.2";
end dpss_vck190_pt_dprx_gt_ip0_0;

architecture STRUCTURE of dpss_vck190_pt_dprx_gt_ip0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^status_sb_rx_tdata\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_ch0_iloreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch0_rx8b10ben_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch0_rxbufreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch0_rxlpmen_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch0_rxpllgtrst_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch0_rxpmareset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch0_rxpolarity_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch0_rxprbscntrst_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch0_rxprogdivreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch0_tx8b10ben_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch0_txelecidle_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch0_txinhibit_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch0_txmstdatapathreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch0_txmstreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch0_txpcsreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch0_txpcsresetmask_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch0_txpmareset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch0_txpolarity_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch0_txprbsforceerr_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch0_txprogdivreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch0_txuserrdy_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch1_iloreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch1_rx8b10ben_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch1_rxbufreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch1_rxlpmen_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch1_rxpllgtrst_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch1_rxpmareset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch1_rxpolarity_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch1_rxprbscntrst_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch1_rxprogdivreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch1_tx8b10ben_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch1_txinhibit_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch1_txmstdatapathreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch1_txmstreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch1_txpcsreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch1_txpcsresetmask_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch1_txpmareset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch1_txpolarity_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch1_txprbsforceerr_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch1_txprogdivreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch1_txuserrdy_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch2_iloreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch2_pllgtrst_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch2_rx8b10ben_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch2_rxbufreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch2_rxlpmen_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch2_rxpllgtrst_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch2_rxpmareset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch2_rxpolarity_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch2_rxprbscntrst_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch2_rxprogdivreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch2_tx8b10ben_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch2_txinhibit_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch2_txmstdatapathreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch2_txmstreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch2_txpcsreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch2_txpcsresetmask_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch2_txpmareset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch2_txpolarity_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch2_txprbsforceerr_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch2_txprogdivreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch2_txuserrdy_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch3_iloreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch3_pllgtrst_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch3_rx8b10ben_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch3_rxbufreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch3_rxlpmen_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch3_rxpllgtrst_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch3_rxpmareset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch3_rxpolarity_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch3_rxprbscntrst_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch3_rxprogdivreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch3_tx8b10ben_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch3_txinhibit_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch3_txmstdatapathreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch3_txmstreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch3_txpcsreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch3_txpcsresetmask_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch3_txpmareset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch3_txpolarity_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch3_txprbsforceerr_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch3_txprogdivreset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch3_txuserrdy_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_control_sb_rx_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_hsclk0_lcpllpd_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_hsclk0_rpllpd_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_hsclk1_lcpllpd_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_hsclk1_rpllpd_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_rx_axi4s_ch0_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_rx_axi4s_ch1_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_rx_axi4s_ch2_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_rx_axi4s_ch3_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s00_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s00_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s00_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s00_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s00_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_sdi_ctrl_sb_rx_in_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_sdi_ctrl_sb_rx_out_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_sdi_ctrl_sb_tx_in_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_sdi_ctrl_sb_tx_out_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_status_sb_rx_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_status_sb_tx_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_tx_axi4s_ch0_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_tx_axi4s_ch1_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_tx_axi4s_ch2_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_tx_axi4s_ch3_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_tx_bufg_gt_clr_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_tx_pll0_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_tx_pll1_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ch0_rxpcsresetmask_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_inst_ch0_rxpd_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_ch0_rxpmaresetmask_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_inst_ch0_rxprbssel_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_ch0_txctrl0_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_ch0_txctrl1_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_ch0_txctrl2_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_ch0_txdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_ch0_txdiffctrl_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_inst_ch0_txpd_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_ch0_txpmaresetmask_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_ch0_txpostcursor_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_inst_ch0_txprbssel_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_ch0_txprecursor_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_inst_ch0_txrate_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_ch1_rxpcsresetmask_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_inst_ch1_rxpd_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_ch1_rxpmaresetmask_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_inst_ch1_rxprbssel_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_ch1_txctrl0_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_ch1_txctrl1_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_ch1_txctrl2_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_ch1_txdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_ch1_txdiffctrl_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_inst_ch1_txpd_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_ch1_txpmaresetmask_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_ch1_txpostcursor_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_inst_ch1_txprbssel_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_ch1_txprecursor_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_inst_ch1_txrate_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_ch2_rxpcsresetmask_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_inst_ch2_rxpd_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_ch2_rxpmaresetmask_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_inst_ch2_rxprbssel_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_ch2_txctrl0_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_ch2_txctrl1_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_ch2_txctrl2_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_ch2_txdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_ch2_txdiffctrl_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_inst_ch2_txpd_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_ch2_txpmaresetmask_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_ch2_txpostcursor_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_inst_ch2_txprbssel_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_ch2_txprecursor_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_inst_ch2_txrate_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_ch3_rxpcsresetmask_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_inst_ch3_rxpd_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_ch3_rxpmaresetmask_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_inst_ch3_rxprbssel_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_ch3_txctrl0_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_ch3_txctrl1_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_ch3_txctrl2_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_ch3_txdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_ch3_txdiffctrl_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_inst_ch3_txpd_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_ch3_txpmaresetmask_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_ch3_txpostcursor_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_inst_ch3_txprbssel_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_ch3_txprecursor_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_inst_ch3_txrate_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_s00_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s00_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_s00_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_sdi_ctrl_sb_rx_out_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_sdi_ctrl_sb_tx_out_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_sdi_gt_sts_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_status_sb_rx_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal NLW_inst_status_sb_tx_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute C_ENABLE_RX : integer;
  attribute C_ENABLE_RX of inst : label is 1;
  attribute C_ENABLE_TX : integer;
  attribute C_ENABLE_TX of inst : label is 0;
  attribute C_NEW_DP : integer;
  attribute C_NEW_DP of inst : label is 1;
  attribute C_PROTOCOL : integer;
  attribute C_PROTOCOL of inst : label is 0;
  attribute C_RX_NUM_CH : integer;
  attribute C_RX_NUM_CH of inst : label is 4;
  attribute C_RX_PLL : integer;
  attribute C_RX_PLL of inst : label is 1;
  attribute C_RX_RATE : integer;
  attribute C_RX_RATE of inst : label is 3;
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of inst : label is 8;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_TX_NUM_CH : integer;
  attribute C_TX_NUM_CH of inst : label is 4;
  attribute C_TX_PLL : integer;
  attribute C_TX_PLL of inst : label is 0;
  attribute C_TX_RATE : integer;
  attribute C_TX_RATE of inst : label is 1;
  attribute C_USE_AXILITE : integer;
  attribute C_USE_AXILITE of inst : label is 0;
  attribute C_USE_MSTR : integer;
  attribute C_USE_MSTR of inst : label is 1;
  attribute control_sb_rx_TDATA_WIDTH : integer;
  attribute control_sb_rx_TDATA_WIDTH of inst : label is 8;
  attribute control_sb_tx_TDATA_WIDTH : integer;
  attribute control_sb_tx_TDATA_WIDTH of inst : label is 32;
  attribute rx_axi4s_ch_INT_TDATA_WIDTH : integer;
  attribute rx_axi4s_ch_INT_TDATA_WIDTH of inst : label is 40;
  attribute rx_axi4s_ch_TDATA_WIDTH : integer;
  attribute rx_axi4s_ch_TDATA_WIDTH of inst : label is 32;
  attribute rx_axi4s_ch_TUSER_WIDTH : integer;
  attribute rx_axi4s_ch_TUSER_WIDTH of inst : label is 12;
  attribute status_sb_rx_TDATA_WIDTH : integer;
  attribute status_sb_rx_TDATA_WIDTH of inst : label is 16;
  attribute status_sb_tx_TDATA_WIDTH : integer;
  attribute status_sb_tx_TDATA_WIDTH of inst : label is 8;
  attribute tx_axi4s_ch_INT_TDATA_WIDTH : integer;
  attribute tx_axi4s_ch_INT_TDATA_WIDTH of inst : label is 40;
  attribute tx_axi4s_ch_TDATA_WIDTH : integer;
  attribute tx_axi4s_ch_TDATA_WIDTH of inst : label is 32;
  attribute tx_axi4s_ch_TUSER_WIDTH : integer;
  attribute tx_axi4s_ch_TUSER_WIDTH of inst : label is 12;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ch0_rxbyteisaligned : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX0 ch_rxbyteisaligned";
  attribute X_INTERFACE_INFO of ch0_rxcdrlock : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX0 ch_rxcdrlock";
  attribute X_INTERFACE_INFO of ch0_rxlpmen : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX0 ch_rxlpmen";
  attribute X_INTERFACE_INFO of ch0_rxmstdatapathreset : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX0 ch_rxmstdatapathreset";
  attribute X_INTERFACE_INFO of ch0_rxmstreset : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX0 ch_rxmstreset";
  attribute X_INTERFACE_INFO of ch0_rxmstresetdone : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX0 ch_rxmstresetdone";
  attribute X_INTERFACE_INFO of ch0_rxpmaresetdone : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX0 ch_rxpmaresetdone";
  attribute X_INTERFACE_INFO of ch0_rxpolarity : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX0 ch_rxpolarity";
  attribute X_INTERFACE_INFO of ch0_rxprbserr : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX0 ch_rxprbserr";
  attribute X_INTERFACE_INFO of ch0_rxprogdivreset : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX0 ch_rxprogdivreset";
  attribute X_INTERFACE_INFO of ch0_rxresetdone : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX0 ch_rxresetdone";
  attribute X_INTERFACE_INFO of ch0_rxuserrdy : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX0 ch_rxuserrdy";
  attribute X_INTERFACE_INFO of ch1_rxbyteisaligned : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX1 ch_rxbyteisaligned";
  attribute X_INTERFACE_INFO of ch1_rxcdrlock : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX1 ch_rxcdrlock";
  attribute X_INTERFACE_INFO of ch1_rxlpmen : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX1 ch_rxlpmen";
  attribute X_INTERFACE_INFO of ch1_rxmstdatapathreset : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX1 ch_rxmstdatapathreset";
  attribute X_INTERFACE_INFO of ch1_rxmstreset : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX1 ch_rxmstreset";
  attribute X_INTERFACE_INFO of ch1_rxmstresetdone : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX1 ch_rxmstresetdone";
  attribute X_INTERFACE_INFO of ch1_rxpmaresetdone : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX1 ch_rxpmaresetdone";
  attribute X_INTERFACE_INFO of ch1_rxpolarity : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX1 ch_rxpolarity";
  attribute X_INTERFACE_INFO of ch1_rxprbserr : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX1 ch_rxprbserr";
  attribute X_INTERFACE_INFO of ch1_rxprogdivreset : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX1 ch_rxprogdivreset";
  attribute X_INTERFACE_INFO of ch1_rxresetdone : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX1 ch_rxresetdone";
  attribute X_INTERFACE_INFO of ch1_rxuserrdy : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX1 ch_rxuserrdy";
  attribute X_INTERFACE_INFO of ch2_rxbyteisaligned : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX2 ch_rxbyteisaligned";
  attribute X_INTERFACE_INFO of ch2_rxcdrlock : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX2 ch_rxcdrlock";
  attribute X_INTERFACE_INFO of ch2_rxlpmen : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX2 ch_rxlpmen";
  attribute X_INTERFACE_INFO of ch2_rxmstdatapathreset : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX2 ch_rxmstdatapathreset";
  attribute X_INTERFACE_INFO of ch2_rxmstreset : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX2 ch_rxmstreset";
  attribute X_INTERFACE_INFO of ch2_rxmstresetdone : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX2 ch_rxmstresetdone";
  attribute X_INTERFACE_INFO of ch2_rxpmaresetdone : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX2 ch_rxpmaresetdone";
  attribute X_INTERFACE_INFO of ch2_rxpolarity : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX2 ch_rxpolarity";
  attribute X_INTERFACE_INFO of ch2_rxprbserr : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX2 ch_rxprbserr";
  attribute X_INTERFACE_INFO of ch2_rxprogdivreset : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX2 ch_rxprogdivreset";
  attribute X_INTERFACE_INFO of ch2_rxresetdone : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX2 ch_rxresetdone";
  attribute X_INTERFACE_INFO of ch2_rxuserrdy : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX2 ch_rxuserrdy";
  attribute X_INTERFACE_INFO of ch3_rxbyteisaligned : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX3 ch_rxbyteisaligned";
  attribute X_INTERFACE_INFO of ch3_rxcdrlock : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX3 ch_rxcdrlock";
  attribute X_INTERFACE_INFO of ch3_rxlpmen : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX3 ch_rxlpmen";
  attribute X_INTERFACE_INFO of ch3_rxmstdatapathreset : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX3 ch_rxmstdatapathreset";
  attribute X_INTERFACE_INFO of ch3_rxmstreset : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX3 ch_rxmstreset";
  attribute X_INTERFACE_INFO of ch3_rxmstresetdone : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX3 ch_rxmstresetdone";
  attribute X_INTERFACE_INFO of ch3_rxpmaresetdone : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX3 ch_rxpmaresetdone";
  attribute X_INTERFACE_INFO of ch3_rxpolarity : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX3 ch_rxpolarity";
  attribute X_INTERFACE_INFO of ch3_rxprbserr : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX3 ch_rxprbserr";
  attribute X_INTERFACE_INFO of ch3_rxprogdivreset : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX3 ch_rxprogdivreset";
  attribute X_INTERFACE_INFO of ch3_rxresetdone : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX3 ch_rxresetdone";
  attribute X_INTERFACE_INFO of ch3_rxuserrdy : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX3 ch_rxuserrdy";
  attribute X_INTERFACE_INFO of control_sb_rx_tready : signal is "xilinx.com:interface:axis:1.0 DP_RX_PHY_SB_CTRL tready";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of control_sb_rx_tready : signal is "XIL_INTERFACENAME DP_RX_PHY_SB_CTRL, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of control_sb_rx_tvalid : signal is "xilinx.com:interface:axis:1.0 DP_RX_PHY_SB_CTRL tvalid";
  attribute X_INTERFACE_INFO of gt_ctrl_aclk : signal is "xilinx.com:signal:clock:1.0 gt_ctrl_aclk CLK";
  attribute X_INTERFACE_PARAMETER of gt_ctrl_aclk : signal is "XIL_INTERFACENAME gt_ctrl_aclk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, ASSOCIATED_BUSIF :DP_RX_PHY_SB_STS:DP_RX_PHY_SB_CTRL, ASSOCIATED_RESET /dprx_gt_ip0/gt_ctrl_aresetn, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of gt_ctrl_aresetn : signal is "xilinx.com:signal:reset:1.0 gt_ctrl_aresetn RST";
  attribute X_INTERFACE_PARAMETER of gt_ctrl_aresetn : signal is "XIL_INTERFACENAME gt_ctrl_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of gt_rxusrclk : signal is "xilinx.com:signal:gt_usrclk:1.0 gt_rxusrclk CLK";
  attribute X_INTERFACE_PARAMETER of gt_rxusrclk : signal is "XIL_INTERFACENAME gt_rxusrclk, FREQ_HZ 506250000.0, PARENT_ID undef, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_rxoutclk, ASSOCIATED_BUSIF DP_RX_AXI4S_CH0:DP_RX_AXI4S_CH1:DP_RX_AXI4S_CH2:DP_RX_AXI4S_CH3";
  attribute X_INTERFACE_INFO of rx_axi4s_ch0_tready : signal is "xilinx.com:interface:axis:1.0 DP_RX_AXI4S_CH0 tready";
  attribute X_INTERFACE_PARAMETER of rx_axi4s_ch0_tready : signal is "XIL_INTERFACENAME DP_RX_AXI4S_CH0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 506250000.0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_rxoutclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rx_axi4s_ch0_tvalid : signal is "xilinx.com:interface:axis:1.0 DP_RX_AXI4S_CH0 tvalid";
  attribute X_INTERFACE_INFO of rx_axi4s_ch1_tready : signal is "xilinx.com:interface:axis:1.0 DP_RX_AXI4S_CH1 tready";
  attribute X_INTERFACE_PARAMETER of rx_axi4s_ch1_tready : signal is "XIL_INTERFACENAME DP_RX_AXI4S_CH1, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 506250000.0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_rxoutclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rx_axi4s_ch1_tvalid : signal is "xilinx.com:interface:axis:1.0 DP_RX_AXI4S_CH1 tvalid";
  attribute X_INTERFACE_INFO of rx_axi4s_ch2_tready : signal is "xilinx.com:interface:axis:1.0 DP_RX_AXI4S_CH2 tready";
  attribute X_INTERFACE_PARAMETER of rx_axi4s_ch2_tready : signal is "XIL_INTERFACENAME DP_RX_AXI4S_CH2, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 506250000.0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_rxoutclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rx_axi4s_ch2_tvalid : signal is "xilinx.com:interface:axis:1.0 DP_RX_AXI4S_CH2 tvalid";
  attribute X_INTERFACE_INFO of rx_axi4s_ch3_tready : signal is "xilinx.com:interface:axis:1.0 DP_RX_AXI4S_CH3 tready";
  attribute X_INTERFACE_PARAMETER of rx_axi4s_ch3_tready : signal is "XIL_INTERFACENAME DP_RX_AXI4S_CH3, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 506250000.0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_gt_quad_base_0_ch0_rxoutclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rx_axi4s_ch3_tvalid : signal is "xilinx.com:interface:axis:1.0 DP_RX_AXI4S_CH3 tvalid";
  attribute X_INTERFACE_INFO of rx_pll0_reset : signal is "xilinx.com:signal:reset:1.0 HSCLK0_LCPLL_RESET RST";
  attribute X_INTERFACE_PARAMETER of rx_pll0_reset : signal is "XIL_INTERFACENAME HSCLK0_LCPLL_RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rx_pll1_reset : signal is "xilinx.com:signal:reset:1.0 HSCLK1_LCPLL_RESET RST";
  attribute X_INTERFACE_PARAMETER of rx_pll1_reset : signal is "XIL_INTERFACENAME HSCLK1_LCPLL_RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of status_sb_rx_tready : signal is "xilinx.com:interface:axis:1.0 DP_RX_PHY_SB_STS tready";
  attribute X_INTERFACE_PARAMETER of status_sb_rx_tready : signal is "XIL_INTERFACENAME DP_RX_PHY_SB_STS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN bd_65e0_pspmc_0_0_pl0_ref_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of status_sb_rx_tvalid : signal is "xilinx.com:interface:axis:1.0 DP_RX_PHY_SB_STS tvalid";
  attribute X_INTERFACE_INFO of ch0_rxbufstatus : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX0 ch_rxbufstatus";
  attribute X_INTERFACE_INFO of ch0_rxctrl0 : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX0 ch_rxctrl0";
  attribute X_INTERFACE_INFO of ch0_rxctrl1 : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX0 ch_rxctrl1";
  attribute X_INTERFACE_INFO of ch0_rxctrl3 : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX0 ch_rxctrl3";
  attribute X_INTERFACE_INFO of ch0_rxdata : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX0 ch_rxdata";
  attribute X_INTERFACE_INFO of ch0_rxpcsresetmask : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX0 ch_rxpcsresetmask";
  attribute X_INTERFACE_INFO of ch0_rxpd : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX0 ch_rxpd";
  attribute X_INTERFACE_INFO of ch0_rxpmaresetmask : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX0 ch_rxpmaresetmask";
  attribute X_INTERFACE_PARAMETER of ch0_rxpmaresetmask : signal is "XIL_INTERFACENAME GT_RX0, PARENT_ID dpss_vck190_pt_dprx_gt_ip0_0, CHNL_NUMBER 0, MASTERCLK_SRC 1, GT_DIRECTION SIMPLEX_RX, RX_SETTINGS LR0_SETTINGS {PRESET None RX_PAM_SEL NRZ RX_HD_EN 0 RX_GRAY_BYP true RX_GRAY_LITTLEENDIAN true RX_PRECODE_BYP true RX_PRECODE_LITTLEENDIAN false INTERNAL_PRESET None GT_TYPE GTY RX_LINE_RATE 1.62 RX_PLL_TYPE LCPLL RX_REFCLK_FREQUENCY 270 RX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 RX_FRACN_ENABLED false RX_FRACN_OVRD false RX_FRACN_NUMERATOR 0 RX_REFCLK_SOURCE R0 RX_DATA_DECODING RAW RX_USER_DATA_WIDTH 16 RX_INT_DATA_WIDTH 16 RX_BUFFER_MODE 1 RX_OUTCLK_SOURCE RXPROGDIVCLK RXPROGDIV_FREQ_ENABLE true RXPROGDIV_FREQ_SOURCE LCPLL RXPROGDIV_FREQ_VAL 101.250 RXRECCLK_FREQ_ENABLE true RXRECCLK_FREQ_VAL 810.000 INS_LOSS_NYQ 14 RX_EQ_MODE LPM RX_COUPLING AC RX_TERMINATION PROGRAMMABLE RX_RATE_GROUP A RX_TERMINATION_PROG_VALUE 800 RX_PPM_OFFSET 300 RX_64B66B_DESCRAMBLER false RX_64B66B_DECODER false RX_64B66B_CRC false OOB_ENABLE false RX_COMMA_ALIGN_WORD 1 RX_COMMA_SHOW_REALIGN_ENABLE true PCIE_ENABLE false RX_COMMA_P_ENABLE false RX_COMMA_M_ENABLE false RX_COMMA_DOUBLE_ENABLE false RX_COMMA_P_VAL 0101111100 RX_COMMA_M_VAL 1010000011 RX_COMMA_MASK 0000000000 RX_SLIDE_MODE OFF RX_SSC_PPM 5000 RX_CB_NUM_SEQ 0 RX_CB_LEN_SEQ 1 RX_CB_MAX_SKEW 1 RX_CB_MAX_LEVEL 1 RX_CB_MASK 00000000 RX_CB_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CB_K 00000000 RX_CB_DISP 00000000 RX_CB_MASK_0_0 false RX_CB_VAL_0_0 00000000 RX_CB_K_0_0 false RX_CB_DISP_0_0 false RX_CB_MASK_0_1 false RX_CB_VAL_0_1 00000000 RX_CB_K_0_1 false RX_CB_DISP_0_1 false RX_CB_MASK_0_2 false RX_CB_VAL_0_2 00000000 RX_CB_K_0_2 false RX_CB_DISP_0_2 false RX_CB_MASK_0_3 false RX_CB_VAL_0_3 00000000 RX_CB_K_0_3 false RX_CB_DISP_0_3 false RX_CB_MASK_1_0 false RX_CB_VAL_1_0 00000000 RX_CB_K_1_0 false RX_CB_DISP_1_0 false RX_CB_MASK_1_1 false RX_CB_VAL_1_1 00000000 RX_CB_K_1_1 false RX_CB_DISP_1_1 false RX_CB_MASK_1_2 false RX_CB_VAL_1_2 00000000 RX_CB_K_1_2 false RX_CB_DISP_1_2 false RX_CB_MASK_1_3 false RX_CB_VAL_1_3 00000000 RX_CB_K_1_3 false RX_CB_DISP_1_3 false RX_CC_NUM_SEQ 0 RX_CC_LEN_SEQ 1 RX_CC_PERIODICITY 5000 RX_CC_KEEP_IDLE DISABLE RX_CC_PRECEDENCE ENABLE RX_CC_REPEAT_WAIT 0 RX_CC_MASK 00000000 RX_CC_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CC_K 00000000 RX_CC_DISP 00000000 RX_CC_MASK_0_0 false RX_CC_VAL_0_0 00000000 RX_CC_K_0_0 false RX_CC_DISP_0_0 false RX_CC_MASK_0_1 false RX_CC_VAL_0_1 00000000 RX_CC_K_0_1 false RX_CC_DISP_0_1 false RX_CC_MASK_0_2 false RX_CC_VAL_0_2 00000000 RX_CC_K_0_2 false RX_CC_DISP_0_2 false RX_CC_MASK_0_3 false RX_CC_VAL_0_3 00000000 RX_CC_K_0_3 false RX_CC_DISP_0_3 false RX_CC_MASK_1_0 false RX_CC_VAL_1_0 00000000 RX_CC_K_1_0 false RX_CC_DISP_1_0 false RX_CC_MASK_1_1 false RX_CC_VAL_1_1 00000000 RX_CC_K_1_1 false RX_CC_DISP_1_1 false RX_CC_MASK_1_2 false RX_CC_VAL_1_2 00000000 RX_CC_K_1_2 false RX_CC_DISP_1_2 false RX_CC_MASK_1_3 false RX_CC_VAL_1_3 00000000 RX_CC_K_1_3 false RX_CC_DISP_1_3 false PCIE_USERCLK2_FREQ 250 PCIE_USERCLK_FREQ 250 RX_JTOL_FC 0.9718056 RX_JTOL_LF_SLOPE -20 RX_BUFFER_BYPASS_MODE Fast_Sync RX_BUFFER_BYPASS_MODE_LANE MULTI RX_BUFFER_RESET_ON_CB_CHANGE ENABLE RX_BUFFER_RESET_ON_COMMAALIGN DISABLE RX_BUFFER_RESET_ON_RATE_CHANGE ENABLE RESET_SEQUENCE_INTERVAL 0 RX_COMMA_PRESET NONE RX_COMMA_VALID_ONLY 0} LR1_SETTINGS {PRESET None RX_PAM_SEL NRZ RX_HD_EN 0 RX_GRAY_BYP true RX_GRAY_LITTLEENDIAN true RX_PRECODE_BYP true RX_PRECODE_LITTLEENDIAN false INTERNAL_PRESET None GT_TYPE GTY RX_LINE_RATE 2.7 RX_PLL_TYPE LCPLL RX_REFCLK_FREQUENCY 270 RX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 RX_FRACN_ENABLED false RX_FRACN_OVRD false RX_FRACN_NUMERATOR 0 RX_REFCLK_SOURCE R0 RX_DATA_DECODING RAW RX_USER_DATA_WIDTH 16 RX_INT_DATA_WIDTH 16 RX_BUFFER_MODE 1 RX_OUTCLK_SOURCE RXPROGDIVCLK RXPROGDIV_FREQ_ENABLE true RXPROGDIV_FREQ_SOURCE LCPLL RXPROGDIV_FREQ_VAL 168.750 RXRECCLK_FREQ_ENABLE true RXRECCLK_FREQ_VAL 675.000 INS_LOSS_NYQ 14 RX_EQ_MODE LPM RX_COUPLING AC RX_TERMINATION PROGRAMMABLE RX_RATE_GROUP A RX_TERMINATION_PROG_VALUE 800 RX_PPM_OFFSET 300 RX_64B66B_DESCRAMBLER false RX_64B66B_DECODER false RX_64B66B_CRC false OOB_ENABLE false RX_COMMA_ALIGN_WORD 1 RX_COMMA_SHOW_REALIGN_ENABLE true PCIE_ENABLE false RX_COMMA_P_ENABLE false RX_COMMA_M_ENABLE false RX_COMMA_DOUBLE_ENABLE false RX_COMMA_P_VAL 0101111100 RX_COMMA_M_VAL 1010000011 RX_COMMA_MASK 0000000000 RX_SLIDE_MODE OFF RX_SSC_PPM 5000 RX_CB_NUM_SEQ 0 RX_CB_LEN_SEQ 1 RX_CB_MAX_SKEW 1 RX_CB_MAX_LEVEL 1 RX_CB_MASK 00000000 RX_CB_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CB_K 00000000 RX_CB_DISP 00000000 RX_CB_MASK_0_0 false RX_CB_VAL_0_0 00000000 RX_CB_K_0_0 false RX_CB_DISP_0_0 false RX_CB_MASK_0_1 false RX_CB_VAL_0_1 00000000 RX_CB_K_0_1 false RX_CB_DISP_0_1 false RX_CB_MASK_0_2 false RX_CB_VAL_0_2 00000000 RX_CB_K_0_2 false RX_CB_DISP_0_2 false RX_CB_MASK_0_3 false RX_CB_VAL_0_3 00000000 RX_CB_K_0_3 false RX_CB_DISP_0_3 false RX_CB_MASK_1_0 false RX_CB_VAL_1_0 00000000 RX_CB_K_1_0 false RX_CB_DISP_1_0 false RX_CB_MASK_1_1 false RX_CB_VAL_1_1 00000000 RX_CB_K_1_1 false RX_CB_DISP_1_1 false RX_CB_MASK_1_2 false RX_CB_VAL_1_2 00000000 RX_CB_K_1_2 false RX_CB_DISP_1_2 false RX_CB_MASK_1_3 false RX_CB_VAL_1_3 00000000 RX_CB_K_1_3 false RX_CB_DISP_1_3 false RX_CC_NUM_SEQ 0 RX_CC_LEN_SEQ 1 RX_CC_PERIODICITY 5000 RX_CC_KEEP_IDLE DISABLE RX_CC_PRECEDENCE ENABLE RX_CC_REPEAT_WAIT 0 RX_CC_MASK 00000000 RX_CC_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CC_K 00000000 RX_CC_DISP 00000000 RX_CC_MASK_0_0 false RX_CC_VAL_0_0 00000000 RX_CC_K_0_0 false RX_CC_DISP_0_0 false RX_CC_MASK_0_1 false RX_CC_VAL_0_1 00000000 RX_CC_K_0_1 false RX_CC_DISP_0_1 false RX_CC_MASK_0_2 false RX_CC_VAL_0_2 00000000 RX_CC_K_0_2 false RX_CC_DISP_0_2 false RX_CC_MASK_0_3 false RX_CC_VAL_0_3 00000000 RX_CC_K_0_3 false RX_CC_DISP_0_3 false RX_CC_MASK_1_0 false RX_CC_VAL_1_0 00000000 RX_CC_K_1_0 false RX_CC_DISP_1_0 false RX_CC_MASK_1_1 false RX_CC_VAL_1_1 00000000 RX_CC_K_1_1 false RX_CC_DISP_1_1 false RX_CC_MASK_1_2 false RX_CC_VAL_1_2 00000000 RX_CC_K_1_2 false RX_CC_DISP_1_2 false RX_CC_MASK_1_3 false RX_CC_VAL_1_3 00000000 RX_CC_K_1_3 false RX_CC_DISP_1_3 false PCIE_USERCLK2_FREQ 250 PCIE_USERCLK_FREQ 250 RX_JTOL_FC 1.6196761 RX_JTOL_LF_SLOPE -20 RX_BUFFER_BYPASS_MODE Fast_Sync RX_BUFFER_BYPASS_MODE_LANE MULTI RX_BUFFER_RESET_ON_CB_CHANGE ENABLE RX_BUFFER_RESET_ON_COMMAALIGN DISABLE RX_BUFFER_RESET_ON_RATE_CHANGE ENABLE RESET_SEQUENCE_INTERVAL 0 RX_COMMA_PRESET NONE RX_COMMA_VALID_ONLY 0} LR2_SETTINGS {PRESET None RX_PAM_SEL NRZ RX_HD_EN 0 RX_GRAY_BYP true RX_GRAY_LITTLEENDIAN true RX_PRECODE_BYP true RX_PRECODE_LITTLEENDIAN false INTERNAL_PRESET None GT_TYPE GTY RX_LINE_RATE 5.4 RX_PLL_TYPE LCPLL RX_REFCLK_FREQUENCY 270 RX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 RX_FRACN_ENABLED false RX_FRACN_OVRD false RX_FRACN_NUMERATOR 0 RX_REFCLK_SOURCE R0 RX_DATA_DECODING RAW RX_USER_DATA_WIDTH 16 RX_INT_DATA_WIDTH 16 RX_BUFFER_MODE 1 RX_OUTCLK_SOURCE RXPROGDIVCLK RXPROGDIV_FREQ_ENABLE true RXPROGDIV_FREQ_SOURCE LCPLL RXPROGDIV_FREQ_VAL 337.500 RXRECCLK_FREQ_ENABLE true RXRECCLK_FREQ_VAL 675.000 INS_LOSS_NYQ 14 RX_EQ_MODE LPM RX_COUPLING AC RX_TERMINATION PROGRAMMABLE RX_RATE_GROUP A RX_TERMINATION_PROG_VALUE 800 RX_PPM_OFFSET 300 RX_64B66B_DESCRAMBLER false RX_64B66B_DECODER false RX_64B66B_CRC false OOB_ENABLE false RX_COMMA_ALIGN_WORD 1 RX_COMMA_SHOW_REALIGN_ENABLE true PCIE_ENABLE false RX_COMMA_P_ENABLE false RX_COMMA_M_ENABLE false RX_COMMA_DOUBLE_ENABLE false RX_COMMA_P_VAL 0101111100 RX_COMMA_M_VAL 1010000011 RX_COMMA_MASK 0000000000 RX_SLIDE_MODE OFF RX_SSC_PPM 5000 RX_CB_NUM_SEQ 0 RX_CB_LEN_SEQ 1 RX_CB_MAX_SKEW 1 RX_CB_MAX_LEVEL 1 RX_CB_MASK 00000000 RX_CB_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CB_K 00000000 RX_CB_DISP 00000000 RX_CB_MASK_0_0 false RX_CB_VAL_0_0 00000000 RX_CB_K_0_0 false RX_CB_DISP_0_0 false RX_CB_MASK_0_1 false RX_CB_VAL_0_1 00000000 RX_CB_K_0_1 false RX_CB_DISP_0_1 false RX_CB_MASK_0_2 false RX_CB_VAL_0_2 00000000 RX_CB_K_0_2 false RX_CB_DISP_0_2 false RX_CB_MASK_0_3 false RX_CB_VAL_0_3 00000000 RX_CB_K_0_3 false RX_CB_DISP_0_3 false RX_CB_MASK_1_0 false RX_CB_VAL_1_0 00000000 RX_CB_K_1_0 false RX_CB_DISP_1_0 false RX_CB_MASK_1_1 false RX_CB_VAL_1_1 00000000 RX_CB_K_1_1 false RX_CB_DISP_1_1 false RX_CB_MASK_1_2 false RX_CB_VAL_1_2 00000000 RX_CB_K_1_2 false RX_CB_DISP_1_2 false RX_CB_MASK_1_3 false RX_CB_VAL_1_3 00000000 RX_CB_K_1_3 false RX_CB_DISP_1_3 false RX_CC_NUM_SEQ 0 RX_CC_LEN_SEQ 1 RX_CC_PERIODICITY 5000 RX_CC_KEEP_IDLE DISABLE RX_CC_PRECEDENCE ENABLE RX_CC_REPEAT_WAIT 0 RX_CC_MASK 00000000 RX_CC_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CC_K 00000000 RX_CC_DISP 00000000 RX_CC_MASK_0_0 false RX_CC_VAL_0_0 00000000 RX_CC_K_0_0 false RX_CC_DISP_0_0 false RX_CC_MASK_0_1 false RX_CC_VAL_0_1 00000000 RX_CC_K_0_1 false RX_CC_DISP_0_1 false RX_CC_MASK_0_2 false RX_CC_VAL_0_2 00000000 RX_CC_K_0_2 false RX_CC_DISP_0_2 false RX_CC_MASK_0_3 false RX_CC_VAL_0_3 00000000 RX_CC_K_0_3 false RX_CC_DISP_0_3 false RX_CC_MASK_1_0 false RX_CC_VAL_1_0 00000000 RX_CC_K_1_0 false RX_CC_DISP_1_0 false RX_CC_MASK_1_1 false RX_CC_VAL_1_1 00000000 RX_CC_K_1_1 false RX_CC_DISP_1_1 false RX_CC_MASK_1_2 false RX_CC_VAL_1_2 00000000 RX_CC_K_1_2 false RX_CC_DISP_1_2 false RX_CC_MASK_1_3 false RX_CC_VAL_1_3 00000000 RX_CC_K_1_3 false RX_CC_DISP_1_3 false PCIE_USERCLK2_FREQ 250 PCIE_USERCLK_FREQ 250 RX_JTOL_FC 3.2393521 RX_JTOL_LF_SLOPE -20 RX_BUFFER_BYPASS_MODE Fast_Sync RX_BUFFER_BYPASS_MODE_LANE MULTI RX_BUFFER_RESET_ON_CB_CHANGE ENABLE RX_BUFFER_RESET_ON_COMMAALIGN DISABLE RX_BUFFER_RESET_ON_RATE_CHANGE ENABLE RESET_SEQUENCE_INTERVAL 0 RX_COMMA_PRESET NONE RX_COMMA_VALID_ONLY 0} LR3_SETTINGS {PRESET None RX_PAM_SEL NRZ RX_HD_EN 0 RX_GRAY_BYP true RX_GRAY_LITTLEENDIAN true RX_PRECODE_BYP true RX_PRECODE_LITTLEENDIAN false INTERNAL_PRESET None GT_TYPE GTY RX_LINE_RATE 8.1 RX_PLL_TYPE LCPLL RX_REFCLK_FREQUENCY 270 RX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 RX_FRACN_ENABLED false RX_FRACN_OVRD false RX_FRACN_NUMERATOR 0 RX_REFCLK_SOURCE R0 RX_DATA_DECODING RAW RX_USER_DATA_WIDTH 16 RX_INT_DATA_WIDTH 16 RX_BUFFER_MODE 1 RX_OUTCLK_SOURCE RXPROGDIVCLK RXPROGDIV_FREQ_ENABLE true RXPROGDIV_FREQ_SOURCE LCPLL RXPROGDIV_FREQ_VAL 506.250 RXRECCLK_FREQ_ENABLE true RXRECCLK_FREQ_VAL 506.250 INS_LOSS_NYQ 14 RX_EQ_MODE LPM RX_COUPLING AC RX_TERMINATION PROGRAMMABLE RX_RATE_GROUP A RX_TERMINATION_PROG_VALUE 800 RX_PPM_OFFSET 300 RX_64B66B_DESCRAMBLER false RX_64B66B_DECODER false RX_64B66B_CRC false OOB_ENABLE false RX_COMMA_ALIGN_WORD 1 RX_COMMA_SHOW_REALIGN_ENABLE true PCIE_ENABLE false RX_COMMA_P_ENABLE false RX_COMMA_M_ENABLE false RX_COMMA_DOUBLE_ENABLE false RX_COMMA_P_VAL 0101111100 RX_COMMA_M_VAL 1010000011 RX_COMMA_MASK 0000000000 RX_SLIDE_MODE OFF RX_SSC_PPM 0 RX_CB_NUM_SEQ 0 RX_CB_LEN_SEQ 1 RX_CB_MAX_SKEW 1 RX_CB_MAX_LEVEL 1 RX_CB_MASK 00000000 RX_CB_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CB_K 00000000 RX_CB_DISP 00000000 RX_CB_MASK_0_0 false RX_CB_VAL_0_0 00000000 RX_CB_K_0_0 false RX_CB_DISP_0_0 false RX_CB_MASK_0_1 false RX_CB_VAL_0_1 00000000 RX_CB_K_0_1 false RX_CB_DISP_0_1 false RX_CB_MASK_0_2 false RX_CB_VAL_0_2 00000000 RX_CB_K_0_2 false RX_CB_DISP_0_2 false RX_CB_MASK_0_3 false RX_CB_VAL_0_3 00000000 RX_CB_K_0_3 false RX_CB_DISP_0_3 false RX_CB_MASK_1_0 false RX_CB_VAL_1_0 00000000 RX_CB_K_1_0 false RX_CB_DISP_1_0 false RX_CB_MASK_1_1 false RX_CB_VAL_1_1 00000000 RX_CB_K_1_1 false RX_CB_DISP_1_1 false RX_CB_MASK_1_2 false RX_CB_VAL_1_2 00000000 RX_CB_K_1_2 false RX_CB_DISP_1_2 false RX_CB_MASK_1_3 false RX_CB_VAL_1_3 00000000 RX_CB_K_1_3 false RX_CB_DISP_1_3 false RX_CC_NUM_SEQ 0 RX_CC_LEN_SEQ 1 RX_CC_PERIODICITY 5000 RX_CC_KEEP_IDLE DISABLE RX_CC_PRECEDENCE ENABLE RX_CC_REPEAT_WAIT 0 RX_CC_MASK 00000000 RX_CC_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CC_K 00000000 RX_CC_DISP 00000000 RX_CC_MASK_0_0 false RX_CC_VAL_0_0 00000000 RX_CC_K_0_0 false RX_CC_DISP_0_0 false RX_CC_MASK_0_1 false RX_CC_VAL_0_1 00000000 RX_CC_K_0_1 false RX_CC_DISP_0_1 false RX_CC_MASK_0_2 false RX_CC_VAL_0_2 00000000 RX_CC_K_0_2 false RX_CC_DISP_0_2 false RX_CC_MASK_0_3 false RX_CC_VAL_0_3 00000000 RX_CC_K_0_3 false RX_CC_DISP_0_3 false RX_CC_MASK_1_0 false RX_CC_VAL_1_0 00000000 RX_CC_K_1_0 false RX_CC_DISP_1_0 false RX_CC_MASK_1_1 false RX_CC_VAL_1_1 00000000 RX_CC_K_1_1 false RX_CC_DISP_1_1 false RX_CC_MASK_1_2 false RX_CC_VAL_1_2 00000000 RX_CC_K_1_2 false RX_CC_DISP_1_2 false RX_CC_MASK_1_3 false RX_CC_VAL_1_3 00000000 RX_CC_K_1_3 false RX_CC_DISP_1_3 false PCIE_USERCLK2_FREQ 250 PCIE_USERCLK_FREQ 250 RX_JTOL_FC 4.8590282 RX_JTOL_LF_SLOPE -20 RX_BUFFER_BYPASS_MODE Fast_Sync RX_BUFFER_BYPASS_MODE_LANE MULTI RX_BUFFER_RESET_ON_CB_CHANGE ENABLE RX_BUFFER_RESET_ON_COMMAALIGN DISABLE RX_BUFFER_RESET_ON_RATE_CHANGE ENABLE RESET_SEQUENCE_INTERVAL 0 RX_COMMA_PRESET NONE RX_COMMA_VALID_ONLY 0}, ADDITIONAL_QUAD_SETTINGS GT_TYPE GTY, ADDITIONAL_CONFIG_FILE no_addn_file_loaded, ADDITIONAL_CONFIG_ENABLE undef";
  attribute X_INTERFACE_INFO of ch0_rxprbssel : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX0 ch_rxprbssel";
  attribute X_INTERFACE_INFO of ch0_rxrate : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX0 ch_rxrate";
  attribute X_INTERFACE_INFO of ch1_rxbufstatus : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX1 ch_rxbufstatus";
  attribute X_INTERFACE_INFO of ch1_rxctrl0 : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX1 ch_rxctrl0";
  attribute X_INTERFACE_INFO of ch1_rxctrl1 : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX1 ch_rxctrl1";
  attribute X_INTERFACE_INFO of ch1_rxctrl3 : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX1 ch_rxctrl3";
  attribute X_INTERFACE_INFO of ch1_rxdata : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX1 ch_rxdata";
  attribute X_INTERFACE_INFO of ch1_rxpcsresetmask : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX1 ch_rxpcsresetmask";
  attribute X_INTERFACE_INFO of ch1_rxpd : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX1 ch_rxpd";
  attribute X_INTERFACE_INFO of ch1_rxpmaresetmask : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX1 ch_rxpmaresetmask";
  attribute X_INTERFACE_PARAMETER of ch1_rxpmaresetmask : signal is "XIL_INTERFACENAME GT_RX1, PARENT_ID dpss_vck190_pt_dprx_gt_ip0_0, CHNL_NUMBER 1, MASTERCLK_SRC 0, GT_DIRECTION SIMPLEX_RX, RX_SETTINGS LR0_SETTINGS {PRESET None RX_PAM_SEL NRZ RX_HD_EN 0 RX_GRAY_BYP true RX_GRAY_LITTLEENDIAN true RX_PRECODE_BYP true RX_PRECODE_LITTLEENDIAN false INTERNAL_PRESET None GT_TYPE GTY RX_LINE_RATE 1.62 RX_PLL_TYPE LCPLL RX_REFCLK_FREQUENCY 270 RX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 RX_FRACN_ENABLED false RX_FRACN_OVRD false RX_FRACN_NUMERATOR 0 RX_REFCLK_SOURCE R0 RX_DATA_DECODING RAW RX_USER_DATA_WIDTH 16 RX_INT_DATA_WIDTH 16 RX_BUFFER_MODE 1 RX_OUTCLK_SOURCE RXPROGDIVCLK RXPROGDIV_FREQ_ENABLE true RXPROGDIV_FREQ_SOURCE LCPLL RXPROGDIV_FREQ_VAL 101.250 RXRECCLK_FREQ_ENABLE true RXRECCLK_FREQ_VAL 810.000 INS_LOSS_NYQ 14 RX_EQ_MODE LPM RX_COUPLING AC RX_TERMINATION PROGRAMMABLE RX_RATE_GROUP A RX_TERMINATION_PROG_VALUE 800 RX_PPM_OFFSET 300 RX_64B66B_DESCRAMBLER false RX_64B66B_DECODER false RX_64B66B_CRC false OOB_ENABLE false RX_COMMA_ALIGN_WORD 1 RX_COMMA_SHOW_REALIGN_ENABLE true PCIE_ENABLE false RX_COMMA_P_ENABLE false RX_COMMA_M_ENABLE false RX_COMMA_DOUBLE_ENABLE false RX_COMMA_P_VAL 0101111100 RX_COMMA_M_VAL 1010000011 RX_COMMA_MASK 0000000000 RX_SLIDE_MODE OFF RX_SSC_PPM 5000 RX_CB_NUM_SEQ 0 RX_CB_LEN_SEQ 1 RX_CB_MAX_SKEW 1 RX_CB_MAX_LEVEL 1 RX_CB_MASK 00000000 RX_CB_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CB_K 00000000 RX_CB_DISP 00000000 RX_CB_MASK_0_0 false RX_CB_VAL_0_0 00000000 RX_CB_K_0_0 false RX_CB_DISP_0_0 false RX_CB_MASK_0_1 false RX_CB_VAL_0_1 00000000 RX_CB_K_0_1 false RX_CB_DISP_0_1 false RX_CB_MASK_0_2 false RX_CB_VAL_0_2 00000000 RX_CB_K_0_2 false RX_CB_DISP_0_2 false RX_CB_MASK_0_3 false RX_CB_VAL_0_3 00000000 RX_CB_K_0_3 false RX_CB_DISP_0_3 false RX_CB_MASK_1_0 false RX_CB_VAL_1_0 00000000 RX_CB_K_1_0 false RX_CB_DISP_1_0 false RX_CB_MASK_1_1 false RX_CB_VAL_1_1 00000000 RX_CB_K_1_1 false RX_CB_DISP_1_1 false RX_CB_MASK_1_2 false RX_CB_VAL_1_2 00000000 RX_CB_K_1_2 false RX_CB_DISP_1_2 false RX_CB_MASK_1_3 false RX_CB_VAL_1_3 00000000 RX_CB_K_1_3 false RX_CB_DISP_1_3 false RX_CC_NUM_SEQ 0 RX_CC_LEN_SEQ 1 RX_CC_PERIODICITY 5000 RX_CC_KEEP_IDLE DISABLE RX_CC_PRECEDENCE ENABLE RX_CC_REPEAT_WAIT 0 RX_CC_MASK 00000000 RX_CC_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CC_K 00000000 RX_CC_DISP 00000000 RX_CC_MASK_0_0 false RX_CC_VAL_0_0 00000000 RX_CC_K_0_0 false RX_CC_DISP_0_0 false RX_CC_MASK_0_1 false RX_CC_VAL_0_1 00000000 RX_CC_K_0_1 false RX_CC_DISP_0_1 false RX_CC_MASK_0_2 false RX_CC_VAL_0_2 00000000 RX_CC_K_0_2 false RX_CC_DISP_0_2 false RX_CC_MASK_0_3 false RX_CC_VAL_0_3 00000000 RX_CC_K_0_3 false RX_CC_DISP_0_3 false RX_CC_MASK_1_0 false RX_CC_VAL_1_0 00000000 RX_CC_K_1_0 false RX_CC_DISP_1_0 false RX_CC_MASK_1_1 false RX_CC_VAL_1_1 00000000 RX_CC_K_1_1 false RX_CC_DISP_1_1 false RX_CC_MASK_1_2 false RX_CC_VAL_1_2 00000000 RX_CC_K_1_2 false RX_CC_DISP_1_2 false RX_CC_MASK_1_3 false RX_CC_VAL_1_3 00000000 RX_CC_K_1_3 false RX_CC_DISP_1_3 false PCIE_USERCLK2_FREQ 250 PCIE_USERCLK_FREQ 250 RX_JTOL_FC 0.9718056 RX_JTOL_LF_SLOPE -20 RX_BUFFER_BYPASS_MODE Fast_Sync RX_BUFFER_BYPASS_MODE_LANE MULTI RX_BUFFER_RESET_ON_CB_CHANGE ENABLE RX_BUFFER_RESET_ON_COMMAALIGN DISABLE RX_BUFFER_RESET_ON_RATE_CHANGE ENABLE RESET_SEQUENCE_INTERVAL 0 RX_COMMA_PRESET NONE RX_COMMA_VALID_ONLY 0} LR1_SETTINGS {PRESET None RX_PAM_SEL NRZ RX_HD_EN 0 RX_GRAY_BYP true RX_GRAY_LITTLEENDIAN true RX_PRECODE_BYP true RX_PRECODE_LITTLEENDIAN false INTERNAL_PRESET None GT_TYPE GTY RX_LINE_RATE 2.7 RX_PLL_TYPE LCPLL RX_REFCLK_FREQUENCY 270 RX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 RX_FRACN_ENABLED false RX_FRACN_OVRD false RX_FRACN_NUMERATOR 0 RX_REFCLK_SOURCE R0 RX_DATA_DECODING RAW RX_USER_DATA_WIDTH 16 RX_INT_DATA_WIDTH 16 RX_BUFFER_MODE 1 RX_OUTCLK_SOURCE RXPROGDIVCLK RXPROGDIV_FREQ_ENABLE true RXPROGDIV_FREQ_SOURCE LCPLL RXPROGDIV_FREQ_VAL 168.750 RXRECCLK_FREQ_ENABLE true RXRECCLK_FREQ_VAL 675.000 INS_LOSS_NYQ 14 RX_EQ_MODE LPM RX_COUPLING AC RX_TERMINATION PROGRAMMABLE RX_RATE_GROUP A RX_TERMINATION_PROG_VALUE 800 RX_PPM_OFFSET 300 RX_64B66B_DESCRAMBLER false RX_64B66B_DECODER false RX_64B66B_CRC false OOB_ENABLE false RX_COMMA_ALIGN_WORD 1 RX_COMMA_SHOW_REALIGN_ENABLE true PCIE_ENABLE false RX_COMMA_P_ENABLE false RX_COMMA_M_ENABLE false RX_COMMA_DOUBLE_ENABLE false RX_COMMA_P_VAL 0101111100 RX_COMMA_M_VAL 1010000011 RX_COMMA_MASK 0000000000 RX_SLIDE_MODE OFF RX_SSC_PPM 5000 RX_CB_NUM_SEQ 0 RX_CB_LEN_SEQ 1 RX_CB_MAX_SKEW 1 RX_CB_MAX_LEVEL 1 RX_CB_MASK 00000000 RX_CB_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CB_K 00000000 RX_CB_DISP 00000000 RX_CB_MASK_0_0 false RX_CB_VAL_0_0 00000000 RX_CB_K_0_0 false RX_CB_DISP_0_0 false RX_CB_MASK_0_1 false RX_CB_VAL_0_1 00000000 RX_CB_K_0_1 false RX_CB_DISP_0_1 false RX_CB_MASK_0_2 false RX_CB_VAL_0_2 00000000 RX_CB_K_0_2 false RX_CB_DISP_0_2 false RX_CB_MASK_0_3 false RX_CB_VAL_0_3 00000000 RX_CB_K_0_3 false RX_CB_DISP_0_3 false RX_CB_MASK_1_0 false RX_CB_VAL_1_0 00000000 RX_CB_K_1_0 false RX_CB_DISP_1_0 false RX_CB_MASK_1_1 false RX_CB_VAL_1_1 00000000 RX_CB_K_1_1 false RX_CB_DISP_1_1 false RX_CB_MASK_1_2 false RX_CB_VAL_1_2 00000000 RX_CB_K_1_2 false RX_CB_DISP_1_2 false RX_CB_MASK_1_3 false RX_CB_VAL_1_3 00000000 RX_CB_K_1_3 false RX_CB_DISP_1_3 false RX_CC_NUM_SEQ 0 RX_CC_LEN_SEQ 1 RX_CC_PERIODICITY 5000 RX_CC_KEEP_IDLE DISABLE RX_CC_PRECEDENCE ENABLE RX_CC_REPEAT_WAIT 0 RX_CC_MASK 00000000 RX_CC_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CC_K 00000000 RX_CC_DISP 00000000 RX_CC_MASK_0_0 false RX_CC_VAL_0_0 00000000 RX_CC_K_0_0 false RX_CC_DISP_0_0 false RX_CC_MASK_0_1 false RX_CC_VAL_0_1 00000000 RX_CC_K_0_1 false RX_CC_DISP_0_1 false RX_CC_MASK_0_2 false RX_CC_VAL_0_2 00000000 RX_CC_K_0_2 false RX_CC_DISP_0_2 false RX_CC_MASK_0_3 false RX_CC_VAL_0_3 00000000 RX_CC_K_0_3 false RX_CC_DISP_0_3 false RX_CC_MASK_1_0 false RX_CC_VAL_1_0 00000000 RX_CC_K_1_0 false RX_CC_DISP_1_0 false RX_CC_MASK_1_1 false RX_CC_VAL_1_1 00000000 RX_CC_K_1_1 false RX_CC_DISP_1_1 false RX_CC_MASK_1_2 false RX_CC_VAL_1_2 00000000 RX_CC_K_1_2 false RX_CC_DISP_1_2 false RX_CC_MASK_1_3 false RX_CC_VAL_1_3 00000000 RX_CC_K_1_3 false RX_CC_DISP_1_3 false PCIE_USERCLK2_FREQ 250 PCIE_USERCLK_FREQ 250 RX_JTOL_FC 1.6196761 RX_JTOL_LF_SLOPE -20 RX_BUFFER_BYPASS_MODE Fast_Sync RX_BUFFER_BYPASS_MODE_LANE MULTI RX_BUFFER_RESET_ON_CB_CHANGE ENABLE RX_BUFFER_RESET_ON_COMMAALIGN DISABLE RX_BUFFER_RESET_ON_RATE_CHANGE ENABLE RESET_SEQUENCE_INTERVAL 0 RX_COMMA_PRESET NONE RX_COMMA_VALID_ONLY 0} LR2_SETTINGS {PRESET None RX_PAM_SEL NRZ RX_HD_EN 0 RX_GRAY_BYP true RX_GRAY_LITTLEENDIAN true RX_PRECODE_BYP true RX_PRECODE_LITTLEENDIAN false INTERNAL_PRESET None GT_TYPE GTY RX_LINE_RATE 5.4 RX_PLL_TYPE LCPLL RX_REFCLK_FREQUENCY 270 RX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 RX_FRACN_ENABLED false RX_FRACN_OVRD false RX_FRACN_NUMERATOR 0 RX_REFCLK_SOURCE R0 RX_DATA_DECODING RAW RX_USER_DATA_WIDTH 16 RX_INT_DATA_WIDTH 16 RX_BUFFER_MODE 1 RX_OUTCLK_SOURCE RXPROGDIVCLK RXPROGDIV_FREQ_ENABLE true RXPROGDIV_FREQ_SOURCE LCPLL RXPROGDIV_FREQ_VAL 337.500 RXRECCLK_FREQ_ENABLE true RXRECCLK_FREQ_VAL 675.000 INS_LOSS_NYQ 14 RX_EQ_MODE LPM RX_COUPLING AC RX_TERMINATION PROGRAMMABLE RX_RATE_GROUP A RX_TERMINATION_PROG_VALUE 800 RX_PPM_OFFSET 300 RX_64B66B_DESCRAMBLER false RX_64B66B_DECODER false RX_64B66B_CRC false OOB_ENABLE false RX_COMMA_ALIGN_WORD 1 RX_COMMA_SHOW_REALIGN_ENABLE true PCIE_ENABLE false RX_COMMA_P_ENABLE false RX_COMMA_M_ENABLE false RX_COMMA_DOUBLE_ENABLE false RX_COMMA_P_VAL 0101111100 RX_COMMA_M_VAL 1010000011 RX_COMMA_MASK 0000000000 RX_SLIDE_MODE OFF RX_SSC_PPM 5000 RX_CB_NUM_SEQ 0 RX_CB_LEN_SEQ 1 RX_CB_MAX_SKEW 1 RX_CB_MAX_LEVEL 1 RX_CB_MASK 00000000 RX_CB_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CB_K 00000000 RX_CB_DISP 00000000 RX_CB_MASK_0_0 false RX_CB_VAL_0_0 00000000 RX_CB_K_0_0 false RX_CB_DISP_0_0 false RX_CB_MASK_0_1 false RX_CB_VAL_0_1 00000000 RX_CB_K_0_1 false RX_CB_DISP_0_1 false RX_CB_MASK_0_2 false RX_CB_VAL_0_2 00000000 RX_CB_K_0_2 false RX_CB_DISP_0_2 false RX_CB_MASK_0_3 false RX_CB_VAL_0_3 00000000 RX_CB_K_0_3 false RX_CB_DISP_0_3 false RX_CB_MASK_1_0 false RX_CB_VAL_1_0 00000000 RX_CB_K_1_0 false RX_CB_DISP_1_0 false RX_CB_MASK_1_1 false RX_CB_VAL_1_1 00000000 RX_CB_K_1_1 false RX_CB_DISP_1_1 false RX_CB_MASK_1_2 false RX_CB_VAL_1_2 00000000 RX_CB_K_1_2 false RX_CB_DISP_1_2 false RX_CB_MASK_1_3 false RX_CB_VAL_1_3 00000000 RX_CB_K_1_3 false RX_CB_DISP_1_3 false RX_CC_NUM_SEQ 0 RX_CC_LEN_SEQ 1 RX_CC_PERIODICITY 5000 RX_CC_KEEP_IDLE DISABLE RX_CC_PRECEDENCE ENABLE RX_CC_REPEAT_WAIT 0 RX_CC_MASK 00000000 RX_CC_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CC_K 00000000 RX_CC_DISP 00000000 RX_CC_MASK_0_0 false RX_CC_VAL_0_0 00000000 RX_CC_K_0_0 false RX_CC_DISP_0_0 false RX_CC_MASK_0_1 false RX_CC_VAL_0_1 00000000 RX_CC_K_0_1 false RX_CC_DISP_0_1 false RX_CC_MASK_0_2 false RX_CC_VAL_0_2 00000000 RX_CC_K_0_2 false RX_CC_DISP_0_2 false RX_CC_MASK_0_3 false RX_CC_VAL_0_3 00000000 RX_CC_K_0_3 false RX_CC_DISP_0_3 false RX_CC_MASK_1_0 false RX_CC_VAL_1_0 00000000 RX_CC_K_1_0 false RX_CC_DISP_1_0 false RX_CC_MASK_1_1 false RX_CC_VAL_1_1 00000000 RX_CC_K_1_1 false RX_CC_DISP_1_1 false RX_CC_MASK_1_2 false RX_CC_VAL_1_2 00000000 RX_CC_K_1_2 false RX_CC_DISP_1_2 false RX_CC_MASK_1_3 false RX_CC_VAL_1_3 00000000 RX_CC_K_1_3 false RX_CC_DISP_1_3 false PCIE_USERCLK2_FREQ 250 PCIE_USERCLK_FREQ 250 RX_JTOL_FC 3.2393521 RX_JTOL_LF_SLOPE -20 RX_BUFFER_BYPASS_MODE Fast_Sync RX_BUFFER_BYPASS_MODE_LANE MULTI RX_BUFFER_RESET_ON_CB_CHANGE ENABLE RX_BUFFER_RESET_ON_COMMAALIGN DISABLE RX_BUFFER_RESET_ON_RATE_CHANGE ENABLE RESET_SEQUENCE_INTERVAL 0 RX_COMMA_PRESET NONE RX_COMMA_VALID_ONLY 0} LR3_SETTINGS {PRESET None RX_PAM_SEL NRZ RX_HD_EN 0 RX_GRAY_BYP true RX_GRAY_LITTLEENDIAN true RX_PRECODE_BYP true RX_PRECODE_LITTLEENDIAN false INTERNAL_PRESET None GT_TYPE GTY RX_LINE_RATE 8.1 RX_PLL_TYPE LCPLL RX_REFCLK_FREQUENCY 270 RX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 RX_FRACN_ENABLED false RX_FRACN_OVRD false RX_FRACN_NUMERATOR 0 RX_REFCLK_SOURCE R0 RX_DATA_DECODING RAW RX_USER_DATA_WIDTH 16 RX_INT_DATA_WIDTH 16 RX_BUFFER_MODE 1 RX_OUTCLK_SOURCE RXPROGDIVCLK RXPROGDIV_FREQ_ENABLE true RXPROGDIV_FREQ_SOURCE LCPLL RXPROGDIV_FREQ_VAL 506.250 RXRECCLK_FREQ_ENABLE true RXRECCLK_FREQ_VAL 506.250 INS_LOSS_NYQ 14 RX_EQ_MODE LPM RX_COUPLING AC RX_TERMINATION PROGRAMMABLE RX_RATE_GROUP A RX_TERMINATION_PROG_VALUE 800 RX_PPM_OFFSET 300 RX_64B66B_DESCRAMBLER false RX_64B66B_DECODER false RX_64B66B_CRC false OOB_ENABLE false RX_COMMA_ALIGN_WORD 1 RX_COMMA_SHOW_REALIGN_ENABLE true PCIE_ENABLE false RX_COMMA_P_ENABLE false RX_COMMA_M_ENABLE false RX_COMMA_DOUBLE_ENABLE false RX_COMMA_P_VAL 0101111100 RX_COMMA_M_VAL 1010000011 RX_COMMA_MASK 0000000000 RX_SLIDE_MODE OFF RX_SSC_PPM 0 RX_CB_NUM_SEQ 0 RX_CB_LEN_SEQ 1 RX_CB_MAX_SKEW 1 RX_CB_MAX_LEVEL 1 RX_CB_MASK 00000000 RX_CB_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CB_K 00000000 RX_CB_DISP 00000000 RX_CB_MASK_0_0 false RX_CB_VAL_0_0 00000000 RX_CB_K_0_0 false RX_CB_DISP_0_0 false RX_CB_MASK_0_1 false RX_CB_VAL_0_1 00000000 RX_CB_K_0_1 false RX_CB_DISP_0_1 false RX_CB_MASK_0_2 false RX_CB_VAL_0_2 00000000 RX_CB_K_0_2 false RX_CB_DISP_0_2 false RX_CB_MASK_0_3 false RX_CB_VAL_0_3 00000000 RX_CB_K_0_3 false RX_CB_DISP_0_3 false RX_CB_MASK_1_0 false RX_CB_VAL_1_0 00000000 RX_CB_K_1_0 false RX_CB_DISP_1_0 false RX_CB_MASK_1_1 false RX_CB_VAL_1_1 00000000 RX_CB_K_1_1 false RX_CB_DISP_1_1 false RX_CB_MASK_1_2 false RX_CB_VAL_1_2 00000000 RX_CB_K_1_2 false RX_CB_DISP_1_2 false RX_CB_MASK_1_3 false RX_CB_VAL_1_3 00000000 RX_CB_K_1_3 false RX_CB_DISP_1_3 false RX_CC_NUM_SEQ 0 RX_CC_LEN_SEQ 1 RX_CC_PERIODICITY 5000 RX_CC_KEEP_IDLE DISABLE RX_CC_PRECEDENCE ENABLE RX_CC_REPEAT_WAIT 0 RX_CC_MASK 00000000 RX_CC_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CC_K 00000000 RX_CC_DISP 00000000 RX_CC_MASK_0_0 false RX_CC_VAL_0_0 00000000 RX_CC_K_0_0 false RX_CC_DISP_0_0 false RX_CC_MASK_0_1 false RX_CC_VAL_0_1 00000000 RX_CC_K_0_1 false RX_CC_DISP_0_1 false RX_CC_MASK_0_2 false RX_CC_VAL_0_2 00000000 RX_CC_K_0_2 false RX_CC_DISP_0_2 false RX_CC_MASK_0_3 false RX_CC_VAL_0_3 00000000 RX_CC_K_0_3 false RX_CC_DISP_0_3 false RX_CC_MASK_1_0 false RX_CC_VAL_1_0 00000000 RX_CC_K_1_0 false RX_CC_DISP_1_0 false RX_CC_MASK_1_1 false RX_CC_VAL_1_1 00000000 RX_CC_K_1_1 false RX_CC_DISP_1_1 false RX_CC_MASK_1_2 false RX_CC_VAL_1_2 00000000 RX_CC_K_1_2 false RX_CC_DISP_1_2 false RX_CC_MASK_1_3 false RX_CC_VAL_1_3 00000000 RX_CC_K_1_3 false RX_CC_DISP_1_3 false PCIE_USERCLK2_FREQ 250 PCIE_USERCLK_FREQ 250 RX_JTOL_FC 4.8590282 RX_JTOL_LF_SLOPE -20 RX_BUFFER_BYPASS_MODE Fast_Sync RX_BUFFER_BYPASS_MODE_LANE MULTI RX_BUFFER_RESET_ON_CB_CHANGE ENABLE RX_BUFFER_RESET_ON_COMMAALIGN DISABLE RX_BUFFER_RESET_ON_RATE_CHANGE ENABLE RESET_SEQUENCE_INTERVAL 0 RX_COMMA_PRESET NONE RX_COMMA_VALID_ONLY 0}, ADDITIONAL_QUAD_SETTINGS GT_TYPE GTY, ADDITIONAL_CONFIG_FILE no_addn_file_loaded, ADDITIONAL_CONFIG_ENABLE undef";
  attribute X_INTERFACE_INFO of ch1_rxprbssel : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX1 ch_rxprbssel";
  attribute X_INTERFACE_INFO of ch1_rxrate : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX1 ch_rxrate";
  attribute X_INTERFACE_INFO of ch2_rxbufstatus : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX2 ch_rxbufstatus";
  attribute X_INTERFACE_INFO of ch2_rxctrl0 : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX2 ch_rxctrl0";
  attribute X_INTERFACE_INFO of ch2_rxctrl1 : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX2 ch_rxctrl1";
  attribute X_INTERFACE_INFO of ch2_rxctrl3 : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX2 ch_rxctrl3";
  attribute X_INTERFACE_INFO of ch2_rxdata : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX2 ch_rxdata";
  attribute X_INTERFACE_INFO of ch2_rxpcsresetmask : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX2 ch_rxpcsresetmask";
  attribute X_INTERFACE_INFO of ch2_rxpd : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX2 ch_rxpd";
  attribute X_INTERFACE_INFO of ch2_rxpmaresetmask : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX2 ch_rxpmaresetmask";
  attribute X_INTERFACE_PARAMETER of ch2_rxpmaresetmask : signal is "XIL_INTERFACENAME GT_RX2, PARENT_ID dpss_vck190_pt_dprx_gt_ip0_0, CHNL_NUMBER 2, MASTERCLK_SRC 0, GT_DIRECTION SIMPLEX_RX, RX_SETTINGS LR0_SETTINGS {PRESET None RX_PAM_SEL NRZ RX_HD_EN 0 RX_GRAY_BYP true RX_GRAY_LITTLEENDIAN true RX_PRECODE_BYP true RX_PRECODE_LITTLEENDIAN false INTERNAL_PRESET None GT_TYPE GTY RX_LINE_RATE 1.62 RX_PLL_TYPE LCPLL RX_REFCLK_FREQUENCY 270 RX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 RX_FRACN_ENABLED false RX_FRACN_OVRD false RX_FRACN_NUMERATOR 0 RX_REFCLK_SOURCE R0 RX_DATA_DECODING RAW RX_USER_DATA_WIDTH 16 RX_INT_DATA_WIDTH 16 RX_BUFFER_MODE 1 RX_OUTCLK_SOURCE RXPROGDIVCLK RXPROGDIV_FREQ_ENABLE true RXPROGDIV_FREQ_SOURCE LCPLL RXPROGDIV_FREQ_VAL 101.250 RXRECCLK_FREQ_ENABLE true RXRECCLK_FREQ_VAL 810.000 INS_LOSS_NYQ 14 RX_EQ_MODE LPM RX_COUPLING AC RX_TERMINATION PROGRAMMABLE RX_RATE_GROUP A RX_TERMINATION_PROG_VALUE 800 RX_PPM_OFFSET 300 RX_64B66B_DESCRAMBLER false RX_64B66B_DECODER false RX_64B66B_CRC false OOB_ENABLE false RX_COMMA_ALIGN_WORD 1 RX_COMMA_SHOW_REALIGN_ENABLE true PCIE_ENABLE false RX_COMMA_P_ENABLE false RX_COMMA_M_ENABLE false RX_COMMA_DOUBLE_ENABLE false RX_COMMA_P_VAL 0101111100 RX_COMMA_M_VAL 1010000011 RX_COMMA_MASK 0000000000 RX_SLIDE_MODE OFF RX_SSC_PPM 5000 RX_CB_NUM_SEQ 0 RX_CB_LEN_SEQ 1 RX_CB_MAX_SKEW 1 RX_CB_MAX_LEVEL 1 RX_CB_MASK 00000000 RX_CB_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CB_K 00000000 RX_CB_DISP 00000000 RX_CB_MASK_0_0 false RX_CB_VAL_0_0 00000000 RX_CB_K_0_0 false RX_CB_DISP_0_0 false RX_CB_MASK_0_1 false RX_CB_VAL_0_1 00000000 RX_CB_K_0_1 false RX_CB_DISP_0_1 false RX_CB_MASK_0_2 false RX_CB_VAL_0_2 00000000 RX_CB_K_0_2 false RX_CB_DISP_0_2 false RX_CB_MASK_0_3 false RX_CB_VAL_0_3 00000000 RX_CB_K_0_3 false RX_CB_DISP_0_3 false RX_CB_MASK_1_0 false RX_CB_VAL_1_0 00000000 RX_CB_K_1_0 false RX_CB_DISP_1_0 false RX_CB_MASK_1_1 false RX_CB_VAL_1_1 00000000 RX_CB_K_1_1 false RX_CB_DISP_1_1 false RX_CB_MASK_1_2 false RX_CB_VAL_1_2 00000000 RX_CB_K_1_2 false RX_CB_DISP_1_2 false RX_CB_MASK_1_3 false RX_CB_VAL_1_3 00000000 RX_CB_K_1_3 false RX_CB_DISP_1_3 false RX_CC_NUM_SEQ 0 RX_CC_LEN_SEQ 1 RX_CC_PERIODICITY 5000 RX_CC_KEEP_IDLE DISABLE RX_CC_PRECEDENCE ENABLE RX_CC_REPEAT_WAIT 0 RX_CC_MASK 00000000 RX_CC_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CC_K 00000000 RX_CC_DISP 00000000 RX_CC_MASK_0_0 false RX_CC_VAL_0_0 00000000 RX_CC_K_0_0 false RX_CC_DISP_0_0 false RX_CC_MASK_0_1 false RX_CC_VAL_0_1 00000000 RX_CC_K_0_1 false RX_CC_DISP_0_1 false RX_CC_MASK_0_2 false RX_CC_VAL_0_2 00000000 RX_CC_K_0_2 false RX_CC_DISP_0_2 false RX_CC_MASK_0_3 false RX_CC_VAL_0_3 00000000 RX_CC_K_0_3 false RX_CC_DISP_0_3 false RX_CC_MASK_1_0 false RX_CC_VAL_1_0 00000000 RX_CC_K_1_0 false RX_CC_DISP_1_0 false RX_CC_MASK_1_1 false RX_CC_VAL_1_1 00000000 RX_CC_K_1_1 false RX_CC_DISP_1_1 false RX_CC_MASK_1_2 false RX_CC_VAL_1_2 00000000 RX_CC_K_1_2 false RX_CC_DISP_1_2 false RX_CC_MASK_1_3 false RX_CC_VAL_1_3 00000000 RX_CC_K_1_3 false RX_CC_DISP_1_3 false PCIE_USERCLK2_FREQ 250 PCIE_USERCLK_FREQ 250 RX_JTOL_FC 0.9718056 RX_JTOL_LF_SLOPE -20 RX_BUFFER_BYPASS_MODE Fast_Sync RX_BUFFER_BYPASS_MODE_LANE MULTI RX_BUFFER_RESET_ON_CB_CHANGE ENABLE RX_BUFFER_RESET_ON_COMMAALIGN DISABLE RX_BUFFER_RESET_ON_RATE_CHANGE ENABLE RESET_SEQUENCE_INTERVAL 0 RX_COMMA_PRESET NONE RX_COMMA_VALID_ONLY 0} LR1_SETTINGS {PRESET None RX_PAM_SEL NRZ RX_HD_EN 0 RX_GRAY_BYP true RX_GRAY_LITTLEENDIAN true RX_PRECODE_BYP true RX_PRECODE_LITTLEENDIAN false INTERNAL_PRESET None GT_TYPE GTY RX_LINE_RATE 2.7 RX_PLL_TYPE LCPLL RX_REFCLK_FREQUENCY 270 RX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 RX_FRACN_ENABLED false RX_FRACN_OVRD false RX_FRACN_NUMERATOR 0 RX_REFCLK_SOURCE R0 RX_DATA_DECODING RAW RX_USER_DATA_WIDTH 16 RX_INT_DATA_WIDTH 16 RX_BUFFER_MODE 1 RX_OUTCLK_SOURCE RXPROGDIVCLK RXPROGDIV_FREQ_ENABLE true RXPROGDIV_FREQ_SOURCE LCPLL RXPROGDIV_FREQ_VAL 168.750 RXRECCLK_FREQ_ENABLE true RXRECCLK_FREQ_VAL 675.000 INS_LOSS_NYQ 14 RX_EQ_MODE LPM RX_COUPLING AC RX_TERMINATION PROGRAMMABLE RX_RATE_GROUP A RX_TERMINATION_PROG_VALUE 800 RX_PPM_OFFSET 300 RX_64B66B_DESCRAMBLER false RX_64B66B_DECODER false RX_64B66B_CRC false OOB_ENABLE false RX_COMMA_ALIGN_WORD 1 RX_COMMA_SHOW_REALIGN_ENABLE true PCIE_ENABLE false RX_COMMA_P_ENABLE false RX_COMMA_M_ENABLE false RX_COMMA_DOUBLE_ENABLE false RX_COMMA_P_VAL 0101111100 RX_COMMA_M_VAL 1010000011 RX_COMMA_MASK 0000000000 RX_SLIDE_MODE OFF RX_SSC_PPM 5000 RX_CB_NUM_SEQ 0 RX_CB_LEN_SEQ 1 RX_CB_MAX_SKEW 1 RX_CB_MAX_LEVEL 1 RX_CB_MASK 00000000 RX_CB_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CB_K 00000000 RX_CB_DISP 00000000 RX_CB_MASK_0_0 false RX_CB_VAL_0_0 00000000 RX_CB_K_0_0 false RX_CB_DISP_0_0 false RX_CB_MASK_0_1 false RX_CB_VAL_0_1 00000000 RX_CB_K_0_1 false RX_CB_DISP_0_1 false RX_CB_MASK_0_2 false RX_CB_VAL_0_2 00000000 RX_CB_K_0_2 false RX_CB_DISP_0_2 false RX_CB_MASK_0_3 false RX_CB_VAL_0_3 00000000 RX_CB_K_0_3 false RX_CB_DISP_0_3 false RX_CB_MASK_1_0 false RX_CB_VAL_1_0 00000000 RX_CB_K_1_0 false RX_CB_DISP_1_0 false RX_CB_MASK_1_1 false RX_CB_VAL_1_1 00000000 RX_CB_K_1_1 false RX_CB_DISP_1_1 false RX_CB_MASK_1_2 false RX_CB_VAL_1_2 00000000 RX_CB_K_1_2 false RX_CB_DISP_1_2 false RX_CB_MASK_1_3 false RX_CB_VAL_1_3 00000000 RX_CB_K_1_3 false RX_CB_DISP_1_3 false RX_CC_NUM_SEQ 0 RX_CC_LEN_SEQ 1 RX_CC_PERIODICITY 5000 RX_CC_KEEP_IDLE DISABLE RX_CC_PRECEDENCE ENABLE RX_CC_REPEAT_WAIT 0 RX_CC_MASK 00000000 RX_CC_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CC_K 00000000 RX_CC_DISP 00000000 RX_CC_MASK_0_0 false RX_CC_VAL_0_0 00000000 RX_CC_K_0_0 false RX_CC_DISP_0_0 false RX_CC_MASK_0_1 false RX_CC_VAL_0_1 00000000 RX_CC_K_0_1 false RX_CC_DISP_0_1 false RX_CC_MASK_0_2 false RX_CC_VAL_0_2 00000000 RX_CC_K_0_2 false RX_CC_DISP_0_2 false RX_CC_MASK_0_3 false RX_CC_VAL_0_3 00000000 RX_CC_K_0_3 false RX_CC_DISP_0_3 false RX_CC_MASK_1_0 false RX_CC_VAL_1_0 00000000 RX_CC_K_1_0 false RX_CC_DISP_1_0 false RX_CC_MASK_1_1 false RX_CC_VAL_1_1 00000000 RX_CC_K_1_1 false RX_CC_DISP_1_1 false RX_CC_MASK_1_2 false RX_CC_VAL_1_2 00000000 RX_CC_K_1_2 false RX_CC_DISP_1_2 false RX_CC_MASK_1_3 false RX_CC_VAL_1_3 00000000 RX_CC_K_1_3 false RX_CC_DISP_1_3 false PCIE_USERCLK2_FREQ 250 PCIE_USERCLK_FREQ 250 RX_JTOL_FC 1.6196761 RX_JTOL_LF_SLOPE -20 RX_BUFFER_BYPASS_MODE Fast_Sync RX_BUFFER_BYPASS_MODE_LANE MULTI RX_BUFFER_RESET_ON_CB_CHANGE ENABLE RX_BUFFER_RESET_ON_COMMAALIGN DISABLE RX_BUFFER_RESET_ON_RATE_CHANGE ENABLE RESET_SEQUENCE_INTERVAL 0 RX_COMMA_PRESET NONE RX_COMMA_VALID_ONLY 0} LR2_SETTINGS {PRESET None RX_PAM_SEL NRZ RX_HD_EN 0 RX_GRAY_BYP true RX_GRAY_LITTLEENDIAN true RX_PRECODE_BYP true RX_PRECODE_LITTLEENDIAN false INTERNAL_PRESET None GT_TYPE GTY RX_LINE_RATE 5.4 RX_PLL_TYPE LCPLL RX_REFCLK_FREQUENCY 270 RX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 RX_FRACN_ENABLED false RX_FRACN_OVRD false RX_FRACN_NUMERATOR 0 RX_REFCLK_SOURCE R0 RX_DATA_DECODING RAW RX_USER_DATA_WIDTH 16 RX_INT_DATA_WIDTH 16 RX_BUFFER_MODE 1 RX_OUTCLK_SOURCE RXPROGDIVCLK RXPROGDIV_FREQ_ENABLE true RXPROGDIV_FREQ_SOURCE LCPLL RXPROGDIV_FREQ_VAL 337.500 RXRECCLK_FREQ_ENABLE true RXRECCLK_FREQ_VAL 675.000 INS_LOSS_NYQ 14 RX_EQ_MODE LPM RX_COUPLING AC RX_TERMINATION PROGRAMMABLE RX_RATE_GROUP A RX_TERMINATION_PROG_VALUE 800 RX_PPM_OFFSET 300 RX_64B66B_DESCRAMBLER false RX_64B66B_DECODER false RX_64B66B_CRC false OOB_ENABLE false RX_COMMA_ALIGN_WORD 1 RX_COMMA_SHOW_REALIGN_ENABLE true PCIE_ENABLE false RX_COMMA_P_ENABLE false RX_COMMA_M_ENABLE false RX_COMMA_DOUBLE_ENABLE false RX_COMMA_P_VAL 0101111100 RX_COMMA_M_VAL 1010000011 RX_COMMA_MASK 0000000000 RX_SLIDE_MODE OFF RX_SSC_PPM 5000 RX_CB_NUM_SEQ 0 RX_CB_LEN_SEQ 1 RX_CB_MAX_SKEW 1 RX_CB_MAX_LEVEL 1 RX_CB_MASK 00000000 RX_CB_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CB_K 00000000 RX_CB_DISP 00000000 RX_CB_MASK_0_0 false RX_CB_VAL_0_0 00000000 RX_CB_K_0_0 false RX_CB_DISP_0_0 false RX_CB_MASK_0_1 false RX_CB_VAL_0_1 00000000 RX_CB_K_0_1 false RX_CB_DISP_0_1 false RX_CB_MASK_0_2 false RX_CB_VAL_0_2 00000000 RX_CB_K_0_2 false RX_CB_DISP_0_2 false RX_CB_MASK_0_3 false RX_CB_VAL_0_3 00000000 RX_CB_K_0_3 false RX_CB_DISP_0_3 false RX_CB_MASK_1_0 false RX_CB_VAL_1_0 00000000 RX_CB_K_1_0 false RX_CB_DISP_1_0 false RX_CB_MASK_1_1 false RX_CB_VAL_1_1 00000000 RX_CB_K_1_1 false RX_CB_DISP_1_1 false RX_CB_MASK_1_2 false RX_CB_VAL_1_2 00000000 RX_CB_K_1_2 false RX_CB_DISP_1_2 false RX_CB_MASK_1_3 false RX_CB_VAL_1_3 00000000 RX_CB_K_1_3 false RX_CB_DISP_1_3 false RX_CC_NUM_SEQ 0 RX_CC_LEN_SEQ 1 RX_CC_PERIODICITY 5000 RX_CC_KEEP_IDLE DISABLE RX_CC_PRECEDENCE ENABLE RX_CC_REPEAT_WAIT 0 RX_CC_MASK 00000000 RX_CC_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CC_K 00000000 RX_CC_DISP 00000000 RX_CC_MASK_0_0 false RX_CC_VAL_0_0 00000000 RX_CC_K_0_0 false RX_CC_DISP_0_0 false RX_CC_MASK_0_1 false RX_CC_VAL_0_1 00000000 RX_CC_K_0_1 false RX_CC_DISP_0_1 false RX_CC_MASK_0_2 false RX_CC_VAL_0_2 00000000 RX_CC_K_0_2 false RX_CC_DISP_0_2 false RX_CC_MASK_0_3 false RX_CC_VAL_0_3 00000000 RX_CC_K_0_3 false RX_CC_DISP_0_3 false RX_CC_MASK_1_0 false RX_CC_VAL_1_0 00000000 RX_CC_K_1_0 false RX_CC_DISP_1_0 false RX_CC_MASK_1_1 false RX_CC_VAL_1_1 00000000 RX_CC_K_1_1 false RX_CC_DISP_1_1 false RX_CC_MASK_1_2 false RX_CC_VAL_1_2 00000000 RX_CC_K_1_2 false RX_CC_DISP_1_2 false RX_CC_MASK_1_3 false RX_CC_VAL_1_3 00000000 RX_CC_K_1_3 false RX_CC_DISP_1_3 false PCIE_USERCLK2_FREQ 250 PCIE_USERCLK_FREQ 250 RX_JTOL_FC 3.2393521 RX_JTOL_LF_SLOPE -20 RX_BUFFER_BYPASS_MODE Fast_Sync RX_BUFFER_BYPASS_MODE_LANE MULTI RX_BUFFER_RESET_ON_CB_CHANGE ENABLE RX_BUFFER_RESET_ON_COMMAALIGN DISABLE RX_BUFFER_RESET_ON_RATE_CHANGE ENABLE RESET_SEQUENCE_INTERVAL 0 RX_COMMA_PRESET NONE RX_COMMA_VALID_ONLY 0} LR3_SETTINGS {PRESET None RX_PAM_SEL NRZ RX_HD_EN 0 RX_GRAY_BYP true RX_GRAY_LITTLEENDIAN true RX_PRECODE_BYP true RX_PRECODE_LITTLEENDIAN false INTERNAL_PRESET None GT_TYPE GTY RX_LINE_RATE 8.1 RX_PLL_TYPE LCPLL RX_REFCLK_FREQUENCY 270 RX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 RX_FRACN_ENABLED false RX_FRACN_OVRD false RX_FRACN_NUMERATOR 0 RX_REFCLK_SOURCE R0 RX_DATA_DECODING RAW RX_USER_DATA_WIDTH 16 RX_INT_DATA_WIDTH 16 RX_BUFFER_MODE 1 RX_OUTCLK_SOURCE RXPROGDIVCLK RXPROGDIV_FREQ_ENABLE true RXPROGDIV_FREQ_SOURCE LCPLL RXPROGDIV_FREQ_VAL 506.250 RXRECCLK_FREQ_ENABLE true RXRECCLK_FREQ_VAL 506.250 INS_LOSS_NYQ 14 RX_EQ_MODE LPM RX_COUPLING AC RX_TERMINATION PROGRAMMABLE RX_RATE_GROUP A RX_TERMINATION_PROG_VALUE 800 RX_PPM_OFFSET 300 RX_64B66B_DESCRAMBLER false RX_64B66B_DECODER false RX_64B66B_CRC false OOB_ENABLE false RX_COMMA_ALIGN_WORD 1 RX_COMMA_SHOW_REALIGN_ENABLE true PCIE_ENABLE false RX_COMMA_P_ENABLE false RX_COMMA_M_ENABLE false RX_COMMA_DOUBLE_ENABLE false RX_COMMA_P_VAL 0101111100 RX_COMMA_M_VAL 1010000011 RX_COMMA_MASK 0000000000 RX_SLIDE_MODE OFF RX_SSC_PPM 0 RX_CB_NUM_SEQ 0 RX_CB_LEN_SEQ 1 RX_CB_MAX_SKEW 1 RX_CB_MAX_LEVEL 1 RX_CB_MASK 00000000 RX_CB_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CB_K 00000000 RX_CB_DISP 00000000 RX_CB_MASK_0_0 false RX_CB_VAL_0_0 00000000 RX_CB_K_0_0 false RX_CB_DISP_0_0 false RX_CB_MASK_0_1 false RX_CB_VAL_0_1 00000000 RX_CB_K_0_1 false RX_CB_DISP_0_1 false RX_CB_MASK_0_2 false RX_CB_VAL_0_2 00000000 RX_CB_K_0_2 false RX_CB_DISP_0_2 false RX_CB_MASK_0_3 false RX_CB_VAL_0_3 00000000 RX_CB_K_0_3 false RX_CB_DISP_0_3 false RX_CB_MASK_1_0 false RX_CB_VAL_1_0 00000000 RX_CB_K_1_0 false RX_CB_DISP_1_0 false RX_CB_MASK_1_1 false RX_CB_VAL_1_1 00000000 RX_CB_K_1_1 false RX_CB_DISP_1_1 false RX_CB_MASK_1_2 false RX_CB_VAL_1_2 00000000 RX_CB_K_1_2 false RX_CB_DISP_1_2 false RX_CB_MASK_1_3 false RX_CB_VAL_1_3 00000000 RX_CB_K_1_3 false RX_CB_DISP_1_3 false RX_CC_NUM_SEQ 0 RX_CC_LEN_SEQ 1 RX_CC_PERIODICITY 5000 RX_CC_KEEP_IDLE DISABLE RX_CC_PRECEDENCE ENABLE RX_CC_REPEAT_WAIT 0 RX_CC_MASK 00000000 RX_CC_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CC_K 00000000 RX_CC_DISP 00000000 RX_CC_MASK_0_0 false RX_CC_VAL_0_0 00000000 RX_CC_K_0_0 false RX_CC_DISP_0_0 false RX_CC_MASK_0_1 false RX_CC_VAL_0_1 00000000 RX_CC_K_0_1 false RX_CC_DISP_0_1 false RX_CC_MASK_0_2 false RX_CC_VAL_0_2 00000000 RX_CC_K_0_2 false RX_CC_DISP_0_2 false RX_CC_MASK_0_3 false RX_CC_VAL_0_3 00000000 RX_CC_K_0_3 false RX_CC_DISP_0_3 false RX_CC_MASK_1_0 false RX_CC_VAL_1_0 00000000 RX_CC_K_1_0 false RX_CC_DISP_1_0 false RX_CC_MASK_1_1 false RX_CC_VAL_1_1 00000000 RX_CC_K_1_1 false RX_CC_DISP_1_1 false RX_CC_MASK_1_2 false RX_CC_VAL_1_2 00000000 RX_CC_K_1_2 false RX_CC_DISP_1_2 false RX_CC_MASK_1_3 false RX_CC_VAL_1_3 00000000 RX_CC_K_1_3 false RX_CC_DISP_1_3 false PCIE_USERCLK2_FREQ 250 PCIE_USERCLK_FREQ 250 RX_JTOL_FC 4.8590282 RX_JTOL_LF_SLOPE -20 RX_BUFFER_BYPASS_MODE Fast_Sync RX_BUFFER_BYPASS_MODE_LANE MULTI RX_BUFFER_RESET_ON_CB_CHANGE ENABLE RX_BUFFER_RESET_ON_COMMAALIGN DISABLE RX_BUFFER_RESET_ON_RATE_CHANGE ENABLE RESET_SEQUENCE_INTERVAL 0 RX_COMMA_PRESET NONE RX_COMMA_VALID_ONLY 0}, ADDITIONAL_QUAD_SETTINGS GT_TYPE GTY, ADDITIONAL_CONFIG_FILE no_addn_file_loaded, ADDITIONAL_CONFIG_ENABLE undef";
  attribute X_INTERFACE_INFO of ch2_rxprbssel : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX2 ch_rxprbssel";
  attribute X_INTERFACE_INFO of ch2_rxrate : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX2 ch_rxrate";
  attribute X_INTERFACE_INFO of ch3_rxbufstatus : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX3 ch_rxbufstatus";
  attribute X_INTERFACE_INFO of ch3_rxctrl0 : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX3 ch_rxctrl0";
  attribute X_INTERFACE_INFO of ch3_rxctrl1 : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX3 ch_rxctrl1";
  attribute X_INTERFACE_INFO of ch3_rxctrl3 : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX3 ch_rxctrl3";
  attribute X_INTERFACE_INFO of ch3_rxdata : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX3 ch_rxdata";
  attribute X_INTERFACE_INFO of ch3_rxpcsresetmask : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX3 ch_rxpcsresetmask";
  attribute X_INTERFACE_INFO of ch3_rxpd : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX3 ch_rxpd";
  attribute X_INTERFACE_INFO of ch3_rxpmaresetmask : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX3 ch_rxpmaresetmask";
  attribute X_INTERFACE_PARAMETER of ch3_rxpmaresetmask : signal is "XIL_INTERFACENAME GT_RX3, PARENT_ID dpss_vck190_pt_dprx_gt_ip0_0, CHNL_NUMBER 3, MASTERCLK_SRC 0, GT_DIRECTION SIMPLEX_RX, RX_SETTINGS LR0_SETTINGS {PRESET None RX_PAM_SEL NRZ RX_HD_EN 0 RX_GRAY_BYP true RX_GRAY_LITTLEENDIAN true RX_PRECODE_BYP true RX_PRECODE_LITTLEENDIAN false INTERNAL_PRESET None GT_TYPE GTY RX_LINE_RATE 1.62 RX_PLL_TYPE LCPLL RX_REFCLK_FREQUENCY 270 RX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 RX_FRACN_ENABLED false RX_FRACN_OVRD false RX_FRACN_NUMERATOR 0 RX_REFCLK_SOURCE R0 RX_DATA_DECODING RAW RX_USER_DATA_WIDTH 16 RX_INT_DATA_WIDTH 16 RX_BUFFER_MODE 1 RX_OUTCLK_SOURCE RXPROGDIVCLK RXPROGDIV_FREQ_ENABLE true RXPROGDIV_FREQ_SOURCE LCPLL RXPROGDIV_FREQ_VAL 101.250 RXRECCLK_FREQ_ENABLE true RXRECCLK_FREQ_VAL 810.000 INS_LOSS_NYQ 14 RX_EQ_MODE LPM RX_COUPLING AC RX_TERMINATION PROGRAMMABLE RX_RATE_GROUP A RX_TERMINATION_PROG_VALUE 800 RX_PPM_OFFSET 300 RX_64B66B_DESCRAMBLER false RX_64B66B_DECODER false RX_64B66B_CRC false OOB_ENABLE false RX_COMMA_ALIGN_WORD 1 RX_COMMA_SHOW_REALIGN_ENABLE true PCIE_ENABLE false RX_COMMA_P_ENABLE false RX_COMMA_M_ENABLE false RX_COMMA_DOUBLE_ENABLE false RX_COMMA_P_VAL 0101111100 RX_COMMA_M_VAL 1010000011 RX_COMMA_MASK 0000000000 RX_SLIDE_MODE OFF RX_SSC_PPM 5000 RX_CB_NUM_SEQ 0 RX_CB_LEN_SEQ 1 RX_CB_MAX_SKEW 1 RX_CB_MAX_LEVEL 1 RX_CB_MASK 00000000 RX_CB_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CB_K 00000000 RX_CB_DISP 00000000 RX_CB_MASK_0_0 false RX_CB_VAL_0_0 00000000 RX_CB_K_0_0 false RX_CB_DISP_0_0 false RX_CB_MASK_0_1 false RX_CB_VAL_0_1 00000000 RX_CB_K_0_1 false RX_CB_DISP_0_1 false RX_CB_MASK_0_2 false RX_CB_VAL_0_2 00000000 RX_CB_K_0_2 false RX_CB_DISP_0_2 false RX_CB_MASK_0_3 false RX_CB_VAL_0_3 00000000 RX_CB_K_0_3 false RX_CB_DISP_0_3 false RX_CB_MASK_1_0 false RX_CB_VAL_1_0 00000000 RX_CB_K_1_0 false RX_CB_DISP_1_0 false RX_CB_MASK_1_1 false RX_CB_VAL_1_1 00000000 RX_CB_K_1_1 false RX_CB_DISP_1_1 false RX_CB_MASK_1_2 false RX_CB_VAL_1_2 00000000 RX_CB_K_1_2 false RX_CB_DISP_1_2 false RX_CB_MASK_1_3 false RX_CB_VAL_1_3 00000000 RX_CB_K_1_3 false RX_CB_DISP_1_3 false RX_CC_NUM_SEQ 0 RX_CC_LEN_SEQ 1 RX_CC_PERIODICITY 5000 RX_CC_KEEP_IDLE DISABLE RX_CC_PRECEDENCE ENABLE RX_CC_REPEAT_WAIT 0 RX_CC_MASK 00000000 RX_CC_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CC_K 00000000 RX_CC_DISP 00000000 RX_CC_MASK_0_0 false RX_CC_VAL_0_0 00000000 RX_CC_K_0_0 false RX_CC_DISP_0_0 false RX_CC_MASK_0_1 false RX_CC_VAL_0_1 00000000 RX_CC_K_0_1 false RX_CC_DISP_0_1 false RX_CC_MASK_0_2 false RX_CC_VAL_0_2 00000000 RX_CC_K_0_2 false RX_CC_DISP_0_2 false RX_CC_MASK_0_3 false RX_CC_VAL_0_3 00000000 RX_CC_K_0_3 false RX_CC_DISP_0_3 false RX_CC_MASK_1_0 false RX_CC_VAL_1_0 00000000 RX_CC_K_1_0 false RX_CC_DISP_1_0 false RX_CC_MASK_1_1 false RX_CC_VAL_1_1 00000000 RX_CC_K_1_1 false RX_CC_DISP_1_1 false RX_CC_MASK_1_2 false RX_CC_VAL_1_2 00000000 RX_CC_K_1_2 false RX_CC_DISP_1_2 false RX_CC_MASK_1_3 false RX_CC_VAL_1_3 00000000 RX_CC_K_1_3 false RX_CC_DISP_1_3 false PCIE_USERCLK2_FREQ 250 PCIE_USERCLK_FREQ 250 RX_JTOL_FC 0.9718056 RX_JTOL_LF_SLOPE -20 RX_BUFFER_BYPASS_MODE Fast_Sync RX_BUFFER_BYPASS_MODE_LANE MULTI RX_BUFFER_RESET_ON_CB_CHANGE ENABLE RX_BUFFER_RESET_ON_COMMAALIGN DISABLE RX_BUFFER_RESET_ON_RATE_CHANGE ENABLE RESET_SEQUENCE_INTERVAL 0 RX_COMMA_PRESET NONE RX_COMMA_VALID_ONLY 0} LR1_SETTINGS {PRESET None RX_PAM_SEL NRZ RX_HD_EN 0 RX_GRAY_BYP true RX_GRAY_LITTLEENDIAN true RX_PRECODE_BYP true RX_PRECODE_LITTLEENDIAN false INTERNAL_PRESET None GT_TYPE GTY RX_LINE_RATE 2.7 RX_PLL_TYPE LCPLL RX_REFCLK_FREQUENCY 270 RX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 RX_FRACN_ENABLED false RX_FRACN_OVRD false RX_FRACN_NUMERATOR 0 RX_REFCLK_SOURCE R0 RX_DATA_DECODING RAW RX_USER_DATA_WIDTH 16 RX_INT_DATA_WIDTH 16 RX_BUFFER_MODE 1 RX_OUTCLK_SOURCE RXPROGDIVCLK RXPROGDIV_FREQ_ENABLE true RXPROGDIV_FREQ_SOURCE LCPLL RXPROGDIV_FREQ_VAL 168.750 RXRECCLK_FREQ_ENABLE true RXRECCLK_FREQ_VAL 675.000 INS_LOSS_NYQ 14 RX_EQ_MODE LPM RX_COUPLING AC RX_TERMINATION PROGRAMMABLE RX_RATE_GROUP A RX_TERMINATION_PROG_VALUE 800 RX_PPM_OFFSET 300 RX_64B66B_DESCRAMBLER false RX_64B66B_DECODER false RX_64B66B_CRC false OOB_ENABLE false RX_COMMA_ALIGN_WORD 1 RX_COMMA_SHOW_REALIGN_ENABLE true PCIE_ENABLE false RX_COMMA_P_ENABLE false RX_COMMA_M_ENABLE false RX_COMMA_DOUBLE_ENABLE false RX_COMMA_P_VAL 0101111100 RX_COMMA_M_VAL 1010000011 RX_COMMA_MASK 0000000000 RX_SLIDE_MODE OFF RX_SSC_PPM 5000 RX_CB_NUM_SEQ 0 RX_CB_LEN_SEQ 1 RX_CB_MAX_SKEW 1 RX_CB_MAX_LEVEL 1 RX_CB_MASK 00000000 RX_CB_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CB_K 00000000 RX_CB_DISP 00000000 RX_CB_MASK_0_0 false RX_CB_VAL_0_0 00000000 RX_CB_K_0_0 false RX_CB_DISP_0_0 false RX_CB_MASK_0_1 false RX_CB_VAL_0_1 00000000 RX_CB_K_0_1 false RX_CB_DISP_0_1 false RX_CB_MASK_0_2 false RX_CB_VAL_0_2 00000000 RX_CB_K_0_2 false RX_CB_DISP_0_2 false RX_CB_MASK_0_3 false RX_CB_VAL_0_3 00000000 RX_CB_K_0_3 false RX_CB_DISP_0_3 false RX_CB_MASK_1_0 false RX_CB_VAL_1_0 00000000 RX_CB_K_1_0 false RX_CB_DISP_1_0 false RX_CB_MASK_1_1 false RX_CB_VAL_1_1 00000000 RX_CB_K_1_1 false RX_CB_DISP_1_1 false RX_CB_MASK_1_2 false RX_CB_VAL_1_2 00000000 RX_CB_K_1_2 false RX_CB_DISP_1_2 false RX_CB_MASK_1_3 false RX_CB_VAL_1_3 00000000 RX_CB_K_1_3 false RX_CB_DISP_1_3 false RX_CC_NUM_SEQ 0 RX_CC_LEN_SEQ 1 RX_CC_PERIODICITY 5000 RX_CC_KEEP_IDLE DISABLE RX_CC_PRECEDENCE ENABLE RX_CC_REPEAT_WAIT 0 RX_CC_MASK 00000000 RX_CC_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CC_K 00000000 RX_CC_DISP 00000000 RX_CC_MASK_0_0 false RX_CC_VAL_0_0 00000000 RX_CC_K_0_0 false RX_CC_DISP_0_0 false RX_CC_MASK_0_1 false RX_CC_VAL_0_1 00000000 RX_CC_K_0_1 false RX_CC_DISP_0_1 false RX_CC_MASK_0_2 false RX_CC_VAL_0_2 00000000 RX_CC_K_0_2 false RX_CC_DISP_0_2 false RX_CC_MASK_0_3 false RX_CC_VAL_0_3 00000000 RX_CC_K_0_3 false RX_CC_DISP_0_3 false RX_CC_MASK_1_0 false RX_CC_VAL_1_0 00000000 RX_CC_K_1_0 false RX_CC_DISP_1_0 false RX_CC_MASK_1_1 false RX_CC_VAL_1_1 00000000 RX_CC_K_1_1 false RX_CC_DISP_1_1 false RX_CC_MASK_1_2 false RX_CC_VAL_1_2 00000000 RX_CC_K_1_2 false RX_CC_DISP_1_2 false RX_CC_MASK_1_3 false RX_CC_VAL_1_3 00000000 RX_CC_K_1_3 false RX_CC_DISP_1_3 false PCIE_USERCLK2_FREQ 250 PCIE_USERCLK_FREQ 250 RX_JTOL_FC 1.6196761 RX_JTOL_LF_SLOPE -20 RX_BUFFER_BYPASS_MODE Fast_Sync RX_BUFFER_BYPASS_MODE_LANE MULTI RX_BUFFER_RESET_ON_CB_CHANGE ENABLE RX_BUFFER_RESET_ON_COMMAALIGN DISABLE RX_BUFFER_RESET_ON_RATE_CHANGE ENABLE RESET_SEQUENCE_INTERVAL 0 RX_COMMA_PRESET NONE RX_COMMA_VALID_ONLY 0} LR2_SETTINGS {PRESET None RX_PAM_SEL NRZ RX_HD_EN 0 RX_GRAY_BYP true RX_GRAY_LITTLEENDIAN true RX_PRECODE_BYP true RX_PRECODE_LITTLEENDIAN false INTERNAL_PRESET None GT_TYPE GTY RX_LINE_RATE 5.4 RX_PLL_TYPE LCPLL RX_REFCLK_FREQUENCY 270 RX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 RX_FRACN_ENABLED false RX_FRACN_OVRD false RX_FRACN_NUMERATOR 0 RX_REFCLK_SOURCE R0 RX_DATA_DECODING RAW RX_USER_DATA_WIDTH 16 RX_INT_DATA_WIDTH 16 RX_BUFFER_MODE 1 RX_OUTCLK_SOURCE RXPROGDIVCLK RXPROGDIV_FREQ_ENABLE true RXPROGDIV_FREQ_SOURCE LCPLL RXPROGDIV_FREQ_VAL 337.500 RXRECCLK_FREQ_ENABLE true RXRECCLK_FREQ_VAL 675.000 INS_LOSS_NYQ 14 RX_EQ_MODE LPM RX_COUPLING AC RX_TERMINATION PROGRAMMABLE RX_RATE_GROUP A RX_TERMINATION_PROG_VALUE 800 RX_PPM_OFFSET 300 RX_64B66B_DESCRAMBLER false RX_64B66B_DECODER false RX_64B66B_CRC false OOB_ENABLE false RX_COMMA_ALIGN_WORD 1 RX_COMMA_SHOW_REALIGN_ENABLE true PCIE_ENABLE false RX_COMMA_P_ENABLE false RX_COMMA_M_ENABLE false RX_COMMA_DOUBLE_ENABLE false RX_COMMA_P_VAL 0101111100 RX_COMMA_M_VAL 1010000011 RX_COMMA_MASK 0000000000 RX_SLIDE_MODE OFF RX_SSC_PPM 5000 RX_CB_NUM_SEQ 0 RX_CB_LEN_SEQ 1 RX_CB_MAX_SKEW 1 RX_CB_MAX_LEVEL 1 RX_CB_MASK 00000000 RX_CB_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CB_K 00000000 RX_CB_DISP 00000000 RX_CB_MASK_0_0 false RX_CB_VAL_0_0 00000000 RX_CB_K_0_0 false RX_CB_DISP_0_0 false RX_CB_MASK_0_1 false RX_CB_VAL_0_1 00000000 RX_CB_K_0_1 false RX_CB_DISP_0_1 false RX_CB_MASK_0_2 false RX_CB_VAL_0_2 00000000 RX_CB_K_0_2 false RX_CB_DISP_0_2 false RX_CB_MASK_0_3 false RX_CB_VAL_0_3 00000000 RX_CB_K_0_3 false RX_CB_DISP_0_3 false RX_CB_MASK_1_0 false RX_CB_VAL_1_0 00000000 RX_CB_K_1_0 false RX_CB_DISP_1_0 false RX_CB_MASK_1_1 false RX_CB_VAL_1_1 00000000 RX_CB_K_1_1 false RX_CB_DISP_1_1 false RX_CB_MASK_1_2 false RX_CB_VAL_1_2 00000000 RX_CB_K_1_2 false RX_CB_DISP_1_2 false RX_CB_MASK_1_3 false RX_CB_VAL_1_3 00000000 RX_CB_K_1_3 false RX_CB_DISP_1_3 false RX_CC_NUM_SEQ 0 RX_CC_LEN_SEQ 1 RX_CC_PERIODICITY 5000 RX_CC_KEEP_IDLE DISABLE RX_CC_PRECEDENCE ENABLE RX_CC_REPEAT_WAIT 0 RX_CC_MASK 00000000 RX_CC_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CC_K 00000000 RX_CC_DISP 00000000 RX_CC_MASK_0_0 false RX_CC_VAL_0_0 00000000 RX_CC_K_0_0 false RX_CC_DISP_0_0 false RX_CC_MASK_0_1 false RX_CC_VAL_0_1 00000000 RX_CC_K_0_1 false RX_CC_DISP_0_1 false RX_CC_MASK_0_2 false RX_CC_VAL_0_2 00000000 RX_CC_K_0_2 false RX_CC_DISP_0_2 false RX_CC_MASK_0_3 false RX_CC_VAL_0_3 00000000 RX_CC_K_0_3 false RX_CC_DISP_0_3 false RX_CC_MASK_1_0 false RX_CC_VAL_1_0 00000000 RX_CC_K_1_0 false RX_CC_DISP_1_0 false RX_CC_MASK_1_1 false RX_CC_VAL_1_1 00000000 RX_CC_K_1_1 false RX_CC_DISP_1_1 false RX_CC_MASK_1_2 false RX_CC_VAL_1_2 00000000 RX_CC_K_1_2 false RX_CC_DISP_1_2 false RX_CC_MASK_1_3 false RX_CC_VAL_1_3 00000000 RX_CC_K_1_3 false RX_CC_DISP_1_3 false PCIE_USERCLK2_FREQ 250 PCIE_USERCLK_FREQ 250 RX_JTOL_FC 3.2393521 RX_JTOL_LF_SLOPE -20 RX_BUFFER_BYPASS_MODE Fast_Sync RX_BUFFER_BYPASS_MODE_LANE MULTI RX_BUFFER_RESET_ON_CB_CHANGE ENABLE RX_BUFFER_RESET_ON_COMMAALIGN DISABLE RX_BUFFER_RESET_ON_RATE_CHANGE ENABLE RESET_SEQUENCE_INTERVAL 0 RX_COMMA_PRESET NONE RX_COMMA_VALID_ONLY 0} LR3_SETTINGS {PRESET None RX_PAM_SEL NRZ RX_HD_EN 0 RX_GRAY_BYP true RX_GRAY_LITTLEENDIAN true RX_PRECODE_BYP true RX_PRECODE_LITTLEENDIAN false INTERNAL_PRESET None GT_TYPE GTY RX_LINE_RATE 8.1 RX_PLL_TYPE LCPLL RX_REFCLK_FREQUENCY 270 RX_ACTUAL_REFCLK_FREQUENCY 270.000000000000 RX_FRACN_ENABLED false RX_FRACN_OVRD false RX_FRACN_NUMERATOR 0 RX_REFCLK_SOURCE R0 RX_DATA_DECODING RAW RX_USER_DATA_WIDTH 16 RX_INT_DATA_WIDTH 16 RX_BUFFER_MODE 1 RX_OUTCLK_SOURCE RXPROGDIVCLK RXPROGDIV_FREQ_ENABLE true RXPROGDIV_FREQ_SOURCE LCPLL RXPROGDIV_FREQ_VAL 506.250 RXRECCLK_FREQ_ENABLE true RXRECCLK_FREQ_VAL 506.250 INS_LOSS_NYQ 14 RX_EQ_MODE LPM RX_COUPLING AC RX_TERMINATION PROGRAMMABLE RX_RATE_GROUP A RX_TERMINATION_PROG_VALUE 800 RX_PPM_OFFSET 300 RX_64B66B_DESCRAMBLER false RX_64B66B_DECODER false RX_64B66B_CRC false OOB_ENABLE false RX_COMMA_ALIGN_WORD 1 RX_COMMA_SHOW_REALIGN_ENABLE true PCIE_ENABLE false RX_COMMA_P_ENABLE false RX_COMMA_M_ENABLE false RX_COMMA_DOUBLE_ENABLE false RX_COMMA_P_VAL 0101111100 RX_COMMA_M_VAL 1010000011 RX_COMMA_MASK 0000000000 RX_SLIDE_MODE OFF RX_SSC_PPM 0 RX_CB_NUM_SEQ 0 RX_CB_LEN_SEQ 1 RX_CB_MAX_SKEW 1 RX_CB_MAX_LEVEL 1 RX_CB_MASK 00000000 RX_CB_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CB_K 00000000 RX_CB_DISP 00000000 RX_CB_MASK_0_0 false RX_CB_VAL_0_0 00000000 RX_CB_K_0_0 false RX_CB_DISP_0_0 false RX_CB_MASK_0_1 false RX_CB_VAL_0_1 00000000 RX_CB_K_0_1 false RX_CB_DISP_0_1 false RX_CB_MASK_0_2 false RX_CB_VAL_0_2 00000000 RX_CB_K_0_2 false RX_CB_DISP_0_2 false RX_CB_MASK_0_3 false RX_CB_VAL_0_3 00000000 RX_CB_K_0_3 false RX_CB_DISP_0_3 false RX_CB_MASK_1_0 false RX_CB_VAL_1_0 00000000 RX_CB_K_1_0 false RX_CB_DISP_1_0 false RX_CB_MASK_1_1 false RX_CB_VAL_1_1 00000000 RX_CB_K_1_1 false RX_CB_DISP_1_1 false RX_CB_MASK_1_2 false RX_CB_VAL_1_2 00000000 RX_CB_K_1_2 false RX_CB_DISP_1_2 false RX_CB_MASK_1_3 false RX_CB_VAL_1_3 00000000 RX_CB_K_1_3 false RX_CB_DISP_1_3 false RX_CC_NUM_SEQ 0 RX_CC_LEN_SEQ 1 RX_CC_PERIODICITY 5000 RX_CC_KEEP_IDLE DISABLE RX_CC_PRECEDENCE ENABLE RX_CC_REPEAT_WAIT 0 RX_CC_MASK 00000000 RX_CC_VAL 00000000000000000000000000000000000000000000000000000000000000000000000000000000 RX_CC_K 00000000 RX_CC_DISP 00000000 RX_CC_MASK_0_0 false RX_CC_VAL_0_0 00000000 RX_CC_K_0_0 false RX_CC_DISP_0_0 false RX_CC_MASK_0_1 false RX_CC_VAL_0_1 00000000 RX_CC_K_0_1 false RX_CC_DISP_0_1 false RX_CC_MASK_0_2 false RX_CC_VAL_0_2 00000000 RX_CC_K_0_2 false RX_CC_DISP_0_2 false RX_CC_MASK_0_3 false RX_CC_VAL_0_3 00000000 RX_CC_K_0_3 false RX_CC_DISP_0_3 false RX_CC_MASK_1_0 false RX_CC_VAL_1_0 00000000 RX_CC_K_1_0 false RX_CC_DISP_1_0 false RX_CC_MASK_1_1 false RX_CC_VAL_1_1 00000000 RX_CC_K_1_1 false RX_CC_DISP_1_1 false RX_CC_MASK_1_2 false RX_CC_VAL_1_2 00000000 RX_CC_K_1_2 false RX_CC_DISP_1_2 false RX_CC_MASK_1_3 false RX_CC_VAL_1_3 00000000 RX_CC_K_1_3 false RX_CC_DISP_1_3 false PCIE_USERCLK2_FREQ 250 PCIE_USERCLK_FREQ 250 RX_JTOL_FC 4.8590282 RX_JTOL_LF_SLOPE -20 RX_BUFFER_BYPASS_MODE Fast_Sync RX_BUFFER_BYPASS_MODE_LANE MULTI RX_BUFFER_RESET_ON_CB_CHANGE ENABLE RX_BUFFER_RESET_ON_COMMAALIGN DISABLE RX_BUFFER_RESET_ON_RATE_CHANGE ENABLE RESET_SEQUENCE_INTERVAL 0 RX_COMMA_PRESET NONE RX_COMMA_VALID_ONLY 0}, ADDITIONAL_QUAD_SETTINGS GT_TYPE GTY, ADDITIONAL_CONFIG_FILE no_addn_file_loaded, ADDITIONAL_CONFIG_ENABLE undef";
  attribute X_INTERFACE_INFO of ch3_rxprbssel : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX3 ch_rxprbssel";
  attribute X_INTERFACE_INFO of ch3_rxrate : signal is "xilinx.com:interface:gt_rx_interface:1.0 GT_RX3 ch_rxrate";
  attribute X_INTERFACE_INFO of control_sb_rx_tdata : signal is "xilinx.com:interface:axis:1.0 DP_RX_PHY_SB_CTRL tdata";
  attribute X_INTERFACE_INFO of rx_axi4s_ch0_tdata : signal is "xilinx.com:interface:axis:1.0 DP_RX_AXI4S_CH0 tdata";
  attribute X_INTERFACE_INFO of rx_axi4s_ch0_tuser : signal is "xilinx.com:interface:axis:1.0 DP_RX_AXI4S_CH0 tuser";
  attribute X_INTERFACE_INFO of rx_axi4s_ch1_tdata : signal is "xilinx.com:interface:axis:1.0 DP_RX_AXI4S_CH1 tdata";
  attribute X_INTERFACE_INFO of rx_axi4s_ch1_tuser : signal is "xilinx.com:interface:axis:1.0 DP_RX_AXI4S_CH1 tuser";
  attribute X_INTERFACE_INFO of rx_axi4s_ch2_tdata : signal is "xilinx.com:interface:axis:1.0 DP_RX_AXI4S_CH2 tdata";
  attribute X_INTERFACE_INFO of rx_axi4s_ch2_tuser : signal is "xilinx.com:interface:axis:1.0 DP_RX_AXI4S_CH2 tuser";
  attribute X_INTERFACE_INFO of rx_axi4s_ch3_tdata : signal is "xilinx.com:interface:axis:1.0 DP_RX_AXI4S_CH3 tdata";
  attribute X_INTERFACE_INFO of rx_axi4s_ch3_tuser : signal is "xilinx.com:interface:axis:1.0 DP_RX_AXI4S_CH3 tuser";
  attribute X_INTERFACE_INFO of status_sb_rx_tdata : signal is "xilinx.com:interface:axis:1.0 DP_RX_PHY_SB_STS tdata";
begin
  ch0_rxlpmen <= \<const1>\;
  ch0_rxpcsresetmask(4) <= \<const1>\;
  ch0_rxpcsresetmask(3) <= \<const1>\;
  ch0_rxpcsresetmask(2) <= \<const1>\;
  ch0_rxpcsresetmask(1) <= \<const1>\;
  ch0_rxpcsresetmask(0) <= \<const1>\;
  ch0_rxpd(1) <= \<const0>\;
  ch0_rxpd(0) <= \<const0>\;
  ch0_rxpmaresetmask(6) <= \<const1>\;
  ch0_rxpmaresetmask(5) <= \<const1>\;
  ch0_rxpmaresetmask(4) <= \<const1>\;
  ch0_rxpmaresetmask(3) <= \<const1>\;
  ch0_rxpmaresetmask(2) <= \<const1>\;
  ch0_rxpmaresetmask(1) <= \<const1>\;
  ch0_rxpmaresetmask(0) <= \<const1>\;
  ch0_rxpolarity <= \<const0>\;
  ch0_rxprbssel(3) <= \<const0>\;
  ch0_rxprbssel(2) <= \<const0>\;
  ch0_rxprbssel(1) <= \<const0>\;
  ch0_rxprbssel(0) <= \<const0>\;
  ch0_rxprogdivreset <= \<const0>\;
  ch1_rxlpmen <= \<const1>\;
  ch1_rxpcsresetmask(4) <= \<const1>\;
  ch1_rxpcsresetmask(3) <= \<const1>\;
  ch1_rxpcsresetmask(2) <= \<const1>\;
  ch1_rxpcsresetmask(1) <= \<const1>\;
  ch1_rxpcsresetmask(0) <= \<const1>\;
  ch1_rxpd(1) <= \<const0>\;
  ch1_rxpd(0) <= \<const0>\;
  ch1_rxpmaresetmask(6) <= \<const1>\;
  ch1_rxpmaresetmask(5) <= \<const1>\;
  ch1_rxpmaresetmask(4) <= \<const1>\;
  ch1_rxpmaresetmask(3) <= \<const1>\;
  ch1_rxpmaresetmask(2) <= \<const1>\;
  ch1_rxpmaresetmask(1) <= \<const1>\;
  ch1_rxpmaresetmask(0) <= \<const1>\;
  ch1_rxpolarity <= \<const0>\;
  ch1_rxprbssel(3) <= \<const0>\;
  ch1_rxprbssel(2) <= \<const0>\;
  ch1_rxprbssel(1) <= \<const0>\;
  ch1_rxprbssel(0) <= \<const0>\;
  ch1_rxprogdivreset <= \<const0>\;
  ch2_rxlpmen <= \<const1>\;
  ch2_rxpcsresetmask(4) <= \<const1>\;
  ch2_rxpcsresetmask(3) <= \<const1>\;
  ch2_rxpcsresetmask(2) <= \<const1>\;
  ch2_rxpcsresetmask(1) <= \<const1>\;
  ch2_rxpcsresetmask(0) <= \<const1>\;
  ch2_rxpd(1) <= \<const0>\;
  ch2_rxpd(0) <= \<const0>\;
  ch2_rxpmaresetmask(6) <= \<const1>\;
  ch2_rxpmaresetmask(5) <= \<const1>\;
  ch2_rxpmaresetmask(4) <= \<const1>\;
  ch2_rxpmaresetmask(3) <= \<const1>\;
  ch2_rxpmaresetmask(2) <= \<const1>\;
  ch2_rxpmaresetmask(1) <= \<const1>\;
  ch2_rxpmaresetmask(0) <= \<const1>\;
  ch2_rxpolarity <= \<const0>\;
  ch2_rxprbssel(3) <= \<const0>\;
  ch2_rxprbssel(2) <= \<const0>\;
  ch2_rxprbssel(1) <= \<const0>\;
  ch2_rxprbssel(0) <= \<const0>\;
  ch2_rxprogdivreset <= \<const0>\;
  ch3_rxlpmen <= \<const1>\;
  ch3_rxpcsresetmask(4) <= \<const1>\;
  ch3_rxpcsresetmask(3) <= \<const1>\;
  ch3_rxpcsresetmask(2) <= \<const1>\;
  ch3_rxpcsresetmask(1) <= \<const1>\;
  ch3_rxpcsresetmask(0) <= \<const1>\;
  ch3_rxpd(1) <= \<const0>\;
  ch3_rxpd(0) <= \<const0>\;
  ch3_rxpmaresetmask(6) <= \<const1>\;
  ch3_rxpmaresetmask(5) <= \<const1>\;
  ch3_rxpmaresetmask(4) <= \<const1>\;
  ch3_rxpmaresetmask(3) <= \<const1>\;
  ch3_rxpmaresetmask(2) <= \<const1>\;
  ch3_rxpmaresetmask(1) <= \<const1>\;
  ch3_rxpmaresetmask(0) <= \<const1>\;
  ch3_rxpolarity <= \<const0>\;
  ch3_rxprbssel(3) <= \<const0>\;
  ch3_rxprbssel(2) <= \<const0>\;
  ch3_rxprbssel(1) <= \<const0>\;
  ch3_rxprbssel(0) <= \<const0>\;
  ch3_rxprogdivreset <= \<const0>\;
  control_sb_rx_tready <= \<const1>\;
  rx_axi4s_ch0_tvalid <= \<const1>\;
  rx_axi4s_ch1_tvalid <= \<const1>\;
  rx_axi4s_ch2_tvalid <= \<const1>\;
  rx_axi4s_ch3_tvalid <= \<const1>\;
  status_sb_rx_tdata(15) <= \<const0>\;
  status_sb_rx_tdata(14) <= \<const0>\;
  status_sb_rx_tdata(13) <= \<const0>\;
  status_sb_rx_tdata(12) <= \<const0>\;
  status_sb_rx_tdata(11 downto 0) <= \^status_sb_rx_tdata\(11 downto 0);
  status_sb_rx_tvalid <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.dpss_vck190_pt_dprx_gt_ip0_0_top
     port map (
      ch0_iloreset => NLW_inst_ch0_iloreset_UNCONNECTED,
      ch0_iloresetdone => '0',
      ch0_rx8b10ben => NLW_inst_ch0_rx8b10ben_UNCONNECTED,
      ch0_rxbufreset => NLW_inst_ch0_rxbufreset_UNCONNECTED,
      ch0_rxbufstatus(2 downto 0) => ch0_rxbufstatus(2 downto 0),
      ch0_rxbyteisaligned => ch0_rxbyteisaligned,
      ch0_rxcdrlock => ch0_rxcdrlock,
      ch0_rxctrl0(15 downto 4) => B"000000000000",
      ch0_rxctrl0(3 downto 0) => ch0_rxctrl0(3 downto 0),
      ch0_rxctrl1(15 downto 4) => B"000000000000",
      ch0_rxctrl1(3 downto 0) => ch0_rxctrl1(3 downto 0),
      ch0_rxctrl3(7 downto 4) => B"0000",
      ch0_rxctrl3(3 downto 0) => ch0_rxctrl3(3 downto 0),
      ch0_rxdata(31 downto 0) => ch0_rxdata(31 downto 0),
      ch0_rxlpmen => NLW_inst_ch0_rxlpmen_UNCONNECTED,
      ch0_rxmstdatapathreset => ch0_rxmstdatapathreset,
      ch0_rxmstreset => ch0_rxmstreset,
      ch0_rxmstresetdone => ch0_rxmstresetdone,
      ch0_rxpcsresetmask(4 downto 0) => NLW_inst_ch0_rxpcsresetmask_UNCONNECTED(4 downto 0),
      ch0_rxpd(1 downto 0) => NLW_inst_ch0_rxpd_UNCONNECTED(1 downto 0),
      ch0_rxpllgtrst => NLW_inst_ch0_rxpllgtrst_UNCONNECTED,
      ch0_rxpmareset => NLW_inst_ch0_rxpmareset_UNCONNECTED,
      ch0_rxpmaresetdone => ch0_rxpmaresetdone,
      ch0_rxpmaresetmask(6 downto 0) => NLW_inst_ch0_rxpmaresetmask_UNCONNECTED(6 downto 0),
      ch0_rxpolarity => NLW_inst_ch0_rxpolarity_UNCONNECTED,
      ch0_rxprbscntrst => NLW_inst_ch0_rxprbscntrst_UNCONNECTED,
      ch0_rxprbserr => ch0_rxprbserr,
      ch0_rxprbssel(3 downto 0) => NLW_inst_ch0_rxprbssel_UNCONNECTED(3 downto 0),
      ch0_rxprogdivreset => NLW_inst_ch0_rxprogdivreset_UNCONNECTED,
      ch0_rxrate(2 downto 0) => ch0_rxrate(2 downto 0),
      ch0_rxresetdone => ch0_rxresetdone,
      ch0_rxuserrdy => ch0_rxuserrdy,
      ch0_tx8b10ben => NLW_inst_ch0_tx8b10ben_UNCONNECTED,
      ch0_txbufstatus(1 downto 0) => B"00",
      ch0_txctrl0(15 downto 0) => NLW_inst_ch0_txctrl0_UNCONNECTED(15 downto 0),
      ch0_txctrl1(15 downto 0) => NLW_inst_ch0_txctrl1_UNCONNECTED(15 downto 0),
      ch0_txctrl2(7 downto 0) => NLW_inst_ch0_txctrl2_UNCONNECTED(7 downto 0),
      ch0_txdata(31 downto 0) => NLW_inst_ch0_txdata_UNCONNECTED(31 downto 0),
      ch0_txdiffctrl(4 downto 0) => NLW_inst_ch0_txdiffctrl_UNCONNECTED(4 downto 0),
      ch0_txelecidle => NLW_inst_ch0_txelecidle_UNCONNECTED,
      ch0_txinhibit => NLW_inst_ch0_txinhibit_UNCONNECTED,
      ch0_txmstdatapathreset => NLW_inst_ch0_txmstdatapathreset_UNCONNECTED,
      ch0_txmstreset => NLW_inst_ch0_txmstreset_UNCONNECTED,
      ch0_txmstresetdone => '0',
      ch0_txpcsreset => NLW_inst_ch0_txpcsreset_UNCONNECTED,
      ch0_txpcsresetmask => NLW_inst_ch0_txpcsresetmask_UNCONNECTED,
      ch0_txpd(1 downto 0) => NLW_inst_ch0_txpd_UNCONNECTED(1 downto 0),
      ch0_txphaligndone => '0',
      ch0_txpmareset => NLW_inst_ch0_txpmareset_UNCONNECTED,
      ch0_txpmaresetdone => '0',
      ch0_txpmaresetmask(2 downto 0) => NLW_inst_ch0_txpmaresetmask_UNCONNECTED(2 downto 0),
      ch0_txpolarity => NLW_inst_ch0_txpolarity_UNCONNECTED,
      ch0_txpostcursor(4 downto 0) => NLW_inst_ch0_txpostcursor_UNCONNECTED(4 downto 0),
      ch0_txprbsforceerr => NLW_inst_ch0_txprbsforceerr_UNCONNECTED,
      ch0_txprbssel(3 downto 0) => NLW_inst_ch0_txprbssel_UNCONNECTED(3 downto 0),
      ch0_txprecursor(4 downto 0) => NLW_inst_ch0_txprecursor_UNCONNECTED(4 downto 0),
      ch0_txprogdivreset => NLW_inst_ch0_txprogdivreset_UNCONNECTED,
      ch0_txrate(2 downto 0) => NLW_inst_ch0_txrate_UNCONNECTED(2 downto 0),
      ch0_txresetdone => '0',
      ch0_txuserrdy => NLW_inst_ch0_txuserrdy_UNCONNECTED,
      ch1_iloreset => NLW_inst_ch1_iloreset_UNCONNECTED,
      ch1_iloresetdone => '0',
      ch1_rx8b10ben => NLW_inst_ch1_rx8b10ben_UNCONNECTED,
      ch1_rxbufreset => NLW_inst_ch1_rxbufreset_UNCONNECTED,
      ch1_rxbufstatus(2 downto 0) => ch1_rxbufstatus(2 downto 0),
      ch1_rxbyteisaligned => ch1_rxbyteisaligned,
      ch1_rxcdrlock => ch1_rxcdrlock,
      ch1_rxctrl0(15 downto 4) => B"000000000000",
      ch1_rxctrl0(3 downto 0) => ch1_rxctrl0(3 downto 0),
      ch1_rxctrl1(15 downto 4) => B"000000000000",
      ch1_rxctrl1(3 downto 0) => ch1_rxctrl1(3 downto 0),
      ch1_rxctrl3(7 downto 4) => B"0000",
      ch1_rxctrl3(3 downto 0) => ch1_rxctrl3(3 downto 0),
      ch1_rxdata(31 downto 0) => ch1_rxdata(31 downto 0),
      ch1_rxlpmen => NLW_inst_ch1_rxlpmen_UNCONNECTED,
      ch1_rxmstdatapathreset => ch1_rxmstdatapathreset,
      ch1_rxmstreset => ch1_rxmstreset,
      ch1_rxmstresetdone => ch1_rxmstresetdone,
      ch1_rxpcsresetmask(4 downto 0) => NLW_inst_ch1_rxpcsresetmask_UNCONNECTED(4 downto 0),
      ch1_rxpd(1 downto 0) => NLW_inst_ch1_rxpd_UNCONNECTED(1 downto 0),
      ch1_rxpllgtrst => NLW_inst_ch1_rxpllgtrst_UNCONNECTED,
      ch1_rxpmareset => NLW_inst_ch1_rxpmareset_UNCONNECTED,
      ch1_rxpmaresetdone => ch1_rxpmaresetdone,
      ch1_rxpmaresetmask(6 downto 0) => NLW_inst_ch1_rxpmaresetmask_UNCONNECTED(6 downto 0),
      ch1_rxpolarity => NLW_inst_ch1_rxpolarity_UNCONNECTED,
      ch1_rxprbscntrst => NLW_inst_ch1_rxprbscntrst_UNCONNECTED,
      ch1_rxprbserr => ch1_rxprbserr,
      ch1_rxprbssel(3 downto 0) => NLW_inst_ch1_rxprbssel_UNCONNECTED(3 downto 0),
      ch1_rxprogdivreset => NLW_inst_ch1_rxprogdivreset_UNCONNECTED,
      ch1_rxrate(2 downto 0) => ch1_rxrate(2 downto 0),
      ch1_rxresetdone => ch1_rxresetdone,
      ch1_rxuserrdy => ch1_rxuserrdy,
      ch1_tx8b10ben => NLW_inst_ch1_tx8b10ben_UNCONNECTED,
      ch1_txctrl0(15 downto 0) => NLW_inst_ch1_txctrl0_UNCONNECTED(15 downto 0),
      ch1_txctrl1(15 downto 0) => NLW_inst_ch1_txctrl1_UNCONNECTED(15 downto 0),
      ch1_txctrl2(7 downto 0) => NLW_inst_ch1_txctrl2_UNCONNECTED(7 downto 0),
      ch1_txdata(31 downto 0) => NLW_inst_ch1_txdata_UNCONNECTED(31 downto 0),
      ch1_txdiffctrl(4 downto 0) => NLW_inst_ch1_txdiffctrl_UNCONNECTED(4 downto 0),
      ch1_txinhibit => NLW_inst_ch1_txinhibit_UNCONNECTED,
      ch1_txmstdatapathreset => NLW_inst_ch1_txmstdatapathreset_UNCONNECTED,
      ch1_txmstreset => NLW_inst_ch1_txmstreset_UNCONNECTED,
      ch1_txmstresetdone => '0',
      ch1_txpcsreset => NLW_inst_ch1_txpcsreset_UNCONNECTED,
      ch1_txpcsresetmask => NLW_inst_ch1_txpcsresetmask_UNCONNECTED,
      ch1_txpd(1 downto 0) => NLW_inst_ch1_txpd_UNCONNECTED(1 downto 0),
      ch1_txpmareset => NLW_inst_ch1_txpmareset_UNCONNECTED,
      ch1_txpmaresetdone => '0',
      ch1_txpmaresetmask(2 downto 0) => NLW_inst_ch1_txpmaresetmask_UNCONNECTED(2 downto 0),
      ch1_txpolarity => NLW_inst_ch1_txpolarity_UNCONNECTED,
      ch1_txpostcursor(4 downto 0) => NLW_inst_ch1_txpostcursor_UNCONNECTED(4 downto 0),
      ch1_txprbsforceerr => NLW_inst_ch1_txprbsforceerr_UNCONNECTED,
      ch1_txprbssel(3 downto 0) => NLW_inst_ch1_txprbssel_UNCONNECTED(3 downto 0),
      ch1_txprecursor(4 downto 0) => NLW_inst_ch1_txprecursor_UNCONNECTED(4 downto 0),
      ch1_txprogdivreset => NLW_inst_ch1_txprogdivreset_UNCONNECTED,
      ch1_txrate(2 downto 0) => NLW_inst_ch1_txrate_UNCONNECTED(2 downto 0),
      ch1_txresetdone => '0',
      ch1_txuserrdy => NLW_inst_ch1_txuserrdy_UNCONNECTED,
      ch2_iloreset => NLW_inst_ch2_iloreset_UNCONNECTED,
      ch2_iloresetdone => '0',
      ch2_pllgtrst => NLW_inst_ch2_pllgtrst_UNCONNECTED,
      ch2_rx8b10ben => NLW_inst_ch2_rx8b10ben_UNCONNECTED,
      ch2_rxbufreset => NLW_inst_ch2_rxbufreset_UNCONNECTED,
      ch2_rxbufstatus(2 downto 0) => ch2_rxbufstatus(2 downto 0),
      ch2_rxbyteisaligned => ch2_rxbyteisaligned,
      ch2_rxcdrlock => ch2_rxcdrlock,
      ch2_rxctrl0(15 downto 4) => B"000000000000",
      ch2_rxctrl0(3 downto 0) => ch2_rxctrl0(3 downto 0),
      ch2_rxctrl1(15 downto 4) => B"000000000000",
      ch2_rxctrl1(3 downto 0) => ch2_rxctrl1(3 downto 0),
      ch2_rxctrl3(7 downto 4) => B"0000",
      ch2_rxctrl3(3 downto 0) => ch2_rxctrl3(3 downto 0),
      ch2_rxdata(31 downto 0) => ch2_rxdata(31 downto 0),
      ch2_rxlpmen => NLW_inst_ch2_rxlpmen_UNCONNECTED,
      ch2_rxmstdatapathreset => ch2_rxmstdatapathreset,
      ch2_rxmstreset => ch2_rxmstreset,
      ch2_rxmstresetdone => ch2_rxmstresetdone,
      ch2_rxpcsresetmask(4 downto 0) => NLW_inst_ch2_rxpcsresetmask_UNCONNECTED(4 downto 0),
      ch2_rxpd(1 downto 0) => NLW_inst_ch2_rxpd_UNCONNECTED(1 downto 0),
      ch2_rxpllgtrst => NLW_inst_ch2_rxpllgtrst_UNCONNECTED,
      ch2_rxpmareset => NLW_inst_ch2_rxpmareset_UNCONNECTED,
      ch2_rxpmaresetdone => ch2_rxpmaresetdone,
      ch2_rxpmaresetmask(6 downto 0) => NLW_inst_ch2_rxpmaresetmask_UNCONNECTED(6 downto 0),
      ch2_rxpolarity => NLW_inst_ch2_rxpolarity_UNCONNECTED,
      ch2_rxprbscntrst => NLW_inst_ch2_rxprbscntrst_UNCONNECTED,
      ch2_rxprbserr => ch2_rxprbserr,
      ch2_rxprbssel(3 downto 0) => NLW_inst_ch2_rxprbssel_UNCONNECTED(3 downto 0),
      ch2_rxprogdivreset => NLW_inst_ch2_rxprogdivreset_UNCONNECTED,
      ch2_rxrate(2 downto 0) => ch2_rxrate(2 downto 0),
      ch2_rxresetdone => ch2_rxresetdone,
      ch2_rxuserrdy => ch2_rxuserrdy,
      ch2_tx8b10ben => NLW_inst_ch2_tx8b10ben_UNCONNECTED,
      ch2_txctrl0(15 downto 0) => NLW_inst_ch2_txctrl0_UNCONNECTED(15 downto 0),
      ch2_txctrl1(15 downto 0) => NLW_inst_ch2_txctrl1_UNCONNECTED(15 downto 0),
      ch2_txctrl2(7 downto 0) => NLW_inst_ch2_txctrl2_UNCONNECTED(7 downto 0),
      ch2_txdata(31 downto 0) => NLW_inst_ch2_txdata_UNCONNECTED(31 downto 0),
      ch2_txdiffctrl(4 downto 0) => NLW_inst_ch2_txdiffctrl_UNCONNECTED(4 downto 0),
      ch2_txinhibit => NLW_inst_ch2_txinhibit_UNCONNECTED,
      ch2_txmstdatapathreset => NLW_inst_ch2_txmstdatapathreset_UNCONNECTED,
      ch2_txmstreset => NLW_inst_ch2_txmstreset_UNCONNECTED,
      ch2_txmstresetdone => '0',
      ch2_txpcsreset => NLW_inst_ch2_txpcsreset_UNCONNECTED,
      ch2_txpcsresetmask => NLW_inst_ch2_txpcsresetmask_UNCONNECTED,
      ch2_txpd(1 downto 0) => NLW_inst_ch2_txpd_UNCONNECTED(1 downto 0),
      ch2_txpmareset => NLW_inst_ch2_txpmareset_UNCONNECTED,
      ch2_txpmaresetdone => '0',
      ch2_txpmaresetmask(2 downto 0) => NLW_inst_ch2_txpmaresetmask_UNCONNECTED(2 downto 0),
      ch2_txpolarity => NLW_inst_ch2_txpolarity_UNCONNECTED,
      ch2_txpostcursor(4 downto 0) => NLW_inst_ch2_txpostcursor_UNCONNECTED(4 downto 0),
      ch2_txprbsforceerr => NLW_inst_ch2_txprbsforceerr_UNCONNECTED,
      ch2_txprbssel(3 downto 0) => NLW_inst_ch2_txprbssel_UNCONNECTED(3 downto 0),
      ch2_txprecursor(4 downto 0) => NLW_inst_ch2_txprecursor_UNCONNECTED(4 downto 0),
      ch2_txprogdivreset => NLW_inst_ch2_txprogdivreset_UNCONNECTED,
      ch2_txrate(2 downto 0) => NLW_inst_ch2_txrate_UNCONNECTED(2 downto 0),
      ch2_txresetdone => '0',
      ch2_txuserrdy => NLW_inst_ch2_txuserrdy_UNCONNECTED,
      ch3_iloreset => NLW_inst_ch3_iloreset_UNCONNECTED,
      ch3_iloresetdone => '0',
      ch3_pllgtrst => NLW_inst_ch3_pllgtrst_UNCONNECTED,
      ch3_rx8b10ben => NLW_inst_ch3_rx8b10ben_UNCONNECTED,
      ch3_rxbufreset => NLW_inst_ch3_rxbufreset_UNCONNECTED,
      ch3_rxbufstatus(2 downto 0) => ch3_rxbufstatus(2 downto 0),
      ch3_rxbyteisaligned => ch3_rxbyteisaligned,
      ch3_rxcdrlock => ch3_rxcdrlock,
      ch3_rxctrl0(15 downto 4) => B"000000000000",
      ch3_rxctrl0(3 downto 0) => ch3_rxctrl0(3 downto 0),
      ch3_rxctrl1(15 downto 4) => B"000000000000",
      ch3_rxctrl1(3 downto 0) => ch3_rxctrl1(3 downto 0),
      ch3_rxctrl3(7 downto 4) => B"0000",
      ch3_rxctrl3(3 downto 0) => ch3_rxctrl3(3 downto 0),
      ch3_rxdata(31 downto 0) => ch3_rxdata(31 downto 0),
      ch3_rxlpmen => NLW_inst_ch3_rxlpmen_UNCONNECTED,
      ch3_rxmstdatapathreset => ch3_rxmstdatapathreset,
      ch3_rxmstreset => ch3_rxmstreset,
      ch3_rxmstresetdone => ch3_rxmstresetdone,
      ch3_rxpcsresetmask(4 downto 0) => NLW_inst_ch3_rxpcsresetmask_UNCONNECTED(4 downto 0),
      ch3_rxpd(1 downto 0) => NLW_inst_ch3_rxpd_UNCONNECTED(1 downto 0),
      ch3_rxpllgtrst => NLW_inst_ch3_rxpllgtrst_UNCONNECTED,
      ch3_rxpmareset => NLW_inst_ch3_rxpmareset_UNCONNECTED,
      ch3_rxpmaresetdone => ch3_rxpmaresetdone,
      ch3_rxpmaresetmask(6 downto 0) => NLW_inst_ch3_rxpmaresetmask_UNCONNECTED(6 downto 0),
      ch3_rxpolarity => NLW_inst_ch3_rxpolarity_UNCONNECTED,
      ch3_rxprbscntrst => NLW_inst_ch3_rxprbscntrst_UNCONNECTED,
      ch3_rxprbserr => ch3_rxprbserr,
      ch3_rxprbssel(3 downto 0) => NLW_inst_ch3_rxprbssel_UNCONNECTED(3 downto 0),
      ch3_rxprogdivreset => NLW_inst_ch3_rxprogdivreset_UNCONNECTED,
      ch3_rxrate(2 downto 0) => ch3_rxrate(2 downto 0),
      ch3_rxresetdone => ch3_rxresetdone,
      ch3_rxuserrdy => ch3_rxuserrdy,
      ch3_tx8b10ben => NLW_inst_ch3_tx8b10ben_UNCONNECTED,
      ch3_txctrl0(15 downto 0) => NLW_inst_ch3_txctrl0_UNCONNECTED(15 downto 0),
      ch3_txctrl1(15 downto 0) => NLW_inst_ch3_txctrl1_UNCONNECTED(15 downto 0),
      ch3_txctrl2(7 downto 0) => NLW_inst_ch3_txctrl2_UNCONNECTED(7 downto 0),
      ch3_txdata(31 downto 0) => NLW_inst_ch3_txdata_UNCONNECTED(31 downto 0),
      ch3_txdiffctrl(4 downto 0) => NLW_inst_ch3_txdiffctrl_UNCONNECTED(4 downto 0),
      ch3_txinhibit => NLW_inst_ch3_txinhibit_UNCONNECTED,
      ch3_txmstdatapathreset => NLW_inst_ch3_txmstdatapathreset_UNCONNECTED,
      ch3_txmstreset => NLW_inst_ch3_txmstreset_UNCONNECTED,
      ch3_txmstresetdone => '0',
      ch3_txpcsreset => NLW_inst_ch3_txpcsreset_UNCONNECTED,
      ch3_txpcsresetmask => NLW_inst_ch3_txpcsresetmask_UNCONNECTED,
      ch3_txpd(1 downto 0) => NLW_inst_ch3_txpd_UNCONNECTED(1 downto 0),
      ch3_txpmareset => NLW_inst_ch3_txpmareset_UNCONNECTED,
      ch3_txpmaresetdone => '0',
      ch3_txpmaresetmask(2 downto 0) => NLW_inst_ch3_txpmaresetmask_UNCONNECTED(2 downto 0),
      ch3_txpolarity => NLW_inst_ch3_txpolarity_UNCONNECTED,
      ch3_txpostcursor(4 downto 0) => NLW_inst_ch3_txpostcursor_UNCONNECTED(4 downto 0),
      ch3_txprbsforceerr => NLW_inst_ch3_txprbsforceerr_UNCONNECTED,
      ch3_txprbssel(3 downto 0) => NLW_inst_ch3_txprbssel_UNCONNECTED(3 downto 0),
      ch3_txprecursor(4 downto 0) => NLW_inst_ch3_txprecursor_UNCONNECTED(4 downto 0),
      ch3_txprogdivreset => NLW_inst_ch3_txprogdivreset_UNCONNECTED,
      ch3_txrate(2 downto 0) => NLW_inst_ch3_txrate_UNCONNECTED(2 downto 0),
      ch3_txresetdone => '0',
      ch3_txuserrdy => NLW_inst_ch3_txuserrdy_UNCONNECTED,
      clk_100mhz => '0',
      control_sb_rx_tdata(7 downto 2) => B"000000",
      control_sb_rx_tdata(1) => control_sb_rx_tdata(1),
      control_sb_rx_tdata(0) => '0',
      control_sb_rx_tready => NLW_inst_control_sb_rx_tready_UNCONNECTED,
      control_sb_rx_tvalid => control_sb_rx_tvalid,
      dp_gt_ctrl(31 downto 30) => dp_gt_ctrl(31 downto 30),
      dp_gt_ctrl(29 downto 4) => B"00000000000000000000000000",
      dp_gt_ctrl(3 downto 0) => dp_gt_ctrl(3 downto 0),
      gt_ctrl_aclk => gt_ctrl_aclk,
      gt_ctrl_aresetn => gt_ctrl_aresetn,
      gt_powergood => gt_powergood,
      gt_rxusrclk => gt_rxusrclk,
      gt_txusrclk => '0',
      hsclk0_lcpllpd => NLW_inst_hsclk0_lcpllpd_UNCONNECTED,
      hsclk0_rpllpd => NLW_inst_hsclk0_rpllpd_UNCONNECTED,
      hsclk1_lcpllpd => NLW_inst_hsclk1_lcpllpd_UNCONNECTED,
      hsclk1_rpllpd => NLW_inst_hsclk1_rpllpd_UNCONNECTED,
      rx_axi4s_ch0_tdata(31 downto 0) => rx_axi4s_ch0_tdata(31 downto 0),
      rx_axi4s_ch0_tready => '0',
      rx_axi4s_ch0_tuser(11 downto 0) => rx_axi4s_ch0_tuser(11 downto 0),
      rx_axi4s_ch0_tvalid => NLW_inst_rx_axi4s_ch0_tvalid_UNCONNECTED,
      rx_axi4s_ch1_tdata(31 downto 0) => rx_axi4s_ch1_tdata(31 downto 0),
      rx_axi4s_ch1_tready => '0',
      rx_axi4s_ch1_tuser(11 downto 0) => rx_axi4s_ch1_tuser(11 downto 0),
      rx_axi4s_ch1_tvalid => NLW_inst_rx_axi4s_ch1_tvalid_UNCONNECTED,
      rx_axi4s_ch2_tdata(31 downto 0) => rx_axi4s_ch2_tdata(31 downto 0),
      rx_axi4s_ch2_tready => '0',
      rx_axi4s_ch2_tuser(11 downto 0) => rx_axi4s_ch2_tuser(11 downto 0),
      rx_axi4s_ch2_tvalid => NLW_inst_rx_axi4s_ch2_tvalid_UNCONNECTED,
      rx_axi4s_ch3_tdata(31 downto 0) => rx_axi4s_ch3_tdata(31 downto 0),
      rx_axi4s_ch3_tready => '0',
      rx_axi4s_ch3_tuser(11 downto 0) => rx_axi4s_ch3_tuser(11 downto 0),
      rx_axi4s_ch3_tvalid => NLW_inst_rx_axi4s_ch3_tvalid_UNCONNECTED,
      rx_bufg_gt_clr => rx_bufg_gt_clr,
      rx_mmcm_locked => rx_mmcm_locked,
      rx_pll0_locked => rx_pll0_locked,
      rx_pll0_reset => rx_pll0_reset,
      rx_pll1_locked => rx_pll1_locked,
      rx_pll1_reset => rx_pll1_reset,
      s00_axi_araddr(7 downto 0) => B"00000000",
      s00_axi_arready => NLW_inst_s00_axi_arready_UNCONNECTED,
      s00_axi_arvalid => '0',
      s00_axi_awaddr(7 downto 0) => B"00000000",
      s00_axi_awready => NLW_inst_s00_axi_awready_UNCONNECTED,
      s00_axi_awvalid => '0',
      s00_axi_bready => '0',
      s00_axi_bresp(1 downto 0) => NLW_inst_s00_axi_bresp_UNCONNECTED(1 downto 0),
      s00_axi_bvalid => NLW_inst_s00_axi_bvalid_UNCONNECTED,
      s00_axi_rdata(31 downto 0) => NLW_inst_s00_axi_rdata_UNCONNECTED(31 downto 0),
      s00_axi_rready => '0',
      s00_axi_rresp(1 downto 0) => NLW_inst_s00_axi_rresp_UNCONNECTED(1 downto 0),
      s00_axi_rvalid => NLW_inst_s00_axi_rvalid_UNCONNECTED,
      s00_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s00_axi_wready => NLW_inst_s00_axi_wready_UNCONNECTED,
      s00_axi_wstrb(3 downto 0) => B"0000",
      s00_axi_wvalid => '0',
      sdi_ctrl_sb_rx_in(31 downto 0) => B"00000000000000000000000000000000",
      sdi_ctrl_sb_rx_in_tready => NLW_inst_sdi_ctrl_sb_rx_in_tready_UNCONNECTED,
      sdi_ctrl_sb_rx_in_tvalid => '0',
      sdi_ctrl_sb_rx_out(31 downto 0) => NLW_inst_sdi_ctrl_sb_rx_out_UNCONNECTED(31 downto 0),
      sdi_ctrl_sb_rx_out_tready => '0',
      sdi_ctrl_sb_rx_out_tvalid => NLW_inst_sdi_ctrl_sb_rx_out_tvalid_UNCONNECTED,
      sdi_ctrl_sb_tx_in(31 downto 0) => B"00000000000000000000000000000000",
      sdi_ctrl_sb_tx_in_tready => NLW_inst_sdi_ctrl_sb_tx_in_tready_UNCONNECTED,
      sdi_ctrl_sb_tx_in_tvalid => '0',
      sdi_ctrl_sb_tx_out(31 downto 0) => NLW_inst_sdi_ctrl_sb_tx_out_UNCONNECTED(31 downto 0),
      sdi_ctrl_sb_tx_out_tready => '0',
      sdi_ctrl_sb_tx_out_tvalid => NLW_inst_sdi_ctrl_sb_tx_out_tvalid_UNCONNECTED,
      sdi_gt_ctrl(7 downto 0) => B"00000000",
      sdi_gt_sts(15 downto 0) => NLW_inst_sdi_gt_sts_UNCONNECTED(15 downto 0),
      status_sb_rx_tdata(15 downto 12) => NLW_inst_status_sb_rx_tdata_UNCONNECTED(15 downto 12),
      status_sb_rx_tdata(11 downto 0) => \^status_sb_rx_tdata\(11 downto 0),
      status_sb_rx_tready => '0',
      status_sb_rx_tvalid => NLW_inst_status_sb_rx_tvalid_UNCONNECTED,
      status_sb_tx_tdata(7 downto 0) => NLW_inst_status_sb_tx_tdata_UNCONNECTED(7 downto 0),
      status_sb_tx_tready => '0',
      status_sb_tx_tvalid => NLW_inst_status_sb_tx_tvalid_UNCONNECTED,
      tx_axi4s_ch0_tdata(31 downto 0) => B"00000000000000000000000000000000",
      tx_axi4s_ch0_tready => NLW_inst_tx_axi4s_ch0_tready_UNCONNECTED,
      tx_axi4s_ch0_tuser(11 downto 0) => B"000000000000",
      tx_axi4s_ch0_tvalid => '0',
      tx_axi4s_ch1_tdata(31 downto 0) => B"00000000000000000000000000000000",
      tx_axi4s_ch1_tready => NLW_inst_tx_axi4s_ch1_tready_UNCONNECTED,
      tx_axi4s_ch1_tuser(11 downto 0) => B"000000000000",
      tx_axi4s_ch1_tvalid => '0',
      tx_axi4s_ch2_tdata(31 downto 0) => B"00000000000000000000000000000000",
      tx_axi4s_ch2_tready => NLW_inst_tx_axi4s_ch2_tready_UNCONNECTED,
      tx_axi4s_ch2_tuser(11 downto 0) => B"000000000000",
      tx_axi4s_ch2_tvalid => '0',
      tx_axi4s_ch3_tdata(31 downto 0) => B"00000000000000000000000000000000",
      tx_axi4s_ch3_tready => NLW_inst_tx_axi4s_ch3_tready_UNCONNECTED,
      tx_axi4s_ch3_tuser(11 downto 0) => B"000000000000",
      tx_axi4s_ch3_tvalid => '0',
      tx_bufg_gt_clr => NLW_inst_tx_bufg_gt_clr_UNCONNECTED,
      tx_mmcm_locked => '0',
      tx_pll0_locked => '0',
      tx_pll0_reset => NLW_inst_tx_pll0_reset_UNCONNECTED,
      tx_pll1_locked => '0',
      tx_pll1_reset => NLW_inst_tx_pll1_reset_UNCONNECTED
    );
end STRUCTURE;
