module demorgan
(
  input A,
  input B,
  output nA,
  output nB,
  output AandB,
  output AorB,
  output nAandnB,
  output nAornB,
  output nAandB,
  output nAorB
);

  wire nA;
  wire nB;
  not Ainv(nA, A);
  not Binv(nB, B);
  and AaB(AandB, A, B);
  or AoB(AorB, A, B);
  and andgate(nAandnB, nA, nB);
  or orgate(nAornB, nA, nB);
  not ABinv(nAandB, AandB);
  not AorBinv(nAorB, AorB);

endmodule

