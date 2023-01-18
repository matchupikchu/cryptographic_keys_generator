module control(
  
  input in_clk,
  input in_wr_number_of_ones,
  input [7:0] in_searched_number_of_ones,
  input [7:0] in_hamming_weight,
  input [127:0] in_key_candidate,
  output [127:0] out_key
  
);

	reg [7:0] searched_number_of_ones = 8'd0;
	reg [127:0] candidate = 128'd0;
	
	always @(posedge in_clk)
	begin
	
		if (in_wr_number_of_ones == 1) begin
			 searched_number_of_ones <= in_searched_number_of_ones;
		end
	
		if (in_hamming_weight == searched_number_of_ones) begin
			candidate <= in_key_candidate;
		end
		else begin
			candidate <= 128'd0;
		end
		
		
	end
	
	assign out_key = candidate;
	
endmodule
