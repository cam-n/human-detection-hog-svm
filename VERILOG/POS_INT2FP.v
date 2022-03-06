module POS_INT2FP(

	input [7:0] iPosINT,
	output [31:0] oFP
);

	assign oFP = (iPosINT == 8'h00)? 32'h00000000 :
					 (iPosINT[7])? {1'b0,8'h86,iPosINT[6:0],16'h0000} :
					 (iPosINT[6])? {1'b0,8'h85,iPosINT[5:0],17'h00000} :
					 (iPosINT[5])? {1'b0,8'h84,iPosINT[4:0],18'h00000} :
					 (iPosINT[4])? {1'b0,8'h83,iPosINT[3:0],19'h00000} :
					 (iPosINT[3])? {1'b0,8'h82,iPosINT[2:0],20'h00000} :
					 (iPosINT[2])? {1'b0,8'h81,iPosINT[1:0],21'h000000} :
					 (iPosINT[1])? {1'b0,8'h80,iPosINT[0],22'h000000} :
					 {1'b0,8'h7f,23'h000000};

endmodule
