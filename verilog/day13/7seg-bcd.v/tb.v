// Testbench for 7-segment to BCD converter with VCD dump
module testbench;
    reg [6:0] seg;
    wire [3:0] bcd;
    seg7_to_bcd converter(seg, bcd);

    initial begin
        $dumpfile("testbench.vcd"); // Specify the VCD file name
        $dumpvars(0, testbench);    // Dump all variables within this testbench

        // Test sequence
        seg = 7'b0000001; #10; // 0
        seg = 7'b1001111; #10; // 1
        seg = 7'b0010010; #10; // 2
        seg = 7'b0000110; #10; // 3
        seg = 7'b1001100; #10; // 4
        seg = 7'b0100100; #10; // 5
        seg = 7'b0100000; #10; // 6
        seg = 7'b0001111; #10; // 7
        seg = 7'b0000000; #10; // 8
        seg = 7'b0000100; #10; // 9
        $finish;
    end
endmodule
