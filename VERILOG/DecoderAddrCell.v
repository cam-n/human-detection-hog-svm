module DecoderAddrCell(

input [13:0] iBEGIN_ROW,
input [6:0] iBEGIN_COL,
output [13:0] oADDR_PX11, oADDR_PX12, oADDR_PX13, oADDR_PX14, oADDR_PX15, oADDR_PX16, oADDR_PX17, oADDR_PX18, oADDR_PX19, oADDR_PX1_10, 
output [13:0] oADDR_PX21, oADDR_PX22, oADDR_PX23, oADDR_PX24, oADDR_PX25, oADDR_PX26, oADDR_PX27, oADDR_PX28, oADDR_PX29, oADDR_PX2_10, 
output [13:0] oADDR_PX31, oADDR_PX32, oADDR_PX33, oADDR_PX34, oADDR_PX35, oADDR_PX36, oADDR_PX37, oADDR_PX38, oADDR_PX39, oADDR_PX3_10, 
output [13:0] oADDR_PX41, oADDR_PX42, oADDR_PX43, oADDR_PX44, oADDR_PX45, oADDR_PX46, oADDR_PX47, oADDR_PX48, oADDR_PX49, oADDR_PX4_10, 
output [13:0] oADDR_PX51, oADDR_PX52, oADDR_PX53, oADDR_PX54, oADDR_PX55, oADDR_PX56, oADDR_PX57, oADDR_PX58, oADDR_PX59, oADDR_PX5_10, 
output [13:0] oADDR_PX61, oADDR_PX62, oADDR_PX63, oADDR_PX64, oADDR_PX65, oADDR_PX66, oADDR_PX67, oADDR_PX68, oADDR_PX69, oADDR_PX6_10, 
output [13:0] oADDR_PX71, oADDR_PX72, oADDR_PX73, oADDR_PX74, oADDR_PX75, oADDR_PX76, oADDR_PX77, oADDR_PX78, oADDR_PX79, oADDR_PX7_10, 
output [13:0] oADDR_PX81, oADDR_PX82, oADDR_PX83, oADDR_PX84, oADDR_PX85, oADDR_PX86, oADDR_PX87, oADDR_PX88, oADDR_PX89, oADDR_PX8_10, 
output [13:0] oADDR_PX91, oADDR_PX92, oADDR_PX93, oADDR_PX94, oADDR_PX95, oADDR_PX96, oADDR_PX97, oADDR_PX98, oADDR_PX99, oADDR_PX9_10, 
output [13:0] oADDR_PX10_1, oADDR_PX10_2, oADDR_PX10_3, oADDR_PX10_4, oADDR_PX10_5, oADDR_PX10_6, oADDR_PX10_7, oADDR_PX10_8, oADDR_PX10_9, oADDR_PX10_10

);

  wire [6:0] col0, col1, col2, col3, col4, col5, col6, col7, col8, col9;
  wire [13:0] row0, row1, row2, row3, row4, row5, row6, row7, row8, row9;
  wire [6:0] sizeOfRow;
  assign sizeOfRow = 7'd66; // A row includes 66 pixels.
  
  assign row0 = iBEGIN_ROW;//0
  assign row1 = iBEGIN_ROW + sizeOfRow;
  assign row2 = iBEGIN_ROW + ( 2'd2 * sizeOfRow) ;
  assign row3 = iBEGIN_ROW + ( 2'd3 * sizeOfRow) ;
  assign row4 = iBEGIN_ROW + ( 3'd4 * sizeOfRow) ;
  assign row5 = iBEGIN_ROW + ( 3'd5 * sizeOfRow) ;
  assign row6 = iBEGIN_ROW + ( 3'd6 * sizeOfRow) ;
  assign row7 = iBEGIN_ROW + ( 3'd7 * sizeOfRow) ;
  assign row8 = iBEGIN_ROW + ( 4'd8 * sizeOfRow) ;
  assign row9 = iBEGIN_ROW + ( 4'd9 * sizeOfRow) ;
  
  assign col0 = iBEGIN_COL;//24
  assign col1 = iBEGIN_COL + 1'd1;
  assign col2 = iBEGIN_COL + 2'd2;
  assign col3 = iBEGIN_COL + 2'd3;
  assign col4 = iBEGIN_COL + 3'd4;
  assign col5 = iBEGIN_COL + 3'd5;
  assign col6 = iBEGIN_COL + 3'd6;
  assign col7 = iBEGIN_COL + 3'd7;
  assign col8 = iBEGIN_COL + 4'd8;
  assign col9 = iBEGIN_COL + 4'd9;
  
  // 1st row  
  assign oADDR_PX11 = row0 + col0;
  assign oADDR_PX12 = row0 + col1;
  assign oADDR_PX13 = row0 + col2;
  assign oADDR_PX14 = row0 + col3;
  assign oADDR_PX15 = row0 + col4;
  assign oADDR_PX16 = row0 + col5;
  assign oADDR_PX17 = row0 + col6;
  assign oADDR_PX18 = row0 + col7;
  assign oADDR_PX19 = row0 + col8;
  assign oADDR_PX1_10 = row0 + col9;
  // 2nd row
  assign oADDR_PX21 = row1 + col0;
  assign oADDR_PX22 = row1 + col1;
  assign oADDR_PX23 = row1 + col2;
  assign oADDR_PX24 = row1 + col3;
  assign oADDR_PX25 = row1 + col4;
  assign oADDR_PX26 = row1 + col5;
  assign oADDR_PX27 = row1 + col6;
  assign oADDR_PX28 = row1 + col7;
  assign oADDR_PX29 = row1 + col8;
  assign oADDR_PX2_10 = row1 + col9;
  // 3rd row
  assign oADDR_PX31 = row2 + col0;
  assign oADDR_PX32 = row2 + col1;
  assign oADDR_PX33 = row2 + col2;
  assign oADDR_PX34 = row2 + col3;
  assign oADDR_PX35 = row2 + col4;
  assign oADDR_PX36 = row2 + col5;
  assign oADDR_PX37 = row2 + col6;
  assign oADDR_PX38 = row2 + col7;
  assign oADDR_PX39 = row2 + col8;
  assign oADDR_PX3_10 = row2 + col9;
  // 4th row
  assign oADDR_PX41 = row3 + col0;
  assign oADDR_PX42 = row3 + col1;
  assign oADDR_PX43 = row3 + col2;
  assign oADDR_PX44 = row3 + col3;
  assign oADDR_PX45 = row3 + col4;
  assign oADDR_PX46 = row3 + col5;
  assign oADDR_PX47 = row3 + col6;
  assign oADDR_PX48 = row3 + col7;
  assign oADDR_PX49 = row3 + col8;
  assign oADDR_PX4_10 = row3 + col9;
  // 5th row
  assign oADDR_PX51 = row4 + col0;
  assign oADDR_PX52 = row4 + col1;
  assign oADDR_PX53 = row4 + col2;
  assign oADDR_PX54 = row4 + col3;
  assign oADDR_PX55 = row4 + col4;
  assign oADDR_PX56 = row4 + col5;
  assign oADDR_PX57 = row4 + col6;
  assign oADDR_PX58 = row4 + col7;
  assign oADDR_PX59 = row4 + col8;
  assign oADDR_PX5_10 = row4 + col9;
  // 6th row
  assign oADDR_PX61 = row5 + col0;
  assign oADDR_PX62 = row5 + col1;
  assign oADDR_PX63 = row5 + col2;
  assign oADDR_PX64 = row5 + col3;
  assign oADDR_PX65 = row5 + col4;
  assign oADDR_PX66 = row5 + col5;
  assign oADDR_PX67 = row5 + col6;
  assign oADDR_PX68 = row5 + col7;
  assign oADDR_PX69 = row5 + col8;
  assign oADDR_PX6_10 = row5 + col9;
  // 7th row
  assign oADDR_PX71 = row6 + col0;
  assign oADDR_PX72 = row6 + col1;
  assign oADDR_PX73 = row6 + col2;
  assign oADDR_PX74 = row6 + col3;
  assign oADDR_PX75 = row6 + col4;
  assign oADDR_PX76 = row6 + col5;
  assign oADDR_PX77 = row6 + col6;
  assign oADDR_PX78 = row6 + col7;
  assign oADDR_PX79 = row6 + col8;
  assign oADDR_PX7_10 = row6 + col9;
  // 8th row
  assign oADDR_PX81 = row7 + col0;
  assign oADDR_PX82 = row7 + col1;
  assign oADDR_PX83 = row7 + col2;
  assign oADDR_PX84 = row7 + col3;
  assign oADDR_PX85 = row7 + col4;
  assign oADDR_PX86 = row7 + col5;
  assign oADDR_PX87 = row7 + col6;
  assign oADDR_PX88 = row7 + col7;
  assign oADDR_PX89 = row7 + col8;
  assign oADDR_PX8_10 = row7 + col9;
  // 9th row
  assign oADDR_PX91 = row8 + col0;
  assign oADDR_PX92 = row8 + col1;
  assign oADDR_PX93 = row8 + col2;
  assign oADDR_PX94 = row8 + col3;
  assign oADDR_PX95 = row8 + col4;
  assign oADDR_PX96 = row8 + col5;
  assign oADDR_PX97 = row8 + col6;
  assign oADDR_PX98 = row8 + col7;
  assign oADDR_PX99 = row8 + col8;
  assign oADDR_PX9_10 = row8 + col9;
  // 10th row
  assign oADDR_PX10_1 = row9 + col0;
  assign oADDR_PX10_2 = row9 + col1;
  assign oADDR_PX10_3 = row9 + col2;
  assign oADDR_PX10_4 = row9 + col3;
  assign oADDR_PX10_5 = row9 + col4;
  assign oADDR_PX10_6 = row9 + col5;
  assign oADDR_PX10_7 = row9 + col6;
  assign oADDR_PX10_8 = row9 + col7;
  assign oADDR_PX10_9 = row9 + col8;
  assign oADDR_PX10_10 = row9 + col9;
  
endmodule