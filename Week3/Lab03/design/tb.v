module tb
(

);
	reg[63:0] Input0;
    	reg[63:0] Input1;
    	reg sel;
	wire[63:0] Output;
	
	mux m
	(
		.Input0(Input0),
		.Input1(Input1),
		.sel(sel),
		.Output(Output)
	);
	
	initial
	begin
		Input0 = 64'b1;
		Input1 = 64'b0;
		sel = 1'b0;
	end
	
	always
	#10 sel = ~sel;
	
	initial
	#25 Input0 = 64'b111;
	
	initial
	$monitor("Time = ",$time, "---> Output = %d",Output);
endmodule
