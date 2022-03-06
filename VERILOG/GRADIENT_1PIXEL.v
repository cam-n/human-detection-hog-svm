
module GRADIENT_1PIXEL(

	input iClk,
	input [7:0] iPixel1,
	input [7:0] iPixel2,
	input [7:0] iPixel3,
	input [7:0] iPixel4,
	
	output [31:0] oMagnitude,
	output [31:0] oAngle
);

	wire [31:0] K = 32'h3fd2c600; // K = 1.6467
	wire [31:0] dx, dy;
	
	wire [31:0] outXo, outYo, outZo;
	wire [31:0] outX1, outY1, outZ1;
	wire [31:0] outX2, outY2, outZ2;
	wire [31:0] outX3, outY3, outZ3;
	wire [31:0] outX4, outY4, outZ4;
	wire [31:0] outX5, outY5, outZ5;
	wire [31:0] outX6, outY6, outZ6;
	wire [31:0] outX7, outY7, outZ7;
	wire [31:0] outX8, outY8, outZ8;
	wire [31:0] outX9, outY9, outZ9;
	wire [31:0] outX10, outY10, outZ10;
	wire [31:0] outX11, outY11, outZ11;
	wire [31:0] outX12, outY12, outZ12;
	wire [31:0] outX13, outY13, outZ13;
	wire [31:0] outX14, outY14, outZ14;
	
	
	// Declare the beginning values
	wire [31:0]AngleTable0;
	wire [31:0]AngleTable1;
	wire [31:0]AngleTable2;
	wire [31:0]AngleTable3;
	wire [31:0]AngleTable4;
	wire [31:0]AngleTable5;
	wire [31:0]AngleTable6;
	wire [31:0]AngleTable7;
	wire [31:0]AngleTable8;
	wire [31:0]AngleTable9;
	wire [31:0]AngleTable10;
	wire [31:0]AngleTable11;
	wire [31:0]AngleTable12;
	wire [31:0]AngleTable13;
	wire [31:0]AngleTable14;
	
	assign AngleTable0 = 32'h42340000; // 45 degrees
	assign AngleTable1 = 32'h41d48570; // 26.56505118 degrees 
	assign AngleTable2 = 32'h416094e0; // 14.03624347 degrees
	assign AngleTable3 = 32'h40e40100; // 7.125016349 degrees
	assign AngleTable4 = 32'h4064e280; // 3.576334375 degrees
	assign AngleTable5 = 32'h3fe51b80; // 1.789910608 degrees
	assign AngleTable6 = 32'h3f652a00; // 0.89517371 degrees
	assign AngleTable7 = 32'h3ee52c00; // 0.447614171 degrees
	assign AngleTable8 = 32'h3e652c00; // 0.2238105 degrees
	assign AngleTable9 = 32'h3de52c00; // 0.111905677 degrees
	assign AngleTable10 = 32'h3d652800; // 0.055952892 degrees
	assign AngleTable11 = 32'h3ce52000; // 0.027976453 degrees
	assign AngleTable12 = 32'h3c652000; // 0.013988227 degrees
	assign AngleTable13 = 32'h3be52000; // 0.006994114 degrees
	assign AngleTable14 = 32'h3b650000; // 0.003497057 degrees
	
	wire [31:0] normalized_iPixel1;
	wire [31:0] normalized_iPixel2;
	wire [31:0] normalized_iPixel3;
	wire [31:0] normalized_iPixel4;
	
