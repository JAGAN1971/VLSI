//Module
module arithmetic(
  input [5:1]a,b,
   output reg[6:1]y1,y2,y3,y4,y5);
  always @(*)
    begin
 y1=a+b;
 y2=a-b;
 y3=a*b;
 y4=a/b;
 y5=a%b;
  end
endmodule
