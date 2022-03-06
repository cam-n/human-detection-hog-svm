module GETHISTOGRAM_1PIXEL(

	input iClk,
	input [31:0] iMAG, iAGL,
	
	output reg [31:0] oBin1, oBin2, oBin3, oBin4, oBin5, oBin6, oBin7, oBin8, oBin9

);

	wire [31:0] pi;
	wire [31:0] normalized_iAGL, normalized_iAGL_1;
	wire [7:0] compared_value;
	assign pi = 32'h43340000; // 180 degrees in floating-point radix.
	wire [7:0] binleft;
	wire [31:0] out_binleft;
	wire [31:0] Diff;
	wire [31:0] LeftBin, RightBin;
	
	FPU normalize_angle
		(
		.clk(iClk), 
		.rmode(2'b00), 
		.fpu_op(3'b000), 
		.opa(iAGL), 
		.opb(pi), 
		.out(normalized_iAGL), 
		.inf(), 
		.snan(), 
		.qnan(), 
		.ine(), 
		.overflow(), 
		.underflow(), 
		.zero(), 
		.div_by_zero()
		);
	assign normalized_iAGL_1 = (iAGL[31])? normalized_iAGL : iAGL ;
	wire [7:0] diff;
  assign diff = normalized_iAGL_1[30:23] - 8'd127;	
	assign compared_value = (diff == 8'd7) ? {1'b1, normalized_iAGL_1[22:16]} :
									(diff == 8'd6) ? {2'b01, normalized_iAGL_1[22:17]} :
									(diff == 8'd5) ? {3'b001, normalized_iAGL_1[22:18]} :
									(diff == 8'd4) ? {4'b0001, normalized_iAGL_1[22:19]} :
									(diff == 8'd3) ? {5'b00001, normalized_iAGL_1[22:20]} :
									(diff == 8'd2) ? {6'b000001, normalized_iAGL_1[22:21]} :
									(diff == 8'd1) ? {7'b0000001, normalized_iAGL_1[22]} :
									(diff == 8'd0) ? 8'b00000001 : 8'b00000000 ;
	
	
	assign binleft = (compared_value >= 8'd170) ? 8'd170 :
							  (compared_value >= 8'd150) ? 8'd150 :
							  (compared_value >= 8'd130) ? 8'd130 :
							  (compared_value >= 8'd110) ? 8'd110 :
							  (compared_value >= 8'd90) ? 8'd90 :
							  (compared_value >= 8'd70) ? 8'd70 :
							  (compared_value >= 8'd50) ? 8'd50 :
							  (compared_value >= 8'd30) ? 8'd30 : 
							  (compared_value >= 8'd10) ? 8'd10 : 8'd0;
		POS_INT2FP trans(
			.iPosINT(binleft),
			.oFP(out_binleft)
			);	  
			
		FPU difference
		(
		.clk(iClk), 
		.rmode(2'b00), 
		.fpu_op(3'b001), 
		.opa(normalized_iAGL_1), 
		.opb(out_binleft), 
		.out(Diff), 
		.inf(), 
		.snan(), 
		.qnan(), 
		.ine(), 
		.overflow(), 
		.underflow(), 
		.zero(), 
		.div_by_zero()
		);
		wire [31:0] normalized;
		FPU normalized_agl
		(
		.clk(iClk), 
		.rmode(2'b00), 
		.fpu_op(3'b001), 
		.opa(32'h41200000), 
		.opb(Diff), 
		.out(normalized), 
		.inf(), 
		.snan(), 
		.qnan(), 
		.ine(), 
		.overflow(), 
		.underflow(), 
		.zero(), 
		.div_by_zero()
		);
		
		wire [31:0] normalized_diff;
		assign normalized_diff = (binleft == 8'd0) ? normalized [31:0]: Diff [31:0];
		
	getbin GetBin(
	.iClk(iClk),
	.iMagnitude(iMAG),
	.iDiff(normalized_diff),
	.oLeftBin(LeftBin),
	.oRightBin(RightBin)
	);
	
	always @(LeftBin or RightBin) 
	begin
		case (binleft) 
		
		8'd170 : begin  oBin1 = RightBin;
					oBin2 = 32'h00000000;
					oBin3 = 32'h00000000;
					oBin4 = 32'h00000000;
					oBin5 = 32'h00000000;
					oBin6 = 32'h00000000;
					oBin7 = 32'h00000000;
					oBin8 = 32'h00000000;
					oBin9 = LeftBin;
					end
		8'd150 : begin oBin1 = 32'h00000000;
					oBin2 = 32'h00000000;
					oBin3 = 32'h00000000;
					oBin4 = 32'h00000000;
					oBin5 = 32'h00000000;
					oBin6 = 32'h00000000;
					oBin7 = 32'h00000000;
					oBin8 = LeftBin;
					oBin9 = RightBin;
					end
		8'd130 : begin oBin1 = 32'h00000000;
					oBin2 = 32'h00000000;
					oBin3 = 32'h00000000;
					oBin4 = 32'h00000000;
					oBin5 = 32'h00000000;
					oBin6 = 32'h00000000;
					oBin7 = LeftBin;
					oBin8 = RightBin;
					oBin9 = 32'h00000000;
					end
		8'd110 : begin oBin1 = 32'h00000000;
					oBin2 = 32'h00000000;
					oBin3 = 32'h00000000;
					oBin4 = 32'h00000000;
					oBin5 = 32'h00000000;
					oBin6 = LeftBin;
					oBin7 = RightBin;
					oBin8 = 32'h00000000;
					oBin9 = 32'h00000000;
					end
		8'd90 : begin oBin1 = 32'h00000000;
					oBin2 = 32'h00000000;
					oBin3 = 32'h00000000;
					oBin4 = 32'h00000000;
					oBin5 = LeftBin;
					oBin6 = RightBin;
					oBin7 = 32'h00000000;
					oBin8 = 32'h00000000;
					oBin9 = 32'h00000000;
					end
		8'd70 : begin oBin1 = 32'h00000000;
					oBin2 = 32'h00000000;
					oBin3 = 32'h00000000;
					oBin4 = LeftBin;
					oBin5 = RightBin;
					oBin6 = 32'h00000000;
					oBin7 = 32'h00000000;
					oBin8 = 32'h00000000;
					oBin9 = 32'h00000000;
					end
		8'd50 : begin oBin1 = 32'h00000000;
					oBin2 = 32'h00000000;
					oBin3 = LeftBin;
					oBin4 = RightBin;
					oBin5 = 32'h00000000;
					oBin6 = 32'h00000000;
					oBin7 = 32'h00000000;
					oBin8 = 32'h00000000;
					oBin9 = 32'h00000000;
					end
		8'd30 : begin oBin1 = 32'h00000000;
					oBin2 = LeftBin;
					oBin3 = RightBin;
					oBin4 = 32'h00000000;
					oBin5 = 32'h00000000;
					oBin6 = 32'h00000000;
					oBin7 = 32'h00000000;
					oBin8 = 32'h00000000;
					oBin9 = 32'h00000000;
					end
		8'd10 : begin oBin1 = LeftBin;
					oBin2 = RightBin;
					oBin3 = 32'h00000000;
					oBin4 = 32'h00000000;
					oBin5 = 32'h00000000;
					oBin6 = 32'h00000000;
					oBin7 = 32'h00000000;
					oBin8 = 32'h00000000;
					oBin9 = 32'h00000000;
					end
		8'd0 : begin oBin1 = LeftBin;
					oBin2 = 32'h00000000;
					oBin3 = 32'h00000000;
					oBin4 = 32'h00000000;
					oBin5 = 32'h00000000;
					oBin6 = 32'h00000000;
					oBin7 = 32'h00000000;
					oBin8 = 32'h00000000;
					oBin9 = RightBin;
					end
		
		endcase
		/*
		case (Diff[31])
		
		1'd1 : begin oBin1 = RightBin;
					oBin2 = 32'h00000000;
					oBin3 = 32'h00000000;
					oBin4 = 32'h00000000;
					oBin5 = 32'h00000000;
					oBin6 = 32'h00000000;
					oBin7 = 32'h00000000;
					oBin8 = 32'h00000000;
					oBin9 = LeftBin;
					end
		endcase
		*/
	end

endmodule
