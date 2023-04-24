/* Generated by Yosys 0.18+40 (git sha1 42721b6a1, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module Subtractor_16Bits(A, B, Y, Cout);
  wire [15:0] _0_;
  wire [15:0] _1_;
  wire _2_;
  input [15:0] A;
  wire [15:0] A;
  input [15:0] B;
  wire [15:0] B;
  output Cout;
  wire Cout;
  output [15:0] Y;
  wire [15:0] Y;
  wire [15:0] nb;
  assign _0_ = ~ B;
  Ripple_Adder_16Bits ra160 (
    .AAA(A),
    .BBB(nb),
    .Cin3(1'h1),
    .Cout3(_2_),
    .YYY(_1_)
  );
  assign nb = _0_;
  assign Y = _1_;
  assign Cout = _2_;
endmodule
