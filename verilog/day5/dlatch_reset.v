module dlatch_reset(data, en, reset, q);
  input data, en, reset;
  output q;
  reg q;
  
  always @ (data or en or reset)
    if(reset) begin
      q<=1'b0;
    end else if (en) begin
      q<=data;
    end
endmodule
