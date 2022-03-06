module Block_Normalization_Core(

	input iClk,
	input [31:0] iCell1_Bin1, iCell1_Bin2, iCell1_Bin3, iCell1_Bin4, iCell1_Bin5, iCell1_Bin6, iCell1_Bin7, iCell1_Bin8, iCell1_Bin9,
	input [31:0] iCell2_Bin1, iCell2_Bin2, iCell2_Bin3, iCell2_Bin4, iCell2_Bin5, iCell2_Bin6, iCell2_Bin7, iCell2_Bin8, iCell2_Bin9,
	input [31:0] iCell3_Bin1, iCell3_Bin2, iCell3_Bin3, iCell3_Bin4, iCell3_Bin5, iCell3_Bin6, iCell3_Bin7, iCell3_Bin8, iCell3_Bin9,
	input [31:0] iCell4_Bin1, iCell4_Bin2, iCell4_Bin3, iCell4_Bin4, iCell4_Bin5, iCell4_Bin6, iCell4_Bin7, iCell4_Bin8, iCell4_Bin9,
	
	output [31:0] oCell1_Bin1, oCell1_Bin2, oCell1_Bin3, oCell1_Bin4, oCell1_Bin5, oCell1_Bin6, oCell1_Bin7, oCell1_Bin8, oCell1_Bin9,
	output [31:0] oCell2_Bin1, oCell2_Bin2, oCell2_Bin3, oCell2_Bin4, oCell2_Bin5, oCell2_Bin6, oCell2_Bin7, oCell2_Bin8, oCell2_Bin9,
	output [31:0] oCell3_Bin1, oCell3_Bin2, oCell3_Bin3, oCell3_Bin4, oCell3_Bin5, oCell3_Bin6, oCell3_Bin7, oCell3_Bin8, oCell3_Bin9,
	output [31:0] oCell4_Bin1, oCell4_Bin2, oCell4_Bin3, oCell4_Bin4, oCell4_Bin5, oCell4_Bin6, oCell4_Bin7, oCell4_Bin8, oCell4_Bin9

);
	// Compute the square of 36 input values
	wire [31:0] sqrCell1_Bin1, sqrCell1_Bin2, sqrCell1_Bin3, sqrCell1_Bin4, sqrCell1_Bin5, sqrCell1_Bin6, sqrCell1_Bin7, sqrCell1_Bin8, sqrCell1_Bin9;
	wire [31:0] sqrCell2_Bin1, sqrCell2_Bin2, sqrCell2_Bin3, sqrCell2_Bin4, sqrCell2_Bin5, sqrCell2_Bin6, sqrCell2_Bin7, sqrCell2_Bin8, sqrCell2_Bin9;
	wire [31:0] sqrCell3_Bin1, sqrCell3_Bin2, sqrCell3_Bin3, sqrCell3_Bin4, sqrCell3_Bin5, sqrCell3_Bin6, sqrCell3_Bin7, sqrCell3_Bin8, sqrCell3_Bin9;
	wire [31:0] sqrCell4_Bin1, sqrCell4_Bin2, sqrCell4_Bin3, sqrCell4_Bin4, sqrCell4_Bin5, sqrCell4_Bin6, sqrCell4_Bin7, sqrCell4_Bin8, sqrCell4_Bin9;
	
	fpu_norm SQUARE_1(.iClk(iClk), .op(2'b10), .opA(iCell1_Bin1), .opB(iCell1_Bin1), .oResult(sqrCell1_Bin1) );
	fpu_norm SQUARE_2(.iClk(iClk), .op(2'b10), .opA(iCell1_Bin2), .opB(iCell1_Bin2), .oResult(sqrCell1_Bin2) );
	fpu_norm SQUARE_3(.iClk(iClk), .op(2'b10), .opA(iCell1_Bin3), .opB(iCell1_Bin3), .oResult(sqrCell1_Bin3) );
	fpu_norm SQUARE_4(.iClk(iClk), .op(2'b10), .opA(iCell1_Bin4), .opB(iCell1_Bin4), .oResult(sqrCell1_Bin4) );
	fpu_norm SQUARE_5(.iClk(iClk), .op(2'b10), .opA(iCell1_Bin5), .opB(iCell1_Bin5), .oResult(sqrCell1_Bin5) );
	fpu_norm SQUARE_6(.iClk(iClk), .op(2'b10), .opA(iCell1_Bin6), .opB(iCell1_Bin6), .oResult(sqrCell1_Bin6) );
	fpu_norm SQUARE_7(.iClk(iClk), .op(2'b10), .opA(iCell1_Bin7), .opB(iCell1_Bin7), .oResult(sqrCell1_Bin7) );
	fpu_norm SQUARE_8(.iClk(iClk), .op(2'b10), .opA(iCell1_Bin8), .opB(iCell1_Bin8), .oResult(sqrCell1_Bin8) );
	fpu_norm SQUARE_9(.iClk(iClk), .op(2'b10), .opA(iCell1_Bin9), .opB(iCell1_Bin9), .oResult(sqrCell1_Bin9) );
	
	fpu_norm SQUARE_10(.iClk(iClk), .op(2'b10), .opA(iCell2_Bin1), .opB(iCell2_Bin1), .oResult(sqrCell2_Bin1) );
	fpu_norm SQUARE_11(.iClk(iClk), .op(2'b10), .opA(iCell2_Bin2), .opB(iCell2_Bin2), .oResult(sqrCell2_Bin2) );
	fpu_norm SQUARE_12(.iClk(iClk), .op(2'b10), .opA(iCell2_Bin3), .opB(iCell2_Bin3), .oResult(sqrCell2_Bin3) );
	fpu_norm SQUARE_13(.iClk(iClk), .op(2'b10), .opA(iCell2_Bin4), .opB(iCell2_Bin4), .oResult(sqrCell2_Bin4) );
	fpu_norm SQUARE_14(.iClk(iClk), .op(2'b10), .opA(iCell2_Bin5), .opB(iCell2_Bin5), .oResult(sqrCell2_Bin5) );
	fpu_norm SQUARE_15(.iClk(iClk), .op(2'b10), .opA(iCell2_Bin6), .opB(iCell2_Bin6), .oResult(sqrCell2_Bin6) );
	fpu_norm SQUARE_16(.iClk(iClk), .op(2'b10), .opA(iCell2_Bin7), .opB(iCell2_Bin7), .oResult(sqrCell2_Bin7) );
	fpu_norm SQUARE_17(.iClk(iClk), .op(2'b10), .opA(iCell2_Bin8), .opB(iCell2_Bin8), .oResult(sqrCell2_Bin8) );
	fpu_norm SQUARE_18(.iClk(iClk), .op(2'b10), .opA(iCell2_Bin9), .opB(iCell2_Bin9), .oResult(sqrCell2_Bin9) );
	
	fpu_norm SQUARE_19(.iClk(iClk), .op(2'b10), .opA(iCell3_Bin1), .opB(iCell3_Bin1), .oResult(sqrCell3_Bin1) );
	fpu_norm SQUARE_20(.iClk(iClk), .op(2'b10), .opA(iCell3_Bin2), .opB(iCell3_Bin2), .oResult(sqrCell3_Bin2) );
	fpu_norm SQUARE_21(.iClk(iClk), .op(2'b10), .opA(iCell3_Bin3), .opB(iCell3_Bin3), .oResult(sqrCell3_Bin3) );
	fpu_norm SQUARE_22(.iClk(iClk), .op(2'b10), .opA(iCell3_Bin4), .opB(iCell3_Bin4), .oResult(sqrCell3_Bin4) );
	fpu_norm SQUARE_23(.iClk(iClk), .op(2'b10), .opA(iCell3_Bin5), .opB(iCell3_Bin5), .oResult(sqrCell3_Bin5) );
	fpu_norm SQUARE_24(.iClk(iClk), .op(2'b10), .opA(iCell3_Bin6), .opB(iCell3_Bin6), .oResult(sqrCell3_Bin6) );
	fpu_norm SQUARE_25(.iClk(iClk), .op(2'b10), .opA(iCell3_Bin7), .opB(iCell3_Bin7), .oResult(sqrCell3_Bin7) );
	fpu_norm SQUARE_26(.iClk(iClk), .op(2'b10), .opA(iCell3_Bin8), .opB(iCell3_Bin8), .oResult(sqrCell3_Bin8) );
	fpu_norm SQUARE_27(.iClk(iClk), .op(2'b10), .opA(iCell3_Bin9), .opB(iCell3_Bin9), .oResult(sqrCell3_Bin9) );
	
	fpu_norm SQUARE_28(.iClk(iClk), .op(2'b10), .opA(iCell4_Bin1), .opB(iCell4_Bin1), .oResult(sqrCell4_Bin1) );
	fpu_norm SQUARE_29(.iClk(iClk), .op(2'b10), .opA(iCell4_Bin2), .opB(iCell4_Bin2), .oResult(sqrCell4_Bin2) );
	fpu_norm SQUARE_30(.iClk(iClk), .op(2'b10), .opA(iCell4_Bin3), .opB(iCell4_Bin3), .oResult(sqrCell4_Bin3) );
	fpu_norm SQUARE_31(.iClk(iClk), .op(2'b10), .opA(iCell4_Bin4), .opB(iCell4_Bin4), .oResult(sqrCell4_Bin4) );
	fpu_norm SQUARE_32(.iClk(iClk), .op(2'b10), .opA(iCell4_Bin5), .opB(iCell4_Bin5), .oResult(sqrCell4_Bin5) );
	fpu_norm SQUARE_33(.iClk(iClk), .op(2'b10), .opA(iCell4_Bin6), .opB(iCell4_Bin6), .oResult(sqrCell4_Bin6) );
	fpu_norm SQUARE_34(.iClk(iClk), .op(2'b10), .opA(iCell4_Bin7), .opB(iCell4_Bin7), .oResult(sqrCell4_Bin7) );
	fpu_norm SQUARE_35(.iClk(iClk), .op(2'b10), .opA(iCell4_Bin8), .opB(iCell4_Bin8), .oResult(sqrCell4_Bin8) );
	fpu_norm SQUARE_36(.iClk(iClk), .op(2'b10), .opA(iCell4_Bin9), .opB(iCell4_Bin9), .oResult(sqrCell4_Bin9) );
	
	// Stage 1st addition
	
	wire [31:0] stage1_sum1, stage1_sum2, stage1_sum3, stage1_sum4, stage1_sum5, stage1_sum6, stage1_sum7, stage1_sum8, stage1_sum9;
	wire [31:0] stage1_sum10, stage1_sum11, stage1_sum12, stage1_sum13, stage1_sum14, stage1_sum15, stage1_sum16, stage1_sum17, stage1_sum18;
	
	fpu_norm STAGE_1st_1(.iClk(iClk), .op(2'b00), .opA(sqrCell1_Bin1), .opB(sqrCell1_Bin2), .oResult(stage1_sum1) );
	fpu_norm STAGE_1st_2(.iClk(iClk), .op(2'b00), .opA(sqrCell1_Bin3), .opB(sqrCell1_Bin4), .oResult(stage1_sum2) );
	fpu_norm STAGE_1st_3(.iClk(iClk), .op(2'b00), .opA(sqrCell1_Bin5), .opB(sqrCell1_Bin6), .oResult(stage1_sum3) );
	fpu_norm STAGE_1st_4(.iClk(iClk), .op(2'b00), .opA(sqrCell1_Bin7), .opB(sqrCell1_Bin8), .oResult(stage1_sum4) );
	fpu_norm STAGE_1st_5(.iClk(iClk), .op(2'b00), .opA(sqrCell1_Bin9), .opB(sqrCell2_Bin1), .oResult(stage1_sum5) );
	fpu_norm STAGE_1st_6(.iClk(iClk), .op(2'b00), .opA(sqrCell2_Bin2), .opB(sqrCell2_Bin3), .oResult(stage1_sum6) );
	fpu_norm STAGE_1st_7(.iClk(iClk), .op(2'b00), .opA(sqrCell2_Bin4), .opB(sqrCell2_Bin5), .oResult(stage1_sum7) );
	fpu_norm STAGE_1st_8(.iClk(iClk), .op(2'b00), .opA(sqrCell2_Bin6), .opB(sqrCell2_Bin7), .oResult(stage1_sum8) );
	fpu_norm STAGE_1st_9(.iClk(iClk), .op(2'b00), .opA(sqrCell2_Bin8), .opB(sqrCell2_Bin9), .oResult(stage1_sum9) );
	fpu_norm STAGE_1st_10(.iClk(iClk), .op(2'b00), .opA(sqrCell3_Bin1), .opB(sqrCell3_Bin2), .oResult(stage1_sum10) );
	fpu_norm STAGE_1st_11(.iClk(iClk), .op(2'b00), .opA(sqrCell3_Bin3), .opB(sqrCell3_Bin4), .oResult(stage1_sum11) );
	fpu_norm STAGE_1st_12(.iClk(iClk), .op(2'b00), .opA(sqrCell3_Bin5), .opB(sqrCell3_Bin6), .oResult(stage1_sum12) );
	fpu_norm STAGE_1st_13(.iClk(iClk), .op(2'b00), .opA(sqrCell3_Bin7), .opB(sqrCell3_Bin8), .oResult(stage1_sum13) );
	fpu_norm STAGE_1st_14(.iClk(iClk), .op(2'b00), .opA(sqrCell3_Bin9), .opB(sqrCell4_Bin1), .oResult(stage1_sum14) );
	fpu_norm STAGE_1st_15(.iClk(iClk), .op(2'b00), .opA(sqrCell4_Bin2), .opB(sqrCell4_Bin3), .oResult(stage1_sum15) );
	fpu_norm STAGE_1st_16(.iClk(iClk), .op(2'b00), .opA(sqrCell4_Bin4), .opB(sqrCell4_Bin5), .oResult(stage1_sum16) );
	fpu_norm STAGE_1st_17(.iClk(iClk), .op(2'b00), .opA(sqrCell4_Bin6), .opB(sqrCell4_Bin7), .oResult(stage1_sum17) );
	fpu_norm STAGE_1st_18(.iClk(iClk), .op(2'b00), .opA(sqrCell4_Bin8), .opB(sqrCell4_Bin9), .oResult(stage1_sum18) );

	// Stage 2nd addition 
	
	wire [31:0] stage2_sum1, stage2_sum2, stage2_sum3, stage2_sum4, stage2_sum5, stage2_sum6, stage2_sum7, stage2_sum8, stage2_sum9;
	
	fpu_norm STAGE_2nd_1(.iClk(iClk), .op(2'b00), .opA(stage1_sum1), .opB(stage1_sum2), .oResult(stage2_sum1));
	fpu_norm STAGE_2nd_2(.iClk(iClk), .op(2'b00), .opA(stage1_sum3), .opB(stage1_sum4), .oResult(stage2_sum2));
	fpu_norm STAGE_2nd_3(.iClk(iClk), .op(2'b00), .opA(stage1_sum5), .opB(stage1_sum6), .oResult(stage2_sum3));
	fpu_norm STAGE_2nd_4(.iClk(iClk), .op(2'b00), .opA(stage1_sum7), .opB(stage1_sum8), .oResult(stage2_sum4));
	fpu_norm STAGE_2nd_5(.iClk(iClk), .op(2'b00), .opA(stage1_sum9), .opB(stage1_sum10), .oResult(stage2_sum5));
	fpu_norm STAGE_2nd_6(.iClk(iClk), .op(2'b00), .opA(stage1_sum11), .opB(stage1_sum12), .oResult(stage2_sum6));
	fpu_norm STAGE_2nd_7(.iClk(iClk), .op(2'b00), .opA(stage1_sum13), .opB(stage1_sum14), .oResult(stage2_sum7));
	fpu_norm STAGE_2nd_8(.iClk(iClk), .op(2'b00), .opA(stage1_sum15), .opB(stage1_sum16), .oResult(stage2_sum8));
	fpu_norm STAGE_2nd_9(.iClk(iClk), .op(2'b00), .opA(stage1_sum17), .opB(stage1_sum18), .oResult(stage2_sum9));
	
	// Stage 3rd addition
	
	wire [31:0] stage3_sum1, stage3_sum2, stage3_sum3, stage3_sum4;
	
	fpu_norm STAGE_3rd_1(.iClk(iClk), .op(2'b00), .opA(stage2_sum1), .opB(stage2_sum2), .oResult(stage3_sum1));
	fpu_norm STAGE_3rd_2(.iClk(iClk), .op(2'b00), .opA(stage2_sum3), .opB(stage2_sum4), .oResult(stage3_sum2));
	fpu_norm STAGE_3rd_3(.iClk(iClk), .op(2'b00), .opA(stage2_sum5), .opB(stage2_sum6), .oResult(stage3_sum3));
	fpu_norm STAGE_3rd_4(.iClk(iClk), .op(2'b00), .opA(stage2_sum7), .opB(stage2_sum8), .oResult(stage3_sum4));
	
	// Stage 4th addition
	
	wire [31:0] stage4_sum1, stage4_sum2;
	
	fpu_norm STAGE_4th_1(.iClk(iClk), .op(2'b00), .opA(stage3_sum1), .opB(stage3_sum2), .oResult(stage4_sum1));
	fpu_norm STAGE_4th_2(.iClk(iClk), .op(2'b00), .opA(stage3_sum3), .opB(stage3_sum4), .oResult(stage4_sum2));
	
	// Stage 5th addition
	
	wire [31:0] stage5_sum;
	
	fpu_norm STAGE_5th(.iClk(iClk), .op(2'b00), .opA(stage4_sum1), .opB(stage4_sum2), .oResult(stage5_sum));
	
	// Stage 6th addition
	
	wire [31:0] final_sum;
	
	fpu_norm STAGE_6th(.iClk(iClk), .op(2'b00), .opA(stage5_sum), .opB(stage2_sum9), .oResult(final_sum));
	
	// Compute the inverse_square_root of final_sum
	
	wire [31:0] SRA_final_sum;
	INV_ROOTSQUARE INV_ROOTSQUARE(
	.iClk(iClk),
	.iNum(final_sum),
	.oResult(SRA_final_sum)
	);
	
	// Normalize 36 input values
	// The index which we are using to normalize is SRA_final_sum
	// CELL 1
	
	fpu_norm normalize_Cell1_Bin1(.iClk(iClk), .op(2'b10), .opA(iCell1_Bin1), .opB(SRA_final_sum), .oResult(oCell1_Bin1));
	fpu_norm normalize_Cell1_Bin2(.iClk(iClk), .op(2'b10), .opA(iCell1_Bin2), .opB(SRA_final_sum), .oResult(oCell1_Bin2));
	fpu_norm normalize_Cell1_Bin3(.iClk(iClk), .op(2'b10), .opA(iCell1_Bin3), .opB(SRA_final_sum), .oResult(oCell1_Bin3));
	fpu_norm normalize_Cell1_Bin4(.iClk(iClk), .op(2'b10), .opA(iCell1_Bin4), .opB(SRA_final_sum), .oResult(oCell1_Bin4));
	fpu_norm normalize_Cell1_Bin5(.iClk(iClk), .op(2'b10), .opA(iCell1_Bin5), .opB(SRA_final_sum), .oResult(oCell1_Bin5));
	fpu_norm normalize_Cell1_Bin6(.iClk(iClk), .op(2'b10), .opA(iCell1_Bin6), .opB(SRA_final_sum), .oResult(oCell1_Bin6));
	fpu_norm normalize_Cell1_Bin7(.iClk(iClk), .op(2'b10), .opA(iCell1_Bin7), .opB(SRA_final_sum), .oResult(oCell1_Bin7));
	fpu_norm normalize_Cell1_Bin8(.iClk(iClk), .op(2'b10), .opA(iCell1_Bin8), .opB(SRA_final_sum), .oResult(oCell1_Bin8));
	fpu_norm normalize_Cell1_Bin9(.iClk(iClk), .op(2'b10), .opA(iCell1_Bin9), .opB(SRA_final_sum), .oResult(oCell1_Bin9));
	// CELL 2
	
	fpu_norm normalize_Cell2_Bin1(.iClk(iClk), .op(2'b10), .opA(iCell2_Bin1), .opB(SRA_final_sum), .oResult(oCell2_Bin1));
	fpu_norm normalize_Cell2_Bin2(.iClk(iClk), .op(2'b10), .opA(iCell2_Bin2), .opB(SRA_final_sum), .oResult(oCell2_Bin2));
	fpu_norm normalize_Cell2_Bin3(.iClk(iClk), .op(2'b10), .opA(iCell2_Bin3), .opB(SRA_final_sum), .oResult(oCell2_Bin3));
	fpu_norm normalize_Cell2_Bin4(.iClk(iClk), .op(2'b10), .opA(iCell2_Bin4), .opB(SRA_final_sum), .oResult(oCell2_Bin4));
	fpu_norm normalize_Cell2_Bin5(.iClk(iClk), .op(2'b10), .opA(iCell2_Bin5), .opB(SRA_final_sum), .oResult(oCell2_Bin5));
	fpu_norm normalize_Cell2_Bin6(.iClk(iClk), .op(2'b10), .opA(iCell2_Bin6), .opB(SRA_final_sum), .oResult(oCell2_Bin6));
	fpu_norm normalize_Cell2_Bin7(.iClk(iClk), .op(2'b10), .opA(iCell2_Bin7), .opB(SRA_final_sum), .oResult(oCell2_Bin7));
	fpu_norm normalize_Cell2_Bin8(.iClk(iClk), .op(2'b10), .opA(iCell2_Bin8), .opB(SRA_final_sum), .oResult(oCell2_Bin8));
	fpu_norm normalize_Cell2_Bin9(.iClk(iClk), .op(2'b10), .opA(iCell2_Bin9), .opB(SRA_final_sum), .oResult(oCell2_Bin9));
	// CELL 3
	
	fpu_norm normalize_Cell3_Bin1(.iClk(iClk), .op(2'b10), .opA(iCell3_Bin1), .opB(SRA_final_sum), .oResult(oCell3_Bin1));
	fpu_norm normalize_Cell3_Bin2(.iClk(iClk), .op(2'b10), .opA(iCell3_Bin2), .opB(SRA_final_sum), .oResult(oCell3_Bin2));
	fpu_norm normalize_Cell3_Bin3(.iClk(iClk), .op(2'b10), .opA(iCell3_Bin3), .opB(SRA_final_sum), .oResult(oCell3_Bin3));
	fpu_norm normalize_Cell3_Bin4(.iClk(iClk), .op(2'b10), .opA(iCell3_Bin4), .opB(SRA_final_sum), .oResult(oCell3_Bin4));
	fpu_norm normalize_Cell3_Bin5(.iClk(iClk), .op(2'b10), .opA(iCell3_Bin5), .opB(SRA_final_sum), .oResult(oCell3_Bin5));
	fpu_norm normalize_Cell3_Bin6(.iClk(iClk), .op(2'b10), .opA(iCell3_Bin6), .opB(SRA_final_sum), .oResult(oCell3_Bin6));
	fpu_norm normalize_Cell3_Bin7(.iClk(iClk), .op(2'b10), .opA(iCell3_Bin7), .opB(SRA_final_sum), .oResult(oCell3_Bin7));
	fpu_norm normalize_Cell3_Bin8(.iClk(iClk), .op(2'b10), .opA(iCell3_Bin8), .opB(SRA_final_sum), .oResult(oCell3_Bin8));
	fpu_norm normalize_Cell3_Bin9(.iClk(iClk), .op(2'b10), .opA(iCell3_Bin9), .opB(SRA_final_sum), .oResult(oCell3_Bin9));
	// CELL 4
	
	fpu_norm normalize_Cell4_Bin1(.iClk(iClk), .op(2'b10), .opA(iCell4_Bin1), .opB(SRA_final_sum), .oResult(oCell4_Bin1));
	fpu_norm normalize_Cell4_Bin2(.iClk(iClk), .op(2'b10), .opA(iCell4_Bin2), .opB(SRA_final_sum), .oResult(oCell4_Bin2));
	fpu_norm normalize_Cell4_Bin3(.iClk(iClk), .op(2'b10), .opA(iCell4_Bin3), .opB(SRA_final_sum), .oResult(oCell4_Bin3));
	fpu_norm normalize_Cell4_Bin4(.iClk(iClk), .op(2'b10), .opA(iCell4_Bin4), .opB(SRA_final_sum), .oResult(oCell4_Bin4));
	fpu_norm normalize_Cell4_Bin5(.iClk(iClk), .op(2'b10), .opA(iCell4_Bin5), .opB(SRA_final_sum), .oResult(oCell4_Bin5));
	fpu_norm normalize_Cell4_Bin6(.iClk(iClk), .op(2'b10), .opA(iCell4_Bin6), .opB(SRA_final_sum), .oResult(oCell4_Bin6));
	fpu_norm normalize_Cell4_Bin7(.iClk(iClk), .op(2'b10), .opA(iCell4_Bin7), .opB(SRA_final_sum), .oResult(oCell4_Bin7));
	fpu_norm normalize_Cell4_Bin8(.iClk(iClk), .op(2'b10), .opA(iCell4_Bin8), .opB(SRA_final_sum), .oResult(oCell4_Bin8));
	fpu_norm normalize_Cell4_Bin9(.iClk(iClk), .op(2'b10), .opA(iCell4_Bin9), .opB(SRA_final_sum), .oResult(oCell4_Bin9));
	
endmodule
