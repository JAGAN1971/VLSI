module odd_event_tb;
  reg [5:0]a;
  odd_event utt(.a(a));
  initial begin
    repeat(19)
      #10
    a=$random;
    #20
    $finish;
    end
 initial
   $monitor("a=%0d",a);
 endmodule
