`include "Ctrl_encoding_def.v"

module reg_file(reg_fileWr,Ra,Rb,Rw,busW,busB,busA,clk);
// reg_fileWr 写使能信号
input clk,reg_fileWr;
// Ra 源寄存器  Rb 暂存寄存器  Rw 目标寄存器
input [4:0] Ra,Rb,Rw;
// busw写入的值
input [31:0] busW;
// 数据输出
output [31:0] busA,busB;
// 实际的32*32寄存器堆
reg [31:0] reg_file [31:0];
initial begin
    reg_file[0]=32'b0;
end

always @(posedge clk) begin
    if (reg_fileWr==1'b1) begin
        reg_file[Rw]=busW;
    end
    else ;
    `ifdef DEBUG
            $display("R[00-07]=%8X, %8X, %8X, %8X, %8X, %8X, %8X, %8X",reg_file[0], reg_file[1], reg_file[2], reg_file[3], reg_file[4], reg_file[5], reg_file[6], reg_file[7]);
            $display("R[08-15]=%8X, %8X, %8X, %8X, %8X, %8X, %8X, %8X", reg_file[8], reg_file[9], reg_file[10], reg_file[11], reg_file[12], reg_file[13], reg_file[14], reg_file[15]);
            $display("R[16-23]=%8X, %8X, %8X, %8X, %8X, %8X, %8X, %8X", reg_file[16], reg_file[17], reg_file[18], reg_file[19], reg_file[20], reg_file[21], reg_file[22], reg_file[23]);
            $display("R[24-31]=%8X, %8X, %8X, %8X, %8X, %8X, %8X, %8X", reg_file[24], reg_file[25], reg_file[26], reg_file[27], reg_file[28], reg_file[29], reg_file[30], reg_file[31]<<2);
        `endif
end

assign busA=(Ra==5'd0) ? 32'd0:reg_file[Ra];
assign busB=(Rb==5'd0) ? 32'd0:reg_file[Rb];
endmodule