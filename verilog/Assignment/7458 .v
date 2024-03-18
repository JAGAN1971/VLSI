module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    wire w1;
    wire w2;
    wire w3;
    wire w4;
    
    assign w1 = p2a & p2b;
    assign w2 = p2c &p2d;
    assign w3 = p1f & p1e & p1d;
    assign w4 = p1a &p1c & p1b;
    assign p1y = w3 | w4;
    assign p2y = w1 | w2;
   

endmodule
