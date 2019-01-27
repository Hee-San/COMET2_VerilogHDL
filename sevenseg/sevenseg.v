module sevenseg(a, b);
    input wire [3:0]a;
    output reg [6:0]b;
always @* begin
    case (a)
      4'b0000 : b <= 7'b1111110;
      4'b0001 : b <= 7'b0110000;
      4'b0010 : b <= 7'b1101101;
      4'b0011 : b <= 7'b1001111;
      4'b0100 : b <= 7'b1100110;
      4'b0101 : b <= 7'b1111101;
      4'b0110 : b <= 7'b0100111;
      4'b1000 : b <= 7'b1111111;
      4'b1001 : b <= 7'b1111011;
      default : b <= 7'b0000000;
    endcase
end
endmodule

