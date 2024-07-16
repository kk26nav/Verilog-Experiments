module ksa_tb();
reg[3:0] A,B;
reg Cin;
wire[3:0] S;
wire Cout;

ksa UUT (A,B,Cin,S,Cout);

initial begin
A=4'b1100; B=4'b1001; Cin=1'b0;#100
A=4'b0000; B=4'b0001; Cin=1'b0;#100
A=4'b0100; B=4'b1001; Cin=1'b0;#100
A=4'b1111; B=4'b1111; Cin=1'b0;#100;
end
endmodule
