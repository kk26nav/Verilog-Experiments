module cla4bit(A,B,Cin,Sum,Cout);
input [3:0] A,B;
input Cin;
output reg[3:0] Sum;
output reg Cout;
reg [3:0] P,G,C;
always @(A or B or Cin)
begin
P=A^B;
G=A&B;
C[0]=(G[0]|(P[0]&Cin));
C[1]=(G[1]|(P[1]&C[0]));
C[2]=(G[2]|(P[2]&C[1]));
C[3]=(G[3]|(P[3]&C[2]));
Cout=C[3];
Sum[0]=P[0]^Cin;
Sum[1]=P[1]^C[0];
Sum[2]=P[2]^C[1];
Sum[3]=P[3]^C[2];
end
endmodule
