task add(input[7:0]a,b,
         output int c);
  begin
    c=a+b;
    $display(a,b);
    $display(c);
  end
endtask

task sub(input[7:0]d,e,
         output int f);
   begin
    f=d-e;
     $display(d,e,);
     $display(f);
   end
endtask

module surander;
  initial begin
    add(3,4);
    sub(4,1);
    
  end
endmodule
