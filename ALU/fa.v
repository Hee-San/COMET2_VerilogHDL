module fa(a, b, cin, s, cout);
    input a, b, cin;
    output s, cout;
    reg s, cout;

always @(a or b or cin) begin
    s = a ^ b ^ cin;
    cout = (a & b) | (b & cin) | (cin & a);
end
endmodule
