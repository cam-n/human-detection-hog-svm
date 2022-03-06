module BUFFER_HOG_PRENORM(

input iClk,
input iWR,
input iRst_n,
input [31:0] iBIN1, iBIN2, iBIN3, iBIN4, iBIN5, iBIN6, iBIN7, iBIN8, iBIN9, 

output [31:0] oBIN11, oBIN12, oBIN13, oBIN14, oBIN15, oBIN16, oBIN17, oBIN18, oBIN19,
output [31:0] oBIN21, oBIN22, oBIN23, oBIN24, oBIN25, oBIN26, oBIN27, oBIN28, oBIN29,
output [31:0] oBIN31, oBIN32, oBIN33, oBIN34, oBIN35, oBIN36, oBIN37, oBIN38, oBIN39,
output [31:0] oBIN41, oBIN42, oBIN43, oBIN44, oBIN45, oBIN46, oBIN47, oBIN48, oBIN49,

output reg oDONE
);


reg [31:0] buffer [0:1151];

  // Write data part

reg [10:0] addr;
always @(posedge iClk)
begin
  if(!iRst_n) begin
    addr <= 11'd0;
  end
  else if (iWR == 1'b1) begin
    addr <= addr + 4'd9;
    if (addr >= 11'd1143) begin 
		oDONE <= 1'b1;
		addr <= 11'd0;
	end
    else oDONE <= 1'b0;
    end
end
  always @(posedge iWR) begin
    buffer[addr] <= iBIN1;
    buffer[addr + 1'd1] <= iBIN2;
    buffer[addr + 2'd2] <= iBIN3;
    buffer[addr + 2'd3] <= iBIN4;
    buffer[addr + 3'd4] <= iBIN5;
    buffer[addr + 3'd5] <= iBIN6;
    buffer[addr + 3'd6] <= iBIN7;
    buffer[addr + 3'd7] <= iBIN8;
    buffer[addr + 4'd8] <= iBIN9;
  end
  
  
  // Read data part
  
  wire [6:0] num_order;
  
  Counter Counter( .iClk(iClk), .iRst(oDONE), .oOut(num_order));
  
  wire [10:0] oAddrBeginRow, oAddrEndRow;
  wire [6:0] oAddrBeginCol, oAddrEndCol;
  
  Pre_Decoder Pre_Decoder(
					.iNumOrder(num_order),
					.oAddrBeginRow(oAddrBeginRow), 
					.oAddrEndRow(oAddrEndRow),
					.oAddrBeginCol(oAddrBeginCol), 
					.oAddrEndCol(oAddrEndCol)
				);
				
   wire [10:0] oADDR_CELL1_BIN1, oADDR_CELL1_BIN2, oADDR_CELL1_BIN3, oADDR_CELL1_BIN4; 
   wire [10:0] oADDR_CELL1_BIN5, oADDR_CELL1_BIN6, oADDR_CELL1_BIN7, oADDR_CELL1_BIN8, oADDR_CELL1_BIN9;

   wire [10:0] oADDR_CELL2_BIN1, oADDR_CELL2_BIN2, oADDR_CELL2_BIN3, oADDR_CELL2_BIN4; 
   wire [10:0] oADDR_CELL2_BIN5, oADDR_CELL2_BIN6, oADDR_CELL2_BIN7, oADDR_CELL2_BIN8, oADDR_CELL2_BIN9;

   wire [10:0] oADDR_CELL3_BIN1, oADDR_CELL3_BIN2, oADDR_CELL3_BIN3, oADDR_CELL3_BIN4; 
   wire [10:0] oADDR_CELL3_BIN5, oADDR_CELL3_BIN6, oADDR_CELL3_BIN7, oADDR_CELL3_BIN8, oADDR_CELL3_BIN9;

   wire [10:0] oADDR_CELL4_BIN1, oADDR_CELL4_BIN2, oADDR_CELL4_BIN3, oADDR_CELL4_BIN4; 
   wire [10:0] oADDR_CELL4_BIN5, oADDR_CELL4_BIN6, oADDR_CELL4_BIN7, oADDR_CELL4_BIN8, oADDR_CELL4_BIN9;		
  
 Decoder Decoder(

				.iAddrBeginRow(oAddrBeginRow),
				.iAddrEndRow(oAddrEndRow),
				.iAddrBeginCol(oAddrBeginCol), 
				.iAddrEndCol(oAddrEndCol),

				.oADDR_CELL1_BIN1(oADDR_CELL1_BIN1),
				.oADDR_CELL1_BIN2(oADDR_CELL1_BIN2),
				.oADDR_CELL1_BIN3(oADDR_CELL1_BIN3),
				.oADDR_CELL1_BIN4(oADDR_CELL1_BIN4),
				.oADDR_CELL1_BIN5(oADDR_CELL1_BIN5),
				.oADDR_CELL1_BIN6(oADDR_CELL1_BIN6),
				.oADDR_CELL1_BIN7(oADDR_CELL1_BIN7),
				.oADDR_CELL1_BIN8(oADDR_CELL1_BIN8),
				.oADDR_CELL1_BIN9(oADDR_CELL1_BIN9),
				
				.oADDR_CELL2_BIN1(oADDR_CELL2_BIN1),
				.oADDR_CELL2_BIN2(oADDR_CELL2_BIN2),
				.oADDR_CELL2_BIN3(oADDR_CELL2_BIN3),
				.oADDR_CELL2_BIN4(oADDR_CELL2_BIN4),
				.oADDR_CELL2_BIN5(oADDR_CELL2_BIN5),
				.oADDR_CELL2_BIN6(oADDR_CELL2_BIN6),
				.oADDR_CELL2_BIN7(oADDR_CELL2_BIN7),
				.oADDR_CELL2_BIN8(oADDR_CELL2_BIN8),
				.oADDR_CELL2_BIN9(oADDR_CELL2_BIN9),
				
				.oADDR_CELL3_BIN1(oADDR_CELL3_BIN1),
				.oADDR_CELL3_BIN2(oADDR_CELL3_BIN2),
				.oADDR_CELL3_BIN3(oADDR_CELL3_BIN3),
				.oADDR_CELL3_BIN4(oADDR_CELL3_BIN4),
				.oADDR_CELL3_BIN5(oADDR_CELL3_BIN5),
				.oADDR_CELL3_BIN6(oADDR_CELL3_BIN6),
				.oADDR_CELL3_BIN7(oADDR_CELL3_BIN7),
				.oADDR_CELL3_BIN8(oADDR_CELL3_BIN8),
				.oADDR_CELL3_BIN9(oADDR_CELL3_BIN9),
				
				.oADDR_CELL4_BIN1(oADDR_CELL4_BIN1),
				.oADDR_CELL4_BIN2(oADDR_CELL4_BIN2),
				.oADDR_CELL4_BIN3(oADDR_CELL4_BIN3),
				.oADDR_CELL4_BIN4(oADDR_CELL4_BIN4),
				.oADDR_CELL4_BIN5(oADDR_CELL4_BIN5),
				.oADDR_CELL4_BIN6(oADDR_CELL4_BIN6),
				.oADDR_CELL4_BIN7(oADDR_CELL4_BIN7),
				.oADDR_CELL4_BIN8(oADDR_CELL4_BIN8),
				.oADDR_CELL4_BIN9(oADDR_CELL4_BIN9)
			);
			
	assign oBIN11 = buffer[oADDR_CELL1_BIN1];
	assign oBIN12 = buffer[oADDR_CELL1_BIN2];
	assign oBIN13 = buffer[oADDR_CELL1_BIN3];
	assign oBIN14 = buffer[oADDR_CELL1_BIN4];
	assign oBIN15 = buffer[oADDR_CELL1_BIN5];
	assign oBIN16 = buffer[oADDR_CELL1_BIN6];
	assign oBIN17 = buffer[oADDR_CELL1_BIN7];
	assign oBIN18 = buffer[oADDR_CELL1_BIN8];
	assign oBIN19 = buffer[oADDR_CELL1_BIN9];
	
	assign oBIN21 = buffer[oADDR_CELL2_BIN1];
	assign oBIN22 = buffer[oADDR_CELL2_BIN2];
	assign oBIN23 = buffer[oADDR_CELL2_BIN3];
	assign oBIN24 = buffer[oADDR_CELL2_BIN4];
	assign oBIN25 = buffer[oADDR_CELL2_BIN5];
	assign oBIN26 = buffer[oADDR_CELL2_BIN6];
	assign oBIN27 = buffer[oADDR_CELL2_BIN7];
	assign oBIN28 = buffer[oADDR_CELL2_BIN8];
	assign oBIN29 = buffer[oADDR_CELL2_BIN9];
	
	assign oBIN31 = buffer[oADDR_CELL3_BIN1];
	assign oBIN32 = buffer[oADDR_CELL3_BIN2];
	assign oBIN33 = buffer[oADDR_CELL3_BIN3];
	assign oBIN34 = buffer[oADDR_CELL3_BIN4];
	assign oBIN35 = buffer[oADDR_CELL3_BIN5];
	assign oBIN36 = buffer[oADDR_CELL3_BIN6];
	assign oBIN37 = buffer[oADDR_CELL3_BIN7];
	assign oBIN38 = buffer[oADDR_CELL3_BIN8];
	assign oBIN39 = buffer[oADDR_CELL3_BIN9];
	
	assign oBIN41 = buffer[oADDR_CELL4_BIN1];
	assign oBIN42 = buffer[oADDR_CELL4_BIN2];
	assign oBIN43 = buffer[oADDR_CELL4_BIN3];
	assign oBIN44 = buffer[oADDR_CELL4_BIN4];
	assign oBIN45 = buffer[oADDR_CELL4_BIN5];
	assign oBIN46 = buffer[oADDR_CELL4_BIN6];
	assign oBIN47 = buffer[oADDR_CELL4_BIN7];
	assign oBIN48 = buffer[oADDR_CELL4_BIN8];
	assign oBIN49 = buffer[oADDR_CELL4_BIN9];
	
	
endmodule


















