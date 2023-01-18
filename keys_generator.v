module keys_generator(
  input in_clk,
  input in_stop,
  input in_wr_seed,
  input [127:0] in_seed,
  output [127:0] out_LFSR 
);

	reg [127:0] LFSR = 128'd0;
	wire feedback = out_LFSR[127];
	
	
	always @(posedge in_clk)
	begin
	
		 if (in_wr_seed == 1) begin
			 LFSR <= in_seed;
		 end
		 else begin
			 if (in_stop == 0) begin
				 LFSR[0] <= feedback;
				 LFSR[1] <= LFSR[0];
				 LFSR[2] <= LFSR[1];
				 LFSR[3] <= LFSR[2];
				 LFSR[4] <= LFSR[3];
				 LFSR[5] <= LFSR[4] ^ feedback;
				 LFSR[6] <= LFSR[5] ^ feedback;
				 LFSR[7] <= LFSR[6];
				 LFSR[8] <= LFSR[7];
				 LFSR[9] <= LFSR[8] ^ feedback;
				 LFSR[10] <= LFSR[9];
				 LFSR[11] <= LFSR[10] ^ feedback;
				 LFSR[12] <= LFSR[11] ^ feedback;
				 LFSR[13] <= LFSR[12];
				 LFSR[14] <= LFSR[13];
				 LFSR[15] <= LFSR[14] ^ feedback;
				 LFSR[16] <= LFSR[15];
				 LFSR[17] <= LFSR[16];
				 LFSR[18] <= LFSR[17] ^ feedback;
				 LFSR[19] <= LFSR[18] ^ feedback;
				 LFSR[20] <= LFSR[19] ^ feedback;
				 LFSR[21] <= LFSR[20];
				 LFSR[22] <= LFSR[21] ^ feedback;
				 LFSR[23] <= LFSR[22];
				 LFSR[24] <= LFSR[23];
				 LFSR[25] <= LFSR[24] ^ feedback;
				 LFSR[26] <= LFSR[25];
				 LFSR[27] <= LFSR[26] ^ feedback;
				 LFSR[28] <= LFSR[27] ^ feedback;
				 LFSR[29] <= LFSR[28] ^ feedback;
				 LFSR[30] <= LFSR[29];
				 LFSR[31] <= LFSR[30] ^ feedback;
				 LFSR[32] <= LFSR[31] ^ feedback;
				 LFSR[33] <= LFSR[32];
				 LFSR[34] <= LFSR[33] ^ feedback;
				 LFSR[35] <= LFSR[34] ^ feedback;
				 LFSR[36] <= LFSR[35];
				 LFSR[37] <= LFSR[36];
				 LFSR[38] <= LFSR[37];
				 LFSR[39] <= LFSR[38] ^ feedback;
				 LFSR[40] <= LFSR[39] ^ feedback;
				 LFSR[41] <= LFSR[40];
				 LFSR[42] <= LFSR[41];
				 LFSR[43] <= LFSR[42];
				 LFSR[44] <= LFSR[43];
				 LFSR[45] <= LFSR[44];
				 LFSR[46] <= LFSR[45];
				 LFSR[47] <= LFSR[46] ^ feedback;
				 LFSR[48] <= LFSR[47] ^ feedback;
				 LFSR[49] <= LFSR[48];
				 LFSR[50] <= LFSR[49] ^ feedback;
				 LFSR[51] <= LFSR[50];
				 LFSR[52] <= LFSR[51];
				 LFSR[53] <= LFSR[52] ^ feedback;
				 LFSR[54] <= LFSR[53] ^ feedback;
				 LFSR[55] <= LFSR[54] ^ feedback;
				 LFSR[56] <= LFSR[55];
				 LFSR[57] <= LFSR[56] ^ feedback;
				 LFSR[58] <= LFSR[57] ^ feedback;
				 LFSR[59] <= LFSR[58];
				 LFSR[60] <= LFSR[59] ^ feedback;
				 LFSR[61] <= LFSR[60];
				 LFSR[62] <= LFSR[61] ^ feedback;
				 LFSR[63] <= LFSR[62] ^ feedback;
				 LFSR[64] <= LFSR[63] ^ feedback;
				 LFSR[65] <= LFSR[64] ^ feedback;
				 LFSR[66] <= LFSR[65];
				 LFSR[67] <= LFSR[66] ^ feedback;
				 LFSR[68] <= LFSR[67] ^ feedback;
				 LFSR[69] <= LFSR[68];
				 LFSR[70] <= LFSR[69] ^ feedback;
				 LFSR[71] <= LFSR[70];
				 LFSR[72] <= LFSR[71] ^ feedback;
				 LFSR[73] <= LFSR[72] ^ feedback;
				 LFSR[74] <= LFSR[73] ^ feedback;
				 LFSR[75] <= LFSR[74] ^ feedback;
				 LFSR[76] <= LFSR[75];
				 LFSR[77] <= LFSR[76] ^ feedback;
				 LFSR[78] <= LFSR[77] ^ feedback;
				 LFSR[79] <= LFSR[78] ^ feedback;
				 LFSR[80] <= LFSR[79];
				 LFSR[81] <= LFSR[80] ^ feedback;
				 LFSR[82] <= LFSR[81];
				 LFSR[83] <= LFSR[82] ^ feedback;
				 LFSR[84] <= LFSR[83];
				 LFSR[85] <= LFSR[84];
				 LFSR[86] <= LFSR[85];
				 LFSR[87] <= LFSR[86];
				 LFSR[88] <= LFSR[87] ^ feedback;
				 LFSR[89] <= LFSR[88];
				 LFSR[90] <= LFSR[89];
				 LFSR[91] <= LFSR[90];
				 LFSR[92] <= LFSR[91];
				 LFSR[93] <= LFSR[92] ^ feedback;
				 LFSR[94] <= LFSR[93] ^ feedback;
				 LFSR[95] <= LFSR[94];
				 LFSR[96] <= LFSR[95];
				 LFSR[97] <= LFSR[96];
				 LFSR[98] <= LFSR[97] ^ feedback;
				 LFSR[99] <= LFSR[98] ^ feedback;
				 LFSR[100] <= LFSR[99] ^ feedback;
				 LFSR[101] <= LFSR[100] ^ feedback;
				 LFSR[102] <= LFSR[101];
				 LFSR[103] <= LFSR[102] ^ feedback;
				 LFSR[104] <= LFSR[103] ^ feedback;
				 LFSR[105] <= LFSR[104];
				 LFSR[106] <= LFSR[105] ^ feedback;
				 LFSR[107] <= LFSR[106];
				 LFSR[108] <= LFSR[107] ^ feedback;
				 LFSR[109] <= LFSR[108];
				 LFSR[110] <= LFSR[109] ^ feedback;
				 LFSR[111] <= LFSR[110];
				 LFSR[112] <= LFSR[111] ^ feedback;
				 LFSR[113] <= LFSR[112];
				 LFSR[114] <= LFSR[113] ^ feedback;
				 LFSR[115] <= LFSR[114] ^ feedback;
				 LFSR[116] <= LFSR[115] ^ feedback;
				 LFSR[117] <= LFSR[116] ^ feedback;
				 LFSR[118] <= LFSR[117] ^ feedback;
				 LFSR[119] <= LFSR[118];
				 LFSR[120] <= LFSR[119] ^ feedback;
				 LFSR[121] <= LFSR[120];
				 LFSR[122] <= LFSR[121] ^ feedback;
				 LFSR[123] <= LFSR[122] ^ feedback;
				 LFSR[124] <= LFSR[123];
				 LFSR[125] <= LFSR[124];
				 LFSR[126] <= LFSR[125] ^ feedback;
				 LFSR[127] <= LFSR[126];
			 end
		end
		
		
	end
	
	assign out_LFSR = LFSR;
endmodule
