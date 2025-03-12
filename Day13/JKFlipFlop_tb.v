module JKFlipFlop_tb;
	reg J,K,clk,reset;
	wire Q,Qb;
	
	JKFlipFlop DUT(J,K,clk,Q,Qb,reset);
	
	initial clk=1'b0;
	always #5 clk = ~clk;
	
	initial
	begin
		$monitor("time=%d,reset=%b,J=%b,K=%b,Q=%b,Qb=%b",$time,reset,J,K,Q,Qb);
		reset = 1; J=1; K=0;
		#13 reset =0;
		#1 J=0; K=0;
		#10 J=0; K=1;
		#10 J=1; K=0;
		#10 J=1; K=1;
		
		#20 $finish;
	end
	

endmodule