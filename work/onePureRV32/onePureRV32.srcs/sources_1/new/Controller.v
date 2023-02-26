`timescale 1ns / 1ps

`include "define.v"

module Controller(input clk,
                  input rst_n,
                  output reg IF_start_o,   //to InstFetch
                  input takeInsFinish_i,   //from InstFetch
                  output reg MEM_start_o,  //to MemAccess
                  input memAccessFinish_i, //from MemAccess
                  output [2:0] state_o);   //to ram_controller
    
    reg [3:0]   current_state;
    reg [3:0]   next_state;
    reg [1:0]   IF_count;
    
    assign state_o = current_state;
    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n)
        begin
            current_state <= `IF;
            next_state    <= `IF;
        end
        else
        begin
            current_state <= next_state;
        end
    end
    
    always @(*)
    begin
        case(current_state)
            `IF:begin
                if (takeInsFinish_i)
                begin
                    next_state  = `ID;
                    IF_start_o  = 0;
                    MEM_start_o = 0;
                end
                else
                begin
                    next_state  = `IF;
                    IF_start_o  = 1;
                    MEM_start_o = 0;
                end
            end
            `ID:begin
                IF_start_o  = 0;
                next_state  = `EXE;
                MEM_start_o = 0;
            end
            `EXE:begin
                IF_start_o  = 0;
                next_state  = `MEM;
                MEM_start_o = 0;
            end
            `MEM:begin
                if (memAccessFinish_i)
                begin
                    IF_start_o  = 0;
                    next_state  = `WB;
                    MEM_start_o = 0;
                    
                end
                else
                begin
                    IF_start_o  = 0;
                    next_state  = `MEM;
                    MEM_start_o = 1;
                end
            end
            `WB:begin
                IF_start_o  = 0;
                next_state  = `IF;
                MEM_start_o = 0;
                
            end
        endcase
    end
    
endmodule
