module Decoder3To8_tb;
	reg [2:0] in;
	wire [7:0] out;
	reg [3:0] i;
	
	Decoder3To8 DUT(.in(in),.out(out));
	
	initial
	begin
		for(i=0; i<8; i=i+1)
		begin 
			 #5 in=i;
		end
		#100 $finish;
	end
endmodule