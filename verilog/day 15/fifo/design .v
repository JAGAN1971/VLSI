module sync_fifo(input reg clk,
                 input reset,
                 input reg[2:0]datain,                
                 input wr,rd,
                 output reg[2:0] dataout, 
                 output full,empty);
  parameter DEPTH=3;
  reg[2:0] rd_ptr,wr_ptr;
  reg[2:0]fifo[DEPTH-1:0];
  
  always@(posedge clk)begin
   
    if(reset==1)begin
     dataout<=0;rd_ptr<=0;wr_ptr<=0; 
    end
  end
    
     always@(posedge clk)begin
      
     if(wr==1 & !full  )begin
      fifo[wr_ptr]<=datain;
        wr_ptr<=wr_ptr+1;
     end
     end
    
      always@(posedge clk)begin
     if(rd==1 & !empty )begin
      dataout<=fifo[rd_ptr];
      rd_ptr<=rd_ptr+1;
    end 
  end
  
  assign empty=(rd_ptr==wr_ptr);
  assign full=((wr_ptr+1'b1)==rd_ptr);
  
endmodule
