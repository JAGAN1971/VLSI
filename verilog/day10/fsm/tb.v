module fsm1_tb;
  reg clk;
  reg go;
  reg ws;
  wire ds;
  wire rd;
  
  fsm1 utt(.clk(clk),
           .go(go),
           .ws(go),
           .ds(ds),
           .rd(rd));
  initial begin
    clk=1'b0;
    rst=1'b1;
    #15 rst=1'b0;
  end
  
  initial forever begin
    #5
    clk=~clk;
    
  end
  
  initial begin
    $monitor("%t || clk=%b || go=%b || ws=%b || ds=%b || rd=%b",clk,go,ws,ds,rd);
    
    $dumpfile("fsm1.vcd");
    $dumpvars(1,fsm1_tb);
    
  end
  
  initial begin
    go=0; ws=0;
    #15
    
    go=0; ws=1;
    #10
    
    
    go=0; ws=0;
    #10
    
    
    go=0; ws=0;
    #10
    #100$finish;
    
  end
endmodule
    
    
    
    
    
