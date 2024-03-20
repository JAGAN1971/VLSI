module top_module (
	input a,
	input b,
	output out
);
	mod_a inst1 ( 
		.in1(a), 	// Port"in1"connects to wire "a"
		.in2(b),	// Port "in2" connects to wire "b"
        .out(out));	// Port "out" connects to wire "out" 
	endmodule
