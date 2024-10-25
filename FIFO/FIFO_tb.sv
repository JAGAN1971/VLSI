// Code your testbench here
// or browse Examples

`include "interface.sv"
`include "test"
module tb;

  fifo_if fif();
  test t1(fif);

  fifo dut (fif.clock, fif.rst, fif.wr, fif.rd, fif.data_in, fif.data_out, fif.empty, fif.full);

  initial begin
    fif.clock <= 0;
  end

  always #10 fif.clock <= ~fif.clock;

  initial begin
    $dumpfile("fifo.vcd");
    $dumpvars;
  end

endmodule
