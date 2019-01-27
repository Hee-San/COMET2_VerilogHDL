`timescale 1ns/1ns
module fa_test;
    reg a, b, cin;
    wire s, cout;
    fa fa0(.a(a), .b(b), .cin(cin), .s(s), .cout(cout));
initial begin
	$dumpvars;
		a = 0; b = 0; cin = 0;
		#100 a = 1; b = 0; cin = 0;
		#100 a = 0; b = 1; cin = 0;
		#100 a = 1; b = 1; cin = 0;
		#100 a = 0; b = 0; cin = 1;
		#100 a = 1; b = 0; cin = 1;
		#100 a = 0; b = 1; cin = 1;
		#100 a = 1; b = 1; cin = 1;
		#100 a = 0; b = 0; cin = 0;
	$finish;
end
endmodule
