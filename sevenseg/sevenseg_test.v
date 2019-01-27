`timescale 1ns/1ns
module sevenseg_test;
reg [3:0]a;
wire [6:0]b;
sevenseg sevenseg0(.a(a), .b(b));
initial begin
	$dumpvars;
		a = 4'b0000;
        #100 a = 0001;
        #100 a = 4'b0010;
        #100 a = 4'b0011;
        #100 a = 4'b0100;
        #100 a = 4'b0101;
        #100 a = 4'b0110;
        #100 a = 4'b1000;
        #100 a = 4'b1001;
        #100 a = 4'b0000;
	$finish;
end
endmodule
