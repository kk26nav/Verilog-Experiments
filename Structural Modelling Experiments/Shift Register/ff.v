//initializing the flip flop
module ff (clk, reset, D, Q, Q_bar);
input clk, reset, D;
output Q, Q_bar;

//wires s, s_bar, r, r_bar
wire S, S_bar, R, R_bar;
nand (S, clk, ~reset, S_bar);
nand (S_bar, S, R_bar);

nand (R, clk, R_bar, S);
nand (R_bar, D, R, ~reset);

//outputs
nand (Q, Q_bar, S);
nand (Q_bar, ~reset, Q, R);
endmodule
