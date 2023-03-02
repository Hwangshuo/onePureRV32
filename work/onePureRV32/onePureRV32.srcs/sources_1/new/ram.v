`timescale 1ns / 1ps

`include "define.v"

module ram (input clk,
            input rst_n,
            input wen,
            input [`RAM_ADDR_WIDTH-1:0] waddr,
            input [`RAM_WIDTH-1:0] wdata,
            input ren,
            input [`RAM_ADDR_WIDTH-1:0] raddr,
            output reg [`RAM_WIDTH-1:0] rdata);
    
    reg [7:0] RAM_MEM [`RAM_DEPTH-1:0];
    
    always @(posedge clk or negedge rst_n) begin
        if (wen)begin
            RAM_MEM[waddr+3]   <= wdata[7:0];
            RAM_MEM[waddr+2] <= wdata[15:8];
            RAM_MEM[waddr+1] <= wdata[23:16];
            RAM_MEM[waddr] <= wdata[31:24];
        end
    end
    integer i;
    always @(posedge clk or negedge rst_n) begin
        if (ren)begin
            rdata <= {RAM_MEM[raddr],RAM_MEM[raddr+1],RAM_MEM[raddr+2],RAM_MEM[raddr+3]};
        end
    end
    
endmodule
