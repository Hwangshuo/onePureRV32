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
module InstDecode(input clk,
                  input rst_n,
                  input [`INST_WIDTH-1:0] Inst_i,            //from InstFetch
                  output [`REG_ADDR_WIDTH-1:0] reg1_raddr_o, // to reg_file
                  output [`REG_ADDR_WIDTH-1:0] reg2_raddr_o,
                  output [`INST_WIDTH-1:0] Inst_o);
    
    
    
    
    
    wire[6:0] opcode;
    wire[2:0] funct3;
    wire[6:0] funct7;
    wire[4:0] rd;
    wire[4:0] rs1;
    wire[4:0] rs2;
    reg [`INST_WIDTH-1:0] Inst_o_r;
    reg [`REG_ADDR_WIDTH-1:0] reg1_raddr_o_r;// to reg_file
    reg [`REG_ADDR_WIDTH-1:0] reg2_raddr_o_r;
    reg [`REG_ADDR_WIDTH-1:0] reg1_raddr;
    reg [`REG_ADDR_WIDTH-1:0] reg2_raddr;
    
    //
    always @(posedge clk or negedge rst_n)
    begin
        if (~rst_n)
        begin
            Inst_o_r       <= 0;
            reg1_raddr_o_r <= 0;
            reg2_raddr_o_r <= 0;
        end
        else
        begin
            Inst_o_r       <= Inst_i;
            reg1_raddr_o_r <= reg1_raddr;
            reg2_raddr_o_r <= reg2_raddr;
        end
        
    end
    assign Inst_o       = Inst_o_r;
    assign reg1_raddr_o = reg1_raddr_o_r;
    assign reg2_raddr_o = reg2_raddr_o_r;
    assign opcode       = Inst_i[6:0];
    assign funct3       = Inst_i[14:12];
    assign funct7       = Inst_i[31:25];
    assign rd           = Inst_i[11:7];
    assign rs1          = Inst_i[19:15];
    assign rs2          = Inst_i[24:20];
    
    // ID stage  ,in this stage,we just compute the reg access
    always @(*)
    begin
        reg1_raddr = 0;
        reg2_raddr = 0;
        case (opcode)
            `INST_LUI: begin // U type inst
                reg1_raddr = 0;
                reg2_raddr = 0;
            end
            `INST_AUIPC: begin
                reg1_raddr = 0;
                reg2_raddr = 0;
            end
            `INST_JAL: begin// J type inst
                reg1_raddr = 0;
                reg2_raddr = 0;
            end
            
            `INST_JALR: begin
                reg1_raddr = 1;
                reg2_raddr = 0;
            end
            
            
            `INST_TYPE_B: begin// B type inst
                case(funct3)
                    `INST_BEQ:begin
                        reg1_raddr = rs1;
                        reg2_raddr = rs2;
                    end
                    `INST_BNE:begin
                        reg1_raddr = rs1;
                        reg2_raddr = rs2;
                    end
                    `INST_BLT:begin
                        reg1_raddr = rs1;
                        reg2_raddr = rs2;
                    end
                    `INST_BGE:begin
                        reg1_raddr = rs1;
                        reg2_raddr = rs2;
                    end
                    `INST_BLTU:begin
                        reg1_raddr = rs1;
                        reg2_raddr = rs2;
                    end
                    `INST_BGEU:begin
                        reg1_raddr = rs1;
                        reg2_raddr = rs2;
                    end
                    default:begin
                        reg1_raddr = 0;
                        reg2_raddr = 0;
                    end
                endcase
            end
            `INST_TYPE_L: begin// L type inst
                case(funct3)
                    `INST_LB:begin
                        reg1_raddr = rs1;
                        reg2_raddr = 0;
                    end
                    `INST_LH:begin
                        reg1_raddr = rs1;
                        reg2_raddr = 0;
                    end
                    `INST_LW:begin
                        reg1_raddr = rs1;
                        reg2_raddr = 0;
                    end
                    `INST_LBU:begin
                        reg1_raddr = rs1;
                        reg2_raddr = 0;
                    end
                    `INST_LHU:begin
                        reg1_raddr = rs1;
                        reg2_raddr = 0;
                    end
                    default:begin
                        reg1_raddr = 0;
                        reg2_raddr = 0;
                    end
                    
                endcase
            end
            `INST_TYPE_S: begin// S type inst
                case(funct3)
                    `INST_SB:begin
                        reg1_raddr = rs1;
                        reg2_raddr = 0;
                    end
                    `INST_SH:begin
                        reg1_raddr = rs1;
                        reg2_raddr = 0;
                    end
                    `INST_SW:begin
                        reg1_raddr = rs1;
                        reg2_raddr = 0;
                    end
                    default:begin
                        reg1_raddr = 0;
                        reg2_raddr = 0;
                    end
                endcase
            end
            `INST_TYPE_I: begin // I type inst
                case(funct3)
                    `INST_ADDI:begin
                        reg1_raddr = rs1;
                        reg2_raddr = 0;
                    end
                    `INST_SLTI:begin
                        reg1_raddr = rs1;
                        reg2_raddr = 0;
                    end
                    `INST_SLTIU:begin
                        reg1_raddr = rs1;
                        reg2_raddr = 0;
                    end
                    `INST_XORI:begin
                        reg1_raddr = rs1;
                        reg2_raddr = 0;
                    end
                    `INST_ORI:begin
                        reg1_raddr = rs1;
                        reg2_raddr = 0;
                    end
                    
                    `INST_ANDI:begin
                        reg1_raddr = rs1;
                        reg2_raddr = 0;
                    end
                    `INST_SLLI:begin
                        reg1_raddr = rs1;
                        reg2_raddr = 0;
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
                                reg1_raddr = 0;
                                reg2_raddr = 0;
                            end
                        endcase
                    end
                    default: begin
                        reg1_raddr = 0;
                        reg2_raddr = 0;
                    end
                endcase
            end
            `INST_TYPE_R: begin// R type inst
                case(funct3)
                    `INST_ADD_SUB:begin
                        case(funct7)
                            7'b0100000:begin  //ADD
                                reg1_raddr = rs1;
                                reg2_raddr = rs2;
                            end
                            7'b0000000:begin//SUB
                                reg1_raddr = rs1;
                                reg2_raddr = rs2;
                            end
                            default:begin
                                reg1_raddr = 0;
                                reg2_raddr = 0;
                            end
                        endcase
                    end
                    `INST_ADD_SUB:begin
                        reg1_raddr = rs1;
                        reg2_raddr = rs2;
                    end
                    `INST_SLL:begin
                        reg1_raddr = rs1;
                        reg2_raddr = rs2;
                    end
                    `INST_SLT:begin
                        reg1_raddr = rs1;
                        reg2_raddr = rs2;
                    end
                    `INST_SLTU:begin
                        reg1_raddr = rs1;
                        reg2_raddr = rs2;
                    end
                    `INST_XOR:begin
                        reg1_raddr = rs1;
                        reg2_raddr = rs2;
                    end
                    `INST_SR:begin
                        case(funct7)
                            7'b0000000:begin //SRL
                                reg1_raddr = rs1;
                                reg2_raddr = rs2;
                            end
                            7'b0100000:begin //SRA
                                reg1_raddr = rs1;
                                reg2_raddr = rs2;
                            end
                            default:begin
                                reg1_raddr = 0;
                                reg2_raddr = 0;
                            end
                        endcase
                    end
                    `INST_OR:begin
                        reg1_raddr = rs1;
                        reg2_raddr = rs2;
                    end
                    `INST_AND:begin
                        reg1_raddr = rs1;
                        reg2_raddr = rs2;
                    end
                    default:begin
                        reg1_raddr = 0;
                        reg2_raddr = 0;
                    end
                endcase
            end
            default:begin
            end
            
        endcase
        
    end
    
    
endmodule
