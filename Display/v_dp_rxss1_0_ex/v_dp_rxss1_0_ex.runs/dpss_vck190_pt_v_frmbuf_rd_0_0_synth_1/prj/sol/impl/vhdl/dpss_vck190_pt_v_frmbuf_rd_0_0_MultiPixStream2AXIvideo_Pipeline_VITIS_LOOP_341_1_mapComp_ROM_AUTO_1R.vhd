-- ==============================================================
-- Generated by Vitis HLS v2023.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity dpss_vck190_pt_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_341_1_mapComp_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 4; 
             AddressWidth     : integer := 6; 
             AddressRange    : integer := 48
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of dpss_vck190_pt_v_frmbuf_rd_0_0_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_341_1_mapComp_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "0001", 1 => "0010", 2 => "0000", 3 => "0100", 
    4 => "0101", 5 => "0011", 6 => "0111", 7 => "1000", 
    8 => "0110", 9 => "1010", 10 => "1011", 11 => "1001", 
    12 => "0000", 13 => "0001", 14 => "0010", 15 => "0011", 
    16 => "0100", 17 => "0101", 18 => "0110", 19 => "0111", 
    20 => "1000", 21 => "1001", 22 => "1010", 23 => "1011", 
    24 => "0000", 25 => "0001", 26 => "0011", 27 => "0100", 
    28 => "0110", 29 => "0111", 30 => "1001", 31 => "1010", 
    32 => "1011", 33 => "1000", 34 => "0101", 35 => "0010", 
    36 => "0000", 37 => "0001", 38 => "0011", 39 => "0100", 
    40 => "0110", 41 => "0111", 42 => "1001", 43 => "1010", 
    44 => "1011", 45 => "1000", 46 => "0101", 47 => "0010");



begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;

end if;
end process;

end rtl;

