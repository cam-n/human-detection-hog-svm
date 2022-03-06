module ADDITION_64_INPUT(

  input iClk,
  input [31:0] op1 , op2,  op3,  op4,   op5,   op6,   op7,   op8,
  input [31:0] op9 , op10, op11, op12,  op13,  op14,  op15,  op16,
  input [31:0] op17, op18, op19, op20,  op21,  op22,  op23,  op24,
  input [31:0] op25, op26, op27, op28,  op29,  op30,  op31,  op32,
  input [31:0] op33, op34, op35, op36,  op37,  op38,  op39,  op40,
  input [31:0] op41, op42, op43, op44,  op45,  op46,  op47,  op48,
  input [31:0] op49, op50, op51, op52,  op53,  op54,  op55,  op56,
  input [31:0] op57, op58, op59, op60,  op61,  op62,  op63,  op64,  

  output [31:0] oSum
);
  // The first stage
  
  wire [31:0] stage1_sum1, stage1_sum2, stage1_sum3, stage1_sum4, stage1_sum5, stage1_sum6, stage1_sum7, stage1_sum8;
  wire [31:0] stage1_sum9, stage1_sum10, stage1_sum11, stage1_sum12, stage1_sum13, stage1_sum14, stage1_sum15, stage1_sum16;
  wire [31:0] stage1_sum17, stage1_sum18, stage1_sum19, stage1_sum20, stage1_sum21, stage1_sum22, stage1_sum23, stage1_sum24;
  wire [31:0] stage1_sum25, stage1_sum26, stage1_sum27, stage1_sum28, stage1_sum29, stage1_sum30, stage1_sum31, stage1_sum32;
  
  fpu_norm stage1_addition1(.iClk(iClk), .op(2'b00), .opA(op1), .opB(op2), .oResult(stage1_sum1));
  fpu_norm stage1_addition2(.iClk(iClk), .op(2'b00), .opA(op3), .opB(op4), .oResult(stage1_sum2));
  fpu_norm stage1_addition3(.iClk(iClk), .op(2'b00), .opA(op5), .opB(op6), .oResult(stage1_sum3));
  fpu_norm stage1_addition4(.iClk(iClk), .op(2'b00), .opA(op7), .opB(op8), .oResult(stage1_sum4));
  fpu_norm stage1_addition5(.iClk(iClk), .op(2'b00), .opA(op9), .opB(op10), .oResult(stage1_sum5));
  fpu_norm stage1_addition6(.iClk(iClk), .op(2'b00), .opA(op11), .opB(op12), .oResult(stage1_sum6));
  fpu_norm stage1_addition7(.iClk(iClk), .op(2'b00), .opA(op13), .opB(op14), .oResult(stage1_sum7));
  fpu_norm stage1_addition8(.iClk(iClk), .op(2'b00), .opA(op15), .opB(op16), .oResult(stage1_sum8));
  fpu_norm stage1_addition9(.iClk(iClk), .op(2'b00), .opA(op17), .opB(op18), .oResult(stage1_sum9));
  fpu_norm stage1_addition10(.iClk(iClk), .op(2'b00), .opA(op19), .opB(op20), .oResult(stage1_sum10));
  fpu_norm stage1_addition11(.iClk(iClk), .op(2'b00), .opA(op21), .opB(op22), .oResult(stage1_sum11));
  fpu_norm stage1_addition12(.iClk(iClk), .op(2'b00), .opA(op23), .opB(op24), .oResult(stage1_sum12));
  fpu_norm stage1_addition13(.iClk(iClk), .op(2'b00), .opA(op25), .opB(op26), .oResult(stage1_sum13));
  fpu_norm stage1_addition14(.iClk(iClk), .op(2'b00), .opA(op27), .opB(op28), .oResult(stage1_sum14));
  fpu_norm stage1_addition15(.iClk(iClk), .op(2'b00), .opA(op29), .opB(op30), .oResult(stage1_sum15));
  fpu_norm stage1_addition16(.iClk(iClk), .op(2'b00), .opA(op31), .opB(op32), .oResult(stage1_sum16));
  fpu_norm stage1_addition17(.iClk(iClk), .op(2'b00), .opA(op33), .opB(op34), .oResult(stage1_sum17));
  fpu_norm stage1_addition18(.iClk(iClk), .op(2'b00), .opA(op35), .opB(op36), .oResult(stage1_sum18));
  fpu_norm stage1_addition19(.iClk(iClk), .op(2'b00), .opA(op37), .opB(op38), .oResult(stage1_sum19));
  fpu_norm stage1_addition20(.iClk(iClk), .op(2'b00), .opA(op39), .opB(op40), .oResult(stage1_sum20));
  fpu_norm stage1_addition21(.iClk(iClk), .op(2'b00), .opA(op41), .opB(op42), .oResult(stage1_sum21));
  fpu_norm stage1_addition22(.iClk(iClk), .op(2'b00), .opA(op43), .opB(op44), .oResult(stage1_sum22));
  fpu_norm stage1_addition23(.iClk(iClk), .op(2'b00), .opA(op45), .opB(op46), .oResult(stage1_sum23));
  fpu_norm stage1_addition24(.iClk(iClk), .op(2'b00), .opA(op47), .opB(op48), .oResult(stage1_sum24));
  fpu_norm stage1_addition25(.iClk(iClk), .op(2'b00), .opA(op49), .opB(op50), .oResult(stage1_sum25));
  fpu_norm stage1_addition26(.iClk(iClk), .op(2'b00), .opA(op51), .opB(op52), .oResult(stage1_sum26));
  fpu_norm stage1_addition27(.iClk(iClk), .op(2'b00), .opA(op53), .opB(op54), .oResult(stage1_sum27));
  fpu_norm stage1_addition28(.iClk(iClk), .op(2'b00), .opA(op55), .opB(op56), .oResult(stage1_sum28));
  fpu_norm stage1_addition29(.iClk(iClk), .op(2'b00), .opA(op57), .opB(op58), .oResult(stage1_sum29));
  fpu_norm stage1_addition30(.iClk(iClk), .op(2'b00), .opA(op59), .opB(op60), .oResult(stage1_sum30));
  fpu_norm stage1_addition31(.iClk(iClk), .op(2'b00), .opA(op61), .opB(op62), .oResult(stage1_sum31));
  fpu_norm stage1_addition32(.iClk(iClk), .op(2'b00), .opA(op63), .opB(op64), .oResult(stage1_sum32));
  
  // The second stage
  
  wire [31:0] stage2_sum1, stage2_sum2, stage2_sum3, stage2_sum4, stage2_sum5, stage2_sum6, stage2_sum7, stage2_sum8;
  wire [31:0] stage2_sum9, stage2_sum10, stage2_sum11, stage2_sum12, stage2_sum13, stage2_sum14, stage2_sum15, stage2_sum16;
  
  fpu_norm stage2_addition1(.iClk(iClk), .op(2'b00), .opA(stage1_sum1), .opB(stage1_sum2), .oResult(stage2_sum1));
  fpu_norm stage2_addition2(.iClk(iClk), .op(2'b00), .opA(stage1_sum3), .opB(stage1_sum4), .oResult(stage2_sum2));
  fpu_norm stage2_addition3(.iClk(iClk), .op(2'b00), .opA(stage1_sum5), .opB(stage1_sum6), .oResult(stage2_sum3));
  fpu_norm stage2_addition4(.iClk(iClk), .op(2'b00), .opA(stage1_sum7), .opB(stage1_sum8), .oResult(stage2_sum4));
  fpu_norm stage2_addition5(.iClk(iClk), .op(2'b00), .opA(stage1_sum9), .opB(stage1_sum10), .oResult(stage2_sum5));
  fpu_norm stage2_addition6(.iClk(iClk), .op(2'b00), .opA(stage1_sum11), .opB(stage1_sum12), .oResult(stage2_sum6));
  fpu_norm stage2_addition7(.iClk(iClk), .op(2'b00), .opA(stage1_sum13), .opB(stage1_sum14), .oResult(stage2_sum7));
  fpu_norm stage2_addition8(.iClk(iClk), .op(2'b00), .opA(stage1_sum15), .opB(stage1_sum16), .oResult(stage2_sum8));
  fpu_norm stage2_addition9(.iClk(iClk), .op(2'b00), .opA(stage1_sum17), .opB(stage1_sum18), .oResult(stage2_sum9));
  fpu_norm stage2_addition10(.iClk(iClk), .op(2'b00), .opA(stage1_sum19), .opB(stage1_sum20), .oResult(stage2_sum10));
  fpu_norm stage2_addition11(.iClk(iClk), .op(2'b00), .opA(stage1_sum21), .opB(stage1_sum22), .oResult(stage2_sum11));
  fpu_norm stage2_addition12(.iClk(iClk), .op(2'b00), .opA(stage1_sum23), .opB(stage1_sum24), .oResult(stage2_sum12));
  fpu_norm stage2_addition13(.iClk(iClk), .op(2'b00), .opA(stage1_sum25), .opB(stage1_sum26), .oResult(stage2_sum13));
  fpu_norm stage2_addition14(.iClk(iClk), .op(2'b00), .opA(stage1_sum27), .opB(stage1_sum28), .oResult(stage2_sum14));
  fpu_norm stage2_addition15(.iClk(iClk), .op(2'b00), .opA(stage1_sum29), .opB(stage1_sum30), .oResult(stage2_sum15));
  fpu_norm stage2_addition16(.iClk(iClk), .op(2'b00), .opA(stage1_sum31), .opB(stage1_sum32), .oResult(stage2_sum16));
  
  // The third stage
  
  wire [31:0] stage3_sum1, stage3_sum2, stage3_sum3, stage3_sum4;
  wire [31:0] stage3_sum5, stage3_sum6, stage3_sum7, stage3_sum8;
  
  fpu_norm stage3_addition1(.iClk(iClk), .op(2'b00), .opA(stage2_sum1), .opB(stage2_sum2), .oResult(stage3_sum1));
  fpu_norm stage3_addition2(.iClk(iClk), .op(2'b00), .opA(stage2_sum3), .opB(stage2_sum4), .oResult(stage3_sum2));
  fpu_norm stage3_addition3(.iClk(iClk), .op(2'b00), .opA(stage2_sum5), .opB(stage2_sum6), .oResult(stage3_sum3));
  fpu_norm stage3_addition4(.iClk(iClk), .op(2'b00), .opA(stage2_sum7), .opB(stage2_sum8), .oResult(stage3_sum4));
  fpu_norm stage3_addition5(.iClk(iClk), .op(2'b00), .opA(stage2_sum9), .opB(stage2_sum10), .oResult(stage3_sum5));
  fpu_norm stage3_addition6(.iClk(iClk), .op(2'b00), .opA(stage2_sum11), .opB(stage2_sum12), .oResult(stage3_sum6));
  fpu_norm stage3_addition7(.iClk(iClk), .op(2'b00), .opA(stage2_sum13), .opB(stage2_sum14), .oResult(stage3_sum7));
  fpu_norm stage3_addition8(.iClk(iClk), .op(2'b00), .opA(stage2_sum15), .opB(stage2_sum16), .oResult(stage3_sum8));
  
  // The fourth stage
  
  wire [31:0] stage4_sum1, stage4_sum2, stage4_sum3, stage4_sum4;
  
  fpu_norm stage4_addition1(.iClk(iClk), .op(2'b00), .opA(stage3_sum1), .opB(stage3_sum2), .oResult(stage4_sum1));
  fpu_norm stage4_addition2(.iClk(iClk), .op(2'b00), .opA(stage3_sum3), .opB(stage3_sum4), .oResult(stage4_sum2));
  fpu_norm stage4_addition3(.iClk(iClk), .op(2'b00), .opA(stage3_sum5), .opB(stage3_sum6), .oResult(stage4_sum3));
  fpu_norm stage4_addition4(.iClk(iClk), .op(2'b00), .opA(stage3_sum7), .opB(stage3_sum8), .oResult(stage4_sum4));
  
  // The fifth stage
  
   wire [31:0] stage5_sum1, stage5_sum2;
  
  fpu_norm stage5_addition1(.iClk(iClk), .op(2'b00), .opA(stage4_sum1), .opB(stage4_sum2), .oResult(stage5_sum1));
  fpu_norm stage5_addition2(.iClk(iClk), .op(2'b00), .opA(stage4_sum3), .opB(stage4_sum4), .oResult(stage5_sum2));
  
  // The last stage, output result stage
  
  fpu_norm result(.iClk(iClk), .op(2'b00), .opA(stage5_sum1), .opB(stage5_sum2), .oResult(oSum));
  
endmodule

