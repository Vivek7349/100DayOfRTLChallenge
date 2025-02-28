module mux2to1_tb;
    reg i0, i1, s;  
    wire o;         
    // Instantiate the MUX module
    mux2to1 DUT (.i0(i0), .i1(i1), .s(s), .out(o));

    initial begin
        $monitor("i0=%b, i1=%b, s=%b, o=%b", i0, i1, s, o);

        #10 i0 = 0; i1 = 1; s = 0;  // Expected output: o = 0
        #10 i0 = 1; i1 = 0; s = 1;  // Expected output: o = 0
        #10 i0 = 1; i1 = 1; s = 0;  // Expected output: o = 1
        #10 i0 = 0; i1 = 0; s = 1;  // Expected output: o = 0

        #50 $finish;
    end
endmodule
