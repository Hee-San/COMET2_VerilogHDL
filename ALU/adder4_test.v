`timescale 1ns/1ns
module adder4_test;
    reg [3:0] a, b;
    wire [3:0] s;
    adder4 adder4_0(.a(a), .b(b), .s(s));
initial begin
	$dumpvars;
		a = 4'b0000; b = 4'b0000;
        #100 a = 4'b0001;
        #100 a = 4'b0010;
        #100 b = 4'b0111;
        #100 a = 4'b1101;
        #100 a = 4'b1011;
        #100 b = 4'b1001;
        #100 b = 4'b1110;
		#100 a = 4'b0000; b = 4'b0000;
	$finish;
end
endmodule
