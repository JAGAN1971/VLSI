// Code your design here
module op;
  
  logic [15:0] l1,l2;
  
  initial begin
    
    $display("\n no 'x' in data");
    l1 = 'hfx;
    l2 = 'hfx;
    
    $display("l1 = 'hfx l2 = hfx : l1 === l2b = boolean %0d",l1===l2);
    
    $display("l1 = 'hff l2 = hfx : l1 != l2b = boolean %0d",l1!=l2);
    
    $display("l1 = 'hff l2 = hfx : l1 === l2b = boolean %0d",l1===l2);
    
    $display("l1 = 'hff l2 = hfx : l1 !== l2b = boolean %0d",l1!==l2);
  end
endmodule
