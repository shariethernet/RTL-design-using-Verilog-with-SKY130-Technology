/* Generated by Yosys 0.9 (git sha1 1979e0b) */

module mul2(a, y);
  input [2:0] a;
  output [3:0] y;
  assign y = { a, 1'h0 };
endmodule