module dual_edge(i,clk,reset,out,q);
	input i,clk,reset;
	output out;
	output reg q;
	always @(posedge clk)
	begin
		if(reset)
			q<=0;
		else
			q<=i;
	end
		assign out=q^i;
endmodule