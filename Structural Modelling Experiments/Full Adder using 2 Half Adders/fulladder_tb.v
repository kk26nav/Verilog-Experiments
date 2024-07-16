module fulladder_tb();
reg A,B,Cin;
wire Sum,Cout;
fulladder UUT(A,B,Cin,Sum,Cout);
initial begin
A=1'b0; B=1'b0; Cin=1'b0; #100
A=1'b0; B=1'b0; Cin=1'b1; #100
A=1'b0; B=1'b1; Cin=1'b0; #100
A=1'b0; B=1'b1; Cin=1'b1; #100
A=1'b1; B=1'b0; Cin=1'b0; #100
A=1'b1; B=1'b0; Cin=1'b1; #100
A=1'b1; B=1'b1; Cin=1'b0; #100
A=1'b1; B=1'b1; Cin=1'b1; #100;
end
endmodule
