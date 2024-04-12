// Code your design here
module datatype1;
  integer a;
  int b1;
  shortint c;
  longint d;
  logic [7:0] l1; //userdefine
  logic signed [7:0] sl1;  //userdefine
  byte bl1;
  reg [7:0] r1;  //userdefine
  
  initial begin
    a = 'hxxzz_ffff;
    b1 = -1;
    c = 'hfxfx;
    d = 'hffff_xxxx_ffff_zzzz;
    l1 = -1;
    sl1 = -1;
    bl1 = -1;
    r1 = 8'b xzxz_0101;
    
  end
  
  initial begin
    #10 
    $display("a = %0h b1 = %0d c = %0h d = %0h", a, b1, c, d);
    $display("");
    $display("");
    $display("l1 = %0d sl1 = %0d bl1 = %0d r1 = %0b", l1, sl1, bl1, r1);
    $display("");
    $display("");
    
    #10 $finish;
  end
endmodule
    
    
  
