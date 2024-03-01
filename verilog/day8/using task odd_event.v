module odd_event;
  task even(input [5:0]a);
  begin

  if(a%2==0)
    $display("The is even number",a);
     
    else
      
      $display("The is odd number",a);
  end
    endtask
    initial begin
    even(4);
    end
endmodule
