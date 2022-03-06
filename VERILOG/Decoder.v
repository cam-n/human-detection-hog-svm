module Decoder(

	input [10:0] iAddrBeginRow, iAddrEndRow,
	input [6:0] iAddrBeginCol, iAddrEndCol,

	output [10:0] oADDR_CELL1_BIN1, oADDR_CELL1_BIN2, oADDR_CELL1_BIN3, oADDR_CELL1_BIN4, 
	output [10:0] oADDR_CELL1_BIN5, oADDR_CELL1_BIN6, oADDR_CELL1_BIN7, oADDR_CELL1_BIN8, oADDR_CELL1_BIN9,

	output [10:0] oADDR_CELL2_BIN1, oADDR_CELL2_BIN2, oADDR_CELL2_BIN3, oADDR_CELL2_BIN4, 
	output [10:0] oADDR_CELL2_BIN5, oADDR_CELL2_BIN6, oADDR_CELL2_BIN7, oADDR_CELL2_BIN8, oADDR_CELL2_BIN9,

	output [10:0] oADDR_CELL3_BIN1, oADDR_CELL3_BIN2, oADDR_CELL3_BIN3, oADDR_CELL3_BIN4, 
	output [10:0] oADDR_CELL3_BIN5, oADDR_CELL3_BIN6, oADDR_CELL3_BIN7, oADDR_CELL3_BIN8, oADDR_CELL3_BIN9,

	output [10:0] oADDR_CELL4_BIN1, oADDR_CELL4_BIN2, oADDR_CELL4_BIN3, oADDR_CELL4_BIN4, 
	output [10:0] oADDR_CELL4_BIN5, oADDR_CELL4_BIN6, oADDR_CELL4_BIN7, oADDR_CELL4_BIN8, oADDR_CELL4_BIN9
);

  // Addresses cell 1
  assign oADDR_CELL1_BIN1 = iAddrBeginRow + iAddrBeginCol;
  assign oADDR_CELL1_BIN2 = iAddrBeginRow + iAddrBeginCol + 1'd1;
  assign oADDR_CELL1_BIN3 = iAddrBeginRow + iAddrBeginCol + 2'd2;
  assign oADDR_CELL1_BIN4 = iAddrBeginRow + iAddrBeginCol + 2'd3;
  assign oADDR_CELL1_BIN5 = iAddrBeginRow + iAddrBeginCol + 3'd4;
  assign oADDR_CELL1_BIN6 = iAddrBeginRow + iAddrBeginCol + 3'd5;
  assign oADDR_CELL1_BIN7 = iAddrBeginRow + iAddrBeginCol + 3'd6;
  assign oADDR_CELL1_BIN8 = iAddrBeginRow + iAddrBeginCol + 3'd7;
  assign oADDR_CELL1_BIN9 = iAddrBeginRow + iAddrBeginCol + 4'd8;
 
 // Addresses cell 2
  assign oADDR_CELL2_BIN1 = iAddrBeginRow + iAddrEndCol;
  assign oADDR_CELL2_BIN2 = iAddrBeginRow + iAddrEndCol + 1'd1;
  assign oADDR_CELL2_BIN3 = iAddrBeginRow + iAddrEndCol + 2'd2;
  assign oADDR_CELL2_BIN4 = iAddrBeginRow + iAddrEndCol + 2'd3;
  assign oADDR_CELL2_BIN5 = iAddrBeginRow + iAddrEndCol + 3'd4;
  assign oADDR_CELL2_BIN6 = iAddrBeginRow + iAddrEndCol + 3'd5;
  assign oADDR_CELL2_BIN7 = iAddrBeginRow + iAddrEndCol + 3'd6;
  assign oADDR_CELL2_BIN8 = iAddrBeginRow + iAddrEndCol + 3'd7;
  assign oADDR_CELL2_BIN9 = iAddrBeginRow + iAddrEndCol + 4'd8;
 
 // Addresses cell 3
  assign oADDR_CELL3_BIN1 = iAddrEndRow + iAddrBeginCol;
  assign oADDR_CELL3_BIN2 = iAddrEndRow + iAddrBeginCol + 1'd1;
  assign oADDR_CELL3_BIN3 = iAddrEndRow + iAddrBeginCol + 2'd2;
  assign oADDR_CELL3_BIN4 = iAddrEndRow + iAddrBeginCol + 2'd3;
  assign oADDR_CELL3_BIN5 = iAddrEndRow + iAddrBeginCol + 3'd4;
  assign oADDR_CELL3_BIN6 = iAddrEndRow + iAddrBeginCol + 3'd5;
  assign oADDR_CELL3_BIN7 = iAddrEndRow + iAddrBeginCol + 3'd6;
  assign oADDR_CELL3_BIN8 = iAddrEndRow + iAddrBeginCol + 3'd7;
  assign oADDR_CELL3_BIN9 = iAddrEndRow + iAddrBeginCol + 4'd8;
 
 // Addresses cell 4
  assign oADDR_CELL4_BIN1 = iAddrEndRow + iAddrEndCol;
  assign oADDR_CELL4_BIN2 = iAddrEndRow + iAddrEndCol + 1'd1;
  assign oADDR_CELL4_BIN3 = iAddrEndRow + iAddrEndCol + 2'd2;
  assign oADDR_CELL4_BIN4 = iAddrEndRow + iAddrEndCol + 2'd3;
  assign oADDR_CELL4_BIN5 = iAddrEndRow + iAddrEndCol + 3'd4;
  assign oADDR_CELL4_BIN6 = iAddrEndRow + iAddrEndCol + 3'd5;
  assign oADDR_CELL4_BIN7 = iAddrEndRow + iAddrEndCol + 3'd6;
  assign oADDR_CELL4_BIN8 = iAddrEndRow + iAddrEndCol + 3'd7;
  assign oADDR_CELL4_BIN9 = iAddrEndRow + iAddrEndCol + 4'd8;
 
  
endmodule