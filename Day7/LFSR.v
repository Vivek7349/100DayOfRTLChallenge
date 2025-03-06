module LFSR (clk,reset,out);
	input clk,reset;
	output [3:0] out;
	
	reg [3:0] store;
	
	always @(posedge clk or posedge reset)
	begin
		if(reset)
			store <= 4'hE;
		else
			store <= {store[2:0],store[3]^store[1]};
	end
	
	assign out = store;
	
endmodule