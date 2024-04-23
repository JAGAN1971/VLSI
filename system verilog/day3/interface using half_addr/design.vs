// Code your design here
module half_addr(input a,b, output so, co);
  assign so = a^b;
  assign co = a&b;
endmodule

module full_adder(fa_if inf);
  wire so, co,c1;
  half_addr HA1 (inf.g, inf.b, so,co);        
  half_addr HA2 (so, inf.c, inf.s_out,c1);
  assign inf.c_out = co | c1;
endmodule

interface fa_if;
  logic g, b, c;
  logic s_out, c_out;
endinterface


//     
