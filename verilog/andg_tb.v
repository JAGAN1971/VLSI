module andg_tb;
  reg x,y; 
  wire z; 
  // instantiate the AND gate module
  andg andg(.x(x), .y(y), .z(z));
 
  // dump waveform information  
  initial begin
    $dumpfile("andg.vcd");
    $dumpvars(1, andg_tb);
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
