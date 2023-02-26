`include "define.v"



module RamController (input clk,
                       input rst_n,
                       input wire[2:0] state_i,                  //from Controller
                       input Inst_ren_i,                         //from InstFetch
                       input [`RAM_ADDR_WIDTH-1:0] Inst_raddr_i,
                       output reg [`RAM_WIDTH-1:0] Inst_o,       //to InstFetch
                       input[`RAM_WIDTH-1:0] mem_wdata_i,        //from MemAccess
                       input [`RAM_ADDR_WIDTH-1:0]mem_raddr_i,
                       input [`RAM_ADDR_WIDTH-1:0]mem_waddr_i,
                       input mem_wen_i,
                       input mem_ren_i,
                       output reg [`RAM_WIDTH-1:0] mem_rdata_o,  //to MemAccess
                       output reg wen_o,                             //to RAM
                       output reg [`RAM_ADDR_WIDTH-1:0] waddr_o,
                       output reg [`RAM_WIDTH-1:0] wdata_o,
                       output reg ren_o,
                       output reg [`RAM_ADDR_WIDTH-1:0] raddr_o,
                       input  [`RAM_WIDTH-1:0] rdata_i);
    
    
    
    
    //The value of PC may have two situations.
    always @ (*)
        begin case(state_i)
        `IF:
        begin
    
    Inst_o      = rdata_i;       //to InstFetch
    mem_rdata_o = 0;  //to MemAccess
    wen_o       = 0;                             //to RAM
    waddr_o     = 0;
    wdata_o     = 0;
    ren_o       = Inst_ren_i;
    raddr_o     = Inst_raddr_i;
    
    
    end
    `MEM:
    begin
    Inst_o      = 0;        //to InstFetch
    mem_rdata_o = rdata_i;  //to MemAccess
    wen_o       = mem_wen_i;                             //to RAM
    waddr_o     = mem_waddr_i;
    wdata_o     = mem_waddr_i;
    ren_o       = mem_ren_i;
    raddr_o     = mem_raddr_i;
    end
    default begin
    Inst_o      = 0;        //to InstFetch
    mem_rdata_o = 0;        //to MemAccess
    wen_o       = 0;        //to RAM
    waddr_o     = 0;
    wdata_o     = 0;
    ren_o       = 0;
    raddr_o     = 0;
    
    end
    endcase
    end
endmodule
