`include "define.v"


module pc_reg(input wire clk,
              input wire rst_n,
              input wire[`PC_WIDTH-1:0] jumpAddr_i,    //from WB
              input jumpFlag_i,
              input incrFlag_i,
              output reg[`PC_WIDTH-1:0] Inst_raddr_o); //to InstFetch
    
    //The value of PC may have two situations.
    always @ (posedge clk)
    begin
        if (~rst_n)
        begin
            Inst_raddr_o <= `pcResetAddr;
        end
        else
        begin
            if (jumpFlag_i == 1)
            begin //EXE module got a new PC value.
                Inst_raddr_o <= jumpAddr_i;
            end
            else if (incrFlag_i==1)
            begin
                Inst_raddr_o <= Inst_raddr_o + 'd1; //PC is self-increasing, and the word length of cpu is 32, so it is increased by 2 at a time.
            end
            else
            begin
                Inst_raddr_o <= Inst_raddr_o;
            end
            
        end
    end
endmodule
