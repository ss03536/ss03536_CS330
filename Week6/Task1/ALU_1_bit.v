module ALU_1_bit (a, b,CarryIn,ALUOp,Result, CarryOut);
  input wire a;
  input wire b;
  input wire CarryIn;
  input wire[3:0] ALUOp;
  wire abar;
  wire bbar;
  wire mux1out;
  wire mux2out;
  wire Ainvert;
  wire Binvert;
  wire Operation[1:0];
  output reg Result;
  output reg CarryOut;
 
    assign Ainvert = ALUOp[3];
    assign Binvert = ALUOp[2];
    assign Operation[1] = ALUOp[1];
    assign Operation[0] = ALUOp[0];
    
    not not1 (abar, a);
    not not2 (abar, b);
    assign mux1out = Ainvert ? abar : a;
    assign mux2out = Binvert ? bbar : b;
    
    always @ ALUOp
    begin
    case(ALUOp)
      4'b0000 : Result = mux1out & mux2out;
      4'b0001 : Result = mux1out | mux2out;
      4'b0010 : begin
                assign Result = (a & ~b & ~CarryIn) | (~a & b & ~CarryIn) | (~a & ~b & CarryIn) | (a & b & CarryIn);
                assign CarryOut = (mux1out & CarryIn) | (mux2out & CarryIn) | (mux1out & mux2out);
                end
      4'b0110 : begin
                assign Result = (a & ~mux2out & CarryIn) | (~a & mux2out & CarryIn) | (~a & ~mux2out & ~CarryIn) | (a & mux2out & ~CarryIn);
                assign CarryOut = (mux1out & CarryIn) | (mux2out & CarryIn) | (mux1out & mux2out);
                end
      4'b1100 : begin
                Result = mux1out | mux2out;
                Result = ~Result;
                end 
  endcase
end
  
    
endmodule