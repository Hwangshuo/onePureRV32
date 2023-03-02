`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 24.02.2023 11:18:31
// Design Name:
// Module Name: tb
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


module tb();
    
    reg clk;
    reg rst_n;
    reg[`RAM_WIDTH-1:0] mem_wdata_init_o;
    reg [`RAM_ADDR_WIDTH-1:0]mem_waddr_init_o;
    reg mem_wen_init_o;
    reg [`RAM_WIDTH-1:0]program[1023:0];
    reg debug_rst_n_o;
    
    initial begin
        rst_n         = 0;
        clk           = 0;
        debug_rst_n_o = 0;
        program[0]    = 32'h130101FE;
        program[1]    = 32'h232E8100;
        program[2]    = 32'h13040102;
        program[3]    = 32'h93071000;
        program[4]    = 32'h2326F4FE;
        program[5]    = 32'h8327C4FE;
        program[6]    = 32'h13850700;
        program[7]    = 32'h0324C101;
        program[8]    = 32'h13010102;
        program[9]    = 32'h67800000;
        #300
        @(negedge clk);
        debug_rst_n_o = 1;
        @(negedge clk);
        rst_n <= 1;
    end
    integer i = 0;
    always @(posedge clk)
    begin
        if (rst_n == 0)
        begin
            mem_wdata_init_o <= program[i];
            mem_waddr_init_o <= i*4;
            mem_wen_init_o   <= 1;
            i = i+1;
        end
        else
        begin
            mem_wdata_init_o <= 0;
            mem_waddr_init_o <= 0;
            mem_wen_init_o   <= 0;
        end
        
    end
    always #5 clk = ~clk;
    onePureRV32 onePureRV32_0( clk,
    rst_n,
    mem_wdata_init_o,
    mem_waddr_init_o,
    mem_wen_init_o,
    debug_rst_n_o);
endmodule
