module SHIFT_FP(
	
	// The shifted direction of a floating-point number
	// 1'b0 : left-shift
	// 1'b1 : right-shift
	
	input iShiftedDirection,
	input [31:0] iNum,
	input [3:0] iN_Time_Shift,
	output [31:0] oNum
);

	assign oNum[31] = iNum[31];
	assign oNum[22:0] = iNum[22:0];
	assign oNum[30:23] = (iShiftedDirection) ? (iNum[30:23] - iN_Time_Shift) : (iNum[30:23] + iN_Time_Shift);

endmodule
