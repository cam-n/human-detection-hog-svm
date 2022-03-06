module GRADIENT_1CELL(

input iClk,

// We need 10x10 input pixels for computing gradient of 64 pixels (including 36 pixels on the border).
// Input values are 8-bits values. 
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

// We will have 64 output gradient values
// Each output gradient value includes a magnitude value and a angle value in floating-point index.
// Totally, we will have 128 32-bits output values.

// 64 32-bits output magnitude values.
output [31:0] oMAG11, oMAG12, oMAG13, oMAG14, oMAG15, oMAG16, oMAG17, oMAG18, 
output [31:0] oMAG21, oMAG22, oMAG23, oMAG24, oMAG25, oMAG26, oMAG27, oMAG28, 
output [31:0] oMAG31, oMAG32, oMAG33, oMAG34, oMAG35, oMAG36, oMAG37, oMAG38, 
output [31:0] oMAG41, oMAG42, oMAG43, oMAG44, oMAG45, oMAG46, oMAG47, oMAG48, 
output [31:0] oMAG51, oMAG52, oMAG53, oMAG54, oMAG55, oMAG56, oMAG57, oMAG58, 
output [31:0] oMAG61, oMAG62, oMAG63, oMAG64, oMAG65, oMAG66, oMAG67, oMAG68, 
output [31:0] oMAG71, oMAG72, oMAG73, oMAG74, oMAG75, oMAG76, oMAG77, oMAG78, 
output [31:0] oMAG81, oMAG82, oMAG83, oMAG84, oMAG85, oMAG86, oMAG87, oMAG88,  

// 64 32-bits output angle values.
output [31:0] oAGL11, oAGL12, oAGL13, oAGL14, oAGL15, oAGL16, oAGL17, oAGL18, 
output [31:0] oAGL21, oAGL22, oAGL23, oAGL24, oAGL25, oAGL26, oAGL27, oAGL28, 
output [31:0] oAGL31, oAGL32, oAGL33, oAGL34, oAGL35, oAGL36, oAGL37, oAGL38, 
output [31:0] oAGL41, oAGL42, oAGL43, oAGL44, oAGL45, oAGL46, oAGL47, oAGL48, 
output [31:0] oAGL51, oAGL52, oAGL53, oAGL54, oAGL55, oAGL56, oAGL57, oAGL58, 
output [31:0] oAGL61, oAGL62, oAGL63, oAGL64, oAGL65, oAGL66, oAGL67, oAGL68, 
output [31:0] oAGL71, oAGL72, oAGL73, oAGL74, oAGL75, oAGL76, oAGL77, oAGL78, 
output [31:0] oAGL81, oAGL82, oAGL83, oAGL84, oAGL85, oAGL86, oAGL87, oAGL88

);


// The gradient of 8 pixels belong to row 1.
GRADIENT_1PIXEL PIXEL11(.iClk(iClk), .iPixel1(iPX21), .iPixel2(iPX23), .iPixel3(iPX12), .iPixel4(iPX32), .oMagnitude(oMAG11), .oAngle(oAGL11));
GRADIENT_1PIXEL PIXEL12(.iClk(iClk), .iPixel1(iPX22), .iPixel2(iPX24), .iPixel3(iPX13), .iPixel4(iPX33), .oMagnitude(oMAG12), .oAngle(oAGL12));
GRADIENT_1PIXEL PIXEL13(.iClk(iClk), .iPixel1(iPX23), .iPixel2(iPX25), .iPixel3(iPX14), .iPixel4(iPX34), .oMagnitude(oMAG13), .oAngle(oAGL13));
GRADIENT_1PIXEL PIXEL14(.iClk(iClk), .iPixel1(iPX24), .iPixel2(iPX26), .iPixel3(iPX15), .iPixel4(iPX35), .oMagnitude(oMAG14), .oAngle(oAGL14));
GRADIENT_1PIXEL PIXEL15(.iClk(iClk), .iPixel1(iPX25), .iPixel2(iPX27), .iPixel3(iPX16), .iPixel4(iPX36), .oMagnitude(oMAG15), .oAngle(oAGL15));
GRADIENT_1PIXEL PIXEL16(.iClk(iClk), .iPixel1(iPX26), .iPixel2(iPX28), .iPixel3(iPX17), .iPixel4(iPX37), .oMagnitude(oMAG16), .oAngle(oAGL16));
GRADIENT_1PIXEL PIXEL17(.iClk(iClk), .iPixel1(iPX27), .iPixel2(iPX29), .iPixel3(iPX18), .iPixel4(iPX38), .oMagnitude(oMAG17), .oAngle(oAGL17));
GRADIENT_1PIXEL PIXEL18(.iClk(iClk), .iPixel1(iPX28), .iPixel2(iPX2_10), .iPixel3(iPX19), .iPixel4(iPX39), .oMagnitude(oMAG18), .oAngle(oAGL18));

