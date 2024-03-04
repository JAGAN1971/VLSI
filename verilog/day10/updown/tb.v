// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module updown_tb;
  reg reset;
  reg clk;
  reg mode;
  wire [3:0]out;
  
  updown uut(.out(out),
             .reset(reset),
             .clk(clk),
             .mode(mode)
            );
  
  initial begin
    $dumpfile("updown.vcd");
    $dumpvars(1,updown_tb);
    $monitor(
      "t=%d out=%d reset=%b clk%b mode=%b",$time, out, reset, clk, mode);
  
    
  begin
    reset = 1;
    clk = 0;
    mode = 0;
    
    #20
    
    reset = 0;
    mode = 0;
    #320$finish;
   

    
  end
  end
    
  always
    #5
    clk=~clk;
   always
    #170
    mode =~mode;
endmodule
  
