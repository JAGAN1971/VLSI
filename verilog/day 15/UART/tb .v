//we got error
//correct the error
module uart_rx(clk,rst,rxd,rx_done,data_out);
  
  input clk,rst,rxd;
  output rx_done;
  output [7:0]data_out;
  
  
  wire clk,rst,rxd;
  reg rx_done;
  wire [7:0]data_out;
  
  reg [2:0]ps,ns;
  reg [7:0]sbuf_reg,sbuf_next;
  reg [2:0]count_reg,cout_next;
  
  wire tick;
  reg [11:0] q;
  wire [11:0]q_next;
  
  parameter idle =3'b000;
  parameter  start =3'b001;
 parameter   databit =3'b010;
parameter  stop =3'b011;
  
  
  always @(posedge clk)
     begin
       
       if(rst)
         begin
          ps= idle;
          sbuf_reg = 0;
          count_reg = 0;
         end
       else 
         begin
           ps =ns;
             sbuf_reg = sbuf_next;
          count_reg = count_next;
         end
       
     end
  
  
  always@(*)
    
    begin 
        ns= ps;
        sbuf_next =sbuf_reg;
         count_next = count_reg;
    end
      
      case(ps)
        
       idle:
           begin
             //isplay($time,"the   idel ");
             if(rxd==0)
               begin
                ns=start;
                //display($time,"the   idel ");
               end
             else
                begin
               ns=idle;
              //isplay($time,"the   idel ");
                end
             
           end
       start:
          
          begin
          //$display($time,"the   start");
            
            if(tick)
                begin
                ns =databit;
            //    $display($time,"the   databit");
                   count_next=0;
                end
          end
        
       databit;
        
        begin
        //$display($time,"the   databit");
          
          if(tick)
              begin
                sbuf_next={sbuf_reg[7:0],rxd};
                if(count_reg==7)
                  begin
              ns=stop;
         //         $display($time,"the stop");
                  end
                else
                   count_next=count_reg+1;
              end
        end
       stop:
          
          begin
          //$display($time,"the stop");
            
            if(tick)
              
              begin
                
                ns =idle ;
            //   $display($time,"the   idel ");
                rx_done=1;
                
              end
          end
      endcase
    end
  
   assign  data_out =sbuf_reg;
  //    end rx  
  
  // baud gen
  
  
  always@(posedge clk)
    begin
      
      if(rst)
        
        q=0;
      
      else
        q=q_next;
    end
  
  assign q_next =(q==2604)? 0:q;
  assign tick = (q==2604) ? 1:0;
  
  
endmodule
  
