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
    
    // ID statge
    always @(*)
    begin
        reg1_raddr = 0;
        reg2_raddr = 0;
        case (opcode)
            
            `INST_TYPE_R_M: begin
                if ((funct7 == 7'b0000000) || (funct7 == 7'b0100000)) begin
                    case (funct3)
                        `INST_ADD_SUB, `INST_SLL, `INST_SLT, `INST_SLTU, `INST_XOR, `INST_SR, `INST_OR, `INST_AND: begin
                            reg1_raddr = rs1;
                            reg2_raddr = rs2;
                        end
                        default: begin
                            reg1_raddr = 0;
                            reg2_raddr = 0;
                        end
                    endcase
                end
            end
            // else if (funct7 == 7'b0000001) begin
                //     case (funct3)
                //         `INST_MUL, `INST_MULHU, `INST_MULH, `INST_MULHSU: begin
                    //             reg_wen_o    = `WriteEnable;
                    //             reg_waddr_o  = rd;
                    //             reg1_raddr_o = rs1;
                    //             reg2_raddr_o = rs2;
                    //             op1_o        = reg1_rdata_i;
                    //             op2_o        = reg2_rdata_i;
                //         end
                //         `INST_DIV, `INST_DIVU, `INST_REM, `INST_REMU: begin
                    //             reg_wen_o    = `WriteDisable;
                    //             reg_waddr_o  = rd;
                    //             reg1_raddr_o = rs1;
                    //             reg2_raddr_o = rs2;
                    //             op1_o        = reg1_rdata_i;
                    //             op2_o        = reg2_rdata_i;
                    //             op1_jump_o   = inst_addr_i;
                    //             op2_jump_o   = 32'h4;
                //         end
                //         default: begin
                    //             reg_wen_o    = `WriteDisable;
                    //             reg_waddr_o  = `ZeroReg;
                    //             reg1_raddr_o = `ZeroReg;
                    //             reg2_raddr_o = `ZeroReg;
                //         end
                //     endcase
                //     end else begin
                    //         reg_wen_o    = `WriteDisable;
                    //         reg_waddr_o  = `ZeroReg;
                    //         reg1_raddr_o = `ZeroReg;
                    //         reg2_raddr_o = `ZeroReg;
                //     end
            // end
            // `INST_TYPE_L: begin
                //     case (funct3)
                //         `INST_LB, `INST_LH, `INST_LW, `INST_LBU, `INST_LHU: begin
                    //             reg1_raddr_o = rs1;
                    //             reg2_raddr_o = `ZeroReg;
                    //             reg_wen_o    = `WriteEnable;
                    //             reg_waddr_o  = rd;
                    //             op1_o        = reg1_rdata_i;
                    //             op2_o        = {{20{inst_i[31]}}, inst_i[31:20]};
                //         end
                //         default: begin
                    //             reg1_raddr_o = `ZeroReg;
                    //             reg2_raddr_o = `ZeroReg;
                    //             reg_wen_o    = `WriteDisable;
                    //             reg_waddr_o  = `ZeroReg;
                //         end
                //     endcase
            // end
            // `INST_TYPE_S: begin
                //     case (funct3)
                //         `INST_SB, `INST_SW, `INST_SH: begin
                    //             reg1_raddr_o = rs1;
                    //             reg2_raddr_o = rs2;
                    //             reg_wen_o    = `WriteDisable;
                    //             reg_waddr_o  = `ZeroReg;
                    //             op1_o        = reg1_rdata_i;
                    //             op2_o        = {{20{inst_i[31]}}, inst_i[31:25], inst_i[11:7]};
                //         end
                //         default: begin
                    //             reg1_raddr_o = `ZeroReg;
                    //             reg2_raddr_o = `ZeroReg;
                    //             reg_wen_o    = `WriteDisable;
                    //             reg_waddr_o  = `ZeroReg;
                //         end
                //     endcase
            // end
            // `INST_TYPE_B: begin
                //     case (funct3)
                //         `INST_BEQ, `INST_BNE, `INST_BLT, `INST_BGE, `INST_BLTU, `INST_BGEU: begin
                    //             reg1_raddr_o = rs1;
                    //             reg2_raddr_o = rs2;
                    //             reg_wen_o    = `WriteDisable;
                    //             reg_waddr_o  = `ZeroReg;
                    //             op1_o        = reg1_rdata_i;
                    //             op2_o        = reg2_rdata_i;
                    //             op1_jump_o   = inst_addr_i;
                    //             op2_jump_o   = {{20{inst_i[31]}}, inst_i[7], inst_i[30:25], inst_i[11:8], 1'b0};
                //         end
                //         default: begin
                    //             reg1_raddr_o = `ZeroReg;
                    //             reg2_raddr_o = `ZeroReg;
                    //             reg_wen_o    = `WriteDisable;
                    //             reg_waddr_o  = `ZeroReg;
                //         end
                //     endcase
            // end
            // `INST_JAL: begin
                //     reg_wen_o    = `WriteEnable;
                //     reg_waddr_o  = rd;
                //     reg1_raddr_o = `ZeroReg;
                //     reg2_raddr_o = `ZeroReg;
                //     op1_o        = inst_addr_i;
                //     op2_o        = 32'h4;
                //     op1_jump_o   = inst_addr_i;
                //     op2_jump_o   = {{12{inst_i[31]}}, inst_i[19:12], inst_i[20], inst_i[30:21], 1'b0};
            // end
            // `INST_JALR: begin
                //     reg_wen_o    = `WriteEnable;
                //     reg1_raddr_o = rs1;
                //     reg2_raddr_o = `ZeroReg;
                //     reg_waddr_o  = rd;
                //     op1_o        = inst_addr_i;
                //     op2_o        = 32'h4;
                //     op1_jump_o   = reg1_rdata_i;
                //     op2_jump_o   = {{20{inst_i[31]}}, inst_i[31:20]};
            // end
            // `INST_LUI: begin
                //     reg_wen_o    = `WriteEnable;
                //     reg_waddr_o  = rd;
                //     reg1_raddr_o = `ZeroReg;
                //     reg2_raddr_o = `ZeroReg;
                //     op1_o        = {inst_i[31:12], 12'b0};
                //     op2_o        = `ZeroWord;
            // end
            // `INST_AUIPC: begin
                //     reg_wen_o    = `WriteEnable;
                //     reg_waddr_o  = rd;
                //     reg1_raddr_o = `ZeroReg;
                //     reg2_raddr_o = `ZeroReg;
                //     op1_o        = inst_addr_i;
                //     op2_o        = {inst_i[31:12], 12'b0};
            // end
            // `INST_NOP_OP: begin
                //     reg_wen_o    = `WriteDisable;
                //     reg_waddr_o  = `ZeroReg;
                //     reg1_raddr_o = `ZeroReg;
                //     reg2_raddr_o = `ZeroReg;
            // end
            // `INST_FENCE: begin
                //     reg_wen_o    = `WriteDisable;
                //     reg_waddr_o  = `ZeroReg;
                //     reg1_raddr_o = `ZeroReg;
                //     reg2_raddr_o = `ZeroReg;
                //     op1_jump_o   = inst_addr_i;
                //     op2_jump_o   = 32'h4;
            // end
            // `INST_CSR: begin
                //     reg_wen_o    = `WriteDisable;
                //     reg_waddr_o  = `ZeroReg;
                //     reg1_raddr_o = `ZeroReg;
                //     reg2_raddr_o = `ZeroReg;
                //     csr_raddr_o  = {20'h0, inst_i[31:20]};
                //     csr_waddr_o  = {20'h0, inst_i[31:20]};
                //     case (funct3)
                //         `INST_CSRRW, `INST_CSRRS, `INST_CSRRC: begin
                    //             reg1_raddr_o = rs1;
                    //             reg2_raddr_o = `ZeroReg;
                    //             reg_wen_o    = `WriteEnable;
                    //             reg_waddr_o  = rd;
                    //             csr_we_o     = `WriteEnable;
                //         end
                //         `INST_CSRRWI, `INST_CSRRSI, `INST_CSRRCI: begin
                    //             reg1_raddr_o = `ZeroReg;
                    //             reg2_raddr_o = `ZeroReg;
                    //             reg_wen_o    = `WriteEnable;
                    //             reg_waddr_o  = rd;
                    //             csr_we_o     = `WriteEnable;
                //         end
                //         default: begin
                    //             reg_wen_o    = `WriteDisable;
                    //             reg_waddr_o  = `ZeroReg;
                    //             reg1_raddr_o = `ZeroReg;
                    //             reg2_raddr_o = `ZeroReg;
                    //             csr_we_o     = `WriteDisable;
                //         end
                //     endcase
            // end
            // `INST_TYPE_I: begin
                //     case (funct3)
                //         `INST_ADDI, `INST_SLTI, `INST_SLTIU, `INST_XORI, `INST_ORI, `INST_ANDI, `INST_SLLI, `INST_SRI: begin
                    //             reg_wen_o    = `WriteEnable;
                    //             reg_waddr_o  = rd;
                    //             reg1_raddr_o = rs1;
                    //             reg2_raddr_o = `ZeroReg;
                    //             op1_o        = reg1_rdata_i;
                    //             op2_o        = {{20{inst_i[31]}}, inst_i[31:20]};
                //         end
                //         default: begin
                    //             reg_wen_o    = `WriteDisable;
                    //             reg_waddr_o  = `ZeroReg;
                    //             reg1_raddr_o = `ZeroReg;
                    //             reg2_raddr_o = `ZeroReg;
                //         end
                //     endcase
            // end
            // default: begin
                //     reg_wen_o    = `WriteDisable;
                //     reg_waddr_o  = `ZeroReg;
                //     reg1_raddr_o = `ZeroReg;
                //     reg2_raddr_o = `ZeroReg;
            // end
        endcase
        
    end
    
    
endmodule
