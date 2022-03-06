module getbin(
	input iClk,
	input [31:0] iMagnitude,
	input [31:0] iDiff,
	
	output [31:0] oLeftBin,
	output [31:0] oRightBin

);

	wire [31:0] sizeBin;
	assign sizeBin = 32'h41a00000; // 20 degrees.
	
	wire [31:0] oPercent;
	
	FPU percent
		(
		.clk(iClk), 
		.rmode(2'b00), 
		.fpu_op(3'b011), 
		.opa(iDiff), 
		.opb(sizeBin), 
		.out(oPercent), 
		.inf(), 
		.snan(), 
		.qnan(), 
		.ine(), 
		.overflow(), 
		.underflow(), 
		.zero(), 
		.div_by_zero()
		);
		
		FPU rightbin
		(
		.clk(iClk), 
		.rmode(2'b00), 
		.fpu_op(3'b010), 
		.opa(oPercent), 
		.opb(iMagnitude), 
		.out(oRightBin), 
		.inf(), 
		.snan(), 
		.qnan(), 
		.ine(), 
		.overflow(), 
		.underflow(), 
		.zero(), 
		.div_by_zero()
		);
		
		FPU leftbin
		(
		.clk(iClk), 
		.rmode(2'b00), 
		.fpu_op(3'b001), 
		.opa(iMagnitude), 
		.opb(oRightBin), 
		.out(oLeftBin), 
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
