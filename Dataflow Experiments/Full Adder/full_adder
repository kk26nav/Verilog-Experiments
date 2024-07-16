module full_adder(a,b,cin,sum,cout);
input a,b,cin ;
output sum,cout;
wire x1,x2,x3,x4,y1,y2,y3,y4;

assign x1=((~a)&(~b)&(cin));
assign x2=((~a)&(b)&(~cin));
assign x3=((a)&(~b)&(~cin));
assign x4=((a)&(b)&(cin));
assign sum = x1|x2|x3|x4;
assign y1=((~a)&(b)&(cin));
assign y2=((a)&(~b)&(cin));
assign y3=((a)&(b)&(~cin));
assign y4=((a)&(b)&(cin));
assign cout=y1|y2|y3|y4;
endmodule
