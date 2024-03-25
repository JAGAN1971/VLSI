module tb_segment7;

    reg [3:0] bcd;
    wire [6:0] seg;
    integer i;

    // Instantiate the Unit Under Test (UUT)
    segment7 uut (
        .bcd(bcd), 
        .seg(seg)
    );
  
//   initial begin 
//     $dumpfile("segment7.vcd");
//     $dumpvars(1 tb_segment7)
  initial begin
    
    $dumpfile("segment7.vcd");
    $dumpvars(1,tb_segment7);
    $monitor("t=%d bcd=%b seg=%b",$time,bcd,seg);

  
  
//Apply inputs
    initial begin
        for(i = 0;i < 16;i = i+1) //run loop for 0 to 15.
        begin
            bcd = i; 
            #10; //wait for 10 ns
        end     
    end
      
endmodule
