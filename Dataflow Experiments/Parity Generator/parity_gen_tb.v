module parity_gen_tb();
reg B2,B1,B0;
wire P;

parity_gen UUT(B2,B1,B0,P);

initial begin
B2=1'b0; B1=1'b0; B0=1'b0; #100
B2=1'b0; B1=1'b0; B0=1'b1; #100
B2=1'b0; B1=1'b1; B0=1'b0; #100
B2=1'b0; B1=1'b1; B0=1'b1; #100
B2=1'b1; B1=1'b0; B0=1'b0; #100
B2=1'b1; B1=1'b0; B0=1'b1; #100
B2=1'b1; B1=1'b1; B0=1'b0; #100
B2=1'b1; B1=1'b1; B0=1'b1; #100;
end
endmodule
