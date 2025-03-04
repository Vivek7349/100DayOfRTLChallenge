module sipo_tb;
	reg si,clk,rst;
	wire [3:0] po;
	
	sipo DUT(.si(si), .clk(clk),  .rst(rst), .po(po));
	
	
	initial clk = 1'b0;
	always #5 clk = ~clk;
	
	initial
	begin 
		#5 rst=1;
		#10 rst=0; si=1'b1;
		#10 rst=0; si=1'b1;
		#10 rst=0; si=1'b1;
		#10 rst=0; si=1'b1;
		#10 rst=0; si=1'b0;
		#50 $finish;
	end
endmodule