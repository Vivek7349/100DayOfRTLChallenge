module LFSR_tb;
	reg clk,reset;
	wire [3:0] out;
	
	LFSR DUT(.clk(clk), .reset(reset), .out(out));
	
	initial  clk=0;
	always #5 clk = ~clk;
	
	initial
	begin
		#10 reset =1 ; 
		#10 reset= 0;
		#100 $finish;
	end
	
endmodule