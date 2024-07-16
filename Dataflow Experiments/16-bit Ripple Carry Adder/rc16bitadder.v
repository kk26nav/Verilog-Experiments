module rc16bitadder(A,B,Cin,Sum,Cout);
input [15:0] A,B;
input Cin;
output [15:0] Sum;
output Cout;
wire w1;
rc8bitadder r1(A[7:0],B[7:0],Cin,Sum[7:0],w1);
rc8bitadder r2(A[15:8],B[15:8],w1,Sum[15:8],Cout);
endmodule
