module Dflipflip_tb;
	reg D,clk,reset;
	wire Q,Qb;
	
	initial clk=0;
	always #6 clk = ~clk;
	
	Dflipflip DUT(.D(D),.Q(Q),.Qb(Qb),.clk(clk),.reset(reset));
	
	initial
	begin
		#5; reset = 1'b1; D = 1'b1;
		#10; reset = 1'b0; D = 1'b0;
		#10; reset = 1'b0; D = 1'b1;
		#10 $finish;
	end
endmodule