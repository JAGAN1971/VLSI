
class sample;//sample is class name
  int a;//2state , a is variable
  bit b;
  
  
  //class method
  function display();  
    $display("value of a = %0d b = %0d",a,b);
  endfunction
  end class
    
    
    //module for take the handle for reuse
    module class_example;
      initial begin
        sample tr = new();//handle for the class instance
      end
    endmodule
