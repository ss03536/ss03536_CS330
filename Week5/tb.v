module tb
(

);
	reg[63:0] instruction;
	wire[6:0] opcode;
	wire[4:0] rd;
	wire[2:0] funct3;
	wire[4:0] rs1;
	wire[4:0] rs2;
	wire[6:0] funct7;
	
	instruction m
	(
		.instruction(instruction),
		.opcode(opcode),
		.rd(rd),
		.funct3(funct3),
		.rs1(rs1),
		.rs2(rs2),
		.funct7(funct7)
	);
	
	initial
	
		instruction = 32'b00000010001011010100010000101110;
	
	initial
	begin
	#300 instruction = 32'b00000010000010010100010000101111;
	
  #450 instruction = 32'b00000010000011010100000000001100;
end
	initial
	$monitor("Time = ",$time, "---> Output = %d,%d,%d,%d,%d,%d",opcode,rd,funct3,rs1,rs2,funct7);
endmodule