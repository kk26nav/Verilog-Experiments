module booth(clk,reset,M,Q,P);
input clk,reset;
input [3:0] M,Q;
output reg [7:0] P;
reg [3:0] A,q;
reg QN;
reg [7:0] t;
reg [3:0] count;
wire [3:0] MN = ~M + 1;

always @ (posedge clk or posedge reset)
begin
    if(reset)
    begin
        A = 0;
        QN = 0;
        t[7:4] = A;
        t[3:0] = Q;
        count = 4;
        P = 8'dx;
        q = Q;
    end
    else if(count > 0)
    begin
        if(q[0] == 0 && QN == 1)
        begin
            A = A + M;
        end
        else if(q[0] == 1 && QN == 0)
        begin
            A = A + MN;
        end
        QN = q[0];
        q = {A[0],q[3:1]};
        A = {A[3],A[3:1]};
        t[7:4] = A;
        t[3:0] = q;
       
        count = count - 1;
    end
    else if(count == 0)
        P = t;
end
endmodule
