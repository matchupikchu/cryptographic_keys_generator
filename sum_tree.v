module sum_tree(
  input [127:0] in_vector,
  output [7:0] out_sum
);
	 wire [3:0] a0 = in_vector[127:124];
	 wire [2:0] s0;
	 wire [3:0] a1 = in_vector[123:120];
	 wire [2:0] s1;
	 wire [3:0] a2 = in_vector[119:116];
	 wire [2:0] s2;
	 wire [3:0] a3 = in_vector[115:112];
	 wire [2:0] s3;
	 wire [3:0] a4 = in_vector[111:108];
	 wire [2:0] s4;
	 wire [3:0] a5 = in_vector[107:104];
	 wire [2:0] s5;
	 wire [3:0] a6 = in_vector[103:100];
	 wire [2:0] s6;
	 wire [3:0] a7 = in_vector[99:96];
	 wire [2:0] s7;
	 wire [3:0] a8 = in_vector[95:92];
	 wire [2:0] s8;
	 wire [3:0] a9 = in_vector[91:88];
	 wire [2:0] s9;
	 wire [3:0] a10 = in_vector[87:84];
	 wire [2:0] s10;
	 wire [3:0] a11 = in_vector[83:80];
	 wire [2:0] s11;
	 wire [3:0] a12 = in_vector[79:76];
	 wire [2:0] s12;
	 wire [3:0] a13 = in_vector[75:72];
	 wire [2:0] s13;
	 wire [3:0] a14 = in_vector[71:68];
	 wire [2:0] s14;
	 wire [3:0] a15 = in_vector[67:64];
	 wire [2:0] s15;
	 wire [3:0] a16 = in_vector[63:60];
	 wire [2:0] s16;
	 wire [3:0] a17 = in_vector[59:56];
	 wire [2:0] s17;
	 wire [3:0] a18 = in_vector[55:52];
	 wire [2:0] s18;
	 wire [3:0] a19 = in_vector[51:48];
	 wire [2:0] s19;
	 wire [3:0] a20 = in_vector[47:44];
	 wire [2:0] s20;
	 wire [3:0] a21 = in_vector[43:40];
	 wire [2:0] s21;
	 wire [3:0] a22 = in_vector[39:36];
	 wire [2:0] s22;
	 wire [3:0] a23 = in_vector[35:32];
	 wire [2:0] s23;
	 wire [3:0] a24 = in_vector[31:28];
	 wire [2:0] s24;
	 wire [3:0] a25 = in_vector[27:24];
	 wire [2:0] s25;
	 wire [3:0] a26 = in_vector[23:20];
	 wire [2:0] s26;
	 wire [3:0] a27 = in_vector[19:16];
	 wire [2:0] s27;
	 wire [3:0] a28 = in_vector[15:12];
	 wire [2:0] s28;
	 wire [3:0] a29 = in_vector[11:8];
	 wire [2:0] s29;
	 wire [3:0] a30 = in_vector[7:4];
	 wire [2:0] s30;
	 wire [3:0] a31 = in_vector[3:0];
	 wire [2:0] s31;
	
	 wire [3:0] ss0 = s0 + s1;
	 wire [3:0] ss1 = s2 + s3;
	 wire [3:0] ss2 = s4 + s5;
	 wire [3:0] ss3 = s6 + s7;
	 wire [3:0] ss4 = s8 + s9;
	 wire [3:0] ss5 = s10 + s11;
	 wire [3:0] ss6 = s12 + s13;
	 wire [3:0] ss7 = s14 + s15;
	 wire [3:0] ss8 = s16 + s17;
	 wire [3:0] ss9 = s18 + s19;
	 wire [3:0] ss10 = s20 + s21;
	 wire [3:0] ss11 = s22 + s23;
	 wire [3:0] ss12 = s24 + s25;
	 wire [3:0] ss13 = s26 + s27;
	 wire [3:0] ss14 = s28 + s29;
	 wire [3:0] ss15 = s30 + s31;
	
	
	 wire [4:0] sss0 = ss0 + ss1;
	 wire [4:0] sss1 = ss2 + ss3;
	 wire [4:0] sss2 = ss4 + ss5;
	 wire [4:0] sss3 = ss6 + ss7;
	 wire [4:0] sss4 = ss8 + ss9;
	 wire [4:0] sss5 = ss10 + ss11;
	 wire [4:0] sss6 = ss12 + ss13;
	 wire [4:0] sss7 = ss14 + ss15;
	 
	 wire [5:0] ssss0 = sss0 + sss1;
	 wire [5:0] ssss1 = sss2 + sss3;
	 wire [5:0] ssss2 = sss4 + sss5;
	 wire [5:0] ssss3 = sss6 + sss7;
	 
	 wire [6:0] sssss0 = ssss0 + ssss1;
	 wire [6:0] sssss1 = ssss2 + ssss3;
	 
	 assign out_sum = sssss0 + sssss1;
	

	 adder_4_bit adder0 (.a(a0),
			 .out_result(s0));
	 adder_4_bit adder1 (.a(a1),
			 .out_result(s1));
	 adder_4_bit adder2 (.a(a2),
			 .out_result(s2));
	 adder_4_bit adder3 (.a(a3),
			 .out_result(s3));
	 adder_4_bit adder4 (.a(a4),
			 .out_result(s4));
	 adder_4_bit adder5 (.a(a5),
			 .out_result(s5));
	 adder_4_bit adder6 (.a(a6),
			 .out_result(s6));
	 adder_4_bit adder7 (.a(a7),
			 .out_result(s7));
	 adder_4_bit adder8 (.a(a8),
			 .out_result(s8));
	 adder_4_bit adder9 (.a(a9),
			 .out_result(s9));
	 adder_4_bit adder10 (.a(a10),
			 .out_result(s10));
	 adder_4_bit adder11 (.a(a11),
			 .out_result(s11));
	 adder_4_bit adder12 (.a(a12),
			 .out_result(s12));
	 adder_4_bit adder13 (.a(a13),
			 .out_result(s13));
	 adder_4_bit adder14 (.a(a14),
			 .out_result(s14));
	 adder_4_bit adder15 (.a(a15),
			 .out_result(s15));
	 adder_4_bit adder16 (.a(a16),
			 .out_result(s16));
	 adder_4_bit adder17 (.a(a17),
			 .out_result(s17));
	 adder_4_bit adder18 (.a(a18),
			 .out_result(s18));
	 adder_4_bit adder19 (.a(a19),
			 .out_result(s19));
	 adder_4_bit adder20 (.a(a20),
			 .out_result(s20));
	 adder_4_bit adder21 (.a(a21),
			 .out_result(s21));
	 adder_4_bit adder22 (.a(a22),
			 .out_result(s22));
	 adder_4_bit adder23 (.a(a23),
			 .out_result(s23));
	 adder_4_bit adder24 (.a(a24),
			 .out_result(s24));
	 adder_4_bit adder25 (.a(a25),
			 .out_result(s25));
	 adder_4_bit adder26 (.a(a26),
			 .out_result(s26));
	 adder_4_bit adder27 (.a(a27),
			 .out_result(s27));
	 adder_4_bit adder28 (.a(a28),
			 .out_result(s28));
	 adder_4_bit adder29 (.a(a29),
			 .out_result(s29));
	 adder_4_bit adder30 (.a(a30),
			 .out_result(s30));
	 adder_4_bit adder31 (.a(a31),
			 .out_result(s31));


			 

			 
			 
endmodule



