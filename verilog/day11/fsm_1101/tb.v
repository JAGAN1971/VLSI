
module fsm_1101_tb;

  reg clk, rst, in;
  wire out;

  // Instantiate the FSM module
  fsm_1101 dut (
    .clk(clk),
    .rst(rst),
    .in(in),
    .out(out)
  );
  initial begin
    $dumpfile("fsm_1101.vcd");
     $dumpvars(1);
    $monitor("%t || in=%b || out=%b || clk=%b || rst=%b",$time,in,out,clk,rst);
  end

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Initial stimulus
  initial begin
    // Initialize inputs
    rst = 1;
    in = 0;

    // Apply reset
    #10 rst = 0;


         #5 in = 1;
         #10 in = 1;
         #15in = 0;
         #15in = 1;

    // Add more test cases as needed

    // Stop simulation after a certain time
    #15 $finish;
  end

endmodule
