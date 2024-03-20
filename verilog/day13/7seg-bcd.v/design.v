// Code your design here
// 7-segment to BCD converter
module seg7_to_bcd(
    input [6:0] seg, // 7-segment input
    output reg [3:0] bcd // BCD output
);

// Convert 7-segment code to BCD
always @(*) begin
    case(seg)
        7'b0000001: bcd = 4'b0000; // 0
        7'b1001111: bcd = 4'b0001; // 1
        7'b0010010: bcd = 4'b0010; // 2
        7'b0000110: bcd = 4'b0011; // 3
        7'b1001100: bcd = 4'b0100; // 4
        7'b0100100: bcd = 4'b0101; // 5
        7'b0100000: bcd = 4'b0110; // 6
        7'b0001111: bcd = 4'b0111; // 7
        7'b0000000: bcd = 4'b1000; // 8
        7'b0000100: bcd = 4'b1001; // 9
        default:    bcd = 4'b1111; // Invalid input
    endcase
end

endmodule