POS_INT2FP exchange1(.iPosINT(iPixel1), .oFP(normalized_iPixel1));
POS_INT2FP exchange2(.iPosINT(iPixel2), .oFP(normalized_iPixel2));
POS_INT2FP exchange3(.iPosINT(iPixel3), .oFP(normalized_iPixel3));
POS_INT2FP exchange4(.iPosINT(iPixel4), .oFP(normalized_iPixel4));
		
		// Compute the dx
		FPU Dx
		(
		.clk(iClk), 
		.rmode(2'b00), 
		.fpu_op(3'b001), 
		.opa(normalized_iPixel2), 
		.opb(normalized_iPixel1), 
		.out(dx), 
		.inf(), 
		.snan(), 
		.qnan(), 
		.ine(), 
		.overflow(), 
		.underflow(), 
		.zero(), 
		.div_by_zero()
		);
		
		// Compute the dy
		FPU Dy
		(
		.clk(iClk), 
		.rmode(2'b00), 
		.fpu_op(3'b001), 
		.opa(normalized_iPixel4), 
		.opb(normalized_iPixel3), 
		.out(dy), 
		.inf(), 
		.snan(), 
		.qnan(), 
		.ine(), 
		.overflow(), 
		.underflow(), 
		.zero(), 
		.div_by_zero()
		);
		
		wire normalized_sign_dx;
		wire normalized_sign_dy;
		
		assign normalized_sign_dx = (dx[31] != dy[31]) ? 1'b0 : 1'b0;
		assign normalized_sign_dy = (dx[31] != dy[31]) ? 1'b1 : 1'b0;
		
		
 gradient gradient0(
	 .clk(iClk),
	 .iN_Shift(4'd0),
	 .xo({normalized_sign_dx, dx[30:0]}), 
	 .yo({normalized_sign_dy, dy[30:0]}), 
	 .zo(32'h00000000),
	 .AngleIn(AngleTable0),
	 .x(outXo), 
	 .y(outYo), 
	 .z(outZo)	
);
gradient gradient1(
	 .clk(iClk),
	 .iN_Shift(4'd1),
	 .xo(outXo), 
	 .yo(outYo), 
	 .zo(outZo),
	 .AngleIn(AngleTable1),
	 .x(outX1), 
	 .y(outY1), 
	 .z(outZ1)
);
gradient gradient2(
	 .clk(iClk),
	 .iN_Shift(4'd2),
	 .xo(outX1), 
	 .yo(outY1), 
	 .zo(outZ1),
	 .AngleIn(AngleTable2),
	 .x(outX2), 
	 .y(outY2), 
	 .z(outZ2)
);
gradient gradient3(
	 .clk(iClk),
	 .iN_Shift(4'd3),
	 .xo(outX2), 
	 .yo(outY2), 
	 .zo(outZ2),
	 .AngleIn(AngleTable3),
	 .x(outX3), 
	 .y(outY3), 
	 .z(outZ3)
);
gradient gradient4(
	 .clk(iClk),
	 .iN_Shift(4'd4),
	 .xo(outX3), 
	 .yo(outY3), 
	 .zo(outZ3),
	 .AngleIn(AngleTable4),
	 .x(outX4), 
	 .y(outY4), 
	 .z(outZ4)
);
gradient gradient5(
	 .clk(iClk),
	 .iN_Shift(4'd5),
	 .xo(outX4), 
	 .yo(outY4), 
	 .zo(outZ4),
	 .AngleIn(AngleTable5),
	 .x(outX5), 
	 .y(outY5), 
	 .z(outZ5)
);
gradient gradient6(
	 .clk(iClk),
	 .iN_Shift(4'd6),
	 .xo(outX5), 
	 .yo(outY5), 
	 .zo(outZ5),
	 .AngleIn(AngleTable6),
	 .x(outX6), 
	 .y(outY6), 
	 .z(outZ6)
);
gradient gradient7(
	 .clk(iClk),
	 .iN_Shift(4'd7),
	 .xo(outX6), 
	 .yo(outY6), 
	 .zo(outZ6),
	 .AngleIn(AngleTable7),
	 .x(outX7), 
	 .y(outY7), 
	 .z(outZ7)
);
gradient gradient8(
	 .clk(iClk),
	 .iN_Shift(4'd8),
	 .xo(outX7), 
	 .yo(outY7), 
	 .zo(outZ7),
	 .AngleIn(AngleTable8),
	 .x(outX8), 
	 .y(outY8), 
	 .z(outZ8)
);
gradient gradient9(
	 .clk(iClk),
	 .iN_Shift(4'd9),
	 .xo(outX8), 
	 .yo(outY8), 
	 .zo(outZ8),
	 .AngleIn(AngleTable9),
	 .x(outX9), 
	 .y(outY9), 
	 .z(outZ9)
);
gradient gradient10(
	 .clk(iClk),
	 .iN_Shift(4'd10),
	 .xo(outX9), 
	 .yo(outY9), 
	 .zo(outZ9),
	 .AngleIn(AngleTable10),
	 .x(outX10), 
	 .y(outY10), 
	 .z(outZ10)
);
gradient gradient11(
	 .clk(iClk),
	 .iN_Shift(4'd11),
	 .xo(outX10), 
	 .yo(outY10), 
	 .zo(outZ10),
	 .AngleIn(AngleTable11),
	 .x(outX11), 
	 .y(outY11), 
	 .z(outZ11)
);
gradient gradient12(
	 .clk(iClk),
	 .iN_Shift(4'd12),
	 .xo(outX11), 
	 .yo(outY11), 
	 .zo(outZ11),
	 .AngleIn(AngleTable12),
	 .x(outX12), 
	 .y(outY12), 
	 .z(outZ12)
);
gradient gradient13(
	 .clk(iClk),
	 .iN_Shift(4'd13),
	 .xo(outX12), 
	 .yo(outY12), 
	 .zo(outZ12),
	 .AngleIn(AngleTable13),
	 .x(outX13), 
	 .y(outY13), 
	 .z(outZ13)
);
gradient gradient14(
	 .clk(iClk),
	 .iN_Shift(4'd14),
	 .xo(outX13), 
	 .yo(outY13), 
	 .zo(outZ13),
	 .AngleIn(AngleTable14),
	 .x(outX14), 
	 .y(outY14), 
	 .z(outZ14)
);

//#100


 FPU magnitude
		(
		.clk(iClk), 
		.rmode(2'b00), 
		.fpu_op(3'b011), 
		.opa(outX14), 
		.opb(K), 
		.out(oMagnitude), 
		.inf(), 
		.snan(), 
		.qnan(), 
		.ine(), 
		.overflow(), 
		.underflow(), 
		.zero(), 
		.div_by_zero()
		);
 assign oAngle =  outZ14;


endmodule


//-------------------------------------********-----------------------------------------


module gradient(
	
	input clk,
	input [3:0] iN_Shift,
	input [31:0] xo, yo, zo, AngleIn,
	output reg [31:0] x, y, z	

);
	wire [31:0]shifted_xo, shifted_yo;
	wire [31:0] pre_x, pre_y, pre_z;
	
	SHIFT_FP shift_Xo(
	.iShiftedDirection(1'b1), 
	.iNum(xo), 
	.iN_Time_Shift(iN_Shift), 
	.oNum(shifted_xo)
	);
	
	SHIFT_FP shift_Yo(
	.iShiftedDirection(1'b1), 
	.iNum(yo), 
	.iN_Time_Shift(iN_Shift), 
	.oNum(shifted_yo)
	);

	wire [31:0] normaled_xo, normaled_yo;
	assign normaled_yo[31] = (yo[31] == 1'b0) ?  shifted_yo[31] : !shifted_yo[31] ;
	assign normaled_xo[31] = (yo[31] == 1'b0) ?  shifted_xo[31] : !shifted_xo[31] ;
	
	assign normaled_xo[30:0] = shifted_xo[30:0];
	assign normaled_yo[30:0] = shifted_yo[30:0];
	
	FPU X
		(
		.clk(clk), 
		.rmode(2'b00), 
		.fpu_op(3'b000), 
		.opa(xo), 
		.opb(normaled_yo), 
		.out(pre_x), 
		.inf(), 
		.snan(), 
		.qnan(), 
		.ine(), 
		.overflow(), 
		.underflow(), 
		.zero(), 
		.div_by_zero()
		);
		
		FPU Y
		(
		.clk(clk), 
		.rmode(2'b00), 
		.fpu_op(3'b001), 
		.opa(yo), 
		.opb(normaled_xo), 
		.out(pre_y), 
		.inf(), 
		.snan(), 
		.qnan(), 
		.ine(), 
		.overflow(), 
		.underflow(), 
		.zero(), 
		.div_by_zero()
		);
		
		wire [2:0]op;
		assign op = (yo[31] == 1'b0)? 3'b000: 3'b001 ;
	
	FPU Z
		(
		.clk(clk), 
		.rmode(2'b00), 
		.fpu_op(op), 
		.opa(zo), 
		.opb(AngleIn), 
		.out(pre_z), 
		.inf(), 
		.snan(), 
		.qnan(), 
		.ine(), 
		.overflow(), 
		.underflow(), 
		.zero(), 
		.div_by_zero()
		);
		
	always @(*) begin 
		if (yo == 32'h00000000 ) begin
			x <= xo;
			y <= yo;
			z <= zo;
		end
		else begin
			x <= pre_x;
			y <= pre_y;
			z <= pre_z;
		end
	end
 
endmodule
