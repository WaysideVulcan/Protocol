`timescale 1ns / 1ps
module rd_image(
    input  wire          clk,
    input  wire          rst,
    input  wire          rd_req,
    output wire [23:0]   rd_data
    );
parameter   STOP_ADDR = 256*256-1;

reg  [15:0]  rd_addr;
wire [23:0]  dout;

assign rd_data = dout;

always@(posedge clk)begin
    if(rst)
        rd_addr <= 'd0;
    else if(rd_req == 1'b1)
        rd_addr <= (rd_addr == STOP_ADDR) ? 'd0 : rd_addr + 1'b1;
end

rom_ip inst_rom(
    .clka(clk),
    .addra(rd_addr),
    .douta(dout)
);
endmodule
