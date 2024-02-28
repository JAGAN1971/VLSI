// Code your design here
module logical_operators;
reg[4:1]a,b,c,d;
reg x;
initial 
begin
a=4'b1111;          // binary input
b=4'b1010;          // binary input
c=4'b1001;          // binary input
d=4'b1101;          // binary input
$display("&& - logical AND");
$display("|| - logical OR");
if ((a==b)&&(c==b)) //conditional statement for logical AND operation
x=1;                // If both condition true output is 1
else
x=!a;                // If any condition false output is 0

$display("(a==b)&&(c==b) result is : ",x);
if((a!=d)||(b==c))
x=1;                // If any condition true output is 1
else
x=0;                // If both conditon false output is 0
$display("(a==d)||(b==c) result is : ",x);
end
endmodule
