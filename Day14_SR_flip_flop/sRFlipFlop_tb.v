module sRFlipFlop_tb;
	reg clk,reset,S,R;
	wire Q,Qb;
	
	sRFlipFlop DUT(clk,reset,S,R,Q,Qb);
	
	initial clk =0;
	always #5 clk = ~clk;
	
	initial
	begin
		reset = 1'b1; S= 1'b1; R=1'b0;
		#13 reset = 1'b0; S= 1'b0; R=1'b0;
		#10 reset = 1'b0; S= 1'b1; R=1'b0;
		#10 reset = 1'b0; S= 1'b0; R=1'b1;
		#10 reset = 1'b0; S= 1'b1; R=1'b1;
	end


endmodule