// The gradient of 8 pixels belong to row 2.
GRADIENT_1PIXEL PIXEL21(.iClk(iClk), .iPixel1(iPX31), .iPixel2(iPX33), .iPixel3(iPX22), .iPixel4(iPX42), .oMagnitude(oMAG21), .oAngle(oAGL21));
GRADIENT_1PIXEL PIXEL22(.iClk(iClk), .iPixel1(iPX32), .iPixel2(iPX34), .iPixel3(iPX23), .iPixel4(iPX43), .oMagnitude(oMAG22), .oAngle(oAGL22));
GRADIENT_1PIXEL PIXEL23(.iClk(iClk), .iPixel1(iPX33), .iPixel2(iPX35), .iPixel3(iPX24), .iPixel4(iPX44), .oMagnitude(oMAG23), .oAngle(oAGL23));
GRADIENT_1PIXEL PIXEL24(.iClk(iClk), .iPixel1(iPX34), .iPixel2(iPX36), .iPixel3(iPX25), .iPixel4(iPX45), .oMagnitude(oMAG24), .oAngle(oAGL24));
GRADIENT_1PIXEL PIXEL25(.iClk(iClk), .iPixel1(iPX35), .iPixel2(iPX37), .iPixel3(iPX26), .iPixel4(iPX46), .oMagnitude(oMAG25), .oAngle(oAGL25));
GRADIENT_1PIXEL PIXEL26(.iClk(iClk), .iPixel1(iPX36), .iPixel2(iPX38), .iPixel3(iPX27), .iPixel4(iPX47), .oMagnitude(oMAG26), .oAngle(oAGL26));
GRADIENT_1PIXEL PIXEL27(.iClk(iClk), .iPixel1(iPX37), .iPixel2(iPX39), .iPixel3(iPX28), .iPixel4(iPX48), .oMagnitude(oMAG27), .oAngle(oAGL27));
GRADIENT_1PIXEL PIXEL28(.iClk(iClk), .iPixel1(iPX38), .iPixel2(iPX3_10), .iPixel3(iPX29), .iPixel4(iPX49), .oMagnitude(oMAG28), .oAngle(oAGL28));

