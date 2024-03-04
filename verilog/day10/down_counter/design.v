// Code your design here
module down_counter(input clk,
                  reset,
                  output[3:0] counter
                 );
  reg [3:0] counter_down;
  
  
  always @(posedge clk or posedge reset)
    begin
      if(reset)
        
        counter_down <= 4'd0;//result is 00
      else
        counter_down <= counter_down - 4'd1;//down counter
    end 
  assign
    counter= counter_down;
endmodule
