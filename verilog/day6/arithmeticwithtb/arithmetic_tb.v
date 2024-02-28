module arithmetic_tb;
  reg [5:1]a;
  reg [5:1]b;
  wire [6:1]y1;
  wire [6:1]y2;
  wire [6:1]y3;
  wire [6:1]y4;
  wire [6:1]y5;
  arithmetic utt(.a(a), .b(b), .y1(y1), .y2(y2), .y3(y3), .y4(y4), .y5(y5));
  initial begin
    $dumpfile("arithmetic.vcd");
    $dumpvars(1,arithmetic_tb);
    $monitor("\%t y1=%d,y2=%d,y3=%d,y4=%d,y5=%d",$time,y1,y2,y3,y4,y5,);
  end
  initial begin
    a=6;
    b=4;
    #10
    $finish;
  end
endmodule
    
