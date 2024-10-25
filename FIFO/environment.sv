`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment;

  generator gen;
  driver drv;
  monitor mon;
  scoreboard sco;
  mailbox  gdmbx;  // Generator + Driver mailbox
  mailbox  msmbx;  // Monitor + Scoreboard mailbox
  event nextgs;
  virtual fifo_if fif;
  
  function new(virtual fifo_if fif);
    gdmbx = new();
    gen = new(gdmbx);
    drv = new(fif,gdmbx);
    msmbx = new();
    mon = new(fif,msmbx);
    sco = new(msmbx);
    this.fif = fif;
    drv.fif = this.fif;
    mon.fif = this.fif;
    gen.next = nextgs;
    sco.next = nextgs;
  endfunction

  task pre_test();
    drv.reset();
  endtask

  task test();
    fork
      gen.run();
      drv.run();
      mon.run();
      sco.run();
    join_any
  endtask

  task post_test();
   // wait(gen.done.triggered);  
    $display("---------------------------------------------");
    $display("Error Count :%0d", sco.err);
    $display("---------------------------------------------");
    #500 $finish();
  endtask
  
  task run();
    pre_test();
    test();
    post_test();
  endtask
  
endclass

 
