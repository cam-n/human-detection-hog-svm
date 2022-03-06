module BUFFER_HOG(
	
  input iClk,
  input iRst_n,
  input iWR,
  input [11:0] iADDR,
  input [31:0] iBIN11, iBIN12, iBIN13, iBIN14, iBIN15, iBIN16, iBIN17, iBIN18, iBIN19,
  input [31:0] iBIN21, iBIN22, iBIN23, iBIN24, iBIN25, iBIN26, iBIN27, iBIN28, iBIN29,
  input [31:0] iBIN31, iBIN32, iBIN33, iBIN34, iBIN35, iBIN36, iBIN37, iBIN38, iBIN39,
  input [31:0] iBIN41, iBIN42, iBIN43, iBIN44, iBIN45, iBIN46, iBIN47, iBIN48, iBIN49,
  
  output [31:0] oValue,
  output reg oDONE

);
	reg [31:0] buffer [0:3779];

	reg [16:0] addr;
	always @(posedge iClk)
	begin
	  if(!iRst_n) begin
		addr <= 17'd0;
	  end
	  else if (iWR == 1'b1) begin
		addr <= addr + 6'd36;
		if (addr == 17'd3744) begin 
			oDONE <= 1'b1;
		end
		else oDONE <= 1'b0;
	  end
	end

	always @(posedge iWR) begin
	/*
		buffer[addr] 		<= iBIN11;
		buffer[addr + 1'd1] <= iBIN12;
		buffer[addr + 2'd2] <= iBIN13;
		buffer[addr + 2'd3] <= iBIN14;
		buffer[addr + 3'd4] <= iBIN15;
		buffer[addr + 3'd5] <= iBIN16;
		buffer[addr + 3'd6] <= iBIN17;
		buffer[addr + 3'd7] <= iBIN18;
		buffer[addr + 4'd8] <= iBIN19;
		
		buffer[addr + 4'd9]  <= iBIN21;
		buffer[addr + 4'd10] <= iBIN22;
		buffer[addr + 4'd11] <= iBIN23;
		buffer[addr + 4'd12] <= iBIN24;
		buffer[addr + 4'd13] <= iBIN25;
		buffer[addr + 4'd14] <= iBIN26;
		buffer[addr + 4'd15] <= iBIN27;
		buffer[addr + 5'd16] <= iBIN28;
		buffer[addr + 5'd17] <= iBIN29;
		
		buffer[addr + 5'd18] <= iBIN31;
		buffer[addr + 5'd19] <= iBIN32;
		buffer[addr + 5'd20] <= iBIN33;
		buffer[addr + 5'd21] <= iBIN34;
		buffer[addr + 5'd22] <= iBIN35;
		buffer[addr + 5'd23] <= iBIN36;
		buffer[addr + 5'd24] <= iBIN37;
		buffer[addr + 5'd25] <= iBIN38;
		buffer[addr + 5'd26] <= iBIN39;
		
		buffer[addr + 5'd27] <= iBIN41;
		buffer[addr + 5'd28] <= iBIN42;
		buffer[addr + 5'd29] <= iBIN43;
		buffer[addr + 5'd30] <= iBIN44;
		buffer[addr + 5'd31] <= iBIN45;
		buffer[addr + 6'd32] <= iBIN46;
		buffer[addr + 6'd33] <= iBIN47;
		buffer[addr + 6'd34] <= iBIN48;
		buffer[addr + 6'd35] <= iBIN49;
		*/
		
		
		buffer[addr] 		<= iBIN11;
		buffer[addr + 1'd1] <= iBIN31;
		buffer[addr + 2'd2] <= iBIN21;
		buffer[addr + 2'd3] <= iBIN41;
		
		buffer[addr + 3'd4] <= iBIN12;
		buffer[addr + 3'd5] <= iBIN32;
		buffer[addr + 3'd6] <= iBIN22;
		buffer[addr + 3'd7] <= iBIN42;
		
		buffer[addr + 4'd8] <= iBIN13;
		buffer[addr + 4'd9]  <= iBIN33;
		buffer[addr + 4'd10] <= iBIN23;
		buffer[addr + 4'd11] <= iBIN43;
		
		buffer[addr + 4'd12] <= iBIN14;
		buffer[addr + 4'd13] <= iBIN34;
		buffer[addr + 4'd14] <= iBIN24;
		buffer[addr + 4'd15] <= iBIN44;
		
		buffer[addr + 5'd16] <= iBIN15;
		buffer[addr + 5'd17] <= iBIN35;
		buffer[addr + 5'd18] <= iBIN25;
		buffer[addr + 5'd19] <= iBIN45;
		
		buffer[addr + 5'd20] <= iBIN16;
		buffer[addr + 5'd21] <= iBIN36;
		buffer[addr + 5'd22] <= iBIN26;
		buffer[addr + 5'd23] <= iBIN46;
		
		buffer[addr + 5'd24] <= iBIN17;
		buffer[addr + 5'd25] <= iBIN37;
		buffer[addr + 5'd26] <= iBIN27;
		buffer[addr + 5'd27] <= iBIN47;
		
		buffer[addr + 5'd28] <= iBIN18;
		buffer[addr + 5'd29] <= iBIN38;
		buffer[addr + 5'd30] <= iBIN28;
		buffer[addr + 5'd31] <= iBIN48;
		
		buffer[addr + 6'd32] <= iBIN19;
		buffer[addr + 6'd33] <= iBIN39;
		buffer[addr + 6'd34] <= iBIN29;
		buffer[addr + 6'd35] <= iBIN49;
		
	  end
	  
	 assign oValue = buffer[iADDR]; 
endmodule