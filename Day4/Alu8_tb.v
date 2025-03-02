module Alu8_tb;
	reg [7:0] a,b;
	reg [2:0] op;
	wire [7:0] out;
	wire carry;
	integer i;
	
	Alu8 DUT(.a(a), .b(b), .op(op), .out(out), .carry(carry) );
	initial 
	begin 
		for(i=0; i<8; i=i+1)
		begin
			a = 8'hFF;
			b = 8'hFF;
			op = i[2:0];
			#5;
		end
	end
	
endmodule