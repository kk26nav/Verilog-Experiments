module nrdiv(clk,rst,divisor,dividend,quo,r);
input [4:0]divisor;
input [3:0] dividend;
input rst,clk;
output reg [4:0] r;
output reg [3:0] quo;
reg [3:0]q;
reg [4:0] acc,m;
reg[2:0] count;
always @(posedge clk)
if (rst) begin
count<=0;
q<=dividend;
acc<=0;
m<=divisor;
end
 else if(count<3'b100)
 begin
 {acc,q}={acc,q}<<1;
if (acc[4]==1'b1)
acc=acc+m;
else acc=acc-m;
if(acc[4]==1'b1)
q[0]=1'b0;
else
q[0]=1'b1;
count=count+1;
if(count==3'b100)
begin
if(acc[4]==1'b1)
acc=acc+m;
r=acc;
quo=q;
end
end
endmodule