// The gradient of 8 pixels belong to row 3.
GRADIENT_1PIXEL PIXEL31(.iClk(iClk), .iPixel1(iPX41), .iPixel2(iPX43), .iPixel3(iPX32), .iPixel4(iPX52), .oMagnitude(oMAG31), .oAngle(oAGL31));
GRADIENT_1PIXEL PIXEL32(.iClk(iClk), .iPixel1(iPX42), .iPixel2(iPX44), .iPixel3(iPX33), .iPixel4(iPX53), .oMagnitude(oMAG32), .oAngle(oAGL32));
GRADIENT_1PIXEL PIXEL33(.iClk(iClk), .iPixel1(iPX43), .iPixel2(iPX45), .iPixel3(iPX34), .iPixel4(iPX54), .oMagnitude(oMAG33), .oAngle(oAGL33));
GRADIENT_1PIXEL PIXEL34(.iClk(iClk), .iPixel1(iPX44), .iPixel2(iPX46), .iPixel3(iPX35), .iPixel4(iPX55), .oMagnitude(oMAG34), .oAngle(oAGL34));
GRADIENT_1PIXEL PIXEL35(.iClk(iClk), .iPixel1(iPX45), .iPixel2(iPX47), .iPixel3(iPX36), .iPixel4(iPX56), .oMagnitude(oMAG35), .oAngle(oAGL35));
GRADIENT_1PIXEL PIXEL36(.iClk(iClk), .iPixel1(iPX46), .iPixel2(iPX48), .iPixel3(iPX37), .iPixel4(iPX57), .oMagnitude(oMAG36), .oAngle(oAGL36));
GRADIENT_1PIXEL PIXEL37(.iClk(iClk), .iPixel1(iPX47), .iPixel2(iPX49), .iPixel3(iPX38), .iPixel4(iPX58), .oMagnitude(oMAG37), .oAngle(oAGL37));
GRADIENT_1PIXEL PIXEL38(.iClk(iClk), .iPixel1(iPX48), .iPixel2(iPX4_10), .iPixel3(iPX39), .iPixel4(iPX59), .oMagnitude(oMAG38), .oAngle(oAGL38));

// The gradient of 8 pixels belong to row 4.
GRADIENT_1PIXEL PIXEL41(.iClk(iClk), .iPixel1(iPX51), .iPixel2(iPX53), .iPixel3(iPX42), .iPixel4(iPX62), .oMagnitude(oMAG41), .oAngle(oAGL41));
GRADIENT_1PIXEL PIXEL42(.iClk(iClk), .iPixel1(iPX52), .iPixel2(iPX54), .iPixel3(iPX43), .iPixel4(iPX63), .oMagnitude(oMAG42), .oAngle(oAGL42));
GRADIENT_1PIXEL PIXEL43(.iClk(iClk), .iPixel1(iPX53), .iPixel2(iPX55), .iPixel3(iPX44), .iPixel4(iPX64), .oMagnitude(oMAG43), .oAngle(oAGL43));
GRADIENT_1PIXEL PIXEL44(.iClk(iClk), .iPixel1(iPX54), .iPixel2(iPX56), .iPixel3(iPX45), .iPixel4(iPX65), .oMagnitude(oMAG44), .oAngle(oAGL44));
GRADIENT_1PIXEL PIXEL45(.iClk(iClk), .iPixel1(iPX55), .iPixel2(iPX57), .iPixel3(iPX46), .iPixel4(iPX66), .oMagnitude(oMAG45), .oAngle(oAGL45));
GRADIENT_1PIXEL PIXEL46(.iClk(iClk), .iPixel1(iPX56), .iPixel2(iPX58), .iPixel3(iPX47), .iPixel4(iPX67), .oMagnitude(oMAG46), .oAngle(oAGL46));
GRADIENT_1PIXEL PIXEL47(.iClk(iClk), .iPixel1(iPX57), .iPixel2(iPX59), .iPixel3(iPX48), .iPixel4(iPX68), .oMagnitude(oMAG47), .oAngle(oAGL47));
GRADIENT_1PIXEL PIXEL48(.iClk(iClk), .iPixel1(iPX58), .iPixel2(iPX5_10), .iPixel3(iPX49), .iPixel4(iPX69), .oMagnitude(oMAG48), .oAngle(oAGL48));

