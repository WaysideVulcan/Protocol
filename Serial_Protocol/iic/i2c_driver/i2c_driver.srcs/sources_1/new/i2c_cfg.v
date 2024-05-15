`timescale 1ns / 1ps
module i2c_cfg(
    input clk,
    input rst_n,
    output scl,
    inout sda
    );
    
parameter    IDLE        = 6'b00001;
parameter    WR_CHECK    = 6'b00001;
parameter    WRITE       = 6'b00001;
parameter    WAIT        = 6'b00001;
parameter    READ        = 6'b00001;

parameter    SYS_CYCLE   = 20;  // 1/20ns   = 50M
parameter    WAIT_TIME   = 20000000;
parameter    MAX_WAIT    = WAIT_TIME/SYS_CYCLE - 1;

reg          rd_req     ;
wire         rd_done    ;
wire  [7:0]  rd_data    ;
reg          wr_req     ;
wire         wr_done    ;
wire  [7:0]  wr_data    ;
wire  [7:0]  dev_addr   ;
wire  [7:0]  mem_addr   ;
wire         error      ;

reg   [24:0] cnt_wait   ;
reg          ready      ;

reg   [5:0]  state      ;
reg   [8:0]  wr_index   ;
reg   [8:0]  rd_index   ;
reg  [23:0]  lut_data   ;
reg          cfg_done   ;
reg          start      ;
wire         rst        ;

assign rst = ~rst_n;

always@(posedge clk)begin
    if(rst)
        state <= IDLE;
    else begin
        case(state)
            IDLE:
                state <= WR_CHECK;
            WR_CHECK:   begin
                if(cfg_done==1'b0 && ready)
                    state <= WRITE;
                else if(cfg_done)
                    state <= WAIT;
            end
            WRITE:   begin
                if(wr_done)
                    state <= WR_CHECK;
                else if(cfg_done)
                    state <= WR_CHECK;
                else
                    state <= WRITE;
            end
            WAIT:   begin
                if(cfg_done && ready)
                    state <= READ;
                else
                    state <= WAIT;
            end
            READ:   begin
                if(rd_done)
                    state <= IDLE;
                else
                    state <= READ;
            end
            default:state <= IDLE;
        endcase
    end
end

always@(posedge clk)begin
    if(rst)
        cnt_wait <= 'd0;
    else if(state==WR_CHECK || state==WAIT)
        cnt_wait <= (cnt_wait==MAX_WAIT) ? 'd0 : cnt_wait + 1'b1;
    else if(start)
        cnt_wait <= 'd0;    
end

always@(posedge clk)begin
    if(rst)
        ready <= 1'b0;
    else if(state==WR_CHECK || state==WAIT)
        ready <= (cnt_wait==MAX_WAIT) ? 1'b1 : ready;
    else if(start)
        ready <= 1'b0;    
end

always@(posedge clk)begin
    if(rst)
        lut_data <= 'ha00100;
    else if(cfg_done)begin
        case(wr_index)
            8'd0    :   lut_data    <= 'ha0_00_00;
            8'd1    :   lut_data    <= 'ha0_01_01;
            8'd2    :   lut_data    <= 'ha0_02_02;
            8'd3    :   lut_data    <= 'ha0_03_03;
            8'd4    :   lut_data    <= 'ha0_04_04;
            8'd5    :   lut_data    <= 'ha0_05_05;
            8'd6    :   lut_data    <= 'ha0_06_06;
            8'd7    :   lut_data    <= 'ha0_07_07;
            8'd8    :   lut_data    <= 'ha0_08_08;
            8'd9    :   lut_data    <= 'ha0_09_09;
            8'd10   :   lut_data    <= 'ha0_0A_0A;
            8'd11   :   lut_data    <= 'ha0_0B_0B;
            8'd12   :   lut_data    <= 'ha0_0C_0C;
            8'd13   :   lut_data    <= 'ha0_0D_0D;
            8'd14   :   lut_data    <= 'ha0_0E_0E;
            8'd15   :   lut_data    <= 'ha0_0F_0F;                        
            8'd16   :   lut_data    <= 'ha0_10_10;
            8'd17   :   lut_data    <= 'ha0_11_11;
            8'd18   :   lut_data    <= 'ha0_12_12;
            8'd19   :   lut_data    <= 'ha0_13_13;
            8'd20   :   lut_data    <= 'ha0_14_14;
            8'd21   :   lut_data    <= 'ha0_15_15;
            8'd22   :   lut_data    <= 'ha0_16_16;                        
            8'd23   :   lut_data    <= 'ha0_17_17;
            8'd24   :   lut_data    <= 'ha0_18_18;
            8'd25   :   lut_data    <= 'ha0_19_19;
            8'd26   :   lut_data    <= 'ha0_1A_1A;
            8'd27   :   lut_data    <= 'ha0_1B_1B;
            8'd28   :   lut_data    <= 'ha0_1C_1C;
            8'd29   :   lut_data    <= 'ha0_1D_1D;                        
            8'd30   :   lut_data    <= 'ha0_1E_1E;
            default :   lut_data    <= 'hFFFFFF;
        endcase
    end
    else if(cfg_done)begin
        case(rd_index)
            8'd0    :   lut_data    <= 'ha0_00_00;
            8'd1    :   lut_data    <= 'ha0_01_01;
            8'd2    :   lut_data    <= 'ha0_02_02;
            8'd3    :   lut_data    <= 'ha0_03_03;
            8'd4    :   lut_data    <= 'ha0_04_04;
            8'd5    :   lut_data    <= 'ha0_05_05;
            8'd6    :   lut_data    <= 'ha0_06_06;
            8'd7    :   lut_data    <= 'ha0_07_07;
            8'd8    :   lut_data    <= 'ha0_08_08;
            8'd9    :   lut_data    <= 'ha0_09_09;
            8'd10   :   lut_data    <= 'ha0_0A_0A;
            8'd11   :   lut_data    <= 'ha0_0B_0B;
            8'd12   :   lut_data    <= 'ha0_0C_0C;
            8'd13   :   lut_data    <= 'ha0_0D_0D;
            8'd14   :   lut_data    <= 'ha0_0E_0E;
            8'd15   :   lut_data    <= 'ha0_0F_0F;                        
            8'd16   :   lut_data    <= 'ha0_10_10;
            8'd17   :   lut_data    <= 'ha0_11_11;
            8'd18   :   lut_data    <= 'ha0_12_12;
            8'd19   :   lut_data    <= 'ha0_13_13;
            8'd20   :   lut_data    <= 'ha0_14_14;
            8'd21   :   lut_data    <= 'ha0_15_15;
            8'd22   :   lut_data    <= 'ha0_16_16;                        
            8'd23   :   lut_data    <= 'ha0_17_17;
            8'd24   :   lut_data    <= 'ha0_18_18;
            8'd25   :   lut_data    <= 'ha0_19_19;
            8'd26   :   lut_data    <= 'ha0_1A_1A;
            8'd27   :   lut_data    <= 'ha0_1B_1B;
            8'd28   :   lut_data    <= 'ha0_1C_1C;
            8'd29   :   lut_data    <= 'ha0_1D_1D;                        
            8'd30   :   lut_data    <= 'ha0_1E_1E;
            default :   lut_data    <= 'hFFFFFF;
        endcase
    end
end

assign {dev_addr,mem_addr,wr_data} = lut_data;

always@(posedge clk)begin
    if(rst)
        wr_index <= 'd0;
    else if(cfg_done)
        wr_index <= 'd0;
    else if(wr_done && cfg_done==1'b0)
        wr_index <= wr_index + 1'b1;
    else
        wr_index <= wr_index;
end

always@(posedge clk)begin
    if(rst)
        rd_index <= 'd0;
    else if(dev_addr==8'hff)
        rd_index <= rd_index;
    else if(rd_done && cfg_done==1'b1)
        rd_index <= rd_index + 1'b1;
    else
        rd_index <= rd_index;
end

always@(posedge clk)begin
    if(rst)
        wr_req <= 1'b0;
    else if(cfg_done)
        wr_req <= 1'b0;
    else if(wr_done)
        wr_req <= 1'b0;
    else if(state==WR_CHECK && cfg_done==1'b0 && ready && dev_addr!=8'hff)
        wr_req <= 1'b1;
    else
        wr_req <= wr_req;    
end

always@(posedge clk)begin
    if(rst)
        rd_req <= 1'b0;
    else if(dev_addr==8'hff && state==WAIT)
        rd_req <= 1'b0;
    else if(rd_done)
        rd_req <= 1'b0;
    else if(cfg_done && ready && dev_addr!=8'hff && state==WAIT)
        rd_req <= 1'b1;
    else
        rd_req <= rd_req;    
end

always@(posedge clk)begin
    if(rst)
        cfg_done <= 1'b0;
    else if(dev_addr==8'hff)
        cfg_done <= 1'b1;
end

always@(posedge clk)begin
    if(rst)
        start <= 1'b0;
    else if(state==WR_CHECK && cfg_done==1'b0 && ready && dev_addr!=8'hff)
        start <= 1'b1;
    else if(cfg_done && ready && state==WAIT && dev_addr!=8'hff)
        start <= 1'b1;
    else
        start <= 1'b0;
end

i2c_driver inst_i2c_driver(
    .clk        (clk),
    .rst        (rst),
    .wr_req     (wr_req),
    .rd_req     (rd_req),
    .start      (start),
    .dev_addr   (dev_addr),
    .mem_addr   (mem_addr),
    .wr_data    (wr_data),
    .rd_data    (rd_data),
    .rd_done    (rd_done),
    .wr_done    (wr_done),
    .scl        (scl),
    .sda        (sda)    
);

wire    [127:0] probe0;

assign probe0 = {
    rd_done ,
    wr_done ,
    cfg_done,
    wr_req  ,
    rd_req  ,
    state   ,
    rd_index,
    wr_index,
    rd_data ,
    wr_data ,
    lut_data
};

ila_i2c inst_ila_i2c(
    .clk    (clk),
    .probe0 (probe0)
);
endmodule
