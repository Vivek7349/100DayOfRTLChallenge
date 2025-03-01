`timescale 10ns/1ps
module dual_edge_tb;
	reg i,clk,reset;
	wire out, q;
	
	initial clk=0;
	always #5 clk=~clk;
	
	dual_edge DUT(.i(i), .clk(clk), .reset(reset), .out(out), .q(q));
	initial
	begin
		$monitor("t=%t,reset=%b,i=%b,q=%b,out=%b",$time,reset,i,q,out);
		#10 reset = 1; i=1;
		#10 reset = 0; i=0;
		#10 reset = 0; i=1;
		#10 reset = 0; i=0;
		#50 $finish;
	end	
endmodule