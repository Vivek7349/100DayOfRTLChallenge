module Communication (in,mout,sel,out);
	input [3:0] in;
	input [1:0] sel;
	output [3:0] out;
	output mout;
	
	wire m1out;
	wire [1:0] Enout;
	
	Mux4To2 mux1(.in(in),.out(m1out),.sel(sel));
	
	Mux4To2 mux2(.in({4{m1out}}),.out(mout),.sel(sel));
	
	Encoder4To2 Encoder(.in(in) , .out(Enout));
	
	Decoder2To4 Decoder(.in(Enout) , .out(out));
	
	

endmodule