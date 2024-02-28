//Module
module arithmetic;
  reg [5:1]a,b;
  reg [5:1]y1,y2,y3,y4,y5;
  initial begin
    a=5;b=4;
    y1=a+b;
 #10y2=a-b;
 #10y3=a*b;
 #10y4=a/b;
 #10y5=a%b;
  end
  initial begin
  $monitor("\%t y1=%d,y2=%d,y3=%d,y4=%d,y5=%d",$time,y1,y2,y3,y4,y5,);
  end
endmodule
