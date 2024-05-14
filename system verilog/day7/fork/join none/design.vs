// WRITE THE LOGIC TO MIMIC THE BEHAVAVIOVR OF FORK-JOIN_NONE USING FORK-JOIN_ANY


module any_to_none;
  
  task process_a();
    $display("process_a start @%0tns", $time);
    #5
    $display("process_a finish @%0tns", $time);
  endtask
  
  task process_b();
    $display("process_b start @%0tns",$time);
    #10
    $display("process_b finish @%0tns", $time);
  endtask
  
  initial begin
    
    fork
      process_a();
      process_b();
    join_none
    
    $display("out of fock block @%otns",$time);
    
  end 
endmodule
