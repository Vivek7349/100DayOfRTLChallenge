module mux2to1(i0,i1,s,out);
	input wire i0,i1,s;
	output wire out;
	assign out= s? i1:i0;
endmodule 