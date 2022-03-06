module SVMCLASSIFY(

	input iClk,
	input iReady,
	input iRst_n,
	input iDone,
	input [31:0] iHOG_Value,
	input [31:0] iTrained_Value,
	
	output reg oHUMAN,
	output reg oFINISH

);

	reg [31:0] sum;
//	reg [31:0] result;
	always @ (iClk) 
	begin
		if (!iRst_n) sum <= 32'h00000000;
	end

	reg [4:0] count;
	reg clk;
	reg clk1;
	reg clk_sum;
	always @ (posedge iClk or negedge iClk ) begin
		if(iReady) begin 
			count <= 5'd0;
			clk <= 1'b0;
			clk1 <= 1'b0;
			clk_sum <= 1'b0;
		end
		else begin 
			count <= count + 1'b1;
			if (count >= 5'd1 && count < 5'd8) begin 
				clk <= !clk;
				clk1 <= 1'b0;
			end
			else if (count >= 5'd8 && count <= 5'd15) begin 
				clk <= 1'b0;
				clk1 <= !clk1;
			end
			else if (count > 5'd15 && count <= 5'd19) begin 
				clk <= 1'b0;
				clk1 <= 1'b0;
				if(count == 5'd18) clk_sum <= 1'b1;
				else clk_sum <= 1'b0;
			end
			else if(count > 5'd19) count <= 5'd0;
				
		end
	end
	
	wire [31:0] prod;
	wire [31:0] result;
	fpu_norm product(.iClk(clk), .op(2'b10), .opA(iHOG_Value), .opB(iTrained_Value), .oResult(prod));
	fpu_norm SUM(.iClk(clk1), .op(2'b00), .opA(sum), .opB(prod), .oResult(result));
	
	always @(posedge clk_sum) begin
		sum <= result;
	end
	
	always @(posedge iDone) // latch the data????
	begin
		oHUMAN = ~sum[31];
	end
	
	always @(negedge clk) 
	begin
	  
		if (iDone) oFINISH = 1'b1;
	end
	
endmodule



