module rc4bit(A,B,Cin,Sum,Cout);
input [3:0] A,B;
input Cin;
output reg [3:0] Sum;
output reg Cout;
reg [3:0] C;
always @(A or B or Cin)
    begin
       
        C[0] = (A[0]&B[0])|((A[0]^B[0])& Cin);
        C[1] = (A[1]&B[1])|((A[1]^B[1])& C[0]);
        C[2] = (A[2]&B[2])|((A[2]^B[2])& C[1]);
        C[3] = (A[3]&B[3])|((A[3]^B[3])& C[2]);
        Cout = C[3];

        Sum[0] = (A[0] ^ B[0])^Cin;
        Sum[1] = (A[1] ^ B[1])^C[0];
        Sum[2] = (A[2] ^ B[2])^C[1];
        Sum[3] = (A[3] ^ B[3])^C[2];
       
    end
endmodule
