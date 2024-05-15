-- ==============================================================
-- Generated by Vitis HLS v2023.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dpss_vck190_pt_v_frmbuf_rd_0_0_reg_unsigned_short_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    d : IN STD_LOGIC_VECTOR (12 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (12 downto 0);
    ap_ce : IN STD_LOGIC );
end;


architecture behav of dpss_vck190_pt_v_frmbuf_rd_0_0_reg_unsigned_short_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv13_0 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";

attribute shreg_extract : string;
    signal d_read_reg_28 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC := '0';
    signal ap_return_int_reg : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";


begin




    ap_ce_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_ce_reg <= ap_const_logic_0;
            else
                ap_ce_reg <= ap_ce;
            end if;
        end if;
    end process;


    ap_return_int_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_int_reg <= ap_const_lv13_0;
            else
                if ((ap_const_logic_1 = ap_ce_reg)) then 
                    ap_return_int_reg <= d_read_reg_28;
                end if; 
            end if;
        end if;
    end process;


    d_read_reg_28_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                d_read_reg_28 <= ap_const_lv13_0;
            else
                if (((ap_const_logic_1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                    d_read_reg_28 <= d;
                end if; 
            end if;
        end if;
    end process;

        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_return_assign_proc : process(d_read_reg_28, ap_ce_reg, ap_return_int_reg)
    begin
        if ((ap_const_logic_0 = ap_ce_reg)) then 
            ap_return <= ap_return_int_reg;
        elsif ((ap_const_logic_1 = ap_ce_reg)) then 
            ap_return <= d_read_reg_28;
        else 
            ap_return <= "XXXXXXXXXXXXX";
        end if; 
    end process;

end behav;
