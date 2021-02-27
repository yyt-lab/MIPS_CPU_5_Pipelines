module PIPE_4_MEM_WB_REG (
    input [31:0] MEM_DmResult,
    input [31:0] MEM_AluOut,
    input [31:2] MEM_PcAddOne,
    input [1:0]  MEM_WbSel,
    input [4:0]  MEM_Rw,
    input [31:0] MEM_Instr,
    input MEM_RfWr,
    input clk,

    output [31:0] WB_DmResult,
    output [31:0] WB_AluOut,
    output [31:2] WB_PcAddOne,
    output [1:0]  WB_WbSel,
    output [4:0]  WB_Rw,
    output [31:0] WB_Instr,
    output WB_RfWr // 
);
    reg [31:0] WB_DmResult_r;
    reg [31:0] WB_AluOut_r;
    reg [31:2] WB_PcAddOne_r;
    reg [1:0]  WB_WbSel_r;
    reg [4:0]  WB_Rw_r;
    reg [31:0] WB_Instr_r;
    reg  WB_RfWr_r;  

    always @(posedge clk) begin
        WB_DmResult_r <= MEM_DmResult;      
        WB_AluOut_r   <= MEM_AluOut;    
        WB_PcAddOne_r <= MEM_PcAddOne;      
        WB_WbSel_r    <= MEM_WbSel;   
        WB_Rw_r       <= MEM_Rw;
        WB_Instr_r    <= MEM_Instr;
        WB_RfWr_r     <= MEM_RfWr;
    end    
    assign WB_DmResult = WB_DmResult_r;
    assign WB_AluOut   = WB_AluOut_r;
    assign WB_PcAddOne = WB_PcAddOne_r;
    assign WB_WbSel    = WB_WbSel_r;
    assign WB_Rw       = WB_Rw_r;
    assign WB_Instr    = WB_Instr_r;
    assign WB_RfWr     = WB_RfWr_r;
endmodule