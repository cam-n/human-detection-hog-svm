module ADDR_FOR_SVM(

input iClk,
input iReady,
output reg [11:0] oADDR,
output reg oDONE
);
	reg [3:0] count;
	always @ (posedge iClk)
	begin
		if(iReady) begin
			count <= 4'd0;
			oADDR <= 12'd0;			
		end
		else begin
			count <= count + 1'b1;
			if(count == 4'd9) begin 
				oADDR <= oADDR + 1'b1;
				count <= 4'd0;
				if(oADDR == 12'd3779) oDONE <= 1'b1;
				else oDONE <= 1'b0;
			end
		end
	end

endmodule