module main;
  event e1,e2,e3;
  initial begin
    repeat(5)
      begin
        #10
        ->e1;
        #5
        e1=e2;
        #5
        e3=null;
      end
  end
  
  initial begin
    repeat(4)
      begin
        #5
        if(e1.triggered)
          $display("@%0t e1 event is trigged ",$realtime);
        else
          $display("@%0t e1 event is not trigged",$realtime);
        
        if(e1 == e2)
        $display("event e1 and e2 is are same");
        else
          $display("event e1 and e2 is are not same");
        
        if(e1 == null)
          $display("e3 is null event");
        else
          $display("e3 is not null event");
      end
  end
  
  initial begin 
    #100
    $finish;
  end
endmodule
        
