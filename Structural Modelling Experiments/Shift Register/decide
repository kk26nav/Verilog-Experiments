//initializing a mux : 0 - feed input, 1 - no change, 2 - right shift, 3-left shift
module decide (i3, i2, i1, i0, s1, s0, y);
input i3, i2, i1, i0;
input s1, s0;
output y;

wire w1, w2;
not (w1, s1);
not (w2, s0);


wire w3, w4, w5, w6;
and (w3, w1, w2, i0);
and (w4, w1, s0, i1);
and (w5, s1, w2, i2);
and (w6, s1, s0, i3);

or (y, w3, w4, w5, w6);
endmodule
