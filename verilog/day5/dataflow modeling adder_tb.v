

module tb_adder;   
  reg [2:0] a, b;    
  wire [3:0] sum;    
  
  adder uut (
    .a(a),
    .b(b),
    .sum(sum)
  );
 
  initial begin
    a = 3'b000;
    b = 3'b011;
    #10 
    a = 3'b101;
    b = 3'b010;
    #10 $finish;     
  end

  
  always @(posedge sum) begin
    $dumpfile("adder.vcd");
    $dumpvars(1,tb_adder);
    $display("a = %b, b = %b, sum = %b", a, b, sum);
  end
endmodule
