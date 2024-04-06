
module handshake_syn_tb;

reg pclk;
reg spi_clk;
reg preset_n;
reg penable;
reg pready;
wire spi_enable;
wire spi_ready;

handshake_syn uut (
    .pclk(pclk),
    .spi_clk(spi_clk),
    .preset_n(preset_n),
    .penable(penable),
    .pready(pready),
    .spi_enable(spi_enable),
    .spi_ready(spi_ready)
);

initial begin
    $monitor("Time=%0t: pclk=%b, spi_clk=%b, preset_n=%b, penable=%b, pready=%b, spi_enable=%b, spi_ready=%b",
             $time, pclk, spi_clk, preset_n, penable, pready, spi_enable, spi_ready);
    
    // Randomize initial values
    pclk = 0;
    spi_clk = 0;
    preset_n = 1;
    penable = 0;
    pready = 0;
    
    // Stimulus generation
    repeat (100) begin
        #5 pclk = ~pclk;
        #5 spi_clk = ~spi_clk;
        #5 preset_n = $random;
        #5 penable = $random;
        #5 pready = $random;
    end
    
    // Terminate simulation
    #10 $finish;
end

endmodule
