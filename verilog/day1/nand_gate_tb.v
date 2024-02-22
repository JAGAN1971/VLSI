`timescale 1ns/1ps // Specify simulation timescale

module nand_gate_tb;

  // Inputs
  reg A, B;
  
  // Output
  wire Y;

  // Instantiate the NAND gate module
  nand_gate uut (
    .A(A),
    .B(B),
    .Y(Y)
  );

  // Initial block for testbench
  initial begin
    $dumpfile("nand_gate_tb.vcd"); // Specify the VCD file name
    $dumpvars(1, nand_gate_tb);   // Dump variables

    // Test case 1: A = 0, B = 0
    A = 1'b0;
    B = 1'b0;
    #10; // Wait for 10 time units

    // Test case 2: A = 0, B = 1
    A = 1'b0;
    B = 1'b1;
    #10; // Wait for 10 time units

    // Test case 3: A = 1, B = 0
    A = 1'b1;
    B = 1'b0;
    #10; // Wait for 10 time units

    // Test case 4: A = 1, B = 1
    A = 1'b1;
    B = 1'b1;
    #10; // Wait for 10 time units

    $finish; // Finish simulation
  end

  // Display values during simulation
  always @(A or B or Y)
    $display("time = %0t \t INPUT VALUES: \t A = %b \t B = %b \t output value Y = %b", $time, A, B, Y);

endmodule
