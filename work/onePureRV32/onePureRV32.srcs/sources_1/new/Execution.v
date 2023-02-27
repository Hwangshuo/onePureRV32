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
    reg [`INST_WIDTH-1:0] Inst_o_r;
    assign Inst_o = Inst_o_r;
    
    always  @(posedge clk or negedge rst_n)
    begin
        if (~rst_n)
        begin
            Inst_o_r <= 0;
        end
        else
        begin
            Inst_o_r <= Inst_i;
        end
    end
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
            `INST_LUI: begin // U type inst
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
            `INST_AUIPC: begin
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
            `INST_JAL: begin// J type inst
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
            
            `INST_JALR: begin
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
            
            
            `INST_TYPE_B: begin// B type inst
                case(funct3)
                    `INST_BEQ:begin
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
                    `INST_BNE:begin
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
                    `INST_BLT:begin
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
                    `INST_BGE:begin
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
                    `INST_BLTU:begin
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
                    `INST_BGEU:begin
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
                    default:begin
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
                endcase
            end
            `INST_TYPE_L: begin// L type inst
                case(funct3)
                    `INST_LB:begin
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
                    `INST_LH:begin
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
                    `INST_LW:begin
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
                    `INST_LBU:begin
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
                    `INST_LHU:begin
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
                    default:begin
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
                    
                endcase
            end
            `INST_TYPE_S: begin// S type inst
                case(funct3)
                    `INST_SB:begin
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
                    `INST_SH:begin
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
                    `INST_SW:begin
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
                    default:begin
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
                endcase
            end
            `INST_TYPE_I: begin // I type inst
                case(funct3)
                    `INST_ADDI:begin
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
                    `INST_SLTI:begin
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
                    `INST_SLTIU:begin
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
                    `INST_XORI:begin
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
                    `INST_ORI:begin
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
                    
                    `INST_ANDI:begin
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
                    `INST_SLLI:begin
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
                    `INST_SRI:begin
                        case(funct7)
                            7'b0000000:begin //SRLI
                                reg1_raddr = rs1;
                                reg2_raddr = 0;
                            end
                            7'b0100000:begin //SRAI
                                reg1_raddr = rs1;
                                reg2_raddr = 0;
                            end
                            default:begin
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
                        endcase
                    end
                    default: begin
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
                endcase
            end
            `INST_TYPE_R: begin// R type inst
                case(funct3)
                    `INST_ADD_SUB:begin
                        case(funct7)
                            7'b0100000:begin  //ADD
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
                            7'b0000000:begin//SUB
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
                            default:begin
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
                        endcase
                    end
                    `INST_ADD_SUB:begin
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
                    `INST_SLL:begin
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
                    `INST_SLT:begin
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
                    `INST_SLTU:begin
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
                    `INST_XOR:begin
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
                    `INST_SR:begin
                        case(funct7)
                            7'b0000000:begin //SRL
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
                            7'b0100000:begin //SRA
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
                            default:begin
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
                        endcase
                    end
                    `INST_OR:begin
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
                    `INST_AND:begin
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
                    default:begin
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
                endcase
            end
            default:begin
            end
            
        endcase
        // case (opcode)
        //     `INST_TYPE_R_M: begin
        //         if ((funct7 == 7'b0000000) || (funct7 == 7'b0100000)) begin
        //             case (funct3)
        //                 `INST_ADD_SUB, `INST_SLL, `INST_SLT, `INST_SLTU, `INST_XOR, `INST_SR, `INST_OR, `INST_AND: begin
        //                     jumpFlag_o  = 0;
        //                     jumpAddr_o  = 0;
        //                     incrFlag_o  = 1;
        //                     mem_wdata_o = 0;
        //                     mem_raddr_o = 0;
        //                     mem_waddr_o = 0;
        //                     mem_wen_o   = 0;
        //                     mem_ren_o   = 0;
        //                     reg_wen_o   = 1;
        //                     reg_wdata_o = reg1_rdata_i+reg2_rdata_i;
        //                     reg_waddr_o = rd;
        //                 end
        //                 default: begin
        
        //                 end
        //             endcase
        //         end
        //     end
        //     default:begin
        //         jumpFlag_o  = 0;
        //         jumpAddr_o  = 0;
        //         incrFlag_o  = 0;
        //         mem_wdata_o = 0;
        //         mem_raddr_o = 0;
        //         mem_waddr_o = 0;
        //         mem_wen_o   = 0;
        //         reg_wdata_o = 0;
        //     end
        
        // endcase
    end
endmodule
