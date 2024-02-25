module fulleradder_tb;
  reg X, Y, Ci;
  wire S, Co;
  fulladder fulladder(.X(X), .Y(Y), .Ci(Ci), .S(S), .Co(Co));
  initial begin
    $dumpfile("fulladder.vcd");
    $dumpvars(1,fulleradder_tb);
    $monitor("X=%0d Y=%0d Ci=%0d S=%0d Co=%0d", X, Y, Ci, S, Co);
  end
  initial begin
      X=1'b0; Y=1'b0; Ci=1'b0;
    #15
      X=1'b0; Y=1'b0; Ci=1'b1;
    #15
      X=1'b0; Y=1'b1; Ci=1'b0;
    #15
      X=1'b0; Y=1'b1; Ci=1'b1;
    #15
      X=1'b1; Y=1'b0; Ci=1'b0;
    #15
      X=1'b1; Y=1'b0; Ci=1'b1;
    #15
      X=1'b1; Y=1'b1; Ci=1'b0;
    #15
      X=1'b1; Y=1'b1; Ci=1'b1;
    #15
    $finish;
  end
endmodule
     
