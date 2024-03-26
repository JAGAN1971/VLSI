// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module apb_tb;
  reg pclk,
      prst,
      write_en,
      tr,
      pready;
  
  reg [7:0]addr,
           wdata;
 //          prdata;
  
  wire psel,
       penable,
       pwrite;
  
  wire [7:0]paddr,
            pwdata;
            //rdata;
  
  reg [1:0]present,next;
  
  apb test(
    .pclk(pclk),
    .prst(prst),
    .tr(tr),
    .addr(addr),
    .wdata(wdata),
    .write_en(write_en),
    //.rdata(rdata),
    .psel(psel),
    .penable(penable),
    .pready(pready),
    .paddr(paddr),
    .pwdata(pwdata),
    .pwrite(pwrite),
    //.prdata(prdata),
    .present(present),
    .next(next)
  );
  
  initial begin
    $dumpfile("apb.vcd");
    $dumpvars(1,apb_tb);
    $monitor("time =%t,pclk=%d prst=%d tr=%d addr=%d wdata=%d write_en=%d psel=%d penable=%d pready=%d paddr=%d pwdata=%d pwrite=%d present=%d",$time,pclk,prst,tr,addr,wdata,write_en,psel,penable,pready,paddr,pwdata,pwrite,present);
  end
  
  initial begin
      pclk=1;
    prst=1;
 
    write_en=0;
    tr=0;
    pready=0;
    #10 prst=0; 
    #10tr=1;
    pready=1;
    
    
    write_en=1;
    repeat(4)
    begin
     #20 tr=1;
      addr=$random;
      wdata=$random;
    end
    
//    write_en=0;
 //   repeat(4)
  //  begin
   //   #20 tr=1;
    //  addr=$random;
      //prdata=$random;
      
    //end
  end
  initial begin
    repeat(10)
      begin
        #10 pready=0;
        #10 pready=1;
      
      end
  end
  always #10pclk=~pclk;
  initial
      #100 $finish;
    endmodule
  
    
