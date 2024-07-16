module full_adder_tb();
reg a,b,cin;
wire sum,cout;

full_adder UUT (a,b,cin,sum,cout);

initial begin
a=1'b0; b=1'b0; cin=1'b0; #100
a=1'b0; b=1'b0; cin=1'b1; #100
a=1'b0; b=1'b1; cin=1'b0; #100
a=1'b0; b=1'b1; cin=1'b1; #100
a=1'b1; b=1'b0; cin=1'b0; #100
a=1'b1; b=1'b0; cin=1'b1; #100
a=1'b1; b=1'b1; cin=1'b0; #100
a=1'b1; b=1'b1; cin=1'b1; #100;

end
endmodule
