module odd_event(
  input [5:0]a);

  always @ (*) begin
    
  if(a%2==0)
    $display("The is even number",a);
     
    else
      
      $display("The is odd number",a);
  end

endmodule
