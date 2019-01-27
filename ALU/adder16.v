module adder16(a, b, s);
    input [15:0] a, b;
    output [15:0] s;
    wire [2:0] c;

    adder4 adder4_0(.a(a[3:0]), .b(b[3:0]), .cin(1'b0), .s(s[3:0]), .cout(c[0]));
    adder4 adder4_1(.a(a[7:4]), .b(b[7:4]), .cin(c[0]), .s(s[7:4]), .cout(c[1]));
    adder4 adder4_2(.a(a[11:8]), .b(b[11:8]), .cin(c[1]), .s(s[11:8]), .cout(c[2]));
    adder4 adder4_3(.a(a[15:12]), .b(b[15:12]), .cin(c[2]), .s(s[15:12]));
endmodule
