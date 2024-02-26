module b2g(
  input B1,B2,B3,B4,
  output G1,G2,G3,G4);
  xor(G1,B1,B2);
  xor(G2,B3,B2);
  xor(G3,B3,B4);
  buf(G4,B4);
endmodule
