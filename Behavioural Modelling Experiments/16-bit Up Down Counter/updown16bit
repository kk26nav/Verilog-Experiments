module updown16bit(rst,clk,up,count);
input rst,clk,up;
output reg [15:0] count;
always @ (posedge clk)
begin
    if (rst)
        count=16'b0000000000000000;
    else if (up)
        count=count+1;
    else
        count=count-1;
end
endmodule
