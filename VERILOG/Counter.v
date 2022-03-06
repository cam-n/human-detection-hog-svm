module Counter (
   
 input iClk,
 input iRst,
 output reg [6:0] oOut   
 );
  
reg [6:0] count; 
always @(posedge iClk)
begin
    if (iRst) begin
      oOut <= 7'd0 ;
      count <= 7'd0;
    end 
    else  begin
      count <= count + 1'b1;
      if (count == 7'd52) begin
        count <= 7'd0;
		if (oOut == 7'd105)  oOut <= 7'd0 ;
        else oOut <= oOut + 1'b1;
      end
    end 
end
endmodule
