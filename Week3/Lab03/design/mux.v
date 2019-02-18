module mux(Input0,Input1,sel,Output
    );

    input wire[63:0] Input0;
    input wire[63:0] Input1;
    input sel;
    output reg[63:0] Output;
    
    
    always @(sel or Input0 or Input1)
    begin
        if(sel == 0) 
            Output = Input0; 
        else
            Output = Input1;  
    end
    
endmodule