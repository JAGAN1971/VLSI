// Code your testbench here
// or browse Examples
module downcounter_tb;
  reg clk, reset;
  wire [3:0] counter;
   
  down_counter dut(clk, reset, counter);
    initial begin
      $dumpfile("down_counter.vcd");
      $dumpvars(1,downcounter_tb);
    $monitor(
      "t=%d clk=%d reset=%b counter=%d",$time, clk, reset, counter);
    end
   initial begin
    clk=0;
    forever 
      #5
      clk=~clk;
  end
  initial begin
    reset=1;
    #20
    
    reset=0;
    #180
    $finish;
   
  end
endmodule
