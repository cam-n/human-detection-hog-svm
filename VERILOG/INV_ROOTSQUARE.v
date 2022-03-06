module INV_ROOTSQUARE(
	
	input iClk,
	input [31:0]iNum,
	output [31:0]oResult
	//output reg iNumIsNegative
);

	wire [31:0] magic_number;
	wire [31:0] threehafts, x2;
	reg [31:0] y;
	wire [31:0] i;
	assign magic_number = 32'h5f3759df;
	assign threehafts = 32'h3fc00000; //1.5
	//assign x2 = 32'h3f000000; // 0.5
	
	FPU X2
		(
		.clk(iClk), 
		.rmode(2'b00), 
		.fpu_op(3'b010), 
		.opa(iNum), 
		.opb(32'h3f000000), 
		.out(x2), 
		.inf(), 
		.snan(), 
		.qnan(), 
		.ine(), 
		.overflow(), 
		.underflow(), 
		.zero(), 
		.div_by_zero()
		);
		
	
	always @ (iNum) begin
      	y = iNum >> 1;
	end
	
		assign i = magic_number - y;
		wire [31:0] yn;
		assign yn = i;
		
		wire [31:0] ynyn;
		FPU YnYn
		(
		.clk(iClk), 
		.rmode(2'b00), 
		.fpu_op(3'b010), 
		.opa(yn), 
		.opb(yn), 
		.out(ynyn), 
		.inf(), 
		.snan(), 
		.qnan(), 
		.ine(), 
		.overflow(), 
		.underflow(), 
		.zero(), 
		.div_by_zero()
		);
		
		wire [31:0] x2ynyn;
		FPU X2YnYn
		(
		.clk(iClk), 
		.rmode(2'b00), 
		.fpu_op(3'b010), 
		.opa(x2), 
		.opb(ynyn), 
		.out(x2ynyn), 
		.inf(), 
		.snan(), 
		.qnan(), 
		.ine(), 
		.overflow(), 
		.underflow(), 
		.zero(), 
		.div_by_zero()
		);
		
		wire [31:0] sum;
		FPU SUM
		(
		.clk(iClk), 
		.rmode(2'b00), 
		.fpu_op(3'b001), 
		.opa(threehafts), 
		.opb(x2ynyn), 
		.out(sum), 
		.inf(), 
		.snan(), 
		.qnan(), 
		.ine(), 
		.overflow(), 
		.underflow(), 
		.zero(), 
		.div_by_zero()
		);
		
		
		FPU result
		(
		.clk(iClk), 
		.rmode(2'b00), 
		.fpu_op(3'b010), 
		.opa(yn), 
		.opb(sum), 
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
