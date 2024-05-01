module StaticVariableExample;
  // Declare static variable
  static int static_var = 0;

  // Define static function to increment static_var
  static function void increment_static_var();
    static_var++;
  endfunction

  // Testbench
  initial begin
    // Invoke the static function 'N' times
    int N = 5; // Change N to desired number of invocations
    repeat (N) begin
      increment_static_var();
    end

    // Display the final value of static_var
    $display("Final value of static_var = %d", static_var);
  end
endmodule
