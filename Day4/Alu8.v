module Alu8(a,b,op,out,carry);
	input [7:0] a,b;
	input [2:0] op;
	output reg [7:0] out;
	output carry;
	reg carry;
	always @ (*)
	begin
	carry = 0;
		case(op)
			3'b000: {carry,out} = a + b;
			3'b001: {carry,out} = a - b;
			3'b010: out = a << b[2:0];
			3'b011: out = a >> b[2:0];
			3'b100: out = a & b;
			3'b101: out = a | b;
			3'b110: out = a ^ b;
			3'b111: out = {7'b0,a==b};
		endcase
	end

endmodule