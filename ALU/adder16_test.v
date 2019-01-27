`timescale 1ns/1ns
module adder16_test;
    reg [15:0] a, b;
    wire [15:0] s;
    adder16 adder16_0(.a(a), .b(b), .s(s));
initial begin
	$dumpvars;
		a = 16'd0; b = 16'd0;
        #100 a = 16'd65535;
        #100 b = 16'd1;
        #100 a = 16'd10000;
        #100 b = 16'd20000;
        #100 a = 16'd40000;
        #100 a = 16'd50000;
        #100 b = 16'd50000;
		#100 a = 16'd0; b = 16'd0;
	$finish;
end
endmodule
