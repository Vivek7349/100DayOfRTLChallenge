module JKFlipFlop(J,K,clk,Q,Qb,reset);
	input J,K,clk,reset;
	output reg Q;
	output Qb;
	
	always @ (posedge clk)
	begin
		if(reset)
			Q <= 1'b0;
		else
		begin
			case({J,K})
				2'b00 : Q <= Q;
				2'b01 : Q <= 1'b0;
				2'b10 : Q <= 1'b1;
				2'b11 : Q <= ~Q;
				
			endcase
		end
	end
	assign Qb = ~Q;

endmodule