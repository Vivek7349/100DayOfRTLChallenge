module D_ff(D,Q,Qb,clk,reset);
	input D,clk,reset;
	output reg Q;
	output Qb;
	always @ (posedge clk)
	begin
		if(reset)
			Q<=1'b0;
		else
			Q<=D;
	end
	assign Qb = ~Q;
endmodule
