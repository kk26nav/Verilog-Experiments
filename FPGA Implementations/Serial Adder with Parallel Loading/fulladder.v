module full_adder (a, b, cin, sum, cout);
input a, b, cin;

output sum;
output cout;

assign sum = a^b^cin;
assign cout = ((a^b)&cin)|(a&b);

endmodule
