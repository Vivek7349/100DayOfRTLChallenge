module BinToGray_tb;
	reg [3:0] in;
	wire [3:0] out;
	reg [4:0] i; 
	
	BinToGray DUT(.in(in), .out(out));
	
	initial
	begin
		for (i=0;i<16;i=i+1)
		begin
			#5 in=i;
		end
		#10 $finish;
	end
endmodule