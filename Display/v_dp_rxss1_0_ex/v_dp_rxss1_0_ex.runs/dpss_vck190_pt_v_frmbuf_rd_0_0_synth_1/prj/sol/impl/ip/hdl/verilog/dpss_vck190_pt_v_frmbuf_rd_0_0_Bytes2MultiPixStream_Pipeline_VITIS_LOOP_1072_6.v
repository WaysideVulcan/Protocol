// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module dpss_vck190_pt_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1072_6 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        img_din,
        img_num_data_valid,
        img_fifo_cap,
        img_full_n,
        img_write,
        trunc_ln1059_2,
        icmp_ln1062,
        cmp224_2,
        icmp19,
        bytePlanes_plane0_dout,
        bytePlanes_plane0_num_data_valid,
        bytePlanes_plane0_fifo_cap,
        bytePlanes_plane0_empty_n,
        bytePlanes_plane0_read,
        sub220_cast,
        cmp224
);

parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [119:0] img_din;
input  [2:0] img_num_data_valid;
input  [2:0] img_fifo_cap;
input   img_full_n;
output   img_write;
input  [11:0] trunc_ln1059_2;
input  [0:0] icmp_ln1062;
input  [0:0] cmp224_2;
input  [0:0] icmp19;
input  [255:0] bytePlanes_plane0_dout;
input  [9:0] bytePlanes_plane0_num_data_valid;
input  [9:0] bytePlanes_plane0_fifo_cap;
input   bytePlanes_plane0_empty_n;
output   bytePlanes_plane0_read;
input  [11:0] sub220_cast;
input  [0:0] cmp224;

reg ap_idle;
reg[119:0] img_din;
reg img_write;
reg bytePlanes_plane0_read;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg   [0:0] or_ln1088_3_reg_835;
reg    ap_block_state5_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1072_fu_287_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage3;
reg   [0:0] icmp_ln1072_reg_819;
reg   [0:0] or_ln1088_2_reg_831;
reg    ap_predicate_op98_write_state4;
reg    ap_block_state4_pp0_stage3_iter0;
reg    ap_block_pp0_stage3_subdone;
reg    bytePlanes_plane0_blk_n;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1;
reg    img_blk_n;
reg   [0:0] or_ln1088_reg_823;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
reg   [0:0] or_ln1088_1_reg_827;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] or_ln1088_fu_303_p2;
wire   [0:0] or_ln1088_1_fu_309_p2;
wire   [0:0] or_ln1088_2_fu_315_p2;
wire   [0:0] or_ln1088_3_fu_321_p2;
reg   [7:0] tmp_32_reg_839;
reg    ap_predicate_op64_write_state2;
reg    ap_block_state2_pp0_stage1_iter0;
reg    ap_block_pp0_stage1_11001;
reg   [7:0] tmp_33_reg_844;
reg   [7:0] tmp_34_reg_849;
reg   [7:0] tmp_35_reg_854;
reg   [7:0] tmp_37_reg_859;
reg   [7:0] tmp_38_reg_864;
reg   [7:0] tmp_39_reg_869;
reg   [7:0] tmp_40_reg_874;
reg   [7:0] tmp_41_reg_879;
reg   [7:0] tmp_42_reg_884;
reg   [7:0] tmp_43_reg_889;
reg   [7:0] tmp_44_reg_894;
reg   [7:0] tmp_45_reg_899;
reg   [7:0] tmp_46_reg_904;
reg   [7:0] tmp_47_reg_909;
reg   [7:0] tmp_48_reg_914;
reg   [7:0] tmp_69_reg_919;
reg   [7:0] tmp_70_reg_924;
reg   [7:0] tmp_71_reg_929;
reg   [7:0] tmp_72_reg_934;
reg   [7:0] tmp_73_reg_939;
reg   [7:0] tmp_74_reg_944;
reg   [7:0] tmp_75_reg_949;
reg   [7:0] tmp_76_reg_954;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [11:0] x_1_fu_194;
wire   [11:0] x_6_fu_281_p2;
wire    ap_loop_init;
reg   [11:0] ap_sig_allocacmp_x;
wire   [119:0] zext_ln1089_fu_449_p1;
reg    ap_block_pp0_stage1_01001;
wire   [119:0] zext_ln1089_1_fu_726_p1;
reg    ap_predicate_op93_write_state3;
reg    ap_block_state3_pp0_stage2_iter0;
reg    ap_block_pp0_stage2_01001;
wire   [119:0] zext_ln1089_2_fu_763_p1;
reg    ap_block_pp0_stage3_01001;
wire   [119:0] zext_ln1089_3_fu_800_p1;
reg    ap_block_pp0_stage0_01001;
reg    ap_block_pp0_stage2_11001;
reg    ap_block_pp0_stage3_11001;
wire   [12:0] zext_ln1072_fu_293_p1;
wire  signed [12:0] sub220_cast_cast_fu_259_p1;
wire   [0:0] cmp221_fu_297_p2;
wire   [7:0] tmp_31_fu_403_p4;
wire   [7:0] tmp_30_fu_393_p4;
wire   [7:0] tmp_29_fu_383_p4;
wire   [7:0] tmp_28_fu_373_p4;
wire   [7:0] tmp_19_fu_363_p4;
wire   [7:0] tmp_18_fu_353_p4;
wire   [7:0] tmp_17_fu_343_p4;
wire   [7:0] trunc_ln1083_fu_339_p1;
wire   [109:0] tmp_1_fu_413_p17;
wire   [109:0] tmp_6_fu_698_p17;
wire   [109:0] tmp_62_fu_735_p17;
wire   [109:0] tmp_92_fu_772_p17;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_block_pp0_stage1_subdone;
reg    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 or_ln1088_3_reg_835 = 1'd0;
#0 icmp_ln1072_reg_819 = 1'd0;
#0 or_ln1088_2_reg_831 = 1'd0;
#0 or_ln1088_reg_823 = 1'd0;
#0 or_ln1088_1_reg_827 = 1'd0;
#0 tmp_32_reg_839 = 8'd0;
#0 tmp_33_reg_844 = 8'd0;
#0 tmp_34_reg_849 = 8'd0;
#0 tmp_35_reg_854 = 8'd0;
#0 tmp_37_reg_859 = 8'd0;
#0 tmp_38_reg_864 = 8'd0;
#0 tmp_39_reg_869 = 8'd0;
#0 tmp_40_reg_874 = 8'd0;
#0 tmp_41_reg_879 = 8'd0;
#0 tmp_42_reg_884 = 8'd0;
#0 tmp_43_reg_889 = 8'd0;
#0 tmp_44_reg_894 = 8'd0;
#0 tmp_45_reg_899 = 8'd0;
#0 tmp_46_reg_904 = 8'd0;
#0 tmp_47_reg_909 = 8'd0;
#0 tmp_48_reg_914 = 8'd0;
#0 tmp_69_reg_919 = 8'd0;
#0 tmp_70_reg_924 = 8'd0;
#0 tmp_71_reg_929 = 8'd0;
#0 tmp_72_reg_934 = 8'd0;
#0 tmp_73_reg_939 = 8'd0;
#0 tmp_74_reg_944 = 8'd0;
#0 tmp_75_reg_949 = 8'd0;
#0 tmp_76_reg_954 = 8'd0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 x_1_fu_194 = 12'd0;
#0 ap_done_reg = 1'b0;
end

