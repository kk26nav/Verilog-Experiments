module comp4bit(a,b,g,l,e);
input [3:0] a,b;
output g,l,e;
wire g1,g0,l1,l0,e1,e0,w1,w2;
comp2bit c1(a[3:2],b[3:2],g1,l1,e1);
comp2bit c2(a[1:0],b[1:0],g0,l0,e0);
and a1(e,e1,e0);
and a2(w1,e1,g0);
and a3(w2,e1,l0);
or o1(g,g1,w1);
or o2(l,l1,w2);
endmodule
