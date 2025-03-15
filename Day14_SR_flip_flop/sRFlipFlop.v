module sRFlipFlop(clk,reset,S,R,Q,Qb);
	input clk,reset,S,R;
	output reg Q;
	output Qb;
	
	always @(posedge clk)
	begin
		if(reset)
			Q<=1'b0;
		else
		begin
			case({S,R})
				2'b00: Q<=Q;
				2'b01: Q<=1'b0;
				2'b10: Q<=1'b1;
				2'b11: Q<=1'bx;
			endcase
		end
	end
	assign Qb= ~Q;
endmodule