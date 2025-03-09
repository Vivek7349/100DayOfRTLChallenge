module DeMux1To4(in,out,sekl)
	input in;
	input [1:0] sel;
	output reg [3;0] out;
	
	always @(*)
	begin
		case(sel)
			2'00: out[0] = in;
			2'01: out[1] = in;
			2'10: out[2] = in;
			2'11: out[3] = in;
		endcase
	end
endmodule