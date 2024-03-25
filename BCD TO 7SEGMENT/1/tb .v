// Code your testbench here
// or browse Examples
module test();
  reg [3:0] bcd_in;
  wire [6:0] seg_out;
  
  segment7 dut(.bcd(bcd_in),
                .seg(seg_out));
  reg clk;
  always #5 clk = ~clk;
  
  integer i;
  initial begin
    for(i = 0; i < 10; i = i + 1) begin
      bcd_in = i;
      #10;
      case (i)
      0: assert (seg_out == 7'b0000001) else
        $error ("test failed for BCD input 0");
      1: assert (seg_out == 7'b1001111) else
        $error ("test failed for BCD input 1"); 
      2: assert (seg_out == 7'b0010010) else
        $error ("test failed for BCD input 2"); 
      3: assert (seg_out == 7'b0000110) else
        $error ("test failed for BCD input 3"); 
      4: assert (seg_out == 7'b1001100) else
        $error ("test failed for BCD input 4"); 
      5: assert (seg_out == 7'b0100100) else
        $error ("test failed for BCD input 5"); 
      6: assert (seg_out == 7'b0100000) else
        $error ("test failed for BCD input 6"); 
      7: assert (seg_out == 7'b0001111) else
        $error ("test failed for BCD input 7"); 
      8: assert (seg_out == 7'b0000000) else
        $error ("test failed for BCD input 8"); 
      9: assert (seg_out == 7'b0000100) else
        $error ("test failed for BCD input 9"); 
      endcase
    end
    $finish;
  end
  
  initial #500 $finish;

  initial begin
    $dumpfile("segment7.vcd"); $dumpvars; 
    $dumpvars(1,test);
    $monitor("t=%d bcd_in=%b seg_out=%b",$time,bcd_in,seg_out);
  end
endmodule
