module adder_4_bit (
	
	input [3:0] a,  
	output wire [2:0] out_result
	); 
	 
	assign out_result = a[0] + a[1] + a[2] + a[3];

endmodule