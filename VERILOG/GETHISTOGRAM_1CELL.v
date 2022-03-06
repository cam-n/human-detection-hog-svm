module GETHISTOGRAM_1CELL(

  input iClk,
  input [31:0] iMAG11, iMAG12, iMAG13, iMAG14, iMAG15, iMAG16, iMAG17, iMAG18, 
  input [31:0] iMAG21, iMAG22, iMAG23, iMAG24, iMAG25, iMAG26, iMAG27, iMAG28, 
  input [31:0] iMAG31, iMAG32, iMAG33, iMAG34, iMAG35, iMAG36, iMAG37, iMAG38, 
  input [31:0] iMAG41, iMAG42, iMAG43, iMAG44, iMAG45, iMAG46, iMAG47, iMAG48, 
  input [31:0] iMAG51, iMAG52, iMAG53, iMAG54, iMAG55, iMAG56, iMAG57, iMAG58, 
  input [31:0] iMAG61, iMAG62, iMAG63, iMAG64, iMAG65, iMAG66, iMAG67, iMAG68, 
  input [31:0] iMAG71, iMAG72, iMAG73, iMAG74, iMAG75, iMAG76, iMAG77, iMAG78, 
  input [31:0] iMAG81, iMAG82, iMAG83, iMAG84, iMAG85, iMAG86, iMAG87, iMAG88, 
  
  input [31:0] iAGL11, iAGL12, iAGL13, iAGL14, iAGL15, iAGL16, iAGL17, iAGL18, 
  input [31:0] iAGL21, iAGL22, iAGL23, iAGL24, iAGL25, iAGL26, iAGL27, iAGL28, 
  input [31:0] iAGL31, iAGL32, iAGL33, iAGL34, iAGL35, iAGL36, iAGL37, iAGL38, 
  input [31:0] iAGL41, iAGL42, iAGL43, iAGL44, iAGL45, iAGL46, iAGL47, iAGL48, 
  input [31:0] iAGL51, iAGL52, iAGL53, iAGL54, iAGL55, iAGL56, iAGL57, iAGL58, 
  input [31:0] iAGL61, iAGL62, iAGL63, iAGL64, iAGL65, iAGL66, iAGL67, iAGL68, 
  input [31:0] iAGL71, iAGL72, iAGL73, iAGL74, iAGL75, iAGL76, iAGL77, iAGL78, 
  input [31:0] iAGL81, iAGL82, iAGL83, iAGL84, iAGL85, iAGL86, iAGL87, iAGL88, 
  
  output [31:0] oBIN1, oBIN2, oBIN3, oBIN4, oBIN5, oBIN6, oBIN7, oBIN8, oBIN9
  
);
  
  
  // Get histogram of 64 input pixels for bin1.
  wire [31:0] bin1_11, bin1_12, bin1_13, bin1_14, bin1_15, bin1_16, bin1_17, bin1_18; 
  wire [31:0] bin1_21, bin1_22, bin1_23, bin1_24, bin1_25, bin1_26, bin1_27, bin1_28; 
  wire [31:0] bin1_31, bin1_32, bin1_33, bin1_34, bin1_35, bin1_36, bin1_37, bin1_38; 
  wire [31:0] bin1_41, bin1_42, bin1_43, bin1_44, bin1_45, bin1_46, bin1_47, bin1_48; 
  wire [31:0] bin1_51, bin1_52, bin1_53, bin1_54, bin1_55, bin1_56, bin1_57, bin1_58; 
  wire [31:0] bin1_61, bin1_62, bin1_63, bin1_64, bin1_65, bin1_66, bin1_67, bin1_68; 
  wire [31:0] bin1_71, bin1_72, bin1_73, bin1_74, bin1_75, bin1_76, bin1_77, bin1_78; 
  wire [31:0] bin1_81, bin1_82, bin1_83, bin1_84, bin1_85, bin1_86, bin1_87, bin1_88; 
  // Get histogram of 64 input pixels for bin2.
  wire [31:0] bin2_11, bin2_12, bin2_13, bin2_14, bin2_15, bin2_16, bin2_17, bin2_18; 
  wire [31:0] bin2_21, bin2_22, bin2_23, bin2_24, bin2_25, bin2_26, bin2_27, bin2_28; 
  wire [31:0] bin2_31, bin2_32, bin2_33, bin2_34, bin2_35, bin2_36, bin2_37, bin2_38; 
  wire [31:0] bin2_41, bin2_42, bin2_43, bin2_44, bin2_45, bin2_46, bin2_47, bin2_48; 
  wire [31:0] bin2_51, bin2_52, bin2_53, bin2_54, bin2_55, bin2_56, bin2_57, bin2_58; 
  wire [31:0] bin2_61, bin2_62, bin2_63, bin2_64, bin2_65, bin2_66, bin2_67, bin2_68; 
  wire [31:0] bin2_71, bin2_72, bin2_73, bin2_74, bin2_75, bin2_76, bin2_77, bin2_78; 
  wire [31:0] bin2_81, bin2_82, bin2_83, bin2_84, bin2_85, bin2_86, bin2_87, bin2_88; 
  // Get histogram of 64 input pixels for bin3.
  wire [31:0] bin3_11, bin3_12, bin3_13, bin3_14, bin3_15, bin3_16, bin3_17, bin3_18; 
  wire [31:0] bin3_21, bin3_22, bin3_23, bin3_24, bin3_25, bin3_26, bin3_27, bin3_28; 
  wire [31:0] bin3_31, bin3_32, bin3_33, bin3_34, bin3_35, bin3_36, bin3_37, bin3_38; 
  wire [31:0] bin3_41, bin3_42, bin3_43, bin3_44, bin3_45, bin3_46, bin3_47, bin3_48; 
  wire [31:0] bin3_51, bin3_52, bin3_53, bin3_54, bin3_55, bin3_56, bin3_57, bin3_58; 
  wire [31:0] bin3_61, bin3_62, bin3_63, bin3_64, bin3_65, bin3_66, bin3_67, bin3_68; 
  wire [31:0] bin3_71, bin3_72, bin3_73, bin3_74, bin3_75, bin3_76, bin3_77, bin3_78; 
  wire [31:0] bin3_81, bin3_82, bin3_83, bin3_84, bin3_85, bin3_86, bin3_87, bin3_88; 
  // Get histogram of 64 input pixels for bin4.
  wire [31:0] bin4_11, bin4_12, bin4_13, bin4_14, bin4_15, bin4_16, bin4_17, bin4_18; 
  wire [31:0] bin4_21, bin4_22, bin4_23, bin4_24, bin4_25, bin4_26, bin4_27, bin4_28; 
  wire [31:0] bin4_31, bin4_32, bin4_33, bin4_34, bin4_35, bin4_36, bin4_37, bin4_38; 
  wire [31:0] bin4_41, bin4_42, bin4_43, bin4_44, bin4_45, bin4_46, bin4_47, bin4_48; 
  wire [31:0] bin4_51, bin4_52, bin4_53, bin4_54, bin4_55, bin4_56, bin4_57, bin4_58; 
  wire [31:0] bin4_61, bin4_62, bin4_63, bin4_64, bin4_65, bin4_66, bin4_67, bin4_68; 
  wire [31:0] bin4_71, bin4_72, bin4_73, bin4_74, bin4_75, bin4_76, bin4_77, bin4_78; 
  wire [31:0] bin4_81, bin4_82, bin4_83, bin4_84, bin4_85, bin4_86, bin4_87, bin4_88; 
  // Get histogram of 64 input pixels for bin5.
  wire [31:0] bin5_11, bin5_12, bin5_13, bin5_14, bin5_15, bin5_16, bin5_17, bin5_18; 
  wire [31:0] bin5_21, bin5_22, bin5_23, bin5_24, bin5_25, bin5_26, bin5_27, bin5_28; 
  wire [31:0] bin5_31, bin5_32, bin5_33, bin5_34, bin5_35, bin5_36, bin5_37, bin5_38; 
  wire [31:0] bin5_41, bin5_42, bin5_43, bin5_44, bin5_45, bin5_46, bin5_47, bin5_48; 
  wire [31:0] bin5_51, bin5_52, bin5_53, bin5_54, bin5_55, bin5_56, bin5_57, bin5_58; 
  wire [31:0] bin5_61, bin5_62, bin5_63, bin5_64, bin5_65, bin5_66, bin5_67, bin5_68; 
  wire [31:0] bin5_71, bin5_72, bin5_73, bin5_74, bin5_75, bin5_76, bin5_77, bin5_78; 
  wire [31:0] bin5_81, bin5_82, bin5_83, bin5_84, bin5_85, bin5_86, bin5_87, bin5_88; 
  // Get histogram of 64 input pixels for bin6.
  wire [31:0] bin6_11, bin6_12, bin6_13, bin6_14, bin6_15, bin6_16, bin6_17, bin6_18; 
  wire [31:0] bin6_21, bin6_22, bin6_23, bin6_24, bin6_25, bin6_26, bin6_27, bin6_28; 
  wire [31:0] bin6_31, bin6_32, bin6_33, bin6_34, bin6_35, bin6_36, bin6_37, bin6_38; 
  wire [31:0] bin6_41, bin6_42, bin6_43, bin6_44, bin6_45, bin6_46, bin6_47, bin6_48; 
  wire [31:0] bin6_51, bin6_52, bin6_53, bin6_54, bin6_55, bin6_56, bin6_57, bin6_58; 
  wire [31:0] bin6_61, bin6_62, bin6_63, bin6_64, bin6_65, bin6_66, bin6_67, bin6_68; 
  wire [31:0] bin6_71, bin6_72, bin6_73, bin6_74, bin6_75, bin6_76, bin6_77, bin6_78; 
  wire [31:0] bin6_81, bin6_82, bin6_83, bin6_84, bin6_85, bin6_86, bin6_87, bin6_88; 
  // Get histogram of 64 input pixels for bin7.
  wire [31:0] bin7_11, bin7_12, bin7_13, bin7_14, bin7_15, bin7_16, bin7_17, bin7_18; 
  wire [31:0] bin7_21, bin7_22, bin7_23, bin7_24, bin7_25, bin7_26, bin7_27, bin7_28; 
  wire [31:0] bin7_31, bin7_32, bin7_33, bin7_34, bin7_35, bin7_36, bin7_37, bin7_38; 
  wire [31:0] bin7_41, bin7_42, bin7_43, bin7_44, bin7_45, bin7_46, bin7_47, bin7_48; 
  wire [31:0] bin7_51, bin7_52, bin7_53, bin7_54, bin7_55, bin7_56, bin7_57, bin7_58; 
  wire [31:0] bin7_61, bin7_62, bin7_63, bin7_64, bin7_65, bin7_66, bin7_67, bin7_68; 
  wire [31:0] bin7_71, bin7_72, bin7_73, bin7_74, bin7_75, bin7_76, bin7_77, bin7_78; 
  wire [31:0] bin7_81, bin7_82, bin7_83, bin7_84, bin7_85, bin7_86, bin7_87, bin7_88; 
  // Get histogram of 64 input pixels for bin8.
  wire [31:0] bin8_11, bin8_12, bin8_13, bin8_14, bin8_15, bin8_16, bin8_17, bin8_18; 
  wire [31:0] bin8_21, bin8_22, bin8_23, bin8_24, bin8_25, bin8_26, bin8_27, bin8_28; 
  wire [31:0] bin8_31, bin8_32, bin8_33, bin8_34, bin8_35, bin8_36, bin8_37, bin8_38; 
  wire [31:0] bin8_41, bin8_42, bin8_43, bin8_44, bin8_45, bin8_46, bin8_47, bin8_48; 
  wire [31:0] bin8_51, bin8_52, bin8_53, bin8_54, bin8_55, bin8_56, bin8_57, bin8_58; 
  wire [31:0] bin8_61, bin8_62, bin8_63, bin8_64, bin8_65, bin8_66, bin8_67, bin8_68; 
  wire [31:0] bin8_71, bin8_72, bin8_73, bin8_74, bin8_75, bin8_76, bin8_77, bin8_78; 
  wire [31:0] bin8_81, bin8_82, bin8_83, bin8_84, bin8_85, bin8_86, bin8_87, bin8_88; 
  // Get histogram of 64 input pixels for bin9.
  wire [31:0] bin9_11, bin9_12, bin9_13, bin9_14, bin9_15, bin9_16, bin9_17, bin9_18; 
  wire [31:0] bin9_21, bin9_22, bin9_23, bin9_24, bin9_25, bin9_26, bin9_27, bin9_28; 
  wire [31:0] bin9_31, bin9_32, bin9_33, bin9_34, bin9_35, bin9_36, bin9_37, bin9_38; 
  wire [31:0] bin9_41, bin9_42, bin9_43, bin9_44, bin9_45, bin9_46, bin9_47, bin9_48; 
  wire [31:0] bin9_51, bin9_52, bin9_53, bin9_54, bin9_55, bin9_56, bin9_57, bin9_58; 
  wire [31:0] bin9_61, bin9_62, bin9_63, bin9_64, bin9_65, bin9_66, bin9_67, bin9_68; 
  wire [31:0] bin9_71, bin9_72, bin9_73, bin9_74, bin9_75, bin9_76, bin9_77, bin9_78; 
  wire [31:0] bin9_81, bin9_82, bin9_83, bin9_84, bin9_85, bin9_86, bin9_87, bin9_88; 
  
  
  
  
  

  GETHISTOGRAM_1PIXEL getHistogram_pixel_11(.iClk(iClk), .iMAG(iMAG11), .iAGL(iAGL11), 
  .oBin1(bin1_11), .oBin2(bin2_11), .oBin3(bin3_11), .oBin4(bin4_11), .oBin5(bin5_11), .oBin6(bin6_11), .oBin7(bin7_11), .oBin8(bin8_11), .oBin9(bin9_11));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_12(.iClk(iClk), .iMAG(iMAG12), .iAGL(iAGL12), 
  .oBin1(bin1_12), .oBin2(bin2_12), .oBin3(bin3_12), .oBin4(bin4_12), .oBin5(bin5_12), .oBin6(bin6_12), .oBin7(bin7_12), .oBin8(bin8_12), .oBin9(bin9_12));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_13(.iClk(iClk), .iMAG(iMAG13), .iAGL(iAGL13), 
  .oBin1(bin1_13), .oBin2(bin2_13), .oBin3(bin3_13), .oBin4(bin4_13), .oBin5(bin5_13), .oBin6(bin6_13), .oBin7(bin7_13), .oBin8(bin8_13), .oBin9(bin9_13));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_14(.iClk(iClk), .iMAG(iMAG14), .iAGL(iAGL14), 
  .oBin1(bin1_14), .oBin2(bin2_14), .oBin3(bin3_14), .oBin4(bin4_14), .oBin5(bin5_14), .oBin6(bin6_14), .oBin7(bin7_14), .oBin8(bin8_14), .oBin9(bin9_14));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_15(.iClk(iClk), .iMAG(iMAG15), .iAGL(iAGL15), 
  .oBin1(bin1_15), .oBin2(bin2_15), .oBin3(bin3_15), .oBin4(bin4_15), .oBin5(bin5_15), .oBin6(bin6_15), .oBin7(bin7_15), .oBin8(bin8_15), .oBin9(bin9_15));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_16(.iClk(iClk), .iMAG(iMAG16), .iAGL(iAGL16), 
  .oBin1(bin1_16), .oBin2(bin2_16), .oBin3(bin3_16), .oBin4(bin4_16), .oBin5(bin5_16), .oBin6(bin6_16), .oBin7(bin7_16), .oBin8(bin8_16), .oBin9(bin9_16));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_17(.iClk(iClk), .iMAG(iMAG17), .iAGL(iAGL17), 
  .oBin1(bin1_17), .oBin2(bin2_17), .oBin3(bin3_17), .oBin4(bin4_17), .oBin5(bin5_17), .oBin6(bin6_17), .oBin7(bin7_17), .oBin8(bin8_17), .oBin9(bin9_17));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_18(.iClk(iClk), .iMAG(iMAG18), .iAGL(iAGL18), 
  .oBin1(bin1_18), .oBin2(bin2_18), .oBin3(bin3_18), .oBin4(bin4_18), .oBin5(bin5_18), .oBin6(bin6_18), .oBin7(bin7_18), .oBin8(bin8_18), .oBin9(bin9_18));
  
  //**********************************************************************************************************************************************//
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_21(.iClk(iClk), .iMAG(iMAG21), .iAGL(iAGL21), 
  .oBin1(bin1_21), .oBin2(bin2_21), .oBin3(bin3_21), .oBin4(bin4_21), .oBin5(bin5_21), .oBin6(bin6_21), .oBin7(bin7_21), .oBin8(bin8_21), .oBin9(bin9_21));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_22(.iClk(iClk), .iMAG(iMAG22), .iAGL(iAGL22), 
  .oBin1(bin1_22), .oBin2(bin2_22), .oBin3(bin3_22), .oBin4(bin4_22), .oBin5(bin5_22), .oBin6(bin6_22), .oBin7(bin7_22), .oBin8(bin8_22), .oBin9(bin9_22));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_23(.iClk(iClk), .iMAG(iMAG23), .iAGL(iAGL23), 
  .oBin1(bin1_23), .oBin2(bin2_23), .oBin3(bin3_23), .oBin4(bin4_23), .oBin5(bin5_23), .oBin6(bin6_23), .oBin7(bin7_23), .oBin8(bin8_23), .oBin9(bin9_23));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_24(.iClk(iClk), .iMAG(iMAG24), .iAGL(iAGL24), 
  .oBin1(bin1_24), .oBin2(bin2_24), .oBin3(bin3_24), .oBin4(bin4_24), .oBin5(bin5_24), .oBin6(bin6_24), .oBin7(bin7_24), .oBin8(bin8_24), .oBin9(bin9_24));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_25(.iClk(iClk), .iMAG(iMAG25), .iAGL(iAGL25), 
  .oBin1(bin1_25), .oBin2(bin2_25), .oBin3(bin3_25), .oBin4(bin4_25), .oBin5(bin5_25), .oBin6(bin6_25), .oBin7(bin7_25), .oBin8(bin8_25), .oBin9(bin9_25));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_26(.iClk(iClk), .iMAG(iMAG26), .iAGL(iAGL26), 
  .oBin1(bin1_26), .oBin2(bin2_26), .oBin3(bin3_26), .oBin4(bin4_26), .oBin5(bin5_26), .oBin6(bin6_26), .oBin7(bin7_26), .oBin8(bin8_26), .oBin9(bin9_26));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_27(.iClk(iClk), .iMAG(iMAG27), .iAGL(iAGL27), 
  .oBin1(bin1_27), .oBin2(bin2_27), .oBin3(bin3_27), .oBin4(bin4_27), .oBin5(bin5_27), .oBin6(bin6_27), .oBin7(bin7_27), .oBin8(bin8_27), .oBin9(bin9_27));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_28(.iClk(iClk), .iMAG(iMAG28), .iAGL(iAGL28), 
  .oBin1(bin1_28), .oBin2(bin2_28), .oBin3(bin3_28), .oBin4(bin4_28), .oBin5(bin5_28), .oBin6(bin6_28), .oBin7(bin7_28), .oBin8(bin8_28), .oBin9(bin9_28));
  
  //**********************************************************************************************************************************************//
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_31(.iClk(iClk), .iMAG(iMAG31), .iAGL(iAGL31), 
  .oBin1(bin1_31), .oBin2(bin2_31), .oBin3(bin3_31), .oBin4(bin4_31), .oBin5(bin5_31), .oBin6(bin6_31), .oBin7(bin7_31), .oBin8(bin8_31), .oBin9(bin9_31));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_32(.iClk(iClk), .iMAG(iMAG32), .iAGL(iAGL32), 
  .oBin1(bin1_32), .oBin2(bin2_32), .oBin3(bin3_32), .oBin4(bin4_32), .oBin5(bin5_32), .oBin6(bin6_32), .oBin7(bin7_32), .oBin8(bin8_32), .oBin9(bin9_32));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_33(.iClk(iClk), .iMAG(iMAG33), .iAGL(iAGL33), 
  .oBin1(bin1_33), .oBin2(bin2_33), .oBin3(bin3_33), .oBin4(bin4_33), .oBin5(bin5_33), .oBin6(bin6_33), .oBin7(bin7_33), .oBin8(bin8_33), .oBin9(bin9_33));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_34(.iClk(iClk), .iMAG(iMAG34), .iAGL(iAGL34), 
  .oBin1(bin1_34), .oBin2(bin2_34), .oBin3(bin3_34), .oBin4(bin4_34), .oBin5(bin5_34), .oBin6(bin6_34), .oBin7(bin7_34), .oBin8(bin8_34), .oBin9(bin9_34));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_35(.iClk(iClk), .iMAG(iMAG35), .iAGL(iAGL35), 
  .oBin1(bin1_35), .oBin2(bin2_35), .oBin3(bin3_35), .oBin4(bin4_35), .oBin5(bin5_35), .oBin6(bin6_35), .oBin7(bin7_35), .oBin8(bin8_35), .oBin9(bin9_35));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_36(.iClk(iClk), .iMAG(iMAG36), .iAGL(iAGL36), 
  .oBin1(bin1_36), .oBin2(bin2_36), .oBin3(bin3_36), .oBin4(bin4_36), .oBin5(bin5_36), .oBin6(bin6_36), .oBin7(bin7_36), .oBin8(bin8_36), .oBin9(bin9_36));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_37(.iClk(iClk), .iMAG(iMAG37), .iAGL(iAGL37), 
  .oBin1(bin1_37), .oBin2(bin2_37), .oBin3(bin3_37), .oBin4(bin4_37), .oBin5(bin5_37), .oBin6(bin6_37), .oBin7(bin7_37), .oBin8(bin8_37), .oBin9(bin9_37));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_38(.iClk(iClk), .iMAG(iMAG38), .iAGL(iAGL38), 
  .oBin1(bin1_38), .oBin2(bin2_38), .oBin3(bin3_38), .oBin4(bin4_38), .oBin5(bin5_38), .oBin6(bin6_38), .oBin7(bin7_38), .oBin8(bin8_38), .oBin9(bin9_38));
  
  //**********************************************************************************************************************************************//
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_41(.iClk(iClk), .iMAG(iMAG41), .iAGL(iAGL41), 
  .oBin1(bin1_41), .oBin2(bin2_41), .oBin3(bin3_41), .oBin4(bin4_41), .oBin5(bin5_41), .oBin6(bin6_41), .oBin7(bin7_41), .oBin8(bin8_41), .oBin9(bin9_41));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_42(.iClk(iClk), .iMAG(iMAG42), .iAGL(iAGL42), 
  .oBin1(bin1_42), .oBin2(bin2_42), .oBin3(bin3_42), .oBin4(bin4_42), .oBin5(bin5_42), .oBin6(bin6_42), .oBin7(bin7_42), .oBin8(bin8_42), .oBin9(bin9_42));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_43(.iClk(iClk), .iMAG(iMAG43), .iAGL(iAGL43), 
  .oBin1(bin1_43), .oBin2(bin2_43), .oBin3(bin3_43), .oBin4(bin4_43), .oBin5(bin5_43), .oBin6(bin6_43), .oBin7(bin7_43), .oBin8(bin8_43), .oBin9(bin9_43));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_44(.iClk(iClk), .iMAG(iMAG44), .iAGL(iAGL44), 
  .oBin1(bin1_44), .oBin2(bin2_44), .oBin3(bin3_44), .oBin4(bin4_44), .oBin5(bin5_44), .oBin6(bin6_44), .oBin7(bin7_44), .oBin8(bin8_44), .oBin9(bin9_44));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_45(.iClk(iClk), .iMAG(iMAG45), .iAGL(iAGL45), 
  .oBin1(bin1_45), .oBin2(bin2_45), .oBin3(bin3_45), .oBin4(bin4_45), .oBin5(bin5_45), .oBin6(bin6_45), .oBin7(bin7_45), .oBin8(bin8_45), .oBin9(bin9_45));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_46(.iClk(iClk), .iMAG(iMAG46), .iAGL(iAGL46), 
  .oBin1(bin1_46), .oBin2(bin2_46), .oBin3(bin3_46), .oBin4(bin4_46), .oBin5(bin5_46), .oBin6(bin6_46), .oBin7(bin7_46), .oBin8(bin8_46), .oBin9(bin9_46));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_47(.iClk(iClk), .iMAG(iMAG47), .iAGL(iAGL47), 
  .oBin1(bin1_47), .oBin2(bin2_47), .oBin3(bin3_47), .oBin4(bin4_47), .oBin5(bin5_47), .oBin6(bin6_47), .oBin7(bin7_47), .oBin8(bin8_47), .oBin9(bin9_47));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_48(.iClk(iClk), .iMAG(iMAG48), .iAGL(iAGL48), 
  .oBin1(bin1_48), .oBin2(bin2_48), .oBin3(bin3_48), .oBin4(bin4_48), .oBin5(bin5_48), .oBin6(bin6_48), .oBin7(bin7_48), .oBin8(bin8_48), .oBin9(bin9_48));
  

  //**********************************************************************************************************************************************//
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_51(.iClk(iClk), .iMAG(iMAG51), .iAGL(iAGL51), 
  .oBin1(bin1_51), .oBin2(bin2_51), .oBin3(bin3_51), .oBin4(bin4_51), .oBin5(bin5_51), .oBin6(bin6_51), .oBin7(bin7_51), .oBin8(bin8_51), .oBin9(bin9_51));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_52(.iClk(iClk), .iMAG(iMAG52), .iAGL(iAGL52), 
  .oBin1(bin1_52), .oBin2(bin2_52), .oBin3(bin3_52), .oBin4(bin4_52), .oBin5(bin5_52), .oBin6(bin6_52), .oBin7(bin7_52), .oBin8(bin8_52), .oBin9(bin9_52));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_53(.iClk(iClk), .iMAG(iMAG53), .iAGL(iAGL53), 
  .oBin1(bin1_53), .oBin2(bin2_53), .oBin3(bin3_53), .oBin4(bin4_53), .oBin5(bin5_53), .oBin6(bin6_53), .oBin7(bin7_53), .oBin8(bin8_53), .oBin9(bin9_53));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_54(.iClk(iClk), .iMAG(iMAG54), .iAGL(iAGL54), 
  .oBin1(bin1_54), .oBin2(bin2_54), .oBin3(bin3_54), .oBin4(bin4_54), .oBin5(bin5_54), .oBin6(bin6_54), .oBin7(bin7_54), .oBin8(bin8_54), .oBin9(bin9_54));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_55(.iClk(iClk), .iMAG(iMAG55), .iAGL(iAGL55), 
  .oBin1(bin1_55), .oBin2(bin2_55), .oBin3(bin3_55), .oBin4(bin4_55), .oBin5(bin5_55), .oBin6(bin6_55), .oBin7(bin7_55), .oBin8(bin8_55), .oBin9(bin9_55));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_56(.iClk(iClk), .iMAG(iMAG56), .iAGL(iAGL56), 
  .oBin1(bin1_56), .oBin2(bin2_56), .oBin3(bin3_56), .oBin4(bin4_56), .oBin5(bin5_56), .oBin6(bin6_56), .oBin7(bin7_56), .oBin8(bin8_56), .oBin9(bin9_56));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_57(.iClk(iClk), .iMAG(iMAG57), .iAGL(iAGL57), 
  .oBin1(bin1_57), .oBin2(bin2_57), .oBin3(bin3_57), .oBin4(bin4_57), .oBin5(bin5_57), .oBin6(bin6_57), .oBin7(bin7_57), .oBin8(bin8_57), .oBin9(bin9_57));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_58(.iClk(iClk), .iMAG(iMAG58), .iAGL(iAGL58), 
  .oBin1(bin1_58), .oBin2(bin2_58), .oBin3(bin3_58), .oBin4(bin4_58), .oBin5(bin5_58), .oBin6(bin6_58), .oBin7(bin7_58), .oBin8(bin8_58), .oBin9(bin9_58));
  

  //**********************************************************************************************************************************************//
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_61(.iClk(iClk), .iMAG(iMAG61), .iAGL(iAGL61), 
  .oBin1(bin1_61), .oBin2(bin2_61), .oBin3(bin3_61), .oBin4(bin4_61), .oBin5(bin5_61), .oBin6(bin6_61), .oBin7(bin7_61), .oBin8(bin8_61), .oBin9(bin9_61));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_62(.iClk(iClk), .iMAG(iMAG62), .iAGL(iAGL62), 
  .oBin1(bin1_62), .oBin2(bin2_62), .oBin3(bin3_62), .oBin4(bin4_62), .oBin5(bin5_62), .oBin6(bin6_62), .oBin7(bin7_62), .oBin8(bin8_62), .oBin9(bin9_62));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_63(.iClk(iClk), .iMAG(iMAG63), .iAGL(iAGL63), 
  .oBin1(bin1_63), .oBin2(bin2_63), .oBin3(bin3_63), .oBin4(bin4_63), .oBin5(bin5_63), .oBin6(bin6_63), .oBin7(bin7_63), .oBin8(bin8_63), .oBin9(bin9_63));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_64(.iClk(iClk), .iMAG(iMAG64), .iAGL(iAGL64), 
  .oBin1(bin1_64), .oBin2(bin2_64), .oBin3(bin3_64), .oBin4(bin4_64), .oBin5(bin5_64), .oBin6(bin6_64), .oBin7(bin7_64), .oBin8(bin8_64), .oBin9(bin9_64));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_65(.iClk(iClk), .iMAG(iMAG65), .iAGL(iAGL65), 
  .oBin1(bin1_65), .oBin2(bin2_65), .oBin3(bin3_65), .oBin4(bin4_65), .oBin5(bin5_65), .oBin6(bin6_65), .oBin7(bin7_65), .oBin8(bin8_65), .oBin9(bin9_65));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_66(.iClk(iClk), .iMAG(iMAG66), .iAGL(iAGL66), 
  .oBin1(bin1_66), .oBin2(bin2_66), .oBin3(bin3_66), .oBin4(bin4_66), .oBin5(bin5_66), .oBin6(bin6_66), .oBin7(bin7_66), .oBin8(bin8_66), .oBin9(bin9_66));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_67(.iClk(iClk), .iMAG(iMAG67), .iAGL(iAGL67), 
  .oBin1(bin1_67), .oBin2(bin2_67), .oBin3(bin3_67), .oBin4(bin4_67), .oBin5(bin5_67), .oBin6(bin6_67), .oBin7(bin7_67), .oBin8(bin8_67), .oBin9(bin9_67));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_68(.iClk(iClk), .iMAG(iMAG68), .iAGL(iAGL68), 
  .oBin1(bin1_68), .oBin2(bin2_68), .oBin3(bin3_68), .oBin4(bin4_68), .oBin5(bin5_68), .oBin6(bin6_68), .oBin7(bin7_68), .oBin8(bin8_68), .oBin9(bin9_68));
  

  
  //**********************************************************************************************************************************************//
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_71(.iClk(iClk), .iMAG(iMAG71), .iAGL(iAGL71), 
  .oBin1(bin1_71), .oBin2(bin2_71), .oBin3(bin3_71), .oBin4(bin4_71), .oBin5(bin5_71), .oBin6(bin6_71), .oBin7(bin7_71), .oBin8(bin8_71), .oBin9(bin9_71));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_72(.iClk(iClk), .iMAG(iMAG72), .iAGL(iAGL72), 
  .oBin1(bin1_72), .oBin2(bin2_72), .oBin3(bin3_72), .oBin4(bin4_72), .oBin5(bin5_72), .oBin6(bin6_72), .oBin7(bin7_72), .oBin8(bin8_72), .oBin9(bin9_72));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_73(.iClk(iClk), .iMAG(iMAG73), .iAGL(iAGL73), 
  .oBin1(bin1_73), .oBin2(bin2_73), .oBin3(bin3_73), .oBin4(bin4_73), .oBin5(bin5_73), .oBin6(bin6_73), .oBin7(bin7_73), .oBin8(bin8_73), .oBin9(bin9_73));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_74(.iClk(iClk), .iMAG(iMAG74), .iAGL(iAGL74), 
  .oBin1(bin1_74), .oBin2(bin2_74), .oBin3(bin3_74), .oBin4(bin4_74), .oBin5(bin5_74), .oBin6(bin6_74), .oBin7(bin7_74), .oBin8(bin8_74), .oBin9(bin9_74));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_75(.iClk(iClk), .iMAG(iMAG75), .iAGL(iAGL75), 
  .oBin1(bin1_75), .oBin2(bin2_75), .oBin3(bin3_75), .oBin4(bin4_75), .oBin5(bin5_75), .oBin6(bin6_75), .oBin7(bin7_75), .oBin8(bin8_75), .oBin9(bin9_75));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_76(.iClk(iClk), .iMAG(iMAG76), .iAGL(iAGL76), 
  .oBin1(bin1_76), .oBin2(bin2_76), .oBin3(bin3_76), .oBin4(bin4_76), .oBin5(bin5_76), .oBin6(bin6_76), .oBin7(bin7_76), .oBin8(bin8_76), .oBin9(bin9_76));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_77(.iClk(iClk), .iMAG(iMAG77), .iAGL(iAGL77), 
  .oBin1(bin1_77), .oBin2(bin2_77), .oBin3(bin3_77), .oBin4(bin4_77), .oBin5(bin5_77), .oBin6(bin6_77), .oBin7(bin7_77), .oBin8(bin8_77), .oBin9(bin9_77));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_78(.iClk(iClk), .iMAG(iMAG78), .iAGL(iAGL78), 
  .oBin1(bin1_78), .oBin2(bin2_78), .oBin3(bin3_78), .oBin4(bin4_78), .oBin5(bin5_78), .oBin6(bin6_78), .oBin7(bin7_78), .oBin8(bin8_78), .oBin9(bin9_78));
  
  
  //**********************************************************************************************************************************************//
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_81(.iClk(iClk), .iMAG(iMAG81), .iAGL(iAGL81), 
  .oBin1(bin1_81), .oBin2(bin2_81), .oBin3(bin3_81), .oBin4(bin4_81), .oBin5(bin5_81), .oBin6(bin6_81), .oBin7(bin7_81), .oBin8(bin8_81), .oBin9(bin9_81));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_82(.iClk(iClk), .iMAG(iMAG82), .iAGL(iAGL82), 
  .oBin1(bin1_82), .oBin2(bin2_82), .oBin3(bin3_82), .oBin4(bin4_82), .oBin5(bin5_82), .oBin6(bin6_82), .oBin7(bin7_82), .oBin8(bin8_82), .oBin9(bin9_82));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_83(.iClk(iClk), .iMAG(iMAG83), .iAGL(iAGL83), 
  .oBin1(bin1_83), .oBin2(bin2_83), .oBin3(bin3_83), .oBin4(bin4_83), .oBin5(bin5_83), .oBin6(bin6_83), .oBin7(bin7_83), .oBin8(bin8_83), .oBin9(bin9_83));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_84(.iClk(iClk), .iMAG(iMAG84), .iAGL(iAGL84), 
  .oBin1(bin1_84), .oBin2(bin2_84), .oBin3(bin3_84), .oBin4(bin4_84), .oBin5(bin5_84), .oBin6(bin6_84), .oBin7(bin7_84), .oBin8(bin8_84), .oBin9(bin9_84));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_85(.iClk(iClk), .iMAG(iMAG85), .iAGL(iAGL85), 
  .oBin1(bin1_85), .oBin2(bin2_85), .oBin3(bin3_85), .oBin4(bin4_85), .oBin5(bin5_85), .oBin6(bin6_85), .oBin7(bin7_85), .oBin8(bin8_85), .oBin9(bin9_85));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_86(.iClk(iClk), .iMAG(iMAG86), .iAGL(iAGL86), 
  .oBin1(bin1_86), .oBin2(bin2_86), .oBin3(bin3_86), .oBin4(bin4_86), .oBin5(bin5_86), .oBin6(bin6_86), .oBin7(bin7_86), .oBin8(bin8_86), .oBin9(bin9_86));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_87(.iClk(iClk), .iMAG(iMAG87), .iAGL(iAGL87), 
  .oBin1(bin1_87), .oBin2(bin2_87), .oBin3(bin3_87), .oBin4(bin4_87), .oBin5(bin5_87), .oBin6(bin6_87), .oBin7(bin7_87), .oBin8(bin8_87), .oBin9(bin9_87));
  
  GETHISTOGRAM_1PIXEL getHistogram_pixel_88(.iClk(iClk), .iMAG(iMAG88), .iAGL(iAGL88), 
  .oBin1(bin1_88), .oBin2(bin2_88), .oBin3(bin3_88), .oBin4(bin4_88), .oBin5(bin5_88), .oBin6(bin6_88), .oBin7(bin7_88), .oBin8(bin8_88), .oBin9(bin9_88));
  
  
  // Now, we compute the sum of each bin.
  
  // The first bin (bin 10 degrees)
  
  ADDITION_64_INPUT bin_1st(

	.iClk(iClk),
	.op1(bin1_11) , .op2(bin1_12), .op3(bin1_13), .op4(bin1_14), .op5(bin1_15), .op6(bin1_16), .op7(bin1_17), .op8(bin1_18),
	.op9(bin1_21) , .op10(bin1_22), .op11(bin1_23), .op12(bin1_24), .op13(bin1_25), .op14(bin1_26), .op15(bin1_27), .op16(bin1_28),
	.op17(bin1_31) , .op18(bin1_32), .op19(bin1_33), .op20(bin1_34), .op21(bin1_35), .op22(bin1_36), .op23(bin1_37), .op24(bin1_38),
	.op25(bin1_41) , .op26(bin1_42), .op27(bin1_43), .op28(bin1_44), .op29(bin1_45), .op30(bin1_46), .op31(bin1_47), .op32(bin1_48),
	.op33(bin1_51) , .op34(bin1_52), .op35(bin1_53), .op36(bin1_54), .op37(bin1_55), .op38(bin1_56), .op39(bin1_57), .op40(bin1_58),
	.op41(bin1_61) , .op42(bin1_62), .op43(bin1_63), .op44(bin1_64), .op45(bin1_65), .op46(bin1_66), .op47(bin1_67), .op48(bin1_68),
	.op49(bin1_71) , .op50(bin1_72), .op51(bin1_73), .op52(bin1_74), .op53(bin1_75), .op54(bin1_76), .op55(bin1_77), .op56(bin1_78),
	.op57(bin1_81) , .op58(bin1_82), .op59(bin1_83), .op60(bin1_84), .op61(bin1_85), .op62(bin1_86), .op63(bin1_87), .op64(bin1_88),
	.oSum(oBIN1)
	);
	
	// The second bin (bin 30 degrees)
  
  ADDITION_64_INPUT bin_2nd(

	.iClk(iClk),
	.op1(bin2_11) , .op2(bin2_12), .op3(bin2_13), .op4(bin2_14), .op5(bin2_15), .op6(bin2_16), .op7(bin2_17), .op8(bin2_18),
	.op9(bin2_21) , .op10(bin2_22), .op11(bin2_23), .op12(bin2_24), .op13(bin2_25), .op14(bin2_26), .op15(bin2_27), .op16(bin2_28),
	.op17(bin2_31) , .op18(bin2_32), .op19(bin2_33), .op20(bin2_34), .op21(bin2_35), .op22(bin2_36), .op23(bin2_37), .op24(bin2_38),
	.op25(bin2_41) , .op26(bin2_42), .op27(bin2_43), .op28(bin2_44), .op29(bin2_45), .op30(bin2_46), .op31(bin2_47), .op32(bin2_48),
	.op33(bin2_51) , .op34(bin2_52), .op35(bin2_53), .op36(bin2_54), .op37(bin2_55), .op38(bin2_56), .op39(bin2_57), .op40(bin2_58),
	.op41(bin2_61) , .op42(bin2_62), .op43(bin2_63), .op44(bin2_64), .op45(bin2_65), .op46(bin2_66), .op47(bin2_67), .op48(bin2_68),
	.op49(bin2_71) , .op50(bin2_72), .op51(bin2_73), .op52(bin2_74), .op53(bin2_75), .op54(bin2_76), .op55(bin2_77), .op56(bin2_78),
	.op57(bin2_81) , .op58(bin2_82), .op59(bin2_83), .op60(bin2_84), .op61(bin2_85), .op62(bin2_86), .op63(bin2_87), .op64(bin2_88),
	.oSum(oBIN2)
	);
   
   // The third bin (bin 50 degrees)
  
  ADDITION_64_INPUT bin_3rd(

	.iClk(iClk),
	.op1(bin3_11) , .op2(bin3_12), .op3(bin3_13), .op4(bin3_14), .op5(bin3_15), .op6(bin3_16), .op7(bin3_17), .op8(bin3_18),
	.op9(bin3_21) , .op10(bin3_22), .op11(bin3_23), .op12(bin3_24), .op13(bin3_25), .op14(bin3_26), .op15(bin3_27), .op16(bin3_28),
	.op17(bin3_31) , .op18(bin3_32), .op19(bin3_33), .op20(bin3_34), .op21(bin3_35), .op22(bin3_36), .op23(bin3_37), .op24(bin3_38),
	.op25(bin3_41) , .op26(bin3_42), .op27(bin3_43), .op28(bin3_44), .op29(bin3_45), .op30(bin3_46), .op31(bin3_47), .op32(bin3_48),
	.op33(bin3_51) , .op34(bin3_52), .op35(bin3_53), .op36(bin3_54), .op37(bin3_55), .op38(bin3_56), .op39(bin3_57), .op40(bin3_58),
	.op41(bin3_61) , .op42(bin3_62), .op43(bin3_63), .op44(bin3_64), .op45(bin3_65), .op46(bin3_66), .op47(bin3_67), .op48(bin3_68),
	.op49(bin3_71) , .op50(bin3_72), .op51(bin3_73), .op52(bin3_74), .op53(bin3_75), .op54(bin3_76), .op55(bin3_77), .op56(bin3_78),
	.op57(bin3_81) , .op58(bin3_82), .op59(bin3_83), .op60(bin3_84), .op61(bin3_85), .op62(bin3_86), .op63(bin3_87), .op64(bin3_88),
	.oSum(oBIN3)
	);
	// The fourth bin (bin 70 degrees)
  
  ADDITION_64_INPUT bin_4th(

	.iClk(iClk),
	.op1(bin4_11) , .op2(bin4_12), .op3(bin4_13), .op4(bin4_14), .op5(bin4_15), .op6(bin4_16), .op7(bin4_17), .op8(bin4_18),
	.op9(bin4_21) , .op10(bin4_22), .op11(bin4_23), .op12(bin4_24), .op13(bin4_25), .op14(bin4_26), .op15(bin4_27), .op16(bin4_28),
	.op17(bin4_31) , .op18(bin4_32), .op19(bin4_33), .op20(bin4_34), .op21(bin4_35), .op22(bin4_36), .op23(bin4_37), .op24(bin4_38),
	.op25(bin4_41) , .op26(bin4_42), .op27(bin4_43), .op28(bin4_44), .op29(bin4_45), .op30(bin4_46), .op31(bin4_47), .op32(bin4_48),
	.op33(bin4_51) , .op34(bin4_52), .op35(bin4_53), .op36(bin4_54), .op37(bin4_55), .op38(bin4_56), .op39(bin4_57), .op40(bin4_58),
	.op41(bin4_61) , .op42(bin4_62), .op43(bin4_63), .op44(bin4_64), .op45(bin4_65), .op46(bin4_66), .op47(bin4_67), .op48(bin4_68),
	.op49(bin4_71) , .op50(bin4_72), .op51(bin4_73), .op52(bin4_74), .op53(bin4_75), .op54(bin4_76), .op55(bin4_77), .op56(bin4_78),
	.op57(bin4_81) , .op58(bin4_82), .op59(bin4_83), .op60(bin4_84), .op61(bin4_85), .op62(bin4_86), .op63(bin4_87), .op64(bin4_88),
	.oSum(oBIN4)
	);
	// The fifth bin (bin 90 degrees)
  
  ADDITION_64_INPUT bin_5th(

	.iClk(iClk),
	.op1(bin5_11) , .op2(bin5_12), .op3(bin5_13), .op4(bin5_14), .op5(bin5_15), .op6(bin5_16), .op7(bin5_17), .op8(bin5_18),
	.op9(bin5_21) , .op10(bin5_22), .op11(bin5_23), .op12(bin5_24), .op13(bin5_25), .op14(bin5_26), .op15(bin5_27), .op16(bin5_28),
	.op17(bin5_31) , .op18(bin5_32), .op19(bin5_33), .op20(bin5_34), .op21(bin5_35), .op22(bin5_36), .op23(bin5_37), .op24(bin5_38),
	.op25(bin5_41) , .op26(bin5_42), .op27(bin5_43), .op28(bin5_44), .op29(bin5_45), .op30(bin5_46), .op31(bin5_47), .op32(bin5_48),
	.op33(bin5_51) , .op34(bin5_52), .op35(bin5_53), .op36(bin5_54), .op37(bin5_55), .op38(bin5_56), .op39(bin5_57), .op40(bin5_58),
	.op41(bin5_61) , .op42(bin5_62), .op43(bin5_63), .op44(bin5_64), .op45(bin5_65), .op46(bin5_66), .op47(bin5_67), .op48(bin5_68),
	.op49(bin5_71) , .op50(bin5_72), .op51(bin5_73), .op52(bin5_74), .op53(bin5_75), .op54(bin5_76), .op55(bin5_77), .op56(bin5_78),
	.op57(bin5_81) , .op58(bin5_82), .op59(bin5_83), .op60(bin5_84), .op61(bin5_85), .op62(bin5_86), .op63(bin5_87), .op64(bin5_88),
	.oSum(oBIN5)
	);
	
	// The sixth bin (bin 110 degrees)
  
  ADDITION_64_INPUT bin_6th(

	.iClk(iClk),
	.op1(bin6_11) , .op2(bin6_12), .op3(bin6_13), .op4(bin6_14), .op5(bin6_15), .op6(bin6_16), .op7(bin6_17), .op8(bin6_18),
	.op9(bin6_21) , .op10(bin6_22), .op11(bin6_23), .op12(bin6_24), .op13(bin6_25), .op14(bin6_26), .op15(bin6_27), .op16(bin6_28),
	.op17(bin6_31) , .op18(bin6_32), .op19(bin6_33), .op20(bin6_34), .op21(bin6_35), .op22(bin6_36), .op23(bin6_37), .op24(bin6_38),
	.op25(bin6_41) , .op26(bin6_42), .op27(bin6_43), .op28(bin6_44), .op29(bin6_45), .op30(bin6_46), .op31(bin6_47), .op32(bin6_48),
	.op33(bin6_51) , .op34(bin6_52), .op35(bin6_53), .op36(bin6_54), .op37(bin6_55), .op38(bin6_56), .op39(bin6_57), .op40(bin6_58),
	.op41(bin6_61) , .op42(bin6_62), .op43(bin6_63), .op44(bin6_64), .op45(bin6_65), .op46(bin6_66), .op47(bin6_67), .op48(bin6_68),
	.op49(bin6_71) , .op50(bin6_72), .op51(bin6_73), .op52(bin6_74), .op53(bin6_75), .op54(bin6_76), .op55(bin6_77), .op56(bin6_78),
	.op57(bin6_81) , .op58(bin6_82), .op59(bin6_83), .op60(bin6_84), .op61(bin6_85), .op62(bin6_86), .op63(bin6_87), .op64(bin6_88),
	.oSum(oBIN6)
	);
	
	// The seventh bin (bin 130 degrees)
  
  ADDITION_64_INPUT bin_7th(

	.iClk(iClk),
	.op1(bin7_11) , .op2(bin7_12), .op3(bin7_13), .op4(bin7_14), .op5(bin7_15), .op6(bin7_16), .op7(bin7_17), .op8(bin7_18),
	.op9(bin7_21) , .op10(bin7_22), .op11(bin7_23), .op12(bin7_24), .op13(bin7_25), .op14(bin7_26), .op15(bin7_27), .op16(bin7_28),
	.op17(bin7_31) , .op18(bin7_32), .op19(bin7_33), .op20(bin7_34), .op21(bin7_35), .op22(bin7_36), .op23(bin7_37), .op24(bin7_38),
	.op25(bin7_41) , .op26(bin7_42), .op27(bin7_43), .op28(bin7_44), .op29(bin7_45), .op30(bin7_46), .op31(bin7_47), .op32(bin7_48),
	.op33(bin7_51) , .op34(bin7_52), .op35(bin7_53), .op36(bin7_54), .op37(bin7_55), .op38(bin7_56), .op39(bin7_57), .op40(bin7_58),
	.op41(bin7_61) , .op42(bin7_62), .op43(bin7_63), .op44(bin7_64), .op45(bin7_65), .op46(bin7_66), .op47(bin7_67), .op48(bin7_68),
	.op49(bin7_71) , .op50(bin7_72), .op51(bin7_73), .op52(bin7_74), .op53(bin7_75), .op54(bin7_76), .op55(bin7_77), .op56(bin7_78),
	.op57(bin7_81) , .op58(bin7_82), .op59(bin7_83), .op60(bin7_84), .op61(bin7_85), .op62(bin7_86), .op63(bin7_87), .op64(bin7_88),
	.oSum(oBIN7)
	);
	
	// The eighth bin (bin 150 degrees)
  
  ADDITION_64_INPUT bin_8th(

	.iClk(iClk),
	.op1(bin8_11) , .op2(bin8_12), .op3(bin8_13), .op4(bin8_14), .op5(bin8_15), .op6(bin8_16), .op7(bin8_17), .op8(bin8_18),
	.op9(bin8_21) , .op10(bin8_22), .op11(bin8_23), .op12(bin8_24), .op13(bin8_25), .op14(bin8_26), .op15(bin8_27), .op16(bin8_28),
	.op17(bin8_31) , .op18(bin8_32), .op19(bin8_33), .op20(bin8_34), .op21(bin8_35), .op22(bin8_36), .op23(bin8_37), .op24(bin8_38),
	.op25(bin8_41) , .op26(bin8_42), .op27(bin8_43), .op28(bin8_44), .op29(bin8_45), .op30(bin8_46), .op31(bin8_47), .op32(bin8_48),
	.op33(bin8_51) , .op34(bin8_52), .op35(bin8_53), .op36(bin8_54), .op37(bin8_55), .op38(bin8_56), .op39(bin8_57), .op40(bin8_58),
	.op41(bin8_61) , .op42(bin8_62), .op43(bin8_63), .op44(bin8_64), .op45(bin8_65), .op46(bin8_66), .op47(bin8_67), .op48(bin8_68),
	.op49(bin8_71) , .op50(bin8_72), .op51(bin8_73), .op52(bin8_74), .op53(bin8_75), .op54(bin8_76), .op55(bin8_77), .op56(bin8_78),
	.op57(bin8_81) , .op58(bin8_82), .op59(bin8_83), .op60(bin8_84), .op61(bin8_85), .op62(bin8_86), .op63(bin8_87), .op64(bin8_88),
	.oSum(oBIN8)
	);
	
	// The nineth bin (bin 170 degrees)
  
  ADDITION_64_INPUT bin_9th(

	.iClk(iClk),
	.op1(bin9_11) , .op2(bin9_12), .op3(bin9_13), .op4(bin9_14), .op5(bin9_15), .op6(bin9_16), .op7(bin9_17), .op8(bin9_18),
	.op9(bin9_21) , .op10(bin9_22), .op11(bin9_23), .op12(bin9_24), .op13(bin9_25), .op14(bin9_26), .op15(bin9_27), .op16(bin9_28),
	.op17(bin9_31) , .op18(bin9_32), .op19(bin9_33), .op20(bin9_34), .op21(bin9_35), .op22(bin9_36), .op23(bin9_37), .op24(bin9_38),
	.op25(bin9_41) , .op26(bin9_42), .op27(bin9_43), .op28(bin9_44), .op29(bin9_45), .op30(bin9_46), .op31(bin9_47), .op32(bin9_48),
	.op33(bin9_51) , .op34(bin9_52), .op35(bin9_53), .op36(bin9_54), .op37(bin9_55), .op38(bin9_56), .op39(bin9_57), .op40(bin9_58),
	.op41(bin9_61) , .op42(bin9_62), .op43(bin9_63), .op44(bin9_64), .op45(bin9_65), .op46(bin9_66), .op47(bin9_67), .op48(bin9_68),
	.op49(bin9_71) , .op50(bin9_72), .op51(bin9_73), .op52(bin9_74), .op53(bin9_75), .op54(bin9_76), .op55(bin9_77), .op56(bin9_78),
	.op57(bin9_81) , .op58(bin9_82), .op59(bin9_83), .op60(bin9_84), .op61(bin9_85), .op62(bin9_86), .op63(bin9_87), .op64(bin9_88),
	.oSum(oBIN9)
	);
	
endmodule

