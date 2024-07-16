module mux41(Y,S1,S0,I3,I2,I1,I0);
input S1,S0,I3,I2,I1,I0;
output Y;
wire w1,w2,w3,w4;
and a0(w1,(~S1),(~S0),I0);
and a1(w2,(~S1),S0,I1);
and a2(w3,S1,(~S0),I2);
and a3(w4,S1,S0,I3);
or o1(Y,w1,w2,w3,w4);
endmodule
