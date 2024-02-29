// Code your testbench here
// or browse Examples
module function1;
  function int sum(input int  x,y);
  begin
    sum=x*y;
  end
  endfunction
  initial begin
    $display ("sum",sum(2,4));
    
  end
endmodule
