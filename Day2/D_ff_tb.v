
`timescale 10ns/1ps
module D_ff_tb;
	reg D,clk,reset;
	wire Q,Qb;
	D_ff DUT (.D(D),.clk(clk), .reset(reset), .Q(Q), .Qb(Qb));
	initial clk=0;
	always #5 clk = ~clk;
	initial
	begin
		$monitor("time=%t,D=%b,reset=%b,Q=%b, Qb=%b",$time,D,reset,Q,Qb);
		#10 D=1; reset=1;
		#10 D=0; reset=0;
		#10 D=1; reset=0;
	end
endmodule