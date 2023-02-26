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
module Execution(input clk,
                 input rst_n,
                 input [`INST_WIDTH-1:0] Inst_i,              //from InstFetch
                 input [`REG_WIDTH-1:0] reg1_rdata_i,         //from reg_file
                 input [`REG_WIDTH-1:0] reg2_rdata_i,
                 output reg jumpFlag_o,                       // to MemAccess
                 output reg [`PC_WIDTH-1:0]jumpAddr_o,
                 output reg incrFlag_o,
                 output reg [`RAM_WIDTH-1:0]mem_wdata_o,
                 output reg [`RAM_ADDR_WIDTH-1:0]mem_raddr_o,
                 output reg [`RAM_ADDR_WIDTH-1:0]mem_waddr_o,
                 output reg mem_wen_o,
                 output reg mem_ren_o,
                 output reg reg_wen_o,
                 output reg [`REG_WIDTH-1:0]reg_wdata_o,
                 output reg [`REG_ADDR_WIDTH-1:0]reg_waddr_o,
                 output [`INST_WIDTH-1:0] Inst_o);
    wire[6:0] opcode;
    wire[2:0] funct3;
    wire[6:0] funct7;
    wire[4:0] rd;
    wire[4:0] rs1;
    wire[4:0] rs2;
    
    assign opcode = Inst_i[6:0];
    assign funct3 = Inst_i[14:12];
    assign funct7 = Inst_i[31:25];
    assign rd     = Inst_i[11:7];
    assign rs1    = Inst_i[19:15];
    assign rs2    = Inst_i[24:20];

    assign Inst_o=Inst_i;
    
    
    always  @(posedge clk or negedge rst_n)
    begin
        jumpFlag_o  = 0;
        jumpAddr_o  = 0;
        incrFlag_o  = 0;
        mem_wdata_o = 0;
        mem_raddr_o = 0;
        mem_waddr_o = 0;
        mem_wen_o   = 0;
        mem_ren_o   = 0;
        reg_wen_o   = 0;
        reg_wdata_o = 0;
        reg_waddr_o = 0;
        case (opcode)
            `INST_TYPE_R_M: begin
                if ((funct7 == 7'b0000000) || (funct7 == 7'b0100000)) begin
                    case (funct3)
                        `INST_ADD_SUB, `INST_SLL, `INST_SLT, `INST_SLTU, `INST_XOR, `INST_SR, `INST_OR, `INST_AND: begin
                            jumpFlag_o  = 0;
                            jumpAddr_o  = 0;
                            incrFlag_o  = 1;
                            mem_wdata_o = 0;
                            mem_raddr_o = 0;
                            mem_waddr_o = 0;
                            mem_wen_o   = 0;
                            mem_ren_o   = 0;
                            reg_wen_o   = 1;
                            reg_wdata_o = reg1_rdata_i+reg2_rdata_i;
                            reg_waddr_o = rd;
                        end
                        default: begin
                            
                        end
                    endcase
                end
            end
            default:begin
                jumpFlag_o  = 0;
                jumpAddr_o  = 0;
                incrFlag_o  = 0;
                mem_wdata_o = 0;
                mem_raddr_o = 0;
                mem_waddr_o = 0;
                mem_wen_o   = 0;
                reg_wdata_o = 0;
            end
            
        endcase
    end
endmodule
