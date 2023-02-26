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


module tb(

    );
    
    reg clk;
    reg rst_n;
    initial begin
    
    rst_n=0;
    clk=0;
    #100
    @(negedge clk);
    rst_n<=1;
    end
    
    always #5 clk=~clk;
     onePureRV32 onePureRV32_0( clk,
                   rst_n);
endmodule
