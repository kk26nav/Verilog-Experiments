module mux161tb();
reg S3,S2,S1,S0;
reg [15:0] D;
wire Y;
mux161 UUT(Y,S3,S2,S1,S0,D);
initial begin
S3=1'b0; S2=1'b0; S1=1'b0; S0=1'b0; D=16'b0000000000000001;#100
S3=1'b0; S2=1'b1; S1=1'b0; S0=1'b1; D=16'b0000000000100001;#100
S3=1'b1; S2=1'b0; S1=1'b1; S0=1'b0; D=16'b0000010000000001;#100
S3=1'b0; S2=1'b1; S1=1'b0; S0=1'b0; D=16'b0000000000010001;#100;
end
endmodule
