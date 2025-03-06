module BinToHot_tb;
	reg [3:0] bin_i;
	wire [15:0] hot_o;
	
	BinToHot DUT(.bin_i(bin_i), .hot_o(hot_o));
	
	initial
	begin
		#5 bin_i=4'd0;
		#5 bin_i=4'd1;
		#5 bin_i=4'd2;
		#5 bin_i=4'd3;
		#5 bin_i=4'd4;
		#5 bin_i=4'd5;
		#5 bin_i=4'd6;
		#5 bin_i=4'd7;
		#5 bin_i=4'd8;
		#5 bin_i=4'd9;
		#5 bin_i=4'd10;
		#5 bin_i=4'd11;
		#5 bin_i=4'd12;
		#5 bin_i=4'd13;
		#5 bin_i=4'd14;
		#5 bin_i=4'd15;
	end
endmodule