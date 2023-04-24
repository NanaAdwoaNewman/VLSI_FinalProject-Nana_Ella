/* Generated by Yosys 0.18+40 (git sha1 42721b6a1, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module Comparator_16Bits(A, B, G, L, E);
  wire _0_;
  wire _1_;
  wire _2_;
  wire _3_;
  wire _4_;
  wire _5_;
  wire _6_;
  input [15:0] A;
  wire [15:0] A;
  input [15:0] B;
  wire [15:0] B;
  output E;
  wire E;
  output G;
  wire G;
  output L;
  wire L;
  assign _3_ = _1_ ? 1'h0 : 1'h1;
  assign _4_ = _0_ ? 1'h1 : 1'h0;
  assign _5_ = _0_ ? 1'h0 : _2_;
  assign _6_ = _0_ ? 1'h0 : _3_;
  assign _0_ = A > B;
  assign _1_ = B > A;
  assign _2_ = _1_ ? 1'h1 : 1'h0;
  assign G = _4_;
  assign L = _5_;
  assign E = _6_;
endmodule
