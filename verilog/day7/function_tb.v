
module function_tb;
  integer a;//a is dlobal variable
  task multi (input int x,y);
    begin
      a=x*y;
    end
  endtask
  initial begin
    multi(3,2);
    $display("a=%0d",a);
  end
endmodule
