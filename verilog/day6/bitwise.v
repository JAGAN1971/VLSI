module bitwise;
 reg[4:1]x,y,z;
 reg[4:1]y1,y2,y3,y4,y5,y6;
 initial begin
 x=4'b1011;z=4'b1100;y=4'b01x1;
 y1=~x;
 y2=x&y;
 y3=x|y;
 y4=x~^y;
 y5=x&z;
 y6=x^z;
 end
 initial begin
 $monitor("\%t y1=%b,y2=%b,y3=%b,y4=%b,y5=%b,y6=%b",$time,y1,y2,y3,y4,y5,y6);
 end
 endmodule
