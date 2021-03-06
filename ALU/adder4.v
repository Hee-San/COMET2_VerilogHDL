module adder4(a, b, cin, s, cout);
    input [3:0] a, b;
    input cin;
    output [3:0] s;
    output cout;
    wire [2:0] c;

    fa fa0(.a(a[0]), .b(b[0]), .cin(cin), .s(s[0]), .cout(c[0]));
    fa fa1(.a(a[1]), .b(b[1]), .cin(c[0]), .s(s[1]), .cout(c[1]));
    fa fa2(.a(a[2]), .b(b[2]), .cin(c[1]), .s(s[2]), .cout(c[2]));
    fa fa3(.a(a[3]), .b(b[3]), .cin(c[2]), .s(s[3]), .cout(cout));
endmodule
