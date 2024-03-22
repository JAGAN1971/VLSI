// Code your design here
module memory(
  input clk,
  input reset,
  input write,
  input [8:0]data_in,
  input [4:0]addr,
  output reg [8:0]data_out);
  
  reg [8:0]ram[32:0];
  always @(posedge clk) begin
     if(write)
      ram[addr]<=data_in;
    else
      data_out<=ram[addr];
  end
endmodule
