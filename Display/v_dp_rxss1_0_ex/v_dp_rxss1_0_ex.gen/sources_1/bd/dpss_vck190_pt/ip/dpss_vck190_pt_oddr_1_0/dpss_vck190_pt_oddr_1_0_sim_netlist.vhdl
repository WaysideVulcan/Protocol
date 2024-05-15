-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu May  9 19:10:22 2024
-- Host        : Vulcan running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Vulcan/Protocol/Display/v_dp_rxss1_0_ex/v_dp_rxss1_0_ex.gen/sources_1/bd/dpss_vck190_pt/ip/dpss_vck190_pt_oddr_1_0/dpss_vck190_pt_oddr_1_0_sim_netlist.vhdl
-- Design      : dpss_vck190_pt_oddr_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvc1902-vsva2197-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dpss_vck190_pt_oddr_1_0_oddr_v1_0_3_oddr is
  port (
    clk_in : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  attribute C_FAMILY : string;
  attribute C_FAMILY of dpss_vck190_pt_oddr_1_0_oddr_v1_0_3_oddr : entity is "versal";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dpss_vck190_pt_oddr_1_0_oddr_v1_0_3_oddr : entity is "oddr_v1_0_3_oddr";
  attribute SIM_DEVICE : string;
  attribute SIM_DEVICE of dpss_vck190_pt_oddr_1_0_oddr_v1_0_3_oddr : entity is "VERSAL_AI_CORE";
end dpss_vck190_pt_oddr_1_0_oddr_v1_0_3_oddr;

architecture STRUCTURE of dpss_vck190_pt_oddr_1_0_oddr_v1_0_3_oddr is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of ODDRE1_inst : label is "PRIMITIVE";
begin
ODDRE1_inst: unisim.vcomponents.ODDRE1
    generic map(
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SIM_DEVICE => "VERSAL_AI_CORE",
      SRVAL => '0'
    )
        port map (
      C => clk_in,
      D1 => '1',
      D2 => '0',
      Q => clk_out,
      SR => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dpss_vck190_pt_oddr_1_0 is
  port (
    clk_in : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dpss_vck190_pt_oddr_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dpss_vck190_pt_oddr_1_0 : entity is "dpss_vck190_pt_oddr_1_0,oddr_v1_0_3_oddr,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of dpss_vck190_pt_oddr_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of dpss_vck190_pt_oddr_1_0 : entity is "oddr_v1_0_3_oddr,Vivado 2023.2";
end dpss_vck190_pt_oddr_1_0;

architecture STRUCTURE of dpss_vck190_pt_oddr_1_0 is
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "versal";
  attribute SIM_DEVICE : string;
  attribute SIM_DEVICE of inst : label is "VERSAL_AI_CORE";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_in : signal is "xilinx.com:signal:clock:1.0 clk_in_intf CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_in : signal is "XIL_INTERFACENAME clk_in_intf, FREQ_HZ 36864000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_util_ds_buf_2_aud_0_IBUF_DS_ODIV2, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk_out : signal is "xilinx.com:signal:clock:1.0 clk_out_intf CLK";
  attribute X_INTERFACE_PARAMETER of clk_out : signal is "XIL_INTERFACENAME clk_out_intf, FREQ_HZ 36864000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN dpss_vck190_pt_util_ds_buf_2_aud_0_IBUF_DS_ODIV2, INSERT_VIP 0";
begin
inst: entity work.dpss_vck190_pt_oddr_1_0_oddr_v1_0_3_oddr
     port map (
      clk_in => clk_in,
      clk_out => clk_out
    );
end STRUCTURE;
