module IsPrime (
    input wire [31:0] num,
    output wire prime
);

  assign prime = isPrime(49);


function isPrime;
    input [31:0] n;
    integer i;

    if (n <= 1) begin
      
        isPrime = 0; // Not a prime number
    end
  else begin
      
      
        isPrime = 1; // Assume it's prime
        for (i = 2; i * i <= n; i = i + 1) begin
          
            if (n % i == 0) begin
                isPrime = 0;
         
              // Not a prime number
              
              
                $display("%d is not a prime number", n);
                
            end
        end
        if (isPrime == 1) begin
            $display("%d is a prime number", n);
        end
    end
endfunction

endmodule
