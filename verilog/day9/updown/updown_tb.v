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
    
    #100
    
    reset = 0;
    mode = 0;
    
    #200
    
    reset = 0;
    mode = 1;
    
    #1350$finish;
    
  end
  end
    
  always
    #25
    clk=~clk;
endmodule
  
