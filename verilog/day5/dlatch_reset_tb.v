module dlatch_reset_tb;
reg data, en, reset ; 
wire q;
dlatch_reset dlatch(data, en, reset, q);
initial
begin
en=1;  
data = 0;
#5 reset = 1;
#30 reset = 0;
    $dumpfile("dlatch_reset.vcd");
    $dumpvars(1, dlatch_reset_tb);
$monitor($time, "\ten=%b\t ,reset=%b\t, data=%b\t, q=%b",en,reset,data,q);
#160 $finish;
end
always #25 en = ~en;
always #40 data = ~data;
endmodule
