

module HISTOGRAM_1CELL_PRENORM(

  input iClk,
  input iRst_n,
	input [7:0] iPX11, iPX12, iPX13, iPX14, iPX15, iPX16, iPX17, iPX18, iPX19, iPX1_10, 
	input [7:0] iPX21, iPX22, iPX23, iPX24, iPX25, iPX26, iPX27, iPX28, iPX29, iPX2_10, 
	input [7:0] iPX31, iPX32, iPX33, iPX34, iPX35, iPX36, iPX37, iPX38, iPX39, iPX3_10, 
	input [7:0] iPX41, iPX42, iPX43, iPX44, iPX45, iPX46, iPX47, iPX48, iPX49, iPX4_10, 
	input [7:0] iPX51, iPX52, iPX53, iPX54, iPX55, iPX56, iPX57, iPX58, iPX59, iPX5_10, 
	input [7:0] iPX61, iPX62, iPX63, iPX64, iPX65, iPX66, iPX67, iPX68, iPX69, iPX6_10, 
	input [7:0] iPX71, iPX72, iPX73, iPX74, iPX75, iPX76, iPX77, iPX78, iPX79, iPX7_10, 
	input [7:0] iPX81, iPX82, iPX83, iPX84, iPX85, iPX86, iPX87, iPX88, iPX89, iPX8_10, 
	input [7:0] iPX91, iPX92, iPX93, iPX94, iPX95, iPX96, iPX97, iPX98, iPX99, iPX9_10, 
	input [7:0] iPX10_1, iPX10_2, iPX10_3, iPX10_4, iPX10_5, iPX10_6, iPX10_7, iPX10_8, iPX10_9, iPX10_10,
	
	output [31:0] oBIN1, oBIN2, oBIN3, oBIN4, oBIN5, oBIN6, oBIN7, oBIN8, oBIN9,
	output reg oDONE

  );
  
  HISTOGRAM_1CELL HISTOGRAM_1CELL(
  .iClk(iClk),
  .iPX11(iPX11),.iPX12(iPX12),.iPX13(iPX13),.iPX14(iPX14),.iPX15(iPX15),.iPX16(iPX16),.iPX17(iPX17),.iPX18(iPX18),.iPX19(iPX19),.iPX1_10(iPX1_10),
  .iPX21(iPX21),.iPX22(iPX22),.iPX23(iPX23),.iPX24(iPX24),.iPX25(iPX25),.iPX26(iPX26),.iPX27(iPX27),.iPX28(iPX28),.iPX29(iPX29),.iPX2_10(iPX2_10),
  .iPX31(iPX31),.iPX32(iPX32),.iPX33(iPX33),.iPX34(iPX34),.iPX35(iPX35),.iPX36(iPX36),.iPX37(iPX37),.iPX38(iPX38),.iPX39(iPX39),.iPX3_10(iPX3_10),
  .iPX41(iPX41),.iPX42(iPX42),.iPX43(iPX43),.iPX44(iPX44),.iPX45(iPX45),.iPX46(iPX46),.iPX47(iPX47),.iPX48(iPX48),.iPX49(iPX49),.iPX4_10(iPX4_10),
  .iPX51(iPX51),.iPX52(iPX52),.iPX53(iPX53),.iPX54(iPX54),.iPX55(iPX55),.iPX56(iPX56),.iPX57(iPX57),.iPX58(iPX58),.iPX59(iPX59),.iPX5_10(iPX5_10),
  .iPX61(iPX61),.iPX62(iPX62),.iPX63(iPX63),.iPX64(iPX64),.iPX65(iPX65),.iPX66(iPX66),.iPX67(iPX67),.iPX68(iPX68),.iPX69(iPX69),.iPX6_10(iPX6_10),
  .iPX71(iPX71),.iPX72(iPX72),.iPX73(iPX73),.iPX74(iPX74),.iPX75(iPX75),.iPX76(iPX76),.iPX77(iPX77),.iPX78(iPX78),.iPX79(iPX79),.iPX7_10(iPX7_10),
  .iPX81(iPX81),.iPX82(iPX82),.iPX83(iPX83),.iPX84(iPX84),.iPX85(iPX85),.iPX86(iPX86),.iPX87(iPX87),.iPX88(iPX88),.iPX89(iPX89),.iPX8_10(iPX8_10),
  .iPX91(iPX91),.iPX92(iPX92),.iPX93(iPX93),.iPX94(iPX94),.iPX95(iPX95),.iPX96(iPX96),.iPX97(iPX97),.iPX98(iPX98),.iPX99(iPX99),.iPX9_10(iPX9_10),
  .iPX10_1(iPX10_1),.iPX10_2(iPX10_2),.iPX10_3(iPX10_3),.iPX10_4(iPX10_4),.iPX10_5(iPX10_5),.iPX10_6(iPX10_6),.iPX10_7(iPX10_7),.iPX10_8(iPX10_8),
  .iPX10_9(iPX10_9),.iPX10_10(iPX10_10),
  
  .oBIN1(oBIN1), .oBIN2(oBIN2), .oBIN3(oBIN3), .oBIN4(oBIN4), .oBIN5(oBIN5), .oBIN6(oBIN6), .oBIN7(oBIN7), .oBIN8(oBIN8), .oBIN9(oBIN9)
  
  );
  
reg [7:0] count; 
always @(posedge iClk)
begin
    if (!iRst_n ) begin
      count <= 8'd0;
    end 
    else  begin
      count <= count + 1'b1;
        
      if (count == 8'd115) begin
       count <= 8'd0;
      end
      if (count == 8'd112) begin
        oDONE <= 1'b1;
      end
      else  begin 
        oDONE <= 1'b0;
      end
    end 
end
  
endmodule
