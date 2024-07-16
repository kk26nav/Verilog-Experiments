module fulladder(A,B,Cin,Sum,Cout);
input A,B,Cin;
output Sum,Cout;
wire w1,w2,w3;
halfadder h1(A,B,w1,w2);
halfadder h2(Cin,w1,Sum,w3);
or o1(Cout,w2,w3);
endmodule
