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
                 input [`PC_WIDTH-1:0] Inst_raddr_i,
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
                 output [`INST_WIDTH-1:0] Inst_o,
                 input [`PC_WIDTH-1:0] Inst_raddr_o);
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
    reg [`PC_WIDTH-1:0]Inst_raddr_o_r;
    
    assign Inst_o       = Inst_o_r;
    assign Inst_raddr_o = Inst_raddr_o_r;
    
    always  @(posedge clk or negedge rst_n)
    begin
        if (~rst_n)
        begin
            Inst_o_r       <= 0;
            Inst_raddr_o_r <= 0;
        end
        else
        begin
            Inst_o_r       <= Inst_i;
            Inst_raddr_o_r <= Inst_raddr_i;
        end
    end
    integer temp;
    always  @(posedge clk or negedge rst_n) //in this stage,we just
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
        temp        = 0;
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
                reg_wdata_o = {Inst_i[31:12],{12{1'b0}}};
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
                reg_wdata_o = {Inst_i[31:12],{12{1'b0}}}+Inst_raddr_i;
                reg_waddr_o = rd;
            end
            `INST_JAL: begin// J type inst
                jumpFlag_o  = 1;
                jumpAddr_o  = {{12{Inst_i[31]}},Inst_i[31],Inst_i[19:12],Inst_i[24:21],Inst_i[20]} +Inst_raddr_i;
                incrFlag_o  = 0;
                mem_wdata_o = 0;
                mem_raddr_o = 0;
                mem_waddr_o = 0;
                mem_wen_o   = 0;
                mem_ren_o   = 0;
                reg_wen_o   = 1;
                temp        = 0;
                reg_wdata_o = Inst_raddr_i+32'd4;
                reg_waddr_o = rd;
            end
            
            `INST_JALR: begin
                jumpFlag_o  = 1;
                jumpAddr_o  = ({{12{Inst_i[31]}},Inst_i[31:12]} +reg1_rdata_i)&32'hffff_fffe;
                incrFlag_o  = 0;
                mem_wdata_o = 0;
                mem_raddr_o = 0;
                mem_waddr_o = 0;
                mem_wen_o   = 0;
                mem_ren_o   = 0;
                reg_wen_o   = 1;
                temp        = 0;
                reg_wdata_o = Inst_raddr_i+32'd4;
                reg_waddr_o = rd;
            end
            
            
            `INST_TYPE_B: begin// B type inst
                case(funct3)
                    `INST_BEQ:begin
                        if (reg1_rdata_i == reg2_rdata_i)begin
                            jumpFlag_o = 1;
                            jumpAddr_o = Inst_i+{{20{Inst_i[31]}},Inst_i[31],Inst_i[7],Inst_i[30:25],Inst_i[11:8]} ;
                            incrFlag_o = 0;
                        end
                        else begin
                            jumpFlag_o = 0;
                            jumpAddr_o = 0 ;
                            incrFlag_o = 1;
                        end
                        mem_wdata_o = 0;
                        mem_raddr_o = 0;
                        mem_waddr_o = 0;
                        mem_wen_o   = 0;
                        mem_ren_o   = 0;
                        reg_wen_o   = 0;
                        reg_wdata_o = 0;
                        reg_waddr_o = 0;
                    end
                    `INST_BNE:begin
                        if (reg1_rdata_i != reg2_rdata_i)begin
                            jumpFlag_o = 1;
                            jumpAddr_o = Inst_i+{{20{Inst_i[31]}},Inst_i[31],Inst_i[7],Inst_i[30:25],Inst_i[11:8]} ;
                            incrFlag_o = 0;
                        end
                        else begin
                            jumpFlag_o = 0;
                            jumpAddr_o = 0 ;
                            incrFlag_o = 1;
                        end
                        mem_wdata_o = 0;
                        mem_raddr_o = 0;
                        mem_waddr_o = 0;
                        mem_wen_o   = 0;
                        mem_ren_o   = 0;
                        reg_wen_o   = 0;
                        reg_wdata_o = 0;
                        reg_waddr_o = 0;
                    end
                    `INST_BLT:begin
                        if (reg1_rdata_i < reg2_rdata_i)begin
                            jumpFlag_o = 1;
                            jumpAddr_o = Inst_raddr_i+{{20{Inst_i[31]}},Inst_i[31],Inst_i[7],Inst_i[30:25],Inst_i[11:8]} ;
                            incrFlag_o = 0;
                        end
                        else begin
                            jumpFlag_o = 0;
                            jumpAddr_o = 0 ;
                            incrFlag_o = 1;
                        end
                        mem_wdata_o = 0;
                        mem_raddr_o = 0;
                        mem_waddr_o = 0;
                        mem_wen_o   = 0;
                        mem_ren_o   = 0;
                        reg_wen_o   = 1;
                        reg_wdata_o = 0;
                        reg_waddr_o = 0;
                    end
                    `INST_BGE:begin
                        if (reg1_rdata_i >= reg2_rdata_i)begin
                            jumpFlag_o = 1;
                            jumpAddr_o = Inst_raddr_i+{{20{Inst_i[31]}},Inst_i[31],Inst_i[7],Inst_i[30:25],Inst_i[11:8]} ;
                            incrFlag_o = 0;
                        end
                        else begin
                            jumpFlag_o = 0;
                            jumpAddr_o = 0 ;
                            incrFlag_o = 1;
                        end
                        mem_wdata_o = 0;
                        mem_raddr_o = 0;
                        mem_waddr_o = 0;
                        mem_wen_o   = 0;
                        mem_ren_o   = 0;
                        reg_wen_o   = 0;
                        reg_wdata_o = 0;
                        reg_waddr_o = 0;
                    end
                    `INST_BLTU:begin
                        if (reg1_rdata_i < reg2_rdata_i)begin
                            jumpFlag_o = 1;
                            jumpAddr_o = Inst_raddr_i+{{20{Inst_i[31]}},Inst_i[31],Inst_i[7],Inst_i[30:25],Inst_i[11:8]} ;
                            incrFlag_o = 0;
                        end
                        else begin
                            jumpFlag_o = 0;
                            jumpAddr_o = 0 ;
                            incrFlag_o = 1;
                        end
                        mem_wdata_o = 0;
                        mem_raddr_o = 0;
                        mem_waddr_o = 0;
                        mem_wen_o   = 0;
                        mem_ren_o   = 0;
                        reg_wen_o   = 0;
                        reg_wdata_o = 0;
                        reg_waddr_o = 0;
                    end
                    `INST_BGEU:begin
                        if (reg1_rdata_i < reg2_rdata_i)begin
                            jumpFlag_o = 1;
                            jumpAddr_o = Inst_raddr_i+{{20{Inst_i[31]}},Inst_i[31],Inst_i[7],Inst_i[30:25],Inst_i[11:8]} ;
                            incrFlag_o = 0;
                        end
                        else begin
                            jumpFlag_o = 0;
                            jumpAddr_o = 0 ;
                            incrFlag_o = 1;
                        end
                        mem_wdata_o = 0;
                        mem_raddr_o = 0;
                        mem_waddr_o = 0;
                        mem_wen_o   = 0;
                        mem_ren_o   = 0;
                        reg_wen_o   = 0;
                        reg_wdata_o = 0;
                        reg_waddr_o = 0;
                    end
                    default:begin
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
                        mem_raddr_o = {{20{Inst_i[31]}},Inst_i[31:20]}+reg1_rdata_i;
                        mem_waddr_o = 0;
                        mem_wen_o   = 0;
                        mem_ren_o   = 1;
                        reg_wen_o   = 1;
                        reg_wdata_o = {24'b0,mem_raddr_o[7:0]};
                        reg_waddr_o = rd;
                    end
                    `INST_LH:begin
                        jumpFlag_o  = 0;
                        jumpAddr_o  = 0;
                        incrFlag_o  = 1;
                        mem_wdata_o = 0;
                        mem_raddr_o = {{20{Inst_i[31]}},Inst_i[31:20]}+reg1_rdata_i;
                        mem_waddr_o = 0;
                        mem_wen_o   = 0;
                        mem_ren_o   = 1;
                        reg_wen_o   = 1;
                        reg_wdata_o = {16'b0,mem_raddr_o[15:0]};
                        reg_waddr_o = rd;
                    end
                    `INST_LW:begin
                        jumpFlag_o  = 0;
                        jumpAddr_o  = 0;
                        incrFlag_o  = 1;
                        mem_wdata_o = 0;
                        mem_raddr_o = {{20{Inst_i[31]}},Inst_i[31:20]}+reg1_rdata_i;
                        mem_waddr_o = 0;
                        mem_wen_o   = 0;
                        mem_ren_o   = 1;
                        reg_wen_o   = 1;
                        reg_wdata_o = mem_raddr_o;
                        reg_waddr_o = rd;
                    end
                    `INST_LBU:begin
                        jumpFlag_o  = 0;
                        jumpAddr_o  = 0;
                        incrFlag_o  = 1;
                        mem_wdata_o = 0;
                        mem_raddr_o = {20'b0,Inst_i[31:20]}+reg1_rdata_i;
                        mem_waddr_o = 0;
                        mem_wen_o   = 0;
                        mem_ren_o   = 1;
                        reg_wen_o   = 1;
                        reg_wdata_o = {24'b0,mem_raddr_o[7:0]};
                        reg_waddr_o = rd;
                    end
                    `INST_LHU:begin
                        jumpFlag_o  = 0;
                        jumpAddr_o  = 0;
                        incrFlag_o  = 1;
                        mem_wdata_o = 0;
                        mem_raddr_o = {20'b0,Inst_i[31:20]}+reg1_rdata_i;
                        mem_waddr_o = 0;
                        mem_wen_o   = 0;
                        mem_ren_o   = 1;
                        reg_wen_o   = 1;
                        reg_wdata_o = {16'b0,mem_raddr_o[15:0]};
                        reg_waddr_o = rd;
                    end
                    default:begin
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
                    end
                    
                endcase
            end
            `INST_TYPE_S: begin// S type inst
                case(funct3)
                    `INST_SB:begin
                        jumpFlag_o  = 0;
                        jumpAddr_o  = 0;
                        incrFlag_o  = 1;
                        mem_wdata_o = reg2_rdata_i[7:0];
                        mem_raddr_o = 0;
                        mem_waddr_o = {{20{Inst_i[31]}},Inst_i[31:25],Inst_i[11:7]}+reg1_rdata_i;
                        mem_wen_o   = 1;
                        mem_ren_o   = 0;
                        reg_wen_o   = 0;
                        reg_wdata_o = 0;
                        reg_waddr_o = 0;
                    end
                    `INST_SH:begin
                        jumpFlag_o  = 0;
                        jumpAddr_o  = 0;
                        incrFlag_o  = 1;
                        mem_wdata_o = reg2_rdata_i[15:0];
                        mem_raddr_o = 0;
                        mem_waddr_o = {{20{Inst_i[31]}},Inst_i[31:25],Inst_i[11:7]}+reg1_rdata_i;
                        mem_wen_o   = 1;
                        mem_ren_o   = 0;
                        reg_wen_o   = 0;
                        reg_wdata_o = 0;
                        reg_waddr_o = 0;
                    end
                    `INST_SW:begin
                        jumpFlag_o  = 0;
                        jumpAddr_o  = 0;
                        incrFlag_o  = 1;
                        mem_wdata_o = reg2_rdata_i;
                        mem_raddr_o = 0;
                        mem_waddr_o = $signed({{20{Inst_i[31]}},Inst_i[31:25],Inst_i[11:7]})+ reg1_rdata_i;
                        mem_wen_o   = 1;
                        mem_ren_o   = 0;
                        reg_wen_o   = 0;
                        reg_wdata_o = 0;
                        reg_waddr_o = 0;
                    end
                    default:begin
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
                        reg_wdata_o = $signed({{20{Inst_i[31]}},Inst_i[31:20]})+ reg1_rdata_i;
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
                        reg_wdata_o = $signed({{20{Inst_i[31]}},Inst_i[31:20]}) >$signed(reg1_rdata_i)?32'd1:32'd0;
                        reg_waddr_o = rd;
                    end
                    `INST_SLTIU:begin
                        jumpFlag_o  = 0;
                        jumpAddr_o  = 0;
                        incrFlag_o  = 0;
                        mem_wdata_o = 0;
                        mem_raddr_o = 0;
                        mem_waddr_o = 0;
                        mem_wen_o   = 0;
                        mem_ren_o   = 0;
                        reg_wen_o   = 1;
                        reg_wdata_o = {{20{Inst_i[31]}},Inst_i[31:20]} >reg1_rdata_i?32'd1:32'd0;
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
                        reg_wdata_o = {{20{Inst_i[31]}},Inst_i[31:20]}^reg1_rdata_i;
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
                        reg_wdata_o = {{20{Inst_i[31]}},Inst_i[31:20]}|reg1_rdata_i;
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
                        reg_wdata_o = {{20{Inst_i[31]}},Inst_i[31:20]}&reg1_rdata_i;
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
                        reg_wdata_o = Inst_i[24]?(reg1_rdata_i<<Inst_i[24:20]):reg1_rdata_i;
                        reg_waddr_o = rd;
                    end
                    `INST_SRI:begin
                        case(funct7)
                            7'b0000000:begin //SRLI
                                jumpFlag_o  = 0;
                                jumpAddr_o  = 0;
                                incrFlag_o  = 1;
                                mem_wdata_o = 0;
                                mem_raddr_o = 0;
                                mem_waddr_o = 0;
                                mem_wen_o   = 0;
                                mem_ren_o   = 0;
                                reg_wen_o   = 1;
                                reg_wdata_o = Inst_i[24]?(reg1_rdata_i>>Inst_i[24:20]):reg1_rdata_i;
                                reg_waddr_o = rd;
                            end
                            7'b0100000:begin //SRAI
                                jumpFlag_o  = 0;
                                jumpAddr_o  = 0;
                                incrFlag_o  = 1;
                                mem_wdata_o = 0;
                                mem_raddr_o = 0;
                                mem_waddr_o = 0;
                                mem_wen_o   = 0;
                                mem_ren_o   = 0;
                                reg_wen_o   = 1;
                                reg_wdata_o = Inst_i[24]?(reg1_rdata_i>>>Inst_i[24:20]):reg1_rdata_i;
                                reg_waddr_o = rd;
                            end
                            default:begin
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
                            end
                        endcase
                    end
                    default: begin
                        jumpFlag_o  = 0;
                        jumpAddr_o  = 0;
                        incrFlag_o  = 0;
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
                                reg_wdata_o = reg1_rdata_i-reg2_rdata_i;
                                reg_waddr_o = rd;
                            end
                            default:begin
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
                            end
                        endcase
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
                        reg_wdata_o = reg1_rdata_i<<(reg1_rdata_i[4:0]);
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
                        reg_wdata_o = $signed(reg1_rdata_i)<$signed(reg2_rdata_i)?32'd1:32'd0;
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
                        reg_wdata_o = reg1_rdata_i<reg2_rdata_i?32'd1:32'd0;
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
                        reg_wdata_o = reg1_rdata_i^reg2_rdata_i;
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
                                reg_wdata_o = reg1_rdata_i>>(reg1_rdata_i[4:0]);
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
                                reg_wdata_o = reg1_rdata_i>>>(reg1_rdata_i[4:0]);
                                reg_waddr_o = rd;
                            end
                            default:begin
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
                        reg_wdata_o = reg1_rdata_i|reg2_rdata_i;
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
                        reg_wdata_o = reg1_rdata_i&reg2_rdata_i;
                        reg_waddr_o = rd;
                    end
                    default:begin
                        jumpFlag_o  = 0;
                        jumpAddr_o  = 0;
                        incrFlag_o  = 0;
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
            end
        endcase
    end
endmodule
