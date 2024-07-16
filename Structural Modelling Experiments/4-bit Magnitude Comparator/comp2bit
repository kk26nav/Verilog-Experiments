module comp2bit(a,b,g,l,e);
input [1:0] a,b;
output g,l,e;
wire g1,g2,l1,l2,e1,e2,w1,w2;
comp1bit c1(a[1],b[1],g1,l1,e1);
comp1bit c2(a[0],b[0],g2,l2,e2);
and a1(e,e1,e2);
and a2(w1,e1,g2);
and a3(w2,e1,l2);
or o1(g,g1,w1);
or o2(l,l1,w2);
endmodule
