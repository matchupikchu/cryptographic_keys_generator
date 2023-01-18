// half_adder_procedural_tb.v

`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module keys_generator_tb;

	 reg clk;
	 reg in_stop;
    wire [127:0] LFSR;
	 reg in_wr_seed;
	 reg [127:0] in_seed;

    localparam period = 20;
	 localparam period2 = 10; 

    keys_generator UUT (.in_clk(clk), .in_stop(in_stop), .in_wr_seed(in_wr_seed), .in_seed(in_seed), .out_LFSR(LFSR));


always 
begin
    clk = 1'b1; 
    #20; // high for 20 * timescale = 20 ns

    clk = 1'b0;
    #20; // low for 20 * timescale = 20 ns
end

always @(posedge clk)
begin
	 in_stop <= 0;
	 in_wr_seed <= 1;
	 in_seed <= 128'h78947894789478947894789478947894;
    #period2; // wait for period
    // display message if output not matched
	 
//	 in_wr_seed <= 1;
    #period; // wait for period 


    #period; // wait for period 

	 in_wr_seed <= 0;
    #period; // wait for period 


    #period; // wait for period 
	 
	 #period; // wait for period 


    #period; // wait for period 
	 in_stop <= 1;
	 #period; // wait for period 


    #period; // wait for period 
	 
	 #period; // wait for period 

	 in_wr_seed <= 1;
	 in_seed <= 128'h78947894789478947894789478947894;
    #period; // wait for period 
//	 in_wr_seed <= 0;
	 #period; // wait for period 


    #period; // wait for period 
	 
	 #period; // wait for period 


    #period; // wait for period 
	 in_wr_seed <= 0;
	 #period; // wait for period 
	 
	 #period; // wait for period 


    #period; 
	 
	 #period; // wait for period 
	 
	 #period; // wait for period 


    #period; 

    $stop;   // end of simulation
end
endmodule