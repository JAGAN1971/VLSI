task name();
  $display("my name is aj");
endtask

task dep();
  $display("eee");
endtask

module surander;
  initial begin
    name();
    dep();
  end
endmodule
