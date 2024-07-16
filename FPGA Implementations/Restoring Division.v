module rdiv(Q,M,q,r);
input [3:0] Q,M;
output reg [3:0]q,r;
reg [4:0] A;
reg [3:0]Q1;
integer N;
always @ (Q or M) begin
A=5'b0;N=4;Q1=Q;
while(N) begin
A={A[3:0],Q1[3]};
A=A-M;
if (A[4]) begin
Q1={Q1[2:0],1'b0};
A=A+M;
end
else
Q1={Q1[2:0],1'b1};
N=N-1;
end
q=Q1;
r=A;
end
endmodule
