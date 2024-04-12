module pu;
  logic [31:0] v1 [7:0];
  
  initial begin
 
    v1[7] = 32'hffffffff;
    #10
    $display(v1[7]);
    
    v1[6] = 32'h0000001a;
    #10
    $display("2",v1[6]);
    
    v1[5] = 32'hefffffff;
    #10
    $display("3",v1[5]);
    
    v1[4] = 32'b00000000000000000000000000001011;
    #10
    $display("4",v1[4]);
    
    v1[3] = 32'd753;
    #10
    $display("5",v1[3]);
    
    v1[2] = 32'hefffffff;
    #10
    $display("6",v1[2]);
    
    v1[1] = 32'hefffffff;
    #10
    $display("7",v1[1]);
    
    v1[0] = 32'hefffffff;
    #10
    $display("6",v1[0]);
  end
  
endmodule
