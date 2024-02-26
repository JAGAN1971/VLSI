module b2g_tb;
  reg B1,B2,B3,B4;
  wire G1,G2,G3,G4;
  b2g utt (.B1(B1), .B2(B2), .B3(B3), .B4(B4), .G1(G1), .G2(G2), .G3(G3), .G4(G4));
   initial begin
     $dumpfile("b2g.vcd");
     $dumpvars(1,b2g_tb);
     $monitor("B1=%0d B2=%0d B3=%0d B4=%0d G1=%0d G2=%0d G3=%0d G4=%0d", B1, B2, B3, B4, G1, G2, G3, G4);
     
   end
   initial begin
       B4=1'b0; B3=1'b0; B2=1'b0; B1=1'b0;
     #15
       B4=1'b0; B3=1'b0; B2=1'b0; B1=1'b1;
     #15
       B4=1'b0; B3=1'b0; B2=1'b0; B1=1'b0;
     #15
       B4=1'b0; B3=1'b0; B2=1'b1; B1=1'b1;
     #15
       B4=1'b0; B3=1'b1; B2=1'b1; B1=1'b0;
     #15
       B4=1'b0; B3=1'b1; B2=1'b0; B1=1'b1;
     #15
       B4=1'b0; B3=1'b1; B2=1'b0; B1=1'b0;
     #15
       B4=1'b1; B3=1'b1; B2=1'b1; B1=1'b1;
     #15 
       B4=1'b1; B3=1'b0; B2=1'b0; B1=1'b0;
     #15 
       B4=1'b1; B3=1'b0; B2=1'b0; B1=1'b1;
     #15 
       B4=1'b1; B3=1'b0; B2=1'b1; B1=1'b0;
     #15
       B4=1'b1; B3=1'b0; B2=1'b1; B1=1'b1;
     #15 
       B4=1'b1; B3=1'b1; B2=1'b0; B1=1'b0;
     #15 
       B4=1'b1; B3=1'b1; B2=1'b0; B1=1'b1;
     #15
       B4=1'b1; B3=1'b1; B2=1'b1; B1=1'b0;
     #15
       B4=1'b1; B3=1'b1; B2=1'b1; B1=1'b1;
     #15
     $finish;
   end
endmodule
     
