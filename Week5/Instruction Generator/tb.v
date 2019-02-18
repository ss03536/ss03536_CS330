module tb
(

);
	reg[31:0] Instruction;
	wire[63:0] imm_data;
        
	InstructionG i
	(
		.Instruction(Instruction),
		.imm_data(imm_data)
	);
	
	initial
	Instruction = 32'b00000010001011010100010000101110;
	
  initial
  begin
  #100 Instruction = 32'b11100010001011010100010000111111;  
  #300 Instruction = 32'b11100010001011010100010000000000;
  end
	
	initial
	$monitor("Time = ",$time, "---> Output = %d",imm_data);
endmodule
