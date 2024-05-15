-- ==============================================================
-- Generated by Vitis HLS v2023.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dpss_vck190_pt_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_width is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    s_axis_video_TVALID : IN STD_LOGIC;
    img_din : OUT STD_LOGIC_VECTOR (119 downto 0);
    img_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
    img_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
    img_full_n : IN STD_LOGIC;
    img_write : OUT STD_LOGIC;
    sof_2 : IN STD_LOGIC_VECTOR (0 downto 0);
    axi_last_2 : IN STD_LOGIC_VECTOR (0 downto 0);
    axi_data_2 : IN STD_LOGIC_VECTOR (119 downto 0);
    trunc_ln226_1 : IN STD_LOGIC_VECTOR (10 downto 0);
    cond : IN STD_LOGIC_VECTOR (0 downto 0);
    colorFormat_val_cast : IN STD_LOGIC_VECTOR (2 downto 0);
    colorFormat_val : IN STD_LOGIC_VECTOR (2 downto 0);
    s_axis_video_TDATA : IN STD_LOGIC_VECTOR (119 downto 0);
    s_axis_video_TREADY : OUT STD_LOGIC;
    s_axis_video_TKEEP : IN STD_LOGIC_VECTOR (14 downto 0);
    s_axis_video_TSTRB : IN STD_LOGIC_VECTOR (14 downto 0);
    s_axis_video_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    s_axis_video_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    s_axis_video_TID : IN STD_LOGIC_VECTOR (0 downto 0);
    s_axis_video_TDEST : IN STD_LOGIC_VECTOR (0 downto 0);
    eol_out : OUT STD_LOGIC_VECTOR (0 downto 0);
    eol_out_ap_vld : OUT STD_LOGIC;
    axi_data_3_out : OUT STD_LOGIC_VECTOR (119 downto 0);
    axi_data_3_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of dpss_vck190_pt_v_frmbuf_wr_0_0_AXIvideo2MultiPixStream_Pipeline_loop_width is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv32_14 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010100";
    constant ap_const_lv32_1D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011101";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv32_32 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110010";
    constant ap_const_lv32_3B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111011";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv32_27 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100111";
    constant ap_const_lv32_28 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101000";
    constant ap_const_lv32_31 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110001";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv32_50 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001010000";
    constant ap_const_lv32_59 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001011001";
    constant ap_const_lv32_3C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111100";
    constant ap_const_lv32_45 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000101";
    constant ap_const_lv32_46 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000110";
    constant ap_const_lv32_4F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001001111";
    constant ap_const_lv32_6E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001101110";
    constant ap_const_lv32_77 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001110111";
    constant ap_const_lv32_5A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001011010";
    constant ap_const_lv32_63 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001100011";
    constant ap_const_lv32_64 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001100100";
    constant ap_const_lv32_6D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001101101";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal icmp_ln257_fu_328_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln261_fu_334_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op55_read_state1 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln257_reg_755 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal img_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal s_axis_video_TDATA_blk_n : STD_LOGIC;
    signal eol_reg_237 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal colorFormat_val_cast_cast_fu_276_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal colorFormat_val_cast_cast_reg_744 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_phi_mux_eol_phi_fu_240_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_phi_mux_sof_phi_fu_251_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_fu_144 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    signal j_2_fu_322_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_sig_allocacmp_j_1 : STD_LOGIC_VECTOR (10 downto 0);
    signal axi_data_fu_148 : STD_LOGIC_VECTOR (119 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal axi_last_fu_152 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp_8_fu_395_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal trunc_ln63_fu_405_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_s_fu_416_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_1_fu_460_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_16_fu_440_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_1_fu_460_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_17_fu_450_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_1_fu_460_p5 : STD_LOGIC_VECTOR (9 downto 0);
    signal icmp_ln290_fu_485_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_18_fu_475_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_2_fu_526_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_2_fu_526_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_2_fu_526_p5 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_3_fu_551_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_3_fu_551_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_3_fu_551_p5 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_4_fu_566_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_4_fu_566_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_4_fu_566_p5 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_5_fu_601_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_5_fu_601_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_5_fu_601_p5 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_6_fu_626_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_6_fu_626_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_6_fu_626_p5 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_7_fu_641_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_7_fu_641_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_7_fu_641_p5 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_7_fu_641_p7 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_6_fu_626_p7 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_5_fu_601_p7 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_4_fu_566_p7 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_3_fu_551_p7 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_2_fu_526_p7 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln290_4_fu_498_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln290_3_fu_490_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_1_fu_460_p7 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln290_2_fu_433_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln290_1_fu_426_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln290_fu_409_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_430 : BOOLEAN;
    signal ap_condition_433 : BOOLEAN;
    signal ap_condition_438 : BOOLEAN;
    signal tmp_1_fu_460_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_1_fu_460_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_2_fu_526_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_2_fu_526_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_3_fu_551_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_3_fu_551_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_4_fu_566_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_4_fu_566_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_5_fu_601_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_5_fu_601_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_6_fu_626_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_6_fu_626_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_7_fu_641_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_7_fu_641_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component dpss_vck190_pt_v_frmbuf_wr_0_0_sparsemux_5_8_10_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        CASE0 : STD_LOGIC_VECTOR (7 downto 0);
        din0_WIDTH : INTEGER;
        CASE1 : STD_LOGIC_VECTOR (7 downto 0);
        din1_WIDTH : INTEGER;
        def_WIDTH : INTEGER;
        sel_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (9 downto 0);
        din1 : IN STD_LOGIC_VECTOR (9 downto 0);
        def : IN STD_LOGIC_VECTOR (9 downto 0);
        sel : IN STD_LOGIC_VECTOR (7 downto 0);
        dout : OUT STD_LOGIC_VECTOR (9 downto 0) );
    end component;


    component dpss_vck190_pt_v_frmbuf_wr_0_0_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    sparsemux_5_8_10_1_1_U17 : component dpss_vck190_pt_v_frmbuf_wr_0_0_sparsemux_5_8_10_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        CASE0 => "00000000",
        din0_WIDTH => 10,
        CASE1 => "00000001",
        din1_WIDTH => 10,
        def_WIDTH => 10,
        sel_WIDTH => 8,
        dout_WIDTH => 10)
    port map (
        din0 => tmp_1_fu_460_p2,
        din1 => tmp_1_fu_460_p4,
        def => tmp_1_fu_460_p5,
        sel => colorFormat_val_cast_cast_reg_744,
        dout => tmp_1_fu_460_p7);

    sparsemux_5_8_10_1_1_U18 : component dpss_vck190_pt_v_frmbuf_wr_0_0_sparsemux_5_8_10_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        CASE0 => "00000000",
        din0_WIDTH => 10,
        CASE1 => "00000001",
        din1_WIDTH => 10,
        def_WIDTH => 10,
        sel_WIDTH => 8,
        dout_WIDTH => 10)
    port map (
        din0 => tmp_2_fu_526_p2,
        din1 => tmp_2_fu_526_p4,
        def => tmp_2_fu_526_p5,
        sel => colorFormat_val_cast_cast_reg_744,
        dout => tmp_2_fu_526_p7);

    sparsemux_5_8_10_1_1_U19 : component dpss_vck190_pt_v_frmbuf_wr_0_0_sparsemux_5_8_10_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        CASE0 => "00000000",
        din0_WIDTH => 10,
        CASE1 => "00000001",
        din1_WIDTH => 10,
        def_WIDTH => 10,
        sel_WIDTH => 8,
        dout_WIDTH => 10)
    port map (
        din0 => tmp_3_fu_551_p2,
        din1 => tmp_3_fu_551_p4,
        def => tmp_3_fu_551_p5,
        sel => colorFormat_val_cast_cast_reg_744,
        dout => tmp_3_fu_551_p7);

    sparsemux_5_8_10_1_1_U20 : component dpss_vck190_pt_v_frmbuf_wr_0_0_sparsemux_5_8_10_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        CASE0 => "00000000",
        din0_WIDTH => 10,
        CASE1 => "00000001",
        din1_WIDTH => 10,
        def_WIDTH => 10,
        sel_WIDTH => 8,
        dout_WIDTH => 10)
    port map (
        din0 => tmp_4_fu_566_p2,
        din1 => tmp_4_fu_566_p4,
        def => tmp_4_fu_566_p5,
        sel => colorFormat_val_cast_cast_reg_744,
        dout => tmp_4_fu_566_p7);

    sparsemux_5_8_10_1_1_U21 : component dpss_vck190_pt_v_frmbuf_wr_0_0_sparsemux_5_8_10_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        CASE0 => "00000000",
        din0_WIDTH => 10,
        CASE1 => "00000001",
        din1_WIDTH => 10,
        def_WIDTH => 10,
        sel_WIDTH => 8,
        dout_WIDTH => 10)
    port map (
        din0 => tmp_5_fu_601_p2,
        din1 => tmp_5_fu_601_p4,
        def => tmp_5_fu_601_p5,
        sel => colorFormat_val_cast_cast_reg_744,
        dout => tmp_5_fu_601_p7);

    sparsemux_5_8_10_1_1_U22 : component dpss_vck190_pt_v_frmbuf_wr_0_0_sparsemux_5_8_10_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        CASE0 => "00000000",
        din0_WIDTH => 10,
        CASE1 => "00000001",
        din1_WIDTH => 10,
        def_WIDTH => 10,
        sel_WIDTH => 8,
        dout_WIDTH => 10)
    port map (
        din0 => tmp_6_fu_626_p2,
        din1 => tmp_6_fu_626_p4,
        def => tmp_6_fu_626_p5,
        sel => colorFormat_val_cast_cast_reg_744,
        dout => tmp_6_fu_626_p7);

    sparsemux_5_8_10_1_1_U23 : component dpss_vck190_pt_v_frmbuf_wr_0_0_sparsemux_5_8_10_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        CASE0 => "00000000",
        din0_WIDTH => 10,
        CASE1 => "00000001",
        din1_WIDTH => 10,
        def_WIDTH => 10,
        sel_WIDTH => 8,
        dout_WIDTH => 10)
    port map (
        din0 => tmp_7_fu_641_p2,
        din1 => tmp_7_fu_641_p4,
        def => tmp_7_fu_641_p5,
        sel => colorFormat_val_cast_cast_reg_744,
        dout => tmp_7_fu_641_p7);

    flow_control_loop_pipe_sequential_init_U : component dpss_vck190_pt_v_frmbuf_wr_0_0_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    axi_data_fu_148_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_const_boolean_1 = ap_condition_433)) then 
                    axi_data_fu_148 <= s_axis_video_TDATA;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    axi_data_fu_148 <= axi_data_2;
                end if;
            end if; 
        end if;
    end process;

    axi_last_fu_152_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_const_boolean_1 = ap_condition_433)) then 
                    axi_last_fu_152 <= s_axis_video_TLAST;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    axi_last_fu_152 <= axi_last_2;
                end if;
            end if; 
        end if;
    end process;

    eol_reg_237_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then
                if ((ap_const_boolean_1 = ap_condition_438)) then 
                    eol_reg_237 <= axi_last_fu_152;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_init = ap_const_logic_1))) then 
                    eol_reg_237 <= ap_const_lv1_0;
                end if;
            end if; 
        end if;
    end process;

    j_fu_144_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln257_fu_328_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1))) then 
                    j_fu_144 <= j_2_fu_322_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_144 <= ap_const_lv11_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                    colorFormat_val_cast_cast_reg_744(2 downto 0) <= colorFormat_val_cast_cast_fu_276_p1(2 downto 0);
                icmp_ln257_reg_755 <= icmp_ln257_fu_328_p2;
            end if;
        end if;
    end process;
    colorFormat_val_cast_cast_reg_744(7 downto 3) <= "00000";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter1, ap_block_state1_pp0_stage0_iter0, ap_block_state2_pp0_stage0_iter1, ap_start_int)
    begin
                ap_block_pp0_stage0_01001 <= (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state2_pp0_stage0_iter1)) or ((ap_start_int = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state1_pp0_stage0_iter0)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, ap_block_state1_pp0_stage0_iter0, ap_block_state2_pp0_stage0_iter1, ap_start_int)
    begin
                ap_block_pp0_stage0_11001 <= (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state2_pp0_stage0_iter1)) or ((ap_start_int = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state1_pp0_stage0_iter0)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, ap_block_state1_pp0_stage0_iter0, ap_block_state2_pp0_stage0_iter1, ap_start_int)
    begin
                ap_block_pp0_stage0_subdone <= (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state2_pp0_stage0_iter1)) or ((ap_start_int = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state1_pp0_stage0_iter0)));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(s_axis_video_TVALID, ap_predicate_op55_read_state1)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_predicate_op55_read_state1 = ap_const_boolean_1) and (s_axis_video_TVALID = ap_const_logic_0));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(img_full_n, icmp_ln257_reg_755)
    begin
                ap_block_state2_pp0_stage0_iter1 <= ((icmp_ln257_reg_755 = ap_const_lv1_0) and (img_full_n = ap_const_logic_0));
    end process;


    ap_condition_430_assign_proc : process(ap_enable_reg_pp0_iter1, icmp_ln257_reg_755, ap_block_pp0_stage0)
    begin
                ap_condition_430 <= ((icmp_ln257_reg_755 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_condition_433_assign_proc : process(icmp_ln257_fu_328_p2, or_ln261_fu_334_p2, ap_start_int)
    begin
                ap_condition_433 <= ((or_ln261_fu_334_p2 = ap_const_lv1_0) and (icmp_ln257_fu_328_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1));
    end process;


    ap_condition_438_assign_proc : process(ap_enable_reg_pp0_iter1, icmp_ln257_reg_755, ap_block_pp0_stage0_11001)
    begin
                ap_condition_438 <= ((icmp_ln257_reg_755 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln257_fu_328_p2, ap_block_pp0_stage0_subdone, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln257_fu_328_p2 = ap_const_lv1_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_phi_mux_eol_phi_fu_240_p4_assign_proc : process(ap_CS_fsm_pp0_stage0, eol_reg_237, ap_loop_init, axi_last_fu_152, ap_condition_430)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then
            if ((ap_const_boolean_1 = ap_condition_430)) then 
                ap_phi_mux_eol_phi_fu_240_p4 <= axi_last_fu_152;
            elsif ((ap_loop_init = ap_const_logic_1)) then 
                ap_phi_mux_eol_phi_fu_240_p4 <= ap_const_lv1_0;
            else 
                ap_phi_mux_eol_phi_fu_240_p4 <= eol_reg_237;
            end if;
        else 
            ap_phi_mux_eol_phi_fu_240_p4 <= eol_reg_237;
        end if; 
    end process;


    ap_phi_mux_sof_phi_fu_251_p4_assign_proc : process(ap_CS_fsm_pp0_stage0, sof_2, ap_loop_init, ap_condition_430)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then
            if ((ap_const_boolean_1 = ap_condition_430)) then 
                ap_phi_mux_sof_phi_fu_251_p4 <= ap_const_lv1_0;
            elsif ((ap_loop_init = ap_const_logic_1)) then 
                ap_phi_mux_sof_phi_fu_251_p4 <= sof_2;
            else 
                ap_phi_mux_sof_phi_fu_251_p4 <= ap_const_lv1_0;
            end if;
        else 
            ap_phi_mux_sof_phi_fu_251_p4 <= ap_const_lv1_0;
        end if; 
    end process;


    ap_predicate_op55_read_state1_assign_proc : process(icmp_ln257_fu_328_p2, or_ln261_fu_334_p2)
    begin
                ap_predicate_op55_read_state1 <= ((or_ln261_fu_334_p2 = ap_const_lv1_0) and (icmp_ln257_fu_328_p2 = ap_const_lv1_0));
    end process;


    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_j_1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, j_fu_144)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_j_1 <= ap_const_lv11_0;
        else 
            ap_sig_allocacmp_j_1 <= j_fu_144;
        end if; 
    end process;

    axi_data_3_out <= axi_data_fu_148;

    axi_data_3_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln257_fu_328_p2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln257_fu_328_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            axi_data_3_out_ap_vld <= ap_const_logic_1;
        else 
            axi_data_3_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    colorFormat_val_cast_cast_fu_276_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(colorFormat_val_cast),8));
    eol_out <= eol_reg_237;

    eol_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln257_fu_328_p2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln257_fu_328_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            eol_out_ap_vld <= ap_const_logic_1;
        else 
            eol_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln257_fu_328_p2 <= "1" when (ap_sig_allocacmp_j_1 = trunc_ln226_1) else "0";
    icmp_ln290_fu_485_p2 <= "1" when (colorFormat_val = ap_const_lv3_1) else "0";

    img_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, img_full_n, icmp_ln257_reg_755, ap_block_pp0_stage0)
    begin
        if (((icmp_ln257_reg_755 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            img_blk_n <= img_full_n;
        else 
            img_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    img_din <= (((((((((((tmp_7_fu_641_p7 & tmp_6_fu_626_p7) & tmp_5_fu_601_p7) & tmp_4_fu_566_p7) & tmp_3_fu_551_p7) & tmp_2_fu_526_p7) & select_ln290_4_fu_498_p3) & select_ln290_3_fu_490_p3) & tmp_1_fu_460_p7) & select_ln290_2_fu_433_p3) & select_ln290_1_fu_426_p3) & select_ln290_fu_409_p3);

    img_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln257_reg_755, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln257_reg_755 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            img_write <= ap_const_logic_1;
        else 
            img_write <= ap_const_logic_0;
        end if; 
    end process;

    j_2_fu_322_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_j_1) + unsigned(ap_const_lv11_1));
    or_ln261_fu_334_p2 <= (ap_phi_mux_sof_phi_fu_251_p4 or ap_phi_mux_eol_phi_fu_240_p4);

    s_axis_video_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, s_axis_video_TVALID, ap_predicate_op55_read_state1, ap_block_pp0_stage0, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op55_read_state1 = ap_const_boolean_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            s_axis_video_TDATA_blk_n <= s_axis_video_TVALID;
        else 
            s_axis_video_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    s_axis_video_TREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_predicate_op55_read_state1, ap_block_pp0_stage0_11001, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op55_read_state1 = ap_const_boolean_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            s_axis_video_TREADY <= ap_const_logic_1;
        else 
            s_axis_video_TREADY <= ap_const_logic_0;
        end if; 
    end process;

    select_ln290_1_fu_426_p3 <= 
        trunc_ln63_fu_405_p1 when (cond(0) = '1') else 
        tmp_s_fu_416_p4;
    select_ln290_2_fu_433_p3 <= 
        tmp_s_fu_416_p4 when (cond(0) = '1') else 
        tmp_8_fu_395_p4;
    select_ln290_3_fu_490_p3 <= 
        tmp_18_fu_475_p4 when (icmp_ln290_fu_485_p2(0) = '1') else 
        tmp_17_fu_450_p4;
    select_ln290_4_fu_498_p3 <= 
        tmp_16_fu_440_p4 when (icmp_ln290_fu_485_p2(0) = '1') else 
        tmp_18_fu_475_p4;
    select_ln290_fu_409_p3 <= 
        tmp_8_fu_395_p4 when (cond(0) = '1') else 
        trunc_ln63_fu_405_p1;
    tmp_16_fu_440_p4 <= axi_data_fu_148(59 downto 50);
    tmp_17_fu_450_p4 <= axi_data_fu_148(39 downto 30);
    tmp_18_fu_475_p4 <= axi_data_fu_148(49 downto 40);
    tmp_1_fu_460_p2 <= axi_data_fu_148(59 downto 50);
    tmp_1_fu_460_p4 <= axi_data_fu_148(39 downto 30);
    tmp_1_fu_460_p5 <= axi_data_fu_148(29 downto 20);
    tmp_2_fu_526_p2 <= axi_data_fu_148(89 downto 80);
    tmp_2_fu_526_p4 <= axi_data_fu_148(69 downto 60);
    tmp_2_fu_526_p5 <= axi_data_fu_148(49 downto 40);
    tmp_3_fu_551_p2 <= axi_data_fu_148(69 downto 60);
    tmp_3_fu_551_p4 <= axi_data_fu_148(79 downto 70);
    tmp_3_fu_551_p5 <= axi_data_fu_148(59 downto 50);
    tmp_4_fu_566_p2 <= axi_data_fu_148(79 downto 70);
    tmp_4_fu_566_p4 <= axi_data_fu_148(89 downto 80);
    tmp_4_fu_566_p5 <= axi_data_fu_148(69 downto 60);
    tmp_5_fu_601_p2 <= axi_data_fu_148(119 downto 110);
    tmp_5_fu_601_p4 <= axi_data_fu_148(99 downto 90);
    tmp_5_fu_601_p5 <= axi_data_fu_148(69 downto 60);
    tmp_6_fu_626_p2 <= axi_data_fu_148(99 downto 90);
    tmp_6_fu_626_p4 <= axi_data_fu_148(109 downto 100);
    tmp_6_fu_626_p5 <= axi_data_fu_148(79 downto 70);
    tmp_7_fu_641_p2 <= axi_data_fu_148(109 downto 100);
    tmp_7_fu_641_p4 <= axi_data_fu_148(119 downto 110);
    tmp_7_fu_641_p5 <= axi_data_fu_148(89 downto 80);
    tmp_8_fu_395_p4 <= axi_data_fu_148(29 downto 20);
    tmp_s_fu_416_p4 <= axi_data_fu_148(19 downto 10);
    trunc_ln63_fu_405_p1 <= axi_data_fu_148(10 - 1 downto 0);
end behav;
