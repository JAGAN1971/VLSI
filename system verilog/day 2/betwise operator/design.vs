//  betwise operator

module op;
  logic [7:0]l1;
  int i1;
  
  initial begin
    l1 = 8'h10110111;
    
    i1 = & i1;
    $display("l1 = 10110111 : & i1 = %0d",i1);   //bit wise and 
    $display("");
    
    
    i1 = | i1;
    $display("l1 = 10110111 : | i1 = %0d",i1);   //bit wise or
    $display("");
    
    
    i1 = ^ i1;
    $display("l1 = 10110111 : ^ i1 = %0d",i1);   //bit wise xor
    $display("");
    
    
    i1 = ~ i1;
    $display("l1 = 10110111 : ~ i1 = %0d",i1);   //bit wise and
    $display("");
    
    
    i1 = ~^ i1;
    $display("l1 = 10110111 : ~^ i1 = %0d",i1);  //bit wise xnor
    $display("");
    
  end 
  
endmodule
  
