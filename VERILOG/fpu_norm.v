module fpu_norm(

	input iClk,
	input [1:0] op,
	input [31:0] opA, opB,
	
	output [31:0] oResult

);

	FPU fpu
		(
		.clk(iClk), 
		.rmode(2'b00), 
		.fpu_op({1'b0, op}), 
		.opa(opA), 
		.opb(opB), 
		.out(oResult), 
		.inf(), 
		.snan(), 
		.qnan(), 
		.ine(), 
		.overflow(), 
		.underflow(), 
		.zero(), 
		.div_by_zero()
		);

endmodule
