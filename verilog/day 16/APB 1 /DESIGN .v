module apb (pclk,       //peripheral clock
            prst,       //peripheral reset
            tr,         //transfer
            write_en,
            addr,
            wdata,      //write data
            prdata,     //peripheral data
            pready,     //peripheral ready
            psel,       //peripheral select
            penable,    //peripheral enable
            paddr,      //peripheral addr
            pwrite,    //peripheral write
            pwdata,     //peripheral write data
            rdata,      //peripheral read data
            present,  
            next
           );
  
  
  
  input   pclk,
          prst,
          tr,
          pready,
          write_en;                        //external signal for write
  
  output reg psel,
             penable,
             pwrite;
  
  reg rdata1;
  
  input  [31:0] prdata,
                wdata,                       //external signal for pwdata
                addr;                        //external signal for paddr
  
  output reg [31:0] pwdata,
                   paddr, 
                   rdata;                   //external signal for rdata
 
            
            
  parameter [1:0] idle = 2'b00;
  parameter [1:0] setup = 2'b01;
  parameter [1:0] access = 2'b10;
            
  output reg [1:0] present, next;
            
  always@(posedge pclk)
      begin
        
        pwrite <= write_en; 
        
        if (prst==0)
          
          present <= 2'b00;
        
        else 
          
          present <= next;
        
      end
            
    always@(present,tr,pready)              
              
        
        case (present)
          
          idle : begin 
                    
                    psel = 0;
                    penable = 0;
                    
                    if (tr == 0)
                      next <= idle;
                    
                    else 
                      next <= setup;
                    
                  end
                  
          setup : begin
             psel = 1;
             penable = 0;
            
            
            if((pwrite==1)&& (tr==1)) 
              
              begin
                    
                    paddr <= addr;
                
                    pwdata <= wdata;
                
                    next <= access;
                 
               end
            
            else if((pwrite==0) &&(tr==1))
                    
                  paddr <= addr;
                    
                  next <= access;
                    
              		end

            
                  
          access : begin
            
             psel = 1;
             penable = 1;
                
         if((pwrite==1) &&(pready==0)&&(tr==1))
              
              begin
              
                                  
                    paddr <= addr;
                
                    pwdata <= wdata;
                
                    next <= access;
              end
            
               else if((pwrite==0) &&(pready==0)&&(tr==1))
              
                  begin
                                  
                    paddr <= addr;
                    
                    rdata<=rdata1;
                                
                    next <= access;
                    
                  end
            
            
      
          begin

         if((pwrite==1) &&(pready==1)&&(tr==1))
              
              begin
              
                                  
                    paddr <= addr;
                
                    pwdata <= wdata;
                
                    next <= setup;
              end
            
            else if((pwrite==0) &&(pready==1)&&(tr==1))
                  begin
                                  
                    paddr <= addr;
                
                    rdata <= prdata;
                
                    next <= setup;
                    
                    end
          end
          end
        endcase
  
endmodule
  
              
