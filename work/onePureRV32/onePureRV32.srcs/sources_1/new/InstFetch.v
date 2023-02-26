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
//IR_raddr_oIR_o
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

`include "define.v"
module InstFetch(input clk,
                 input rst_n,
                 input [`PC_WIDTH-1:0]Inst_raddr_i,              //from pc_reg
                 output reg [`INST_WIDTH-1:0] Inst_o,            //to IR
                 input IF_start_in,                              //from controller
                 output reg takeInsFinish_o,                     //to controller
                 input [`RAM_WIDTH-1:0] Inst_i,                  //from ram
                 output reg Inst_ren_o,                          //to ram_controller
                 output reg [`RAM_ADDR_WIDTH-1:0] Inst_raddr_o);
    
    
    
    reg [1:0] IF_count;
    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n)
        begin
            IF_count <= 0;
        end
        else
        begin
            if (IF_start_in == 1)
            begin
                if (IF_count == 2)begin
                    IF_count        <= 0;
                    takeInsFinish_o <= 1;
                    Inst_ren_o      <= 0;
                    Inst_raddr_o    <= 0;
                    Inst_o          <= Inst_i;
                end
                else if (IF_count == 1)begin
                    IF_count        <= IF_count+1;
                    takeInsFinish_o <= 0;
                    Inst_ren_o      <= 0;
                    Inst_raddr_o    <= 0;
                    Inst_o          <= 0;
                end
                else
                begin
                    IF_count        <= IF_count+1;
                    takeInsFinish_o <= 0;
                    Inst_ren_o      <= 1;
                    Inst_raddr_o    <= Inst_raddr_i;
                    Inst_o          <= 0;
                end
                
            end
            else
            begin
                IF_count        <= 0;
                takeInsFinish_o <= 0;
                Inst_ren_o      <= 0;
                Inst_raddr_o    <= 0;
                Inst_o          <= 0;
            end
            
        end
    end
    
endmodule