// The gradient of 8 pixels belong to row 5.
GRADIENT_1PIXEL PIXEL51(.iClk(iClk), .iPixel1(iPX61), .iPixel2(iPX63), .iPixel3(iPX52), .iPixel4(iPX72), .oMagnitude(oMAG51), .oAngle(oAGL51));
GRADIENT_1PIXEL PIXEL52(.iClk(iClk), .iPixel1(iPX62), .iPixel2(iPX64), .iPixel3(iPX53), .iPixel4(iPX73), .oMagnitude(oMAG52), .oAngle(oAGL52));
GRADIENT_1PIXEL PIXEL53(.iClk(iClk), .iPixel1(iPX63), .iPixel2(iPX65), .iPixel3(iPX54), .iPixel4(iPX74), .oMagnitude(oMAG53), .oAngle(oAGL53));
GRADIENT_1PIXEL PIXEL54(.iClk(iClk), .iPixel1(iPX64), .iPixel2(iPX66), .iPixel3(iPX55), .iPixel4(iPX75), .oMagnitude(oMAG54), .oAngle(oAGL54));
GRADIENT_1PIXEL PIXEL55(.iClk(iClk), .iPixel1(iPX65), .iPixel2(iPX67), .iPixel3(iPX56), .iPixel4(iPX76), .oMagnitude(oMAG55), .oAngle(oAGL55));
GRADIENT_1PIXEL PIXEL56(.iClk(iClk), .iPixel1(iPX66), .iPixel2(iPX68), .iPixel3(iPX57), .iPixel4(iPX77), .oMagnitude(oMAG56), .oAngle(oAGL56));
GRADIENT_1PIXEL PIXEL57(.iClk(iClk), .iPixel1(iPX67), .iPixel2(iPX69), .iPixel3(iPX58), .iPixel4(iPX78), .oMagnitude(oMAG57), .oAngle(oAGL57));
GRADIENT_1PIXEL PIXEL58(.iClk(iClk), .iPixel1(iPX68), .iPixel2(iPX6_10), .iPixel3(iPX59), .iPixel4(iPX79), .oMagnitude(oMAG58), .oAngle(oAGL58));

// The gradient of 8 pixels belong to row 6.
GRADIENT_1PIXEL PIXEL61(.iClk(iClk), .iPixel1(iPX71), .iPixel2(iPX73), .iPixel3(iPX62), .iPixel4(iPX82), .oMagnitude(oMAG61), .oAngle(oAGL61));
GRADIENT_1PIXEL PIXEL62(.iClk(iClk), .iPixel1(iPX72), .iPixel2(iPX74), .iPixel3(iPX63), .iPixel4(iPX83), .oMagnitude(oMAG62), .oAngle(oAGL62));
GRADIENT_1PIXEL PIXEL63(.iClk(iClk), .iPixel1(iPX73), .iPixel2(iPX75), .iPixel3(iPX64), .iPixel4(iPX84), .oMagnitude(oMAG63), .oAngle(oAGL63));
GRADIENT_1PIXEL PIXEL64(.iClk(iClk), .iPixel1(iPX74), .iPixel2(iPX76), .iPixel3(iPX65), .iPixel4(iPX85), .oMagnitude(oMAG64), .oAngle(oAGL64));
GRADIENT_1PIXEL PIXEL65(.iClk(iClk), .iPixel1(iPX75), .iPixel2(iPX77), .iPixel3(iPX66), .iPixel4(iPX86), .oMagnitude(oMAG65), .oAngle(oAGL65));
GRADIENT_1PIXEL PIXEL66(.iClk(iClk), .iPixel1(iPX76), .iPixel2(iPX78), .iPixel3(iPX67), .iPixel4(iPX87), .oMagnitude(oMAG66), .oAngle(oAGL66));
GRADIENT_1PIXEL PIXEL67(.iClk(iClk), .iPixel1(iPX77), .iPixel2(iPX79), .iPixel3(iPX68), .iPixel4(iPX88), .oMagnitude(oMAG67), .oAngle(oAGL67));
GRADIENT_1PIXEL PIXEL68(.iClk(iClk), .iPixel1(iPX78), .iPixel2(iPX7_10), .iPixel3(iPX69), .iPixel4(iPX89), .oMagnitude(oMAG68), .oAngle(oAGL68));

