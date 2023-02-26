`include "define.v"

// ?????????????????????
module reg_file(input wire clk,
                input wire rst_n,
                input wire reg_wen_i,                         // from InstDecode
                input wire[`REG_ADDR_WIDTH-1:0] reg_waddr_i,
                input wire[`REG_WIDTH-1:0] reg_wdata_i,
                input wire[`REG_ADDR_WIDTH-1:0] reg1_raddr_i,
                input wire[`REG_ADDR_WIDTH-1:0] reg2_raddr_i,
                output reg[`REG_WIDTH-1:0] reg1_rdata_o,      // to Execute
                output reg[`REG_WIDTH-1:0] reg2_rdata_o);
    
    reg[`REG_WIDTH-1:0] regs[`REG_DEPTH - 1:0];
    
    integer  i;
    always @ (posedge clk or negedge rst_n) begin
        if(~rst_n)
        begin
            for(i=0;i<32;i=i+1)
            regs[i]<=i;
        end
        if ((reg_wen_i == 1) && (reg_waddr_i != 0)) begin
            regs[reg_waddr_i] <= reg_wdata_i;
            
        end
    end
    
    always @ (*) begin
        if (reg1_raddr_i == 0) begin
            reg1_rdata_o = 0;
            
            end else if (reg1_raddr_i == reg_waddr_i && reg_wen_i == 1) begin
            reg1_rdata_o = reg_wdata_i;
            end else begin
            reg1_rdata_o = regs[reg1_raddr_i];
        end
    end
    
    // ????????????2
    always @ (*) begin
        if (reg2_raddr_i == 0) begin
            reg2_rdata_o = 0;
            // ?????????????????????????????????????????????????????????????????????????????????
            end else if (reg2_raddr_i == reg_waddr_i && reg_wen_i == 1) begin
            reg2_rdata_o = reg_wdata_i;
            end else begin
            reg2_rdata_o = regs[reg2_raddr_i];
        end
    end
    
    
endmodule
