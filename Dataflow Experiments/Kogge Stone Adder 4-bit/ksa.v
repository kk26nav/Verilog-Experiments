module ksa(A,B,Cin,S,Cout);
input [3:0] A,B;
input Cin;
output [3:0] S;
output Cout;
wire [3:0] p,g,cp,cg,ccp,ccg,c;

assign p=A^B;
assign g=A&B;
assign cp[0]=p[0];
assign cg[0]=g[0];
assign cp[1]=p[1]&p[0];
assign cp[2]=p[2]&p[1];
assign cp[3]=p[3]&p[2];
assign cg[1]=g[1]|(p[1]&g[0]);
assign cg[2]=g[2]|(p[2]&g[1]);
assign cg[3]=g[3]|(p[3]&g[2]);
assign ccp[0]=cp[0];
assign ccg[0]=cg[0];
assign ccp[1]=cp[1];
assign ccg[1]=cg[1];
assign ccp[2]=cp[2]&cp[1];
assign ccp[3]=cp[3]&cp[2];
assign ccg[2]=cg[2]|(cp[2]&cg[1]);
assign ccg[3]=cg[3]|(cp[3]&cg[2]);
assign c=ccg;
assign Cout=c[3];
assign S[0]=p[0]^Cin;
assign S[1]=p[1]^c[0];
assign S[2]=p[2]^c[1];
assign S[3]=p[3]^c[2];
endmodule
