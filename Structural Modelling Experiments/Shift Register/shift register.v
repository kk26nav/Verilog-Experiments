module shift_reg(clk, reset, data_in, data_out, load);
input clk, reset;
input [7:0] data_in;
input [1:0] load;   //bin 11 for left shift, 10 for right shift, 01 for no change, 00 for feed input
output [7:0] data_out;

wire [7:0] choose;
// the multiplexers to decide the input to the D flip flops
decide d7 (data_out[6], data_out[0], data_out[7], data_in[7], load[1], load[0], choose[7]);
decide d6 (data_out[5], data_out[7], data_out[6], data_in[6], load[1], load[0], choose[6]);
decide d5 (data_out[4], data_out[6], data_out[5], data_in[5], load[1], load[0], choose[5]);
decide d4 (data_out[3], data_out[5], data_out[4], data_in[4], load[1], load[0], choose[4]);
decide d3 (data_out[2], data_out[4], data_out[3], data_in[3], load[1], load[0], choose[3]);
decide d2 (data_out[1], data_out[3], data_out[2], data_in[2], load[1], load[0], choose[2]);
decide d1 (data_out[0], data_out[2], data_out[1], data_in[1], load[1], load[0], choose[1]);
decide d0 (data_out[7], data_out[1], data_out[0], data_in[0], load[1], load[0], choose[0]);

//assigning the ouputs selected by the multiplexers to the flip flop inputs

ff f7 (clk, reset, choose[7], data_out[7], );
ff f6 (clk, reset, choose[6], data_out[6], );
ff f5 (clk, reset, choose[5], data_out[5], );
ff f4 (clk, reset, choose[4], data_out[4], );
ff f3 (clk, reset, choose[3], data_out[3], );
ff f2 (clk, reset, choose[2], data_out[2], );
ff f1 (clk, reset, choose[1], data_out[1], );
ff f0 (clk, reset, choose[0], data_out[0], );
 
endmodule




