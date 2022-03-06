module PreDecoderAddrCell(

input [6:0] iNumOrder,
output reg [13:0] oBeginRow,
output reg [6:0] oBeginCol
);
  
  wire [13:0] row1, row2, row3, row4, row5, row6, row7, row8;
  wire [13:0] row9, row10, row11, row12, row13, row14, row15, row16;
  
  wire [13:0] col1, col2, col3, col4, col5, col6, col7, col8;
  
  assign col1 = 7'd0;
  assign col2 = 7'd8;
  assign col3 = 7'd16;
  assign col4 = 7'd24;
  assign col5 = 7'd32;
  assign col6 = 7'd40;
  assign col7 = 7'd48;
  assign col8 = 7'd56;
  
  assign row1 = 14'd0;
  assign row2 = 14'd528;
  assign row3 = 14'd1056;
  assign row4 = 14'd1584;
  assign row5 = 14'd2112;
  assign row6 = 14'd2640;
  assign row7 = 14'd3168;
  assign row8 = 14'd3696;
  assign row9 = 14'd4224;
  assign row10 = 14'd4752;
  assign row11 = 14'd5280;
  assign row12 = 14'd5808;
  assign row13 = 14'd6336;
  assign row14 = 14'd6864;
  assign row15 = 14'd7392;
  assign row16 = 14'd7920;
  
  
  always @(iNumOrder)
  begin
    case (iNumOrder)
      7'd0 : begin oBeginRow = row1;
             oBeginCol = col1; end
      7'd1 : begin oBeginRow = row1;
             oBeginCol = col2; end
      7'd2 : begin oBeginRow = row1;
             oBeginCol = col3; end
      7'd3 : begin oBeginRow = row1;
             oBeginCol = col4; end
      7'd4 : begin oBeginRow = row1;
             oBeginCol = col5; end
      7'd5 : begin oBeginRow = row1;
             oBeginCol = col6; end
      7'd6 : begin oBeginRow = row1;
             oBeginCol = col7; end
      7'd7 : begin oBeginRow = row1;
             oBeginCol = col8; end
             
      7'd8 : begin oBeginRow = row2;
             oBeginCol = col1; end
      7'd9 : begin oBeginRow = row2;
             oBeginCol = col2; end
      7'd10 : begin oBeginRow = row2;
             oBeginCol = col3; end
      7'd11 : begin oBeginRow = row2;
             oBeginCol = col4; end
      7'd12 : begin oBeginRow = row2;
             oBeginCol = col5; end
      7'd13 : begin oBeginRow = row2;
             oBeginCol = col6; end
      7'd14 : begin oBeginRow = row2;
             oBeginCol = col7; end
      7'd15 : begin oBeginRow = row2;
             oBeginCol = col8;  end
      
      7'd16 : begin oBeginRow = row3;
             oBeginCol = col1; end
      7'd17 : begin oBeginRow = row3;
             oBeginCol = col2; end
      7'd18 : begin oBeginRow = row3;
             oBeginCol = col3; end
      7'd19 : begin oBeginRow = row3;
             oBeginCol = col4; end
      7'd20 : begin oBeginRow = row3;
             oBeginCol = col5; end
      7'd21 : begin oBeginRow = row3;
             oBeginCol = col6; end
      7'd22 : begin oBeginRow = row3;
             oBeginCol = col7; end
      7'd23 : begin oBeginRow = row3;
             oBeginCol = col8; end 
             
      7'd24 : begin oBeginRow = row4;
             oBeginCol = col1; end
      7'd25 : begin oBeginRow = row4;
             oBeginCol = col2; end
      7'd26 : begin oBeginRow = row4;
             oBeginCol = col3; end
      7'd27 : begin oBeginRow = row4;
             oBeginCol = col4; end
      7'd28 : begin oBeginRow = row4;
             oBeginCol = col5; end
      7'd29 : begin oBeginRow = row4;
             oBeginCol = col6; end
      7'd30 : begin oBeginRow = row4;
             oBeginCol = col7; end
      7'd31 : begin oBeginRow = row4;
             oBeginCol = col8; end 
             
      7'd32 : begin oBeginRow = row5;
             oBeginCol = col1; end
      7'd33 : begin oBeginRow = row5;
             oBeginCol = col2; end
      7'd34 : begin oBeginRow = row5;
             oBeginCol = col3; end
      7'd35 : begin oBeginRow = row5;
             oBeginCol = col4; end
      7'd36 : begin oBeginRow = row5;
             oBeginCol = col5; end
      7'd37 : begin oBeginRow = row5;
             oBeginCol = col6; end
      7'd38 : begin oBeginRow = row5;
             oBeginCol = col7; end
      7'd39 : begin oBeginRow = row5;
             oBeginCol = col8; end
             
      7'd40 : begin oBeginRow = row6;
             oBeginCol = col1; end
      7'd41 : begin oBeginRow = row6;
             oBeginCol = col2; end
      7'd42 : begin oBeginRow = row6;
             oBeginCol = col3; end
      7'd43 : begin oBeginRow = row6;
             oBeginCol = col4; end
      7'd44 : begin oBeginRow = row6;
             oBeginCol = col5; end
      7'd45 : begin oBeginRow = row6;
             oBeginCol = col6; end
      7'd46 : begin oBeginRow = row6;
             oBeginCol = col7; end
      7'd47 : begin oBeginRow = row6;
             oBeginCol = col8; end 
      
      7'd48 : begin oBeginRow = row7;
             oBeginCol = col1; end
      7'd49 : begin oBeginRow = row7;
             oBeginCol = col2; end
      7'd50 : begin oBeginRow = row7;
             oBeginCol = col3; end
      7'd51 : begin oBeginRow = row7;
             oBeginCol = col4; end
      7'd52 : begin oBeginRow = row7;
             oBeginCol = col5; end
      7'd53 : begin oBeginRow = row7;
             oBeginCol = col6; end
      7'd54 : begin oBeginRow = row7;
             oBeginCol = col7; end
      7'd55 : begin oBeginRow = row7;
             oBeginCol = col8; end
             
      7'd56 : begin oBeginRow = row8;
             oBeginCol = col1; end
      7'd57 : begin oBeginRow = row8;
             oBeginCol = col2; end
      7'd58 : begin oBeginRow = row8;
             oBeginCol = col3; end
      7'd59 : begin oBeginRow = row8;
             oBeginCol = col4; end
      7'd60 : begin oBeginRow = row8;
             oBeginCol = col5; end
      7'd61 : begin oBeginRow = row8;
             oBeginCol = col6; end
      7'd62 : begin oBeginRow = row8;
             oBeginCol = col7; end
      7'd63 : begin oBeginRow = row8;
             oBeginCol = col8; end 
      
      7'd64 : begin oBeginRow = row9;
             oBeginCol = col1; end
      7'd65 : begin oBeginRow = row9;
             oBeginCol = col2; end
      7'd66 : begin oBeginRow = row9;
             oBeginCol = col3; end
      7'd67 : begin oBeginRow = row9;
             oBeginCol = col4; end
      7'd68 : begin oBeginRow = row9;
             oBeginCol = col5; end
      7'd69 : begin oBeginRow = row9;
             oBeginCol = col6; end
      7'd70 : begin oBeginRow = row9;
             oBeginCol = col7; end
      7'd71 : begin oBeginRow = row9;
             oBeginCol = col8; end
             
      7'd72 : begin oBeginRow = row10;
             oBeginCol = col1; end
      7'd73 : begin oBeginRow = row10;
             oBeginCol = col2; end
      7'd74 : begin oBeginRow = row10;
             oBeginCol = col3; end
      7'd75 : begin oBeginRow = row10;
             oBeginCol = col4; end
      7'd76 : begin oBeginRow = row10;
             oBeginCol = col5; end
      7'd77 : begin oBeginRow = row10;
             oBeginCol = col6; end
      7'd78 : begin oBeginRow = row10;
             oBeginCol = col7; end
      7'd79 : begin oBeginRow = row10;
             oBeginCol = col8; end 
      
      7'd80 : begin oBeginRow = row11;
             oBeginCol = col1; end
      7'd81 : begin oBeginRow = row11;
             oBeginCol = col2; end
      7'd82 : begin oBeginRow = row11;
             oBeginCol = col3; end
      7'd83 : begin oBeginRow = row11;
             oBeginCol = col4; end
      7'd84 : begin oBeginRow = row11;
             oBeginCol = col5; end
      7'd85 : begin oBeginRow = row11;
             oBeginCol = col6; end
      7'd86 : begin oBeginRow = row11;
             oBeginCol = col7; end
      7'd87 : begin oBeginRow = row11;
             oBeginCol = col8; end
             
      7'd88 : begin oBeginRow = row12;
             oBeginCol = col1; end
      7'd89 : begin oBeginRow = row12;
             oBeginCol = col2; end
      7'd90 : begin oBeginRow = row12;
             oBeginCol = col3; end
      7'd91 : begin oBeginRow = row12;
             oBeginCol = col4; end
      7'd92 : begin oBeginRow = row12;
             oBeginCol = col5; end
      7'd93 : begin oBeginRow = row12;
             oBeginCol = col6; end
      7'd94 : begin oBeginRow = row12;
             oBeginCol = col7; end
      7'd95 : begin oBeginRow = row12;
             oBeginCol = col8; end
             
      7'd96 : begin oBeginRow = row13;
             oBeginCol = col1; end
      7'd97 : begin oBeginRow = row13;
             oBeginCol = col2; end
      7'd98 : begin oBeginRow = row13;
             oBeginCol = col3; end
      7'd99 : begin oBeginRow = row13;
             oBeginCol = col4; end
      7'd100 : begin oBeginRow = row13;
             oBeginCol = col5; end
      7'd101 : begin oBeginRow = row13;
             oBeginCol = col6; end
      7'd102 : begin oBeginRow = row13;
             oBeginCol = col7; end
      7'd103 : begin oBeginRow = row13;
             oBeginCol = col8; end  
             
      7'd104 : begin oBeginRow = row14;
             oBeginCol = col1; end
      7'd105 : begin oBeginRow = row14;
             oBeginCol = col2; end
      7'd106 : begin oBeginRow = row14;
             oBeginCol = col3; end
      7'd107 : begin oBeginRow = row14;
             oBeginCol = col4; end
      7'd108 : begin oBeginRow = row14;
             oBeginCol = col5; end
      7'd109 : begin oBeginRow = row14;
             oBeginCol = col6; end
      7'd110 : begin oBeginRow = row14;
             oBeginCol = col7; end
      7'd111 : begin oBeginRow = row14;
             oBeginCol = col8; end
      
      7'd112 : begin oBeginRow = row15;
             oBeginCol = col1; end
      7'd113 : begin oBeginRow = row15;
             oBeginCol = col2; end
      7'd114 : begin oBeginRow = row15;
             oBeginCol = col3; end
      7'd115 : begin oBeginRow = row15;
             oBeginCol = col4; end
      7'd116 : begin oBeginRow = row15;
             oBeginCol = col5; end
      7'd117 : begin oBeginRow = row15;
             oBeginCol = col6; end
      7'd118 : begin oBeginRow = row15;
             oBeginCol = col7; end
      7'd119 : begin oBeginRow = row15;
             oBeginCol = col8; end
             
      7'd120 : begin oBeginRow = row16;
             oBeginCol = col1; end
      7'd121 : begin oBeginRow = row16;
             oBeginCol = col2; end
      7'd122 : begin oBeginRow = row16;
             oBeginCol = col3; end
      7'd123 : begin oBeginRow = row16;
             oBeginCol = col4; end
      7'd124 : begin oBeginRow = row16;
             oBeginCol = col5; end
      7'd125 : begin oBeginRow = row16;
             oBeginCol = col6; end
      7'd126 : begin oBeginRow = row16;
             oBeginCol = col7; end
      7'd127 : begin oBeginRow = row16;
             oBeginCol = col8;  end           
  endcase
  end
  
  
endmodule
