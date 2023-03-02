`timescale 1ns / 1ps

`include "define.v"

module onePureRV32(input clk,
                   input rst_n,
                   input[`RAM_WIDTH-1:0] mem_wdata_init_i,
                   input [`RAM_ADDR_WIDTH-1:0]mem_waddr_init_i,
                   input mem_wen_init_i,
                   input debug_rst_n_i);
    
    
    //Controller
    wire IF_start;
    wire MEM_start;
    wire [2:0] state;
    
    //InstFetch
    wire Inst_ren_IF;
    wire [`RAM_ADDR_WIDTH-1:0] Inst_raddr_IF;
    wire [`INST_WIDTH-1:0]Inst_IF;
    
    //InstDecode
    wire [`REG_ADDR_WIDTH-1:0] reg1_raddr_ID;
    wire [`REG_ADDR_WIDTH-1:0] reg2_raddr_ID;
    wire [`INST_WIDTH-1:0]Inst_ID;
    wire [`PC_WIDTH-1:0] Inst_raddr_ID;
    
    //PC_reg
    wire [`RAM_ADDR_WIDTH-1:0] Inst_raddr_PC;
    
    //Reg_file
    wire [`REG_WIDTH-1:0] reg1_rdata_REG;
    wire [`REG_WIDTH-1:0] reg2_rdata_REG;
    
    //RamController
    wire[`INST_WIDTH-1:0] Inst_RAMC;
    
    wire[`RAM_WIDTH-1:0] mem_rdata_RAMC;
    
    wire wen_RAMC;
    wire [`RAM_ADDR_WIDTH-1:0]waddr_RAMC;
    wire[`RAM_WIDTH-1:0] wdata_RAMC;
    wire ren_RAMC;
    wire [`RAM_ADDR_WIDTH-1:0]raddr_RAMC;
    
    //RAM
    
    wire [`RAM_WIDTH-1:0]rdata_RAM;
    
    //Execution
    wire [`PC_WIDTH-1:0] jumpAddr_EXE;
    wire jumpFlag_EXE;
    wire incrFlag_EXE;
    wire [`RAM_WIDTH-1:0] mem_wdata_EXE;
    wire [`RAM_ADDR_WIDTH-1:0]mem_raddr_EXE;
    wire [`RAM_ADDR_WIDTH-1:0]mem_waddr_EXE;
    wire mem_wen_EXE;
    wire mem_ren_EXE;
    wire reg_wen_EXE;
    wire reg_wen_EXE;
    wire [`RAM_WIDTH-1:0]reg_wdata_EXE;
    wire [`REG_ADDR_WIDTH-1:0]reg_waddr_EXE;
    wire [`INST_WIDTH-1:0]Inst_EXE;
    wire [`PC_WIDTH-1:0]Inst_raddr_EXE;
    
    //MemAccess
    wire memAccessFinish;
    
    wire [`PC_WIDTH-1:0] jumpAddr_MEM;
    wire jumpFlag_MEM;
    wire incrFlag_MEM;
    wire [`RAM_WIDTH-1:0] mem_rdata_MEM;
    wire reg_wen_MEM;
    wire [`RAM_WIDTH-1:0]reg_wdata_MEM;
    wire [`REG_ADDR_WIDTH-1:0]reg_waddr_MEM;
    
    wire [`RAM_WIDTH-1:0] mem_wdata_MEM;
    wire [`RAM_ADDR_WIDTH-1:0]mem_raddr_MEM;
    wire [`RAM_ADDR_WIDTH-1:0]mem_waddr_MEM;
    wire mem_wen_MEM;
    wire mem_ren_MEM;
    
    //WriteBack
    wire [`REG_WIDTH-1:0]reg_wdata_WB;
    wire reg_wen_WB;
    wire [`REG_ADDR_WIDTH-1:0]reg_waddr_WB;
    
    wire jumpFlag_WB;
    wire [`PC_WIDTH-1:0]jumpAddr_WB;
    wire incrFlag_WB;
    
    Controller Controller_0
    (.clk(clk),
    .rst_n(rst_n),
    .IF_start_o(IF_start),
    .takeInsFinish_i(takeInsFinish),
    .MEM_start_o(MEM_start),
    .memAccessFinish_i(memAccessFinish),
    .state_o(state));
    
    
    
    
    
    
    
    
    reg_file reg_file_0
    (
    .clk(clk),
    .rst_n(rst_n),
    .reg_wen_i(reg_wen_WB),
    .reg_waddr_i(reg_waddr_WB),
    .reg_wdata_i(reg_wdata_WB),
    .reg1_raddr_i(reg1_raddr_ID),
    .reg2_raddr_i(reg2_raddr_ID),
    .reg1_rdata_o(reg1_rdata_REG),
    .reg2_rdata_o(reg2_rdata_REG));
    
    
    pc_reg pc_reg_0
    (
    .clk(clk),
    .rst_n(rst_n),
    .jumpAddr_i(jumpAddr_WB),
    .jumpFlag_i(jumpFlag_WB),
    .incrFlag_i(incrFlag_WB),
    .Inst_raddr_o(Inst_raddr_PC));
    
    
    
    InstFetch InstFetch_0
    (
    .clk(clk),
    .rst_n(rst_n),
    .Inst_raddr_i(Inst_raddr_PC),
    .Inst_o(Inst_IF),
    .IF_start_in(IF_start),
    .takeInsFinish_o(takeInsFinish),
    .Inst_i(Inst_RAMC),
    .Inst_ren_o(Inst_ren_IF),
    .Inst_raddr_o(Inst_raddr_IF));
    
    
    InstDecode InstDecode_0
    (
    .clk(clk),
    .rst_n(rst_n),
    .Inst_i(Inst_IF),
    .Inst_raddr_i(Inst_raddr_IF),
    .reg1_raddr_o(reg1_raddr_ID),
    .reg2_raddr_o(reg2_raddr_ID),
    .Inst_o(Inst_ID),
    .Inst_raddr_o(Inst_raddr_ID));
    
    
    
    Execution Execution_0
    (
    .clk(clk),
    .rst_n(rst_n),
    .Inst_i(Inst_ID),
    .Inst_raddr_i(Inst_raddr_ID),
    .reg1_rdata_i(reg1_rdata_REG),
    .reg2_rdata_i(reg2_rdata_REG),
    .jumpFlag_o(jumpFlag_EXE),
    .jumpAddr_o(jumpAddr_EXE),
    .incrFlag_o(incrFlag_EXE),
    .mem_wdata_o(mem_wdata_EXE),
    .mem_raddr_o(mem_raddr_EXE),
    .mem_waddr_o(mem_waddr_EXE),
    .mem_wen_o(mem_wen_EXE),
    .mem_ren_o(mem_ren_EXE),
    .reg_wen_o(reg_wen_EXE),
    .reg_wdata_o(reg_wdata_EXE),
    .reg_waddr_o(reg_waddr_EXE),
    .Inst_o(Inst_EXE),
    .Inst_raddr_o(Inst_raddr_EXE));
    
    
    
    MemAccess MemAccess_0
    (
    .clk(clk),
    .rst_n(rst_n),
    .Inst_i(Inst_EXE),
    .jumpFlag_i(jumpFlag_EXE),
    .jumpAddr_i(jumpAddr_EXE),
    .incrFlag_i(incrFlag_EXE),
    .mem_wdata_i(mem_wdata_EXE),
    .mem_raddr_i(mem_raddr_EXE),
    .mem_waddr_i(mem_waddr_EXE),
    .mem_wen_i(mem_wen_EXE),
    .mem_ren_i(mem_ren_EXE),
    .reg_wen_i(reg_wen_EXE),
    .reg_wdata_i(reg_wdata_EXE),
    .reg_waddr_i(reg_waddr_EXE),
    .mem_wdata_o(mem_wdata_MEM),
    .mem_raddr_o(mem_raddr_MEM),
    .mem_waddr_o(mem_waddr_MEM),
    .mem_wen_o(mem_wen_MEM),
    .mem_ren_o(mem_ren_MEM),
    .mem_rdata_i(mem_rdata_RAMC),
    .jumpFlag_o(jumpFlag_MEM),
    .jumpAddr_o(jumpAddr_MEM),
    .incrFlag_o(incrFlag_MEM),
    .mem_rdata_o(mem_rdata_MEM),
    .reg_wdata_o(reg_wdata_MEM),
    .reg_wen_o(reg_wen_MEM),
    .reg_waddr_o(reg_waddr_MEM),
    .menAccessFinish_o(memAccessFinish),
    .MEM_start_i(MEM_start));
    
    
    
    WriteBack WriteBack_0
    (
    .clk(clk),
    .rst_n(rst_n),
    .jumpFlag_i(jumpFlag_MEM),
    .jumpAddr_i(jumpAddr_MEM),
    .incrFlag_i(incrFlag_MEM),
    .mem_rdata_i(mem_rdata_MEM),
    .reg_wdata_i(reg_wdata_MEM),
    .reg_wen_i(reg_wen_MEM),
    .reg_waddr_i(reg_waddr_MEM),
    .reg_wen_o(reg_wen_WB),
    .reg_wdata_o(reg_wdata_WB),
    .reg_waddr_o(reg_waddr_WB),
    .jumpAddr_o(jumpAddr_WB),
    .jumpFlag_o(jumpFlag_WB),
    .incrFlag_o(incrFlag_WB));
    
    // ram ram_0 (
    // .clka(clk),    // input wire clka
    // .wea(wen_RAMC),      // input wire [0 : 0] wea
    // .addra(waddr_RAMC),  // input wire [9 : 0] addra
    // .dina(wdata_RAMC),    // input wire [31 : 0] dina
    // .clkb(clk),    // input wire clkb
    // .enb(ren_RAMC),      // input wire enb
    // .addrb(raddr_RAMC),  // input wire [9 : 0] addrb
    // .doutb(rdata_RAM)  // output wire [31 : 0] doutb
    // );
    
    ram ram_0
    (
    .clk(clk),
    .rst_n(rst_n),
    .wen(wen_RAMC),
    .waddr(waddr_RAMC),
    .wdata(wdata_RAMC),
    .ren(ren_RAMC),
    .raddr(raddr_RAMC),
    .rdata(rdata_RAM));
    
    
    RamController RamController_0
    (
    .clk(clk),
    .rst_n(rst_n),
    .state_i(state),
    .Inst_ren_i(Inst_ren_IF),
    .Inst_raddr_i(Inst_raddr_IF),
    .Inst_o(Inst_RAMC),
    .mem_wdata_i(mem_wdata_MEM),
    .mem_raddr_i(mem_raddr_MEM),
    .mem_waddr_i(mem_waddr_MEM),
    .mem_wen_i(mem_wen_MEM),
    .mem_ren_i(mem_ren_MEM),
    .mem_rdata_o(mem_rdata_MEM),
    .wen_o(wen_RAMC),
    .waddr_o(waddr_RAMC),
    .wdata_o(wdata_RAMC),
    .ren_o(ren_RAMC),
    .raddr_o(raddr_RAMC),
    .rdata_i(rdata_RAM),
    .mem_wdata_init_i(mem_wdata_init_i),      //from Init
    .mem_waddr_init_i(mem_waddr_init_i),
    .mem_wen_init_i(mem_wen_init_i),
    .debug_rst_n_i(debug_rst_n_i));
    
    
    
endmodule