// The gradient of 8 pixels belong to row 7.
GRADIENT_1PIXEL PIXEL71(.iClk(iClk), .iPixel1(iPX81), .iPixel2(iPX83), .iPixel3(iPX72), .iPixel4(iPX92), .oMagnitude(oMAG71), .oAngle(oAGL71));
GRADIENT_1PIXEL PIXEL72(.iClk(iClk), .iPixel1(iPX82), .iPixel2(iPX84), .iPixel3(iPX73), .iPixel4(iPX93), .oMagnitude(oMAG72), .oAngle(oAGL72));
GRADIENT_1PIXEL PIXEL73(.iClk(iClk), .iPixel1(iPX83), .iPixel2(iPX85), .iPixel3(iPX74), .iPixel4(iPX94), .oMagnitude(oMAG73), .oAngle(oAGL73));
GRADIENT_1PIXEL PIXEL74(.iClk(iClk), .iPixel1(iPX84), .iPixel2(iPX86), .iPixel3(iPX75), .iPixel4(iPX95), .oMagnitude(oMAG74), .oAngle(oAGL74));
GRADIENT_1PIXEL PIXEL75(.iClk(iClk), .iPixel1(iPX85), .iPixel2(iPX87), .iPixel3(iPX76), .iPixel4(iPX96), .oMagnitude(oMAG75), .oAngle(oAGL75));
GRADIENT_1PIXEL PIXEL76(.iClk(iClk), .iPixel1(iPX86), .iPixel2(iPX88), .iPixel3(iPX77), .iPixel4(iPX97), .oMagnitude(oMAG76), .oAngle(oAGL76));
GRADIENT_1PIXEL PIXEL77(.iClk(iClk), .iPixel1(iPX87), .iPixel2(iPX89), .iPixel3(iPX78), .iPixel4(iPX98), .oMagnitude(oMAG77), .oAngle(oAGL77));
GRADIENT_1PIXEL PIXEL78(.iClk(iClk), .iPixel1(iPX88), .iPixel2(iPX8_10), .iPixel3(iPX79), .iPixel4(iPX99), .oMagnitude(oMAG78), .oAngle(oAGL78));

// The gradient of 8 pixels belong to row 8.
GRADIENT_1PIXEL PIXEL81(.iClk(iClk), .iPixel1(iPX91), .iPixel2(iPX93), .iPixel3(iPX82), .iPixel4(iPX10_2), .oMagnitude(oMAG81), .oAngle(oAGL81));
GRADIENT_1PIXEL PIXEL82(.iClk(iClk), .iPixel1(iPX92), .iPixel2(iPX94), .iPixel3(iPX83), .iPixel4(iPX10_3), .oMagnitude(oMAG82), .oAngle(oAGL82));
GRADIENT_1PIXEL PIXEL83(.iClk(iClk), .iPixel1(iPX93), .iPixel2(iPX95), .iPixel3(iPX84), .iPixel4(iPX10_4), .oMagnitude(oMAG83), .oAngle(oAGL83));
GRADIENT_1PIXEL PIXEL84(.iClk(iClk), .iPixel1(iPX94), .iPixel2(iPX96), .iPixel3(iPX85), .iPixel4(iPX10_5), .oMagnitude(oMAG84), .oAngle(oAGL84));
GRADIENT_1PIXEL PIXEL85(.iClk(iClk), .iPixel1(iPX95), .iPixel2(iPX97), .iPixel3(iPX86), .iPixel4(iPX10_6), .oMagnitude(oMAG85), .oAngle(oAGL85));
GRADIENT_1PIXEL PIXEL86(.iClk(iClk), .iPixel1(iPX96), .iPixel2(iPX98), .iPixel3(iPX87), .iPixel4(iPX10_7), .oMagnitude(oMAG86), .oAngle(oAGL86));
GRADIENT_1PIXEL PIXEL87(.iClk(iClk), .iPixel1(iPX97), .iPixel2(iPX99), .iPixel3(iPX88), .iPixel4(iPX10_8), .oMagnitude(oMAG87), .oAngle(oAGL87));
GRADIENT_1PIXEL PIXEL88(.iClk(iClk), .iPixel1(iPX98), .iPixel2(iPX9_10), .iPixel3(iPX89), .iPixel4(iPX10_9), .oMagnitude(oMAG88), .oAngle(oAGL88));

  
  
endmodule

