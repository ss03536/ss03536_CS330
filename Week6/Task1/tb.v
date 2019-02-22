module tb
(

);
	reg a;
	reg b;
  reg CarryIn;
  reg [3:0] ALUOp;
	wire Result;
	wire CarryOut;
	
	ALU_1_bit m
	(
		.a(a),
		.b(b),
		.CarryIn(CarryIn),
		.ALUOp(ALUOp),
		.Result(Result),
		.CarryOut(CarryOut)
	);
	
	initial
	
	begin
		a = 1'b0;
		b = 1'b0;
		CarryIn = 1'b1;
		#200 ALUOp = 4'b0000;
		#200 ALUOp = 4'b0001;
		#200 ALUOp = 4'b0010;
		#200 ALUOp = 4'b0110;
		#200 ALUOp = 4'b1100;
  end
  
	initial
	$monitor("Time = ",$time, "---> Output = %d,%d",Result, CarryOut);
endmodule