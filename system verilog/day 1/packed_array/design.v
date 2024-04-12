// Code your testbench here
// or browse Examples
module packed_array;
  
  bit [3:0]abc;       //2 state
  logic [15:0]pqr;    //4state unsigned
  reg [7:0]xyz;       //4state unsigned
  
  
  initial begin
    //assigning value to the array
    
    abc = 4'b0110;
    pqr = 16'h10fe;
    xyz = 8'd16;
    
    $display("");
    $display("/example for single dimensional packed array");
    $display("");
    
    $display("//display the bit data type value ");
    
    foreach(abc[i])begin
      $display("data of abc[%0d] = ",i,abc[i]);
    end
    $display("");
    
    
    foreach(pqr[i])begin
      $display("data of pqr[%0d] = ",i,pqr[i]);
    end
    $display("");
    
    
    foreach(xyz[i])begin
      $display("data of xyz[%0d] = ",i,xyz[i]);
    end
  end
endmodule    
      
    
    
  
  