dpss_vck190_pt_v_frmbuf_rd_0_0_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        icmp_ln1072_reg_819 <= 1'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            icmp_ln1072_reg_819 <= icmp_ln1072_fu_287_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        or_ln1088_1_reg_827 <= 1'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            or_ln1088_1_reg_827 <= or_ln1088_1_fu_309_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        or_ln1088_2_reg_831 <= 1'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            or_ln1088_2_reg_831 <= or_ln1088_2_fu_315_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        or_ln1088_3_reg_835 <= 1'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            or_ln1088_3_reg_835 <= or_ln1088_3_fu_321_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        or_ln1088_reg_823 <= 1'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            or_ln1088_reg_823 <= or_ln1088_fu_303_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_32_reg_839 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_32_reg_839 <= {{bytePlanes_plane0_dout[71:64]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_33_reg_844 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_33_reg_844 <= {{bytePlanes_plane0_dout[79:72]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_34_reg_849 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_34_reg_849 <= {{bytePlanes_plane0_dout[87:80]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_35_reg_854 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_35_reg_854 <= {{bytePlanes_plane0_dout[95:88]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_37_reg_859 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_37_reg_859 <= {{bytePlanes_plane0_dout[103:96]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_38_reg_864 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_38_reg_864 <= {{bytePlanes_plane0_dout[111:104]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_39_reg_869 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_39_reg_869 <= {{bytePlanes_plane0_dout[119:112]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_40_reg_874 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_40_reg_874 <= {{bytePlanes_plane0_dout[127:120]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_41_reg_879 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_41_reg_879 <= {{bytePlanes_plane0_dout[135:128]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_42_reg_884 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_42_reg_884 <= {{bytePlanes_plane0_dout[143:136]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_43_reg_889 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_43_reg_889 <= {{bytePlanes_plane0_dout[151:144]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_44_reg_894 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_44_reg_894 <= {{bytePlanes_plane0_dout[159:152]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_45_reg_899 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_45_reg_899 <= {{bytePlanes_plane0_dout[167:160]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_46_reg_904 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_46_reg_904 <= {{bytePlanes_plane0_dout[175:168]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_47_reg_909 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_47_reg_909 <= {{bytePlanes_plane0_dout[183:176]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_48_reg_914 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_48_reg_914 <= {{bytePlanes_plane0_dout[191:184]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_69_reg_919 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_69_reg_919 <= {{bytePlanes_plane0_dout[199:192]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_70_reg_924 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_70_reg_924 <= {{bytePlanes_plane0_dout[207:200]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_71_reg_929 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_71_reg_929 <= {{bytePlanes_plane0_dout[215:208]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_72_reg_934 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_72_reg_934 <= {{bytePlanes_plane0_dout[223:216]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_73_reg_939 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_73_reg_939 <= {{bytePlanes_plane0_dout[231:224]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_74_reg_944 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_74_reg_944 <= {{bytePlanes_plane0_dout[239:232]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_75_reg_949 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_75_reg_949 <= {{bytePlanes_plane0_dout[247:240]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        tmp_76_reg_954 <= 8'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            tmp_76_reg_954 <= {{bytePlanes_plane0_dout[255:248]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        x_1_fu_194 <= 12'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            if (((icmp_ln1072_fu_287_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                x_1_fu_194 <= x_6_fu_281_p2;
            end else if ((ap_loop_init == 1'b1)) begin
                x_1_fu_194 <= 12'd0;
            end
        end
    end
end

always @ (*) begin
    if (((icmp_ln1072_fu_287_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_x = 12'd0;
    end else begin
        ap_sig_allocacmp_x = x_1_fu_194;
    end
end

always @ (*) begin
    if (((icmp_ln1072_reg_819 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bytePlanes_plane0_blk_n = bytePlanes_plane0_empty_n;
    end else begin
        bytePlanes_plane0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln1072_reg_819 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bytePlanes_plane0_read = 1'b1;
    end else begin
        bytePlanes_plane0_read = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_predicate_op98_write_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln1072_reg_819 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln1088_1_reg_827 == 1'd1)) | ((icmp_ln1072_reg_819 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (or_ln1088_reg_823 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0) & (or_ln1088_3_reg_835 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        img_blk_n = img_full_n;
    end else begin
        img_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (or_ln1088_3_reg_835 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        img_din = zext_ln1089_3_fu_800_p1;
    end else if (((ap_predicate_op98_write_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage3_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        img_din = zext_ln1089_2_fu_763_p1;
    end else if (((1'b0 == ap_block_pp0_stage2_01001) & (ap_predicate_op93_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        img_din = zext_ln1089_1_fu_726_p1;
    end else if (((1'b0 == ap_block_pp0_stage1_01001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_op64_write_state2 == 1'b1))) begin
        img_din = zext_ln1089_fu_449_p1;
    end else begin
        img_din = 'bx;
    end
end

always @ (*) begin
    if ((((ap_predicate_op98_write_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_predicate_op93_write_state3 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_op64_write_state2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (or_ln1088_3_reg_835 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        img_write = 1'b1;
    end else begin
        img_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state5_pp0_stage0_iter1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state5_pp0_stage0_iter1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state5_pp0_stage0_iter1));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_01001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage1_iter0));
end

always @ (*) begin
    ap_block_pp0_stage1_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage1_iter0));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage1_iter0));
end

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage2_01001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage2_iter0));
end

always @ (*) begin
    ap_block_pp0_stage2_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage2_iter0));
end

always @ (*) begin
    ap_block_pp0_stage2_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage2_iter0));
end

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage3_01001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage3_iter0));
end

always @ (*) begin
    ap_block_pp0_stage3_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage3_iter0));
end

always @ (*) begin
    ap_block_pp0_stage3_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage3_iter0));
end

always @ (*) begin
    ap_block_state2_pp0_stage1_iter0 = (((img_full_n == 1'b0) & (ap_predicate_op64_write_state2 == 1'b1)) | ((bytePlanes_plane0_empty_n == 1'b0) & (icmp_ln1072_reg_819 == 1'd0)));
end

always @ (*) begin
    ap_block_state3_pp0_stage2_iter0 = ((img_full_n == 1'b0) & (ap_predicate_op93_write_state3 == 1'b1));
end

always @ (*) begin
    ap_block_state4_pp0_stage3_iter0 = ((ap_predicate_op98_write_state4 == 1'b1) & (img_full_n == 1'b0));
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter1 = ((or_ln1088_3_reg_835 == 1'd1) & (img_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

always @ (*) begin
    ap_predicate_op64_write_state2 = ((icmp_ln1072_reg_819 == 1'd0) & (or_ln1088_reg_823 == 1'd1));
end

always @ (*) begin
    ap_predicate_op93_write_state3 = ((icmp_ln1072_reg_819 == 1'd0) & (or_ln1088_1_reg_827 == 1'd1));
end

always @ (*) begin
    ap_predicate_op98_write_state4 = ((or_ln1088_2_reg_831 == 1'd1) & (icmp_ln1072_reg_819 == 1'd0));
end

assign cmp221_fu_297_p2 = (($signed(zext_ln1072_fu_293_p1) < $signed(sub220_cast_cast_fu_259_p1)) ? 1'b1 : 1'b0);

assign icmp_ln1072_fu_287_p2 = ((ap_sig_allocacmp_x == trunc_ln1059_2) ? 1'b1 : 1'b0);

assign or_ln1088_1_fu_309_p2 = (icmp19 | cmp221_fu_297_p2);

assign or_ln1088_2_fu_315_p2 = (cmp224_2 | cmp221_fu_297_p2);

assign or_ln1088_3_fu_321_p2 = (icmp_ln1062 | cmp221_fu_297_p2);

assign or_ln1088_fu_303_p2 = (cmp224 | cmp221_fu_297_p2);

assign sub220_cast_cast_fu_259_p1 = $signed(sub220_cast);

assign tmp_17_fu_343_p4 = {{bytePlanes_plane0_dout[15:8]}};

assign tmp_18_fu_353_p4 = {{bytePlanes_plane0_dout[23:16]}};

assign tmp_19_fu_363_p4 = {{bytePlanes_plane0_dout[31:24]}};

assign tmp_1_fu_413_p17 = {{{{{{{{{{{{{{{{tmp_31_fu_403_p4}, {2'd0}}, {tmp_30_fu_393_p4}}, {12'd0}}, {tmp_29_fu_383_p4}}, {2'd0}}, {tmp_28_fu_373_p4}}, {12'd0}}, {tmp_19_fu_363_p4}}, {2'd0}}, {tmp_18_fu_353_p4}}, {12'd0}}, {tmp_17_fu_343_p4}}, {2'd0}}, {trunc_ln1083_fu_339_p1}}, {2'd0}};

assign tmp_28_fu_373_p4 = {{bytePlanes_plane0_dout[39:32]}};

assign tmp_29_fu_383_p4 = {{bytePlanes_plane0_dout[47:40]}};

assign tmp_30_fu_393_p4 = {{bytePlanes_plane0_dout[55:48]}};

assign tmp_31_fu_403_p4 = {{bytePlanes_plane0_dout[63:56]}};

assign tmp_62_fu_735_p17 = {{{{{{{{{{{{{{{{tmp_48_reg_914}, {2'd0}}, {tmp_47_reg_909}}, {12'd0}}, {tmp_46_reg_904}}, {2'd0}}, {tmp_45_reg_899}}, {12'd0}}, {tmp_44_reg_894}}, {2'd0}}, {tmp_43_reg_889}}, {12'd0}}, {tmp_42_reg_884}}, {2'd0}}, {tmp_41_reg_879}}, {2'd0}};

assign tmp_6_fu_698_p17 = {{{{{{{{{{{{{{{{tmp_40_reg_874}, {2'd0}}, {tmp_39_reg_869}}, {12'd0}}, {tmp_38_reg_864}}, {2'd0}}, {tmp_37_reg_859}}, {12'd0}}, {tmp_35_reg_854}}, {2'd0}}, {tmp_34_reg_849}}, {12'd0}}, {tmp_33_reg_844}}, {2'd0}}, {tmp_32_reg_839}}, {2'd0}};

assign tmp_92_fu_772_p17 = {{{{{{{{{{{{{{{{tmp_76_reg_954}, {2'd0}}, {tmp_75_reg_949}}, {12'd0}}, {tmp_74_reg_944}}, {2'd0}}, {tmp_73_reg_939}}, {12'd0}}, {tmp_72_reg_934}}, {2'd0}}, {tmp_71_reg_929}}, {12'd0}}, {tmp_70_reg_924}}, {2'd0}}, {tmp_69_reg_919}}, {2'd0}};

assign trunc_ln1083_fu_339_p1 = bytePlanes_plane0_dout[7:0];

assign x_6_fu_281_p2 = (ap_sig_allocacmp_x + 12'd1);

assign zext_ln1072_fu_293_p1 = ap_sig_allocacmp_x;

assign zext_ln1089_1_fu_726_p1 = tmp_6_fu_698_p17;

assign zext_ln1089_2_fu_763_p1 = tmp_62_fu_735_p17;

assign zext_ln1089_3_fu_800_p1 = tmp_92_fu_772_p17;

assign zext_ln1089_fu_449_p1 = tmp_1_fu_413_p17;

endmodule //dpss_vck190_pt_v_frmbuf_rd_0_0_Bytes2MultiPixStream_Pipeline_VITIS_LOOP_1072_6
