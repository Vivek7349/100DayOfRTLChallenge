module T_flfp(T,clk,reset,Q,Qb);
	input T,clk,reset;
	output reg Q;
	output Qb;
	
	always @ (posedge clk)
	begin
		if(reset)
			Q<=1'b0;
		else
		begin
			if(T==1'b1)
				Q <= ~Q;
			else
				Q <= Q;
		end
	end
	assign Qb = ~ Q;

endmodule