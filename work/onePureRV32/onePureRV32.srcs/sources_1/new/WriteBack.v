`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 24.02.2023 14:45:49
// Design Name:
// Module Name: InstFetch
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

`include "define.v"
module WriteBack(input clk,
                 input rst_n,                                 // from Controller
                 input jumpFlag_i,                            // from EXE
                 input [`PC_WIDTH-1:0]jumpAddr_i,
                 input incrFlag_i,
                 input [`RAM_WIDTH-1:0] mem_rdata_i,
                 input [`REG_WIDTH-1:0]reg_wdata_i,
                 input reg_wen_i,
                 input [`REG_ADDR_WIDTH-1:0]reg_waddr_i,
                 output reg reg_wen_o,                        //to reg_file
                 output reg [`REG_WIDTH-1:0]reg_wdata_o,
                 output reg [`REG_ADDR_WIDTH-1:0]reg_waddr_o,
                 output [`PC_WIDTH-1:0]jumpAddr_o,            //to PC_reg
                 output jumpFlag_o,
                 output incrFlag_o);
    assign jumpAddr_o  = jumpAddr_i;
    assign jumpFlag_o  = jumpFlag_i;
    assign incrFlag_o = incrFlag_i;
    always @(posedge clk or negedge rst_n)
    begin
        if (~rst_n)begin
            reg_wen_o   <= 0;
            reg_waddr_o <= 0;
            reg_wdata_o <= 0;
        end
        else begin
            if (reg_wen_i == 1)begin
                reg_wen_o   <= 1;
                reg_waddr_o <= reg_waddr_i;
                reg_wdata_o <= reg_wdata_i;
            end
            else begin
                reg_wen_o   <= 0;
                reg_waddr_o <= reg_waddr_i;
                reg_wdata_o <= reg_wdata_i;
            end
        end
    end
    
    
endmodule
