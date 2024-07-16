module vend(clk,reset,Rs_5,Rs_10,change_5,change_10,drink_out);
input clk,reset,Rs_5,Rs_10;
output reg change_5,change_10,drink_out;
reg[1:0] state,nextstate;
localparam S0=2'd0;
localparam S1=2'd1;
localparam S2=2'd2;

always @ (posedge clk or posedge reset)
begin
if (reset)
state<=S0;
else
state<=nextstate;
end
always @ (*)
case(state)
S0:begin
drink_out=1'b0;
change_5=1'b0;
change_10=1'b0;
if (Rs_5)
begin
nextstate=S1;
end
else if (Rs_10)
begin
nextstate=S2;
end
else
begin
nextstate=S0;
end
end
S1:begin
if (Rs_5)
begin
nextstate=S2;
end
else if (Rs_10)
begin
drink_out=1'b1;
nextstate=S0;
end
else
begin
change_5=1'b1;
nextstate=S0;
end
end
S2:begin
if (Rs_5)
begin
drink_out=1'b1;
nextstate=S0;
end
else if (Rs_10)
begin
drink_out=1'b1;
nextstate=S0;
end
else
begin
change_5=1'b1;
nextstate=S0;
end
end
endcase
endmodule
