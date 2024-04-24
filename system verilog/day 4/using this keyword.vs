class packet;
  
  bit [31:0] addr;
  bit [31:0] data;
  bit write;
  string pkt_type;
  
  function new(bit [31:0] addr, bit [31:0] data, bit write, string pkt_type);
    this.addr = addr;
    this.data = data;
    this.write = write;
    this.pkt_type = pkt_type;  
  endfunction
  
  function display();
    $display("         ");
    $display("\t addr = %0h", addr);
    $display("\t data = %0h", data);
    $display("\t write = %0h", write);
    $display("\t pkt_type = %s", pkt_type);
  endfunction
  
endclass
  
module sv_constructor();
    packet pkt = new(32'h10, 32'hff, 1, "good_pkt");
    
    initial begin
      pkt.display();
    end
endmodule
