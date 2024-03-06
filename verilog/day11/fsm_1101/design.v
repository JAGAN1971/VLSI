module fsm_1101(
  input clk,
  input rst,
  input in,
  output reg out);
  
  parameter s0=0, s1=1, s11=2, s110=3;
  
  reg [0:5]state;
  
  always @(posedge clk)begin
    if(rst==1'b1)begin
      out <= 0;
      state <= s0;
    end
    else begin 
      case(state)
        s0: begin
          state <= in ? s1:s0;//1
          out <= 0;
        end
        
        s1: begin
          state <= in ? s11:s0;//1
          out <= 0;
        end
        
        s11: begin
          state <= in ? s11:s110;//0
          out <= 0;
        end
        
        
        s110: begin
          state<=in ? s0:s0;//1
          out<=in ? 1:0;
        end
        default:begin
          state <= s0;
          out <= 0;
        end
      endcase
    end
    
    
  end
  
endmodule
