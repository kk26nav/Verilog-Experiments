// Instantiation of the D Flip Flop
module dff (clk, reset, ip_d, Q);
input clk, reset, ip_d;
output reg Q;

always @(posedge clk or posedge reset)
begin
    if(reset)
        Q <= 1'b0;
    else 
        Q <= ip_d;
end
endmodule
