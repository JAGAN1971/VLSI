module odd_event_tb;
  reg [5:0]a;
  odd_event utt(.a(a));
  initial begin
    a=8;
    #2
    a=5;
    #2
    $finish;
   
 
  end
endmodule
