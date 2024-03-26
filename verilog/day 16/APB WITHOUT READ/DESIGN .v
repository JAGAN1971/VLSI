// Code your design here
// Code your design here
module apb(
  pclk,
  prst,
  tr,
  addr,
  wdata,
  write_en,
  //rdata,
  psel,
  penable,
  pready,
  paddr,
  pwdata,
  pwrite,
  //prdata,
  present,
  next);
  
  //reg rdata1;
  
  input pclk,
        prst,
        write_en,
        tr,
        pready;
  
  input [7:0] addr,
              wdata;
    //          prdata;
  
  output reg psel,
         penable,
         pwrite;
  
  output reg [7:0] paddr,
               pwdata;
             //  rdata;
  
  output reg [1:0] present,next;
  
  parameter [1:0] idle=2'b00;
  parameter [1:0] setup=2'b01;
  parameter [1:0] access=2'b10;
  
  
  always @(posedge pclk) begin
    pwrite<=write_en;
    if(prst)
      present<=2'b00;
    else
      present<=next;
  end
  
  
  always @(present,tr,pready) begin
    
    case(present)
    
      idle:begin
        psel=0;
        penable=0;
        
        if(tr==0)
          next<=idle;
        else
          next<=setup;
      end
      
      setup:begin
        psel=1;
        penable=0;
        
        if((pwrite==1)&&(tr==1))begin
          paddr<=addr;
          pwdata<=wdata;
          next<=access;
        end
       else if((pwrite==0)&&(tr==1))begin
          paddr<=addr;
          next<=access;
        end
      end
      
      access:begin
        psel=1;
        penable=1;
        
        if((pwrite==1)&&(pready==0)&&(tr==1))
          begin
          paddr<=addr;
          pwdata<=wdata;
          next<=access;
          end
        
        //else if((pwrite==0)&&(pready==0)&&(tr==1))
          //  begin
            //  paddr<=addr;
              //rdata<=rdata1;
              //next<=access;
            //end
        
        else if((pwrite==1)&&(pready==1)&&(tr==1))
              begin
                paddr<=addr;
                pwdata<=wdata;
                next<=setup;
              end
        
        //else if((pwrite==0)&&(pready==1)&&(tr==1))
          //      begin
            //      paddr<=addr;
              //    rdata<=prdata;
                //  next<=setup;
                //end
      end
    endcase
  end
endmodule
  
              
        

