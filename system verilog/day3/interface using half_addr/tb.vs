// Code your testbench here
// or browse Examples
module tb_top;
  fa_if inf(.*);
  full_adder fa(.*);
  initial begin
    $monitor("g=%b b=%b c=%b sum=%b carry=%b",inf.g,inf.b,inf.c,inf.s_out,inf.c_out);
    inf.g=1;inf.b=0;inf.c=0;
    #1; inf.g=0;inf.b=1;inf.c=1;
    #1; inf.g=1;inf.b=1;inf.c=1;
  end
endmodule
    
    
