//this code have error 
//output is not correct

module sync_fifo_tb;
  reg clk, reset, wr, rd;
  reg [2:0] datain;
  wire full, empty;
  wire [2:0] dataout;
  reg [2:0] rd_ptr, wr_ptr;

  sync_fifo aa (
    .clk(clk),
    .reset(reset),
    .wr(wr),
    .rd(rd),
    .datain(datain),
    .dataout(dataout),
    .full(full),
    .empty(empty)
  );

  always #5 clk = ~clk;

  initial begin
    clk = 0;
    reset = 1;
    wr = 0;
    rd = 0;
    rd_ptr = 0;
    wr_ptr = 0;
    datain = 3'b110;
    #5 reset = 0;
    #10 reset = 1; 
    #5 reset = 0;
    #2 wr = 1; rd = 0;
    datain = 3'b110;
    #2 datain = 3'b111;
    #2 datain = 3'b101; 
    #8 rd = 1; wr = 0;
    #30 $finish;
  end

  always @(posedge clk) begin
    if (wr) wr_ptr <= wr_ptr + 1;
    if (rd) rd_ptr <= rd_ptr + 1;
  end

  initial begin
    $dumpfile("sync_fifo.vcd");
    $dumpvars(1, sync_fifo_tb);
  end

  initial begin
    $monitor("clk=%d reset=%d datain=%b wr=%d rd=%d wr_ptr=%b rd_ptr=%b dataout=%d", clk, reset, datain, wr, rd, wr_ptr, rd_ptr, dataout);
  end

endmodule
