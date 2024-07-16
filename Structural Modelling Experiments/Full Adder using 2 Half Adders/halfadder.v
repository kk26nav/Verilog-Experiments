module halfadder(A,B,Sum,Cout);
input A,B;
output Sum,Cout;
and a1(Cout,A,B);
or o1(Sum,A,B);
endmodule
