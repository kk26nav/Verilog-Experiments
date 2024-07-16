module parity_gen(B2,B1,B0,P);
input B2,B1,B0;
output P;

assign P=(B2^B1^B0);
endmodule
