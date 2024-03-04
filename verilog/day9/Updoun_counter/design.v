// Code your design here
module updown(out, reset, clk, mode);
  output  [3:0]out;
  input clk, reset, mode;
  reg [3:0]out;
  always @(posedge clk)
    begin
      case({reset,mode})
        2'b10 : out = 0;
        
        2'b11 : out = 0;
        
        2'b00 : out = out+1;
        
        2'b01 : out = out-1;
      endcase
    end
endmodule
  
