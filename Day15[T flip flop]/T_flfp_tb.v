module T_flfp_tb;
	reg T,clk,reset;
	wire Q,Qb;
	
	T_flfp DUT(T,clk,reset,Q,Qb);
	
	initial clk = 0;
	always #5 clk = ~clk;
	
	initial 
	begin
		reset=1 ; T=1 ;
		#14 reset=0 ; T=0 ;
		#10 reset=0 ; T=1 ;
		#10 reset=0 ; T=0 ;
		#10 reset=0 ; T=1 ;
		#20 $finish;
	end 

endmodule