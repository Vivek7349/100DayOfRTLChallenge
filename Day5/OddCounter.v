module OddCounter(clk,reset,count);
	input clk,reset;
	output reg [7:0] count;
	
	always @ (posedge clk or posedge reset)
	begin
		if(reset)
			count<=8'h01;
		else
			count<=count+8'd2;
	end
endmodule