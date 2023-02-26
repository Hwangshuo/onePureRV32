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
    
    reg [`RAM_WIDTH-1:0] RAM_MEM [0:`RAM_DEPTH-1];
    
    always @(posedge clk or negedge rst_n) begin
        if (wen)
            RAM_MEM[waddr] <= wdata;
            end
            integer i;
            always @(posedge clk or negedge rst_n) begin
                if (!rst_n)begin
                    for(i = 0;i<128;i = i+1)
                        RAM_MEM[i] <= 0;
                end
                else
                    if (ren)
                        rdata <= RAM_MEM[raddr];
                        end
                
                endmodule
