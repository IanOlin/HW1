`include "hw1.v"

module demorgan_test ();


  reg A, B;
  wire nA, nB, nAandnB, nAornB, nAandB, nAorB;

  demorgan dut(A, B, nA, nB, AandB, AorB, nAandnB, nAornB, nAandB, nAorB);

  initial begin
    $display("A B | ~A ~B | ~A~B | ~A+~B| ~(AB)| ~(A+B)");
    A=0;B=0; #1
    $display("%b %b |  %b  %b |    %b |     %b|     %b|     %b", A, B, nA, nB, nAandnB, nAornB, nAandB, nAorB);
    A=0;B=1; #1
    $display("%b %b |  %b  %b |    %b |     %b|     %b|     %b", A, B, nA, nB, nAandnB, nAornB, nAandB, nAorB);
    A=1;B=0; #1
    $display("%b %b |  %b  %b |    %b |     %b|     %b|     %b", A, B, nA, nB, nAandnB, nAornB, nAandB, nAorB);
    A=1;B=1; #1
    $display("%b %b |  %b  %b |    %b |     %b|     %b|     %b", A, B, nA, nB, nAandnB, nAornB, nAandB, nAorB);
  end
endmodule
