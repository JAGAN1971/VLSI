module bitwise_tb;
  reg [4:1]x,y,z;
  wire [4:1]y1, y2, y3, y4, y5, y6;
  bitwise utt(.x(x), .y(y), .z(z), .y1(y1), .y2(y2), .y3(y3), .y4(y4), .y5(y5), .y6(y6));
  initial begin
    $dumpfile("bitwise.vcd");
    $dumpvars(1,bitwise_tb);
    $monitor("\%t y1=%b, y2=%b, y3=%b, y4=%b, y5=%b, y6=%b, x=%b, y=%b, z=%b,", $time,y1,y2,y3,y4,y5,y6,x,y,z);
  end
  initial begin
    x=4'b1001;
    y=4'b0101;
    z=4'b0011;
    #10
    $finish;
  end
endmodule
