module fulladder_tb;

  // Inputs
  reg a, b, cin;
  
  // Outputs
  wire sum, carry;
  
  // Instantiate the full adder module
  fulladder fulladder (.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));
  
  // Apply input values and observe outputs
  initial begin
    $dumpfile("fulladder.vcd");
    $dumpvars(1, fulladder);
    $monitor("a=%0d b=%0d cin=%0d sum=%0d carry=%0d" ,a,b,cin,sum,carry);
  end
  initial begin
    a=0; b=0; cin=0;
    #10
    a=0; b=0; cin=1;
    #10
    a=0; b=1; cin=0;
    #10
    a=0; b=1; cin=1;
    #10
    a=1; b=0; cin=0;
    #10
    a=1; b=0; cin=1;
    #10
    a=1; b=1; cin=0;
    #10
    a=1; b=1; cin=1;
 
    #10 $finish;
  end
  
endmodule

