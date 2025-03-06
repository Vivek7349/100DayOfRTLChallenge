module BinToHot (bin_i,hot_o);
	parameter bin_w = 4;
	parameter hot_w = 16;
	
	input [bin_w-1:0] bin_i;
	output [hot_w-1:0] hot_o;
	
	assign hot_o = 1'b1<<bin_i;
endmodule