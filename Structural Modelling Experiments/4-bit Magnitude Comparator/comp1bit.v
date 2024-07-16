module comp1bit(a,b,g,l,e);
input a,b;
output g,l,e;
wire w1,w2;
not n1(w1,a);
not n2(w2,b);
xnor xn1(e,a,b);
and a1(g,a,w2);
and a2(l,w1,b);
endmodule
