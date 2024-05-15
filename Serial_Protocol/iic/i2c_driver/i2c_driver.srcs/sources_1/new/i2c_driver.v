`timescale 1ns / 1ps

module i2c_driver(
    input             clk,
    input             rst,
    input             wr_req,
    input             rd_req,
    input             start,
    input       [7:0] dev_addr,
    input       [7:0] mem_addr,
    input       [7:0] wr_data,
    output reg  [7:0] rd_data,
    output reg        rd_done,
    output reg        wr_done,
    output reg        scl,
    inout             sda
    );
    
parameter    IDLE        = 9'b0_0000_0001;
parameter    WR_START    = 9'b0_0000_0010;
parameter    WR_DEV      = 9'b0_0000_0100;
parameter    WR_MEM      = 9'b0_0000_1000;
parameter    WR_DATA     = 9'b0_0001_0000;
parameter    RD_START    = 9'b0_0010_0000;
parameter    RD_DEV      = 9'b0_0100_0000;
parameter    RD_DATA     = 9'b0_1000_0000;
parameter    STOP        = 9'b1_0000_0000;

parameter    SYS_CYCLE   = 20;  // 1/20ns   = 50M
parameter    IIC_CYCLE   = 2500;// 1/2500ns = 400K
parameter    MAX         = (IIC_CYCLE/SYS_CYCLE) - 1;
parameter    T_HIGH      = 1000; //IIC PULL HIGH TIME
parameter    T_LOW       = 1500; //IIC PULL LOW  TIME
parameter    FLAG0       = ((T_HIGH/SYS_CYCLE)>>1) - 1; // HIGH END
parameter    FLAG1       = (T_HIGH/SYS_CYCLE) - 1;      // HIGH START
parameter    FLAG2       = (T_HIGH/SYS_CYCLE) + ((T_LOW/SYS_CYCLE)>>1) - 1; //LOW END
parameter    FLAG3       = (T_HIGH/SYS_CYCLE) + (T_LOW/SYS_CYCLE) - 1;      //LOW START

reg     [2:0]       cnt_freq;
wire                add_cnt_freq;
wire                end_cnt_freq;

reg     [5:0]       cnt_flag;
wire                add_cnt_flag;
wire                end_cnt_flag;
reg     [5:0]       x;

reg     [9:0]       cnt;
wire                add_cnt;
wire                end_cnt;

reg                 drive_flag;
reg     [8:0]       state;
reg                 work_flag;
reg                 wr_en;
reg     [7:0]       data_shift;
reg                 ack_flag;

reg                 wr_sda;
wire                rec_sda;

assign sda = wr_en ? wr_sda : 1'bz;
assign rec_sda = sda;

always@(posedge clk)begin
    if(rst)
        state <= IDLE;
    else
        case(state)
            IDLE:begin
                if(state==1'b1 && (wr_req==1'b1 || rd_req==1'b1))
                    state <= WR_START;
                else
                    state <= IDLE;
            end
            WR_START:begin
                if(cnt_flag=='d2 && drive_flag)
                    state <= WR_DEV;
                else
                    state <= WR_START;
            end
            WR_DEV:begin
                if(cnt_flag=='d35 && drive_flag && ack_flag==1'b1)
                    state <= WR_MEM;
                else
                    state <= WR_DEV;
            end
            WR_MEM:begin
                if(cnt_flag=='d35 && drive_flag && ack_flag==1'b1)begin
                    if(wr_req)
                        state <= WR_DATA;
                    else if(wr_req==1'b0 && rd_req==1'b1)
                        state <= RD_START;
                end
                else
                    state <= WR_MEM;
            end
            WR_DATA:begin
                if(cnt_flag=='d35 && drive_flag && ack_flag==1'b1)
                    state <= STOP;
                else
                    state <= WR_DATA;
            end
            RD_START:begin
                if(cnt_flag=='d3 && drive_flag && rd_req)
                    state <= RD_DEV;
                else
                    state <= RD_START;
            end
            RD_DEV:begin
                if(cnt_flag=='d35 && drive_flag && ack_flag==1'b1)
                    state <= RD_DATA;
                else
                    state <= RD_DEV;
            end
            RD_DATA:begin
                if(cnt_flag=='d35 && drive_flag && ack_flag==1'b1)
                    state <= STOP;
                else
                    state <= RD_DATA;
            end
            STOP:begin
                if(cnt_flag=='d3 && drive_flag)
                    state <= IDLE;
                else
                    state <= STOP;
            end
            default:
                state <= IDLE;
        endcase       
end

always@(posedge clk)begin
    if(rst)
        work_flag <= 1'b0;
    else if(state == WR_START)
        work_flag <= 1'b1;
    else if(wr_done==1'b1 || rd_done==1'b1)
        work_flag <= 1'b0;
end

always@(posedge clk)begin
    if(rst)
        cnt <= 0;
    else if(add_cnt)
        cnt <= end_cnt ? 0 : cnt + 1'b1;
    else
        cnt <= 'd0;
end

assign add_cnt = work_flag;
assign end_cnt = add_cnt && cnt == MAX;

always@(posedge clk)begin
    if(rst)
        drive_flag <= 1'b0;
    else if(cnt==FLAG0 || cnt==FLAG1 || cnt==FLAG2 || cnt==FLAG3)
        drive_flag <= 1'b1;
    else
        drive_flag <= 1'b0;
end

always@(posedge clk)begin
    if(rst)
        cnt_freq <= 1'b0;
    else if(work_flag == 1'b0)
        cnt_freq <= 'd0;
    else if(add_cnt_freq)
        cnt_freq <= end_cnt_freq ? 0 : cnt_freq + 1'b1;
    else
        cnt_freq <= cnt_freq;
end

assign add_cnt_freq = drive_flag;
assign end_cnt_freq = add_cnt_flag && cnt_freq == 4-1;

always@(posedge clk)begin
    if(rst)
        scl <= 1'b1;
    else if(work_flag == 1'b1)
        if(cnt_freq == 'd1 && drive_flag && state==STOP)
            scl <= 1'b1;
        if(cnt_freq == 'd1 && drive_flag && state!=STOP)
            scl <= 1'b0;
        else if(cnt_freq == 'd3 && drive_flag)
            scl <= 1'b1;
    else
        scl <= 1'b1;
end

always@(posedge clk)begin
    if(rst)
        cnt_flag <= 1'b0;
    else if(work_flag == 1'b0)
        cnt_freq <= 'd0;
    else if(add_cnt_flag)
        cnt_flag <= end_cnt_flag ? 0 : cnt_flag + 1'b1;
    else
        cnt_flag <= cnt_flag;
end

assign add_cnt_flag = drive_flag;
assign end_cnt_flag = add_cnt_flag && cnt_freq == x;

always@(*)begin
    case(state)
        IDLE        : x = 0;
        WR_START    : x = 3 - 1;
        WR_DEV,WR_MEM,WR_DATA,RD_DEV,RD_DATA : x = 36 - 1;
        RD_START    : x = 4 - 1;
        STOP        : x = 4 - 1;
        default     : x = 0;
    endcase
end

always@(posedge clk)begin
    if(rst)
        wr_en <= 1'b0;
    else if(state==WR_START || state==RD_START || state==STOP)
        wr_en <= 1'b1;
    else if(state==WR_DEV || state==WR_MEM || state==WR_DATA || state==RD_DEV)
        wr_en <= (cnt_flag < 'd32) ? 1'b1 : 1'b0;
    else if(state == RD_DATA)
        wr_en <= (cnt_flag < 'd32) ? 1'b0 : 1'b1;
    else
        wr_en <= 1'b0;    
end

always@(posedge clk)begin
    if(rst)
        data_shift <= 'd0;
    else begin
        case(state)
            IDLE        : 
                data_shift <= 'd0;
            WR_START    : 
                data_shift <= {dev_addr[7:1],1'b0};
            WR_DEV      :begin
                if(end_cnt_flag && ack_flag == 1'b1)
                    data_shift <= mem_addr;
                else if(cnt_flag < 'd32 && cnt_flag[1:0]==2'd3 && drive_flag)
                    data_shift <= {dev_addr[6:0],1'b0};
                end
            WR_MEM      :begin
                if(end_cnt_flag && ack_flag == 1'b1 && wr_req==1'b1)
                    data_shift <= wr_data;
                else if(cnt_flag < 'd32 && cnt_flag[1:0]==2'd3 && drive_flag)
                    data_shift <= {data_shift[6:0],1'b0};
            end
            WR_DATA      :begin
                if(cnt_flag < 'd32 && cnt_flag[1:0]==2'd3 && drive_flag)
                    data_shift <= {data_shift[6:0],1'b0};
                else 
                    data_shift <= data_shift;
            end  
            RD_START     :
                data_shift <= {dev_addr[7:1],1'b1};
            RD_DEV       :begin
                if(end_cnt_flag && ack_flag==1'b1)
                    data_shift <= 'd0;
                else if(cnt_flag<'d32 && cnt_flag[1:0]==2'd3 && drive_flag)
                    data_shift <= {data_shift[6:0],1'b0};
            end
            RD_DATA       :begin
                if(cnt_flag<'d32 && cnt_flag[1:0]==2'd1 && drive_flag)
                    data_shift <= {data_shift[6:0],rec_sda};
                else if(cnt_flag<'d32 && cnt_flag[1:0]==2'd3 && drive_flag)
                    data_shift <= data_shift;
            end
            default:
                data_shift <= data_shift;
        endcase
    end
end

always@(posedge clk)begin
    if(rst)
        wr_sda <= 1'b1;
    else begin
        case(state)
            WR_START:begin
                if(cnt_flag == 'd0 && drive_flag)
                    wr_sda <= 1'b0;
                else
                    wr_sda <= wr_sda;
            end
            WR_DEV,WR_MEM,WR_DATA,RD_DEV:begin
                wr_sda <= data_shift[7];
            end
            RD_START:begin
                if(wr_en==1'b1 && cnt_flag=='d0)
                    wr_sda <= 1'b1;
                else if(cnt_flag=='d1 && drive_flag)
                    wr_sda <= 1'b0;
            end
            STOP:begin
                if(cnt_flag=='d0 && wr_en)
                    wr_sda <= 1'b0;
                else if(cnt_flag=='d1 && drive_flag)
                    wr_sda <= 1'b1;
            end
            default:wr_sda <= 1'b1;
        endcase
    end
end

always@(posedge clk)begin
    if(rst)begin
        wr_done <= 1'b0;
        rd_done <= 1'b0;
    end
    else if(state==STOP && end_cnt_flag)begin
        if(wr_req)
            wr_done <= 1'b1;
        else if(wr_req==1'b0 && rd_req==1'b1)
            rd_done <= 1'b1;
    end
    else begin
        wr_done <= 1'b0;
        rd_done <= 1'b0;
    end
end

always@(posedge clk)begin
    if(rst)
        ack_flag <= 1'b0;
    else begin
        case(state)
            WR_DEV      :begin
                if(cnt_flag>='d32 && cnt_flag[1:0]=='d1 && drive_flag && sda==1'b0)
                    ack_flag <= 1'b1;
                else if(end_cnt_flag)
                    ack_flag <= 1'b0;
                end
            WR_MEM      :begin
                if(cnt_flag>='d32 && cnt_flag[1:0]=='d1 && drive_flag && sda==1'b0)
                    ack_flag <= 1'b1;
                else if(end_cnt_flag)
                    ack_flag <= 1'b0;
            end
            WR_DATA      :begin
                if(cnt_flag>='d32 && cnt_flag[1:0]=='d1 && drive_flag && sda==1'b0)
                    ack_flag <= 1'b1;
                else if(end_cnt_flag)
                    ack_flag <= 1'b0;
            end  
            RD_DEV       :begin
                if(cnt_flag>='d32 && cnt_flag[1:0]=='d1 && drive_flag && sda==1'b0)
                    ack_flag <= 1'b1;
                else if(end_cnt_flag)
                    ack_flag <= 1'b0;
            end
            RD_DATA       :begin
               if(cnt_flag>='d32 && cnt_flag[1:0]=='d1 && drive_flag && sda==1'b0)
                    ack_flag <= 1'b1;
                else if(end_cnt_flag)
                    ack_flag <= 1'b0;
            end
            default:
                ack_flag <= 1'b0;
        endcase
    end
end

always@(posedge clk)begin
    if(rst)
        rd_data <= 1'b0;
    else 
        rd_data <= rd_done ? data_shift : rd_data;
end

wire    [63:0]  probe0;

assign probe0 = {
    sda     ,
    wr_req  ,
    scl     ,
    wr_done ,
    wr_sda  ,
    ack_flag,
    state   ,
    dev_addr,
    mem_addr,
    wr_data ,
    rd_data 
};

ila_0 inst_ila0(
    .clk    (clk),
    .probe0 (probe0)
);



endmodule                
