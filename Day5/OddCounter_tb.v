module OddCounter_tb;
	reg reset, clk;
	wire [7:0]count;
	
	OddCounter DUT(.reset(reset), .clk(clk), .count(count));
	
	initial clk=0;
	always #5 clk=~clk;
	
	initial
	begin
		$monitor("time=%t,count=%b",$time,count);
		#5 reset = 1; 
		#5 reset = 0;
		#105 reset = 1;
		#5 reset =0;
		
		
		#50 $finish;
	
	end
endmodule