module adder(a,b,sum);  
  
input [2:0] a,b;  
  output [3:0] sum;
  
assign sum = a + b;
  
endmodule  
