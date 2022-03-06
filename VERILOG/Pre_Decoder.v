module Pre_Decoder(

input [6:0] iNumOrder,
output reg [10:0] oAddrBeginRow, oAddrEndRow,
output reg [6:0] oAddrBeginCol, oAddrEndCol
);
  
  wire [10:0] row1, row2, row3, row4, row5, row6, row7, row8;
  wire [10:0] row9, row10, row11, row12, row13, row14, row15, row16;
  
  wire [6:0] col1, col2, col3, col4, col5, col6, col7, col8;
  
  assign col1 = 7'd0;
  assign col2 = 7'd9;
  assign col3 = 7'd18;
  assign col4 = 7'd27;
  assign col5 = 7'd36;
  assign col6 = 7'd45;
  assign col7 = 7'd54;
  assign col8 = 7'd63;
  
  assign row1 = 14'd0;
  assign row2 = 14'd72;
  assign row3 = 14'd144;
  assign row4 = 14'd216;
  assign row5 = 14'd288;
  assign row6 = 14'd360;
  assign row7 = 14'd432;
  assign row8 = 14'd504;
  assign row9 = 14'd576;
  assign row10 = 14'd648;
  assign row11 = 14'd720;
  assign row12 = 14'd792;
  assign row13 = 14'd864;
  assign row14 = 14'd936;
  assign row15 = 14'd1008;
  assign row16 = 14'd1080;
  
  
  always @(iNumOrder)
  begin
    case (iNumOrder)
      7'd0 : begin 
			 oAddrBeginRow = row1;
			 oAddrEndRow   = row2;
             oAddrBeginCol = col1; 
			 oAddrEndCol   = col2; 
			 end
	  7'd1 : begin 
			 oAddrBeginRow = row1;
			 oAddrEndRow   = row2;
             oAddrBeginCol = col2; 
			 oAddrEndCol   = col3; 
			 end
	  7'd2 : begin 
			 oAddrBeginRow = row1;
			 oAddrEndRow   = row2;
             oAddrBeginCol = col3; 
			 oAddrEndCol   = col4; 
			 end
	  7'd3 : begin 
			 oAddrBeginRow = row1;
			 oAddrEndRow   = row2;
             oAddrBeginCol = col4; 
			 oAddrEndCol   = col5; 
			 end
	  7'd4 : begin 
			 oAddrBeginRow = row1;
			 oAddrEndRow   = row2;
             oAddrBeginCol = col5; 
			 oAddrEndCol   = col6; 
			 end
	  7'd5 : begin 
			 oAddrBeginRow = row1;
			 oAddrEndRow   = row2;
             oAddrBeginCol = col6; 
			 oAddrEndCol   = col7; 
			 end
	  7'd6 : begin 
			 oAddrBeginRow = row1;
			 oAddrEndRow   = row2;
             oAddrBeginCol = col7; 
			 oAddrEndCol   = col8; 
			 end
	/////////////////////////////		 
	  7'd7 : begin 
			 oAddrBeginRow = row2;
			 oAddrEndRow   = row3;
             oAddrBeginCol = col1; 
			 oAddrEndCol   = col2; 
			 end
	  7'd8 : begin 
			 oAddrBeginRow = row2;
			 oAddrEndRow   = row3;
             oAddrBeginCol = col2; 
			 oAddrEndCol   = col3; 
			 end
	  7'd9 : begin 
			 oAddrBeginRow = row2;
			 oAddrEndRow   = row3;
             oAddrBeginCol = col3; 
			 oAddrEndCol   = col4; 
			 end
	  7'd10 : begin 
			 oAddrBeginRow = row2;
			 oAddrEndRow   = row3;
             oAddrBeginCol = col4; 
			 oAddrEndCol   = col5; 
			 end
	  7'd11 : begin 
			 oAddrBeginRow = row2;
			 oAddrEndRow   = row3;
             oAddrBeginCol = col5; 
			 oAddrEndCol   = col6; 
			 end
	  7'd12 : begin 
			 oAddrBeginRow = row2;
			 oAddrEndRow   = row3;
             oAddrBeginCol = col6; 
			 oAddrEndCol   = col7; 
			 end
	  7'd13 : begin 
			 oAddrBeginRow = row2;
			 oAddrEndRow   = row3;
             oAddrBeginCol = col7; 
			 oAddrEndCol   = col8; 
			 end  
			 
	///////////////////////////
	
	  7'd14 : begin 
			 oAddrBeginRow = row3;
			 oAddrEndRow   = row4;
             oAddrBeginCol = col1; 
			 oAddrEndCol   = col2; 
			 end
	  7'd15 : begin 
			 oAddrBeginRow = row3;
			 oAddrEndRow   = row4;
             oAddrBeginCol = col2; 
			 oAddrEndCol   = col3; 
			 end
	  7'd16 : begin 
			 oAddrBeginRow = row3;
			 oAddrEndRow   = row4;
             oAddrBeginCol = col3; 
			 oAddrEndCol   = col4; 
			 end
	  7'd17 : begin 
			 oAddrBeginRow = row3;
			 oAddrEndRow   = row4;
             oAddrBeginCol = col4; 
			 oAddrEndCol   = col5; 
			 end
	  7'd18 : begin 
			 oAddrBeginRow = row3;
			 oAddrEndRow   = row4;
             oAddrBeginCol = col5; 
			 oAddrEndCol   = col6; 
			 end
	  7'd19 : begin 
			 oAddrBeginRow = row3;
			 oAddrEndRow   = row4;
             oAddrBeginCol = col6; 
			 oAddrEndCol   = col7; 
			 end
	  7'd20 : begin 
			 oAddrBeginRow = row3;
			 oAddrEndRow   = row4;
             oAddrBeginCol = col7; 
			 oAddrEndCol   = col8; 
			 end
	//////////////////////////
	
	  7'd21 : begin 
			 oAddrBeginRow = row4;
			 oAddrEndRow   = row5;
             oAddrBeginCol = col1; 
			 oAddrEndCol   = col2; 
			 end
	  7'd22 : begin 
			 oAddrBeginRow = row4;
			 oAddrEndRow   = row5;
             oAddrBeginCol = col2; 
			 oAddrEndCol   = col3; 
			 end
	  7'd23 : begin 
			 oAddrBeginRow = row4;
			 oAddrEndRow   = row5;
             oAddrBeginCol = col3; 
			 oAddrEndCol   = col4; 
			 end
	  7'd24 : begin 
			 oAddrBeginRow = row4;
			 oAddrEndRow   = row5;
             oAddrBeginCol = col4; 
			 oAddrEndCol   = col5; 
			 end
	  7'd25 : begin 
			 oAddrBeginRow = row4;
			 oAddrEndRow   = row5;
             oAddrBeginCol = col5; 
			 oAddrEndCol   = col6; 
			 end
	  7'd26 : begin 
			 oAddrBeginRow = row4;
			 oAddrEndRow   = row5;
             oAddrBeginCol = col6; 
			 oAddrEndCol   = col7; 
			 end
	  7'd27 : begin 
			 oAddrBeginRow = row4;
			 oAddrEndRow   = row5;
             oAddrBeginCol = col7; 
			 oAddrEndCol   = col8; 
			 end
    //////////////////////////
	
	  7'd28 : begin 
			 oAddrBeginRow = row5;
			 oAddrEndRow   = row6;
             oAddrBeginCol = col1; 
			 oAddrEndCol   = col2; 
			 end
	  7'd29 : begin 
			 oAddrBeginRow = row5;
			 oAddrEndRow   = row6;
             oAddrBeginCol = col2; 
			 oAddrEndCol   = col3; 
			 end
	  7'd30 : begin 
			 oAddrBeginRow = row5;
			 oAddrEndRow   = row6;
             oAddrBeginCol = col3; 
			 oAddrEndCol   = col4; 
			 end
	  7'd31 : begin 
			 oAddrBeginRow = row5;
			 oAddrEndRow   = row6;
             oAddrBeginCol = col4; 
			 oAddrEndCol   = col5; 
			 end
	  7'd32 : begin 
			 oAddrBeginRow = row5;
			 oAddrEndRow   = row6;
             oAddrBeginCol = col5; 
			 oAddrEndCol   = col6; 
			 end
	  7'd33 : begin 
			 oAddrBeginRow = row5;
			 oAddrEndRow   = row6;
             oAddrBeginCol = col6; 
			 oAddrEndCol   = col7; 
			 end
	  7'd34 : begin 
			 oAddrBeginRow = row5;
			 oAddrEndRow   = row6;
             oAddrBeginCol = col7; 
			 oAddrEndCol   = col8; 
			 end
	//////////////////////////
	
	  7'd35 : begin 
			 oAddrBeginRow = row6;
			 oAddrEndRow   = row7;
             oAddrBeginCol = col1; 
			 oAddrEndCol   = col2; 
			 end
	  7'd36 : begin 
			 oAddrBeginRow = row6;
			 oAddrEndRow   = row7;
             oAddrBeginCol = col2; 
			 oAddrEndCol   = col3; 
			 end
	  7'd37 : begin 
			 oAddrBeginRow = row6;
			 oAddrEndRow   = row7;
             oAddrBeginCol = col3; 
			 oAddrEndCol   = col4; 
			 end
	  7'd38 : begin 
			 oAddrBeginRow = row6;
			 oAddrEndRow   = row7;
             oAddrBeginCol = col4; 
			 oAddrEndCol   = col5; 
			 end
	  7'd39 : begin 
			 oAddrBeginRow = row6;
			 oAddrEndRow   = row7;
             oAddrBeginCol = col5; 
			 oAddrEndCol   = col6; 
			 end
	  7'd40 : begin 
			 oAddrBeginRow = row6;
			 oAddrEndRow   = row7;
             oAddrBeginCol = col6; 
			 oAddrEndCol   = col7; 
			 end
	  7'd41 : begin 
			 oAddrBeginRow = row6;
			 oAddrEndRow   = row7;
             oAddrBeginCol = col7; 
			 oAddrEndCol   = col8; 
			 end
			 
	///////////////////////////
	
	  7'd42 : begin 
			 oAddrBeginRow = row7;
			 oAddrEndRow   = row8;
             oAddrBeginCol = col1; 
			 oAddrEndCol   = col2; 
			 end
	  7'd43 : begin 
			 oAddrBeginRow = row7;
			 oAddrEndRow   = row8;
             oAddrBeginCol = col2; 
			 oAddrEndCol   = col3; 
			 end
	  7'd44 : begin 
			 oAddrBeginRow = row7;
			 oAddrEndRow   = row8;
             oAddrBeginCol = col3; 
			 oAddrEndCol   = col4; 
			 end
	  7'd45 : begin 
			 oAddrBeginRow = row7;
			 oAddrEndRow   = row8;
             oAddrBeginCol = col4; 
			 oAddrEndCol   = col5; 
			 end
	  7'd46 : begin 
			 oAddrBeginRow = row7;
			 oAddrEndRow   = row8;
             oAddrBeginCol = col5; 
			 oAddrEndCol   = col6; 
			 end
	  7'd47 : begin 
			 oAddrBeginRow = row7;
			 oAddrEndRow   = row8;
             oAddrBeginCol = col6; 
			 oAddrEndCol   = col7; 
			 end
	  7'd48 : begin 
			 oAddrBeginRow = row7;
			 oAddrEndRow   = row8;
             oAddrBeginCol = col7; 
			 oAddrEndCol   = col8; 
			 end
	////////////////////////////

	  7'd49 : begin 
			 oAddrBeginRow = row8;
			 oAddrEndRow   = row9;
             oAddrBeginCol = col1; 
			 oAddrEndCol   = col2; 
			 end
	  7'd50 : begin 
			 oAddrBeginRow = row8;
			 oAddrEndRow   = row9;
             oAddrBeginCol = col2; 
			 oAddrEndCol   = col3; 
			 end
	  7'd51 : begin 
			 oAddrBeginRow = row8;
			 oAddrEndRow   = row9;
             oAddrBeginCol = col3; 
			 oAddrEndCol   = col4; 
			 end
	  7'd52 : begin 
			 oAddrBeginRow = row8;
			 oAddrEndRow   = row9;
             oAddrBeginCol = col4; 
			 oAddrEndCol   = col5; 
			 end
	  7'd53 : begin 
			 oAddrBeginRow = row8;
			 oAddrEndRow   = row9;
             oAddrBeginCol = col5; 
			 oAddrEndCol   = col6; 
			 end
	  7'd54 : begin 
			 oAddrBeginRow = row8;
			 oAddrEndRow   = row9;
             oAddrBeginCol = col6; 
			 oAddrEndCol   = col7; 
			 end
	  7'd55 : begin 
			 oAddrBeginRow = row8;
			 oAddrEndRow   = row9;
             oAddrBeginCol = col7; 
			 oAddrEndCol   = col8; 
			 end
			 
	////////////////////////////
	
	  7'd56 : begin 
			 oAddrBeginRow = row9;
			 oAddrEndRow   = row10;
             oAddrBeginCol = col1; 
			 oAddrEndCol   = col2; 
			 end
	  7'd57 : begin 
			 oAddrBeginRow = row9;
			 oAddrEndRow   = row10;
             oAddrBeginCol = col2; 
			 oAddrEndCol   = col3; 
			 end
	  7'd58 : begin 
			 oAddrBeginRow = row9;
			 oAddrEndRow   = row10;
             oAddrBeginCol = col3; 
			 oAddrEndCol   = col4; 
			 end
	  7'd59 : begin 
			 oAddrBeginRow = row9;
			 oAddrEndRow   = row10;
             oAddrBeginCol = col4; 
			 oAddrEndCol   = col5; 
			 end
	  7'd60 : begin 
			 oAddrBeginRow = row9;
			 oAddrEndRow   = row10;
             oAddrBeginCol = col5; 
			 oAddrEndCol   = col6; 
			 end
	  7'd61 : begin 
			 oAddrBeginRow = row9;
			 oAddrEndRow   = row10;
             oAddrBeginCol = col6; 
			 oAddrEndCol   = col7; 
			 end
	  7'd62 : begin 
			 oAddrBeginRow = row9;
			 oAddrEndRow   = row10;
             oAddrBeginCol = col7; 
			 oAddrEndCol   = col8; 
			 end
	////////////////////////////
	
	  7'd63 : begin 
			 oAddrBeginRow = row10;
			 oAddrEndRow   = row11;
             oAddrBeginCol = col1; 
			 oAddrEndCol   = col2; 
			 end
	  7'd64 : begin 
			 oAddrBeginRow = row10;
			 oAddrEndRow   = row11;
             oAddrBeginCol = col2; 
			 oAddrEndCol   = col3; 
			 end
	  7'd65 : begin 
			 oAddrBeginRow = row10;
			 oAddrEndRow   = row11;
             oAddrBeginCol = col3; 
			 oAddrEndCol   = col4; 
			 end
	  7'd66 : begin 
			 oAddrBeginRow = row10;
			 oAddrEndRow   = row11;
             oAddrBeginCol = col4; 
			 oAddrEndCol   = col5; 
			 end
	  7'd67 : begin 
			 oAddrBeginRow = row10;
			 oAddrEndRow   = row11;
             oAddrBeginCol = col5; 
			 oAddrEndCol   = col6; 
			 end
	  7'd68 : begin 
			 oAddrBeginRow = row10;
			 oAddrEndRow   = row11;
             oAddrBeginCol = col6; 
			 oAddrEndCol   = col7; 
			 end
	  7'd69 : begin 
			 oAddrBeginRow = row10;
			 oAddrEndRow   = row11;
             oAddrBeginCol = col7; 
			 oAddrEndCol   = col8; 
			 end
	//////////////////////////////
	
	  7'd70 : begin 
			 oAddrBeginRow = row11;
			 oAddrEndRow   = row12;
             oAddrBeginCol = col1; 
			 oAddrEndCol   = col2; 
			 end
	  7'd71 : begin 
			 oAddrBeginRow = row11;
			 oAddrEndRow   = row12;
             oAddrBeginCol = col2; 
			 oAddrEndCol   = col3; 
			 end
	  7'd72 : begin 
			 oAddrBeginRow = row11;
			 oAddrEndRow   = row12;
             oAddrBeginCol = col3; 
			 oAddrEndCol   = col4; 
			 end
	  7'd73 : begin 
			 oAddrBeginRow = row11;
			 oAddrEndRow   = row12;
             oAddrBeginCol = col4; 
			 oAddrEndCol   = col5; 
			 end
	  7'd74 : begin 
			 oAddrBeginRow = row11;
			 oAddrEndRow   = row12;
             oAddrBeginCol = col5; 
			 oAddrEndCol   = col6; 
			 end
	  7'd75 : begin 
			 oAddrBeginRow = row11;
			 oAddrEndRow   = row12;
             oAddrBeginCol = col6; 
			 oAddrEndCol   = col7; 
			 end
	  7'd76 : begin 
			 oAddrBeginRow = row11;
			 oAddrEndRow   = row12;
             oAddrBeginCol = col7; 
			 oAddrEndCol   = col8; 
			 end
	////////////////////////////
	
	  7'd77 : begin 
			 oAddrBeginRow = row12;
			 oAddrEndRow   = row13;
             oAddrBeginCol = col1; 
			 oAddrEndCol   = col2; 
			 end
	  7'd78 : begin 
			 oAddrBeginRow = row12;
			 oAddrEndRow   = row13;
             oAddrBeginCol = col2; 
			 oAddrEndCol   = col3; 
			 end
	  7'd79 : begin 
			 oAddrBeginRow = row12;
			 oAddrEndRow   = row13;
             oAddrBeginCol = col3; 
			 oAddrEndCol   = col4; 
			 end
	  7'd80 : begin 
			 oAddrBeginRow = row12;
			 oAddrEndRow   = row13;
             oAddrBeginCol = col4; 
			 oAddrEndCol   = col5; 
			 end
	  7'd81 : begin 
			 oAddrBeginRow = row12;
			 oAddrEndRow   = row13;
             oAddrBeginCol = col5; 
			 oAddrEndCol   = col6; 
			 end
	  7'd82 : begin 
			 oAddrBeginRow = row12;
			 oAddrEndRow   = row13;
             oAddrBeginCol = col6; 
			 oAddrEndCol   = col7; 
			 end
	  7'd83 : begin 
			 oAddrBeginRow = row12;
			 oAddrEndRow   = row13;
             oAddrBeginCol = col7; 
			 oAddrEndCol   = col8; 
			 end
	///////////////////////////
	
	  7'd84 : begin 
			 oAddrBeginRow = row13;
			 oAddrEndRow   = row14;
             oAddrBeginCol = col1; 
			 oAddrEndCol   = col2; 
			 end
	  7'd85 : begin 
			 oAddrBeginRow = row13;
			 oAddrEndRow   = row14;
             oAddrBeginCol = col2; 
			 oAddrEndCol   = col3; 
			 end
	  7'd86 : begin 
			 oAddrBeginRow = row13;
			 oAddrEndRow   = row14;
             oAddrBeginCol = col3; 
			 oAddrEndCol   = col4; 
			 end
	  7'd87 : begin 
			 oAddrBeginRow = row13;
			 oAddrEndRow   = row14;
             oAddrBeginCol = col4; 
			 oAddrEndCol   = col5; 
			 end
	  7'd88 : begin 
			 oAddrBeginRow = row13;
			 oAddrEndRow   = row14;
             oAddrBeginCol = col5; 
			 oAddrEndCol   = col6; 
			 end
	  7'd89 : begin 
			 oAddrBeginRow = row13;
			 oAddrEndRow   = row14;
             oAddrBeginCol = col6; 
			 oAddrEndCol   = col7; 
			 end
	  7'd90 : begin 
			 oAddrBeginRow = row13;
			 oAddrEndRow   = row14;
             oAddrBeginCol = col7; 
			 oAddrEndCol   = col8; 
			 end
	///////////////////////////
	
	  7'd91 : begin 
			 oAddrBeginRow = row14;
			 oAddrEndRow   = row15;
             oAddrBeginCol = col1; 
			 oAddrEndCol   = col2; 
			 end
	  7'd92 : begin 
			 oAddrBeginRow = row14;
			 oAddrEndRow   = row15;
             oAddrBeginCol = col2; 
			 oAddrEndCol   = col3; 
			 end
	  7'd93 : begin 
			 oAddrBeginRow = row14;
			 oAddrEndRow   = row15;
             oAddrBeginCol = col3; 
			 oAddrEndCol   = col4; 
			 end
	  7'd94 : begin 
			 oAddrBeginRow = row14;
			 oAddrEndRow   = row15;
             oAddrBeginCol = col4; 
			 oAddrEndCol   = col5; 
			 end
	  7'd95 : begin 
			 oAddrBeginRow = row14;
			 oAddrEndRow   = row15;
             oAddrBeginCol = col5; 
			 oAddrEndCol   = col6; 
			 end
	  7'd96 : begin 
			 oAddrBeginRow = row14;
			 oAddrEndRow   = row15;
             oAddrBeginCol = col6; 
			 oAddrEndCol   = col7; 
			 end
	  7'd97 : begin 
			 oAddrBeginRow = row14;
			 oAddrEndRow   = row15;
             oAddrBeginCol = col7; 
			 oAddrEndCol   = col8; 
			 end
	////////////////////////////
	
	  7'd98 : begin 
			 oAddrBeginRow = row15;
			 oAddrEndRow   = row16;
             oAddrBeginCol = col1; 
			 oAddrEndCol   = col2; 
			 end
	  7'd99 : begin 
			 oAddrBeginRow = row15;
			 oAddrEndRow   = row16;
             oAddrBeginCol = col2; 
			 oAddrEndCol   = col3; 
			 end
	  7'd100 : begin 
			 oAddrBeginRow = row15;
			 oAddrEndRow   = row16;
             oAddrBeginCol = col3; 
			 oAddrEndCol   = col4; 
			 end
	  7'd101 : begin 
			 oAddrBeginRow = row15;
			 oAddrEndRow   = row16;
             oAddrBeginCol = col4; 
			 oAddrEndCol   = col5; 
			 end
	  7'd102 : begin 
			 oAddrBeginRow = row15;
			 oAddrEndRow   = row16;
             oAddrBeginCol = col5; 
			 oAddrEndCol   = col6; 
			 end
	  7'd103 : begin 
			 oAddrBeginRow = row15;
			 oAddrEndRow   = row16;
             oAddrBeginCol = col6; 
			 oAddrEndCol   = col7; 
			 end
	  7'd104 : begin 
			 oAddrBeginRow = row15;
			 oAddrEndRow   = row16;
             oAddrBeginCol = col7; 
			 oAddrEndCol   = col8; 
			 end
	
  endcase
  end
  
  
endmodule
