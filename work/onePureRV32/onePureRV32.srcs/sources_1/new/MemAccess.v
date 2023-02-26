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
module MemAccess(input clk,
                 input rst_n,
                 input [`REG_WIDTH-1:0] Inst_i,               //from InstFetch
                 input jumpFlag_i,                            //from EXE
                 input [`PC_WIDTH-1:0]jumpAddr_i,
                 input incrFlag_i,
                 input [`RAM_WIDTH-1:0]mem_wdata_i,
                 input [`RAM_ADDR_WIDTH-1:0]mem_raddr_i,
                 input [`RAM_ADDR_WIDTH-1:0]mem_waddr_i,
                 input mem_wen_i,
                 input mem_ren_i,
                 input reg_wen_i,
                 input [`REG_WIDTH-1:0]reg_wdata_i,
                 input [`REG_ADDR_WIDTH-1:0]reg_waddr_i,
                 output reg [`RAM_WIDTH-1:0]mem_wdata_o,      //to ram_controller
                 output reg [`RAM_ADDR_WIDTH-1:0]mem_raddr_o,
                 output reg [`RAM_ADDR_WIDTH-1:0]mem_waddr_o,
                 output reg mem_wen_o,
                 output reg mem_ren_o,
                 input [`RAM_WIDTH-1:0]mem_rdata_i,           //from ram_controller
                 output reg jumpFlag_o,                       //to WB
                 output reg [`PC_WIDTH-1:0]jumpAddr_o,
                 output reg incrFlag_o,
                 output reg[`RAM_WIDTH-1:0] mem_rdata_o,
                 output reg [`REG_WIDTH-1:0]reg_wdata_o,
                 output reg reg_wen_o,
                 output reg [`REG_ADDR_WIDTH-1:0]reg_waddr_o,
                 output reg menAccessFinish_o,                //to Controllel
                 input MEM_start_i);                          //from Controllel
    
    
    
    always @(posedge clk or negedge rst_n)
    begin
        if (~rst_n)
        begin
            jumpFlag_o  <= 0;                           //to WB
            jumpAddr_o  <= 0;
            incrFlag_o  <= 0;
            reg_wdata_o <= 0;
            reg_wen_o   <= 0;
            reg_waddr_o <= 0;
        end
        else begin
            if (MEM_start_i == 0&&menAccessFinish_o == 0)
            begin
                jumpFlag_o  <= jumpFlag_i;                           //to WB
                jumpAddr_o  <= jumpAddr_i;
                incrFlag_o  <= incrFlag_i;
                reg_wdata_o <= reg_wdata_i;
                reg_wen_o   <= reg_wen_i;
                reg_waddr_o <= reg_waddr_i;
            end
            else if (MEM_start_i == 1&&menAccessFinish_o == 0) begin
                jumpFlag_o  <= jumpFlag_o;                           //to WB
                jumpAddr_o  <= jumpAddr_o;
                incrFlag_o  <= incrFlag_o;
                reg_wdata_o <= reg_wdata_o;
                reg_wen_o   <= reg_wen_o;
                reg_waddr_o <= reg_waddr_o;
            end
            else begin
                jumpFlag_o  <= 0;                           //to WB
                jumpAddr_o  <= 0;
                incrFlag_o  <= 0;
                reg_wdata_o <= 0;
                reg_wen_o   <= 0;
                reg_waddr_o <= 0;
            end
        end
    end
    reg [1:0] MEM_count;
    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n)
        begin
            MEM_count <= 0;
        end
        else
        begin
            case ({MEM_start_i,mem_wen_i,mem_ren_i})
                3'b100   : begin //no need to read or write memory
                    menAccessFinish_o = 1;
                    mem_wdata_o <= 0;
                    mem_raddr_o <= 0;
                    mem_waddr_o <= 0;
                    mem_wen_o   <= 0;
                    mem_ren_o   <= 0;
                    mem_rdata_o <= 0;
                end
                3'b101,3'b110   : begin // read or write memory
                    if (MEM_count == 2)begin
                        MEM_count         <= 0;
                        menAccessFinish_o <= 1;
                        mem_wdata_o       <= mem_wdata_i;
                        mem_raddr_o       <= mem_raddr_i;
                        mem_waddr_o       <= mem_waddr_i;
                        mem_wen_o         <= mem_wen_i;
                        mem_ren_o         <= mem_ren_i;
                        mem_rdata_o       <= mem_rdata_i;
                    end
                    else if (MEM_count == 1)begin
                        MEM_count         <= MEM_count+1;
                        menAccessFinish_o <= 0;
                        mem_wdata_o       <= mem_wdata_i;
                        mem_raddr_o       <= mem_raddr_i;
                        mem_waddr_o       <= mem_waddr_i;
                        mem_wen_o         <= mem_wen_i;
                        mem_ren_o         <= mem_ren_i;
                        mem_rdata_o       <= 0;
                    end
                    else if (MEM_count == 0)begin
                        MEM_count         <= MEM_count+1;
                        menAccessFinish_o <= 0;
                        mem_wdata_o       <= 0;
                        mem_raddr_o       <= 0;
                        mem_waddr_o       <= 0;
                        mem_wen_o         <= 0;
                        mem_ren_o         <= 0;
                        mem_rdata_o       <= 0;
                    end
                end
                default:begin
                    MEM_count         <= 0;
                    menAccessFinish_o <= 0;
                    mem_wdata_o       <= 0;
                    mem_raddr_o       <= 0;
                    mem_waddr_o       <= 0;
                    mem_wen_o         <= 0;
                    mem_ren_o         <= 0;
                    mem_rdata_o       <= 0;
                end
            endcase
        end
    end
    
endmodule
