module Counter_Cell (
   
 input iClk,
 input iRst_n,
 input iEn,
 
 output [6:0] oOut  
 );
  
reg [6:0] counter; 
reg [7:0] temp;
always @(posedge iClk)
begin
  if(iEn) begin
    if (!iRst_n) begin
      temp <= 8'd0 ;
      counter <= 7'd0;
    end 
    else  begin
      counter <= counter + 1'b1;
      if (counter == 7'd115) begin
        counter <= 7'd0;
        temp <= temp + 1'b1;
      end
    end 
  end
end
assign oOut = temp[6:0];
endmodule
