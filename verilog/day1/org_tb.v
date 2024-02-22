module org_tb;
  reg x,y; 
  wire z; 
  // instantiate the AND gate module
  org org(.x(x), .y(y), .z(z));
 
  // dump waveform information  
  initial begin
    $dumpfile("org.vcd");
    $dumpvars(0, org_tb);
  end

    // apply input values
    initial begin
    x = 1'b0; y = 1'b0;
    #10 x = 1'b0; y = 1'b1;
    #10 x = 1'b1; y = 1'b0;
    #10 x = 1'b1; y = 1'b1;
    #10 $finish;
      $monitor("x=%0d y=%0d z=%0d", x,y,z);
  end
 

endmodule
