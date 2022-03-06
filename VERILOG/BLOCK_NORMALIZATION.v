module BLOCK_NORMALIZATION(

	input iClk,
	input iReady,
	input [31:0] iBIN11, iBIN12, iBIN13, iBIN14, iBIN15, iBIN16, iBIN17, iBIN18, iBIN19,
	input [31:0] iBIN21, iBIN22, iBIN23, iBIN24, iBIN25, iBIN26, iBIN27, iBIN28, iBIN29,
	input [31:0] iBIN31, iBIN32, iBIN33, iBIN34, iBIN35, iBIN36, iBIN37, iBIN38, iBIN39,
	input [31:0] iBIN41, iBIN42, iBIN43, iBIN44, iBIN45, iBIN46, iBIN47, iBIN48, iBIN49,

	output [31:0] oBIN11, oBIN12, oBIN13, oBIN14, oBIN15, oBIN16, oBIN17, oBIN18, oBIN19,
	output [31:0] oBIN21, oBIN22, oBIN23, oBIN24, oBIN25, oBIN26, oBIN27, oBIN28, oBIN29,
	output [31:0] oBIN31, oBIN32, oBIN33, oBIN34, oBIN35, oBIN36, oBIN37, oBIN38, oBIN39,
	output [31:0] oBIN41, oBIN42, oBIN43, oBIN44, oBIN45, oBIN46, oBIN47, oBIN48, oBIN49,
	output reg oDONE

);
	
	reg [5:0] count;
	
	always @(posedge iClk)
	begin
		if (iReady) count <= 6'd0;
		else begin
			count <= count + 1'b1;
			if(count == 6'd50) oDONE <= 1'b1;
			if(count != 6'd50) oDONE <= 1'b0;
			if(count == 6'd52) count <= 6'd0;
		end
	end
	
	
	
	 Block_Normalization_Core  Block_Normalization_Core(

		.iClk(iClk),
	// 36 input pre_normalized values
	
		.iCell1_Bin1(iBIN11), 
		.iCell1_Bin2(iBIN12), 
		.iCell1_Bin3(iBIN13), 
		.iCell1_Bin4(iBIN14), 
		.iCell1_Bin5(iBIN15), 
		.iCell1_Bin6(iBIN16), 
		.iCell1_Bin7(iBIN17), 
		.iCell1_Bin8(iBIN18), 
		.iCell1_Bin9(iBIN19),
		
		.iCell2_Bin1(iBIN21), 
		.iCell2_Bin2(iBIN22), 
		.iCell2_Bin3(iBIN23), 
		.iCell2_Bin4(iBIN24), 
		.iCell2_Bin5(iBIN25), 
		.iCell2_Bin6(iBIN26), 
		.iCell2_Bin7(iBIN27), 
		.iCell2_Bin8(iBIN28), 
		.iCell2_Bin9(iBIN29),
		
		.iCell3_Bin1(iBIN31), 
		.iCell3_Bin2(iBIN32), 
		.iCell3_Bin3(iBIN33), 
		.iCell3_Bin4(iBIN34), 
		.iCell3_Bin5(iBIN35), 
		.iCell3_Bin6(iBIN36), 
		.iCell3_Bin7(iBIN37), 
		.iCell3_Bin8(iBIN38), 
		.iCell3_Bin9(iBIN39),
		
		.iCell4_Bin1(iBIN41), 
		.iCell4_Bin2(iBIN42), 
		.iCell4_Bin3(iBIN43), 
		.iCell4_Bin4(iBIN44), 
		.iCell4_Bin5(iBIN45), 
		.iCell4_Bin6(iBIN46), 
		.iCell4_Bin7(iBIN47), 
		.iCell4_Bin8(iBIN48), 
		.iCell4_Bin9(iBIN49),
		
		
	// 36 output normalized values
	
		.oCell1_Bin1(oBIN11), 
		.oCell1_Bin2(oBIN12), 
		.oCell1_Bin3(oBIN13), 
		.oCell1_Bin4(oBIN14), 
		.oCell1_Bin5(oBIN15), 
		.oCell1_Bin6(oBIN16), 
		.oCell1_Bin7(oBIN17), 
		.oCell1_Bin8(oBIN18), 
		.oCell1_Bin9(oBIN19),
		
		.oCell2_Bin1(oBIN21), 
		.oCell2_Bin2(oBIN22), 
		.oCell2_Bin3(oBIN23), 
		.oCell2_Bin4(oBIN24), 
		.oCell2_Bin5(oBIN25), 
		.oCell2_Bin6(oBIN26), 
		.oCell2_Bin7(oBIN27), 
		.oCell2_Bin8(oBIN28), 
		.oCell2_Bin9(oBIN29),
		
		.oCell3_Bin1(oBIN31), 
		.oCell3_Bin2(oBIN32), 
		.oCell3_Bin3(oBIN33), 
		.oCell3_Bin4(oBIN34), 
		.oCell3_Bin5(oBIN35), 
		.oCell3_Bin6(oBIN36), 
		.oCell3_Bin7(oBIN37), 
		.oCell3_Bin8(oBIN38), 
		.oCell3_Bin9(oBIN39),
		
		.oCell4_Bin1(oBIN41), 
		.oCell4_Bin2(oBIN42), 
		.oCell4_Bin3(oBIN43), 
		.oCell4_Bin4(oBIN44), 
		.oCell4_Bin5(oBIN45), 
		.oCell4_Bin6(oBIN46), 
		.oCell4_Bin7(oBIN47), 
		.oCell4_Bin8(oBIN48), 
		.oCell4_Bin9(oBIN49)

);
	
endmodule