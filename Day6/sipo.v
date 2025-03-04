module sipo(clk,rst,si,po);
	input clk,rst,si;
	output [3:0] po;
	
	reg [3:0] store;
	
	always @ (posedge clk)
	begin
		if(rst)
			store <= 4'b0000;
		else
			store <= {store[2:0],si};
	end
	assign po = store;
endmodule