module tb();
reg [3:0] A,B;
reg Cin;
wire [3:0] Sum;
wire Cout;
rc4bit UUT (A,B,Cin,Sum,Cout);
initial begin
A=12; B=4; Cin=1'b0;#100
A=1; B=14; Cin=1'b0;#100
A=7; B=3; Cin=1'b0;#100
A=5; B=2; Cin=1'b0;#100;
end
endmodule
