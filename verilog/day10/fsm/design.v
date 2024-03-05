// Code your design here
module fsm1(
  output ds,
  output dr,
  input clk,
  input rst,
  input go,
  input ws);

  
  parameter [1:0] IDLE = 2'b00, READ = 2'b01, DLY = 2'b10, DONE = 2'b11;
  
  reg [1:0] state,next;
  
  always @(posedge clk or negedge rst)
    
    if (!rst)state<=IDLE;
  else
    state<=next;
  
  always @(state or go or ws)begin
    next = 2'bx;
    ds = 1'b0;
    dr = 1'b0;
    
    case(state)
      IDLE :
        if (go)next = READ;
      else
        next = IDLE;
      
      READ: 
        begin rd = 1'b1;
        next = DLY;
        
        DLY: 
        begin rd = 1'b1;
          if 
            (ws) next = READ;
          else next = DONE;
        end
        
        DONE:
        begin ds = 1'b1;
          next = IDLE;
        end
    endcase
       
  end
endmodule
        
  
  
  
  
