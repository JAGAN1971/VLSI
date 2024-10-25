
module full_adder(
                  sum,
                  carry,
                  a,
                  b,
                  c
                 );
  
   input a,
         b,
         c;                      //input for full adder
  
   output wire sum,
          carry;                 //input for full adder
   
   assign sum = a ^ b ^ c;
  assign carry = (a & b) | (b & c)  | (c & a) ;
endmodule
