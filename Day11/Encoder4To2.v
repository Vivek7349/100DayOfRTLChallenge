module Encoder4To2(in , out);
	input [3:0] in;
	output [1:0] out;
	
	assign out = (in == 4'b0001)? 2'b00:
			       (in == 4'b0010)? 2'b01:
			       (in == 4'b0100)? 2'b10:
			       2'b11;
endmodule