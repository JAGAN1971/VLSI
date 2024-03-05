module sd11011_moore_tb;
  reg clk;
  reg din;
  reg reset;
  wire dout;
  
  sd11011_moore utt(.clk(clk),
           .din(din),
           .reset(reset),
           .dout(dout));
  initial begin
    clk=1'b0;
    reset=1'b1;
    #1 reset=1'b0;
  end
  
  initial forever begin
    #5
    clk=~clk;
    
  end
  
  initial begin
    $monitor("%t || clk=%b || reset=%b || din=%b || dout=%b",$time,clk,reset,din,dout);
    
    $dumpfile("sd11011_moore.vcd");
    $dumpvars(1,sd11011_moore_tb);
    
  end
  
  initial begin
    din=1;   
  end
endmodule
    
    
    
    
    
