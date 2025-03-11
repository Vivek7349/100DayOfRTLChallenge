module Dflipflip(D,Q,Qb,clk,reset);
	input D,clk,reset;
	output reg Qb,Q;

	always @(posedge clk)
	begin
		if(reset)
		begin
			Q <= 1'b0;
			Qb <= 1'b1;
		end
		else
		begin
			Q <= D;
			Qb <= ~D;
		end
	end
endmodule