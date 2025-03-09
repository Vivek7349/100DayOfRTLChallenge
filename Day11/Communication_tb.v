module Communication_tb;
	reg [3:0] in;
	reg [1:0] sel;
	wire [3:0] out;
	wire mout;
	
	Communication DUT (.in(in), .mout(mout),.sel(sel),.out(out));
	
	initial 
	begin 
		in = 4'b0001; sel =2'b00; #5;
		in = 4'b0010; sel =2'b01; #5;
		in = 4'b0100; sel =2'b10; #5;
		in = 4'b1000; sel =2'b11; #5;
		$finish;
	end

endmodule