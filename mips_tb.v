 module mips_tb();
    
   reg clk, rst;
    
   mips U_MIPS(
      .clk(clk), .rst(rst)
   );
     
   initial begin
      $readmemh( "C:/Users/yelua/Desktop/MIPS_CPU/MIPS_5_pipe_line/test.txt" , U_MIPS.U_IM.imem ) ;
      $monitor("PC = 0x%8X, IR = %8X", U_MIPS.U_PC.PC,U_MIPS.U_PIPE_1_IF_ID_REG.ID_IrOut_r ); 
      clk = 0 ;
      rst = 0 ;
      #5 ;
      rst = 1 ;
      #20;
      // rst = 0 ;
   end
   
   always
	   #(50) clk = ~clk;
   
endmodule
