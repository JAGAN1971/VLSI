module apb_tb;
  
  reg pclk,
      prst,
      tr,
      pready;
  
  wire psel,
       penable,
       pwrite;
  
  wire [31:0]pwdata,
             paddr,
             rdata;
  
  reg [31:0]prdata,
            wdata,
            addr;
  
  reg write_en;
  
  reg[1:0] present,next;
  
  apb test(.pclk(pclk), 
           .prst(prst), 
           .tr(tr),
           .write_en(write_en),                      
           .addr(addr),                   
           .wdata(wdata),          
           .prdata(prdata),                
           .pready(pready),
           .psel(psel), 
           .penable(penable),
           .paddr(paddr),
           .pwrite(pwrite),
           .rdata(rdata),
           .pwdata(pwdata),
           .present(present),
           .next(next)
          );
  
    always #5 pclk=~pclk;

  initial 
    begin
      
        pclk=1;
        write_en=0;
        pready=0;
        prst=0;
        tr=1;
   #10  prst=1; 
      
    
      write_en=1;
      //repeat(3)
      	begin
       #20 tr = 1;
            addr = 01;
            wdata = 1;
        end
    		
      write_en=0;
      //repeat(3)
        begin
          #20 tr = 1;
          addr = 10;
      	  prdata = 01;
        end
      
    end
  
  initial begin
    
    repeat(10)
      begin
        
        #10 pready=0;
        #10 pready=1;
        
      end
    
  end
      
  
  initial 
  
    $monitor (" %t pclk = %0d, prst = %0d, tr= %0d, present = %b, next = %b,write_en =%0d, pwrite = %0d, addr = %0h, paddr = %0h,wdata =%0h,pwdata = %0h,psel= %0d,penable=%0d ",$time,pclk, prst, tr, present, next, pwrite, write_en,addr, paddr,wdata, pwdata ,psel,penable);
    
    initial #60 $finish;
      

   initial begin
 
     $dumpfile("dump.vcd");
     $dumpvars;
  
   end
endmodule
      
