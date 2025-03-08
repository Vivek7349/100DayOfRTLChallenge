module Decoder3To8(in,out);
	input [2:0] in;
	output [7:0] out;
	
	assign out = 8'h01 << in;
endmodule