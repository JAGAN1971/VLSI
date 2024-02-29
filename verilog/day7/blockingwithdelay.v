module tb;
  reg[7:0]a,b,c,d,e;
  initial begin
    a=8'hDA;
    $display("[%0t] a=0x%0h b=0x%0h c=0x%0h",$time,a,b,c);
    #15
    b=8'hf1;
    $display("[%0t] a=0x%0h b=0x%0h c=0x%0h",$time,a,b,c);
    c=8'h30;
    $display("[%0t] a=0x%0h b=0x%0h c=0x%0h",$time,a,b,c);
  end
  initial begin
    d=8'hAA;
    $display("[%0t] d=0x%0h e=0x%0h ",$time,d,e);
    #10
    e=8'h55;
    $display("[%0t] d=0x%0h e=0x%0h ",$time,d,e);
  end
endmodule
    
