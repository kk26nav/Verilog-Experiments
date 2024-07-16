module mux161(Y,S3,S2,S1,S0,D);
input [15:0] D;
input S3,S2,S1,S0;
output Y;
wire w1,w2,w3,w4;
mux41 m1(w1,S1,S0,D[3],D[2],D[1],D[0]);
mux41 m2(w2,S1,S0,D[7],D[6],D[5],D[4]);
mux41 m3(w3,S1,S0,D[11],D[10],D[9],D[8]);
mux41 m4(w4,S1,S0,D[15],D[14],D[13],D[12]);
mux41 m5(Y,S3,S2,w4,w3,w2,w1);
endmodule
