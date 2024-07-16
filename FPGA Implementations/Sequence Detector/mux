module mux (ip_set, s3, s2, s1, s0, y);
input [15:0] ip_set;
input s3, s2, s1, s0;
output reg y;

always @(*)
case({s3, s2, s1, s0})
    4'd15 : y = ip_set[15];
    4'd14 : y = ip_set[14];
    4'd13 : y = ip_set[13];
    4'd12 : y = ip_set[12];
    4'd11 : y = ip_set[11];
    4'd10 : y = ip_set[10];
    4'd9  : y = ip_set[9];
    4'd8  : y = ip_set[8];
    4'd7  : y = ip_set[7];
    4'd6  : y = ip_set[6];
    4'd5  : y = ip_set[5];
    4'd4  : y = ip_set[4];
    4'd3  : y = ip_set[3];
    4'd2  : y = ip_set[2];
    4'd1  : y = ip_set[1];
    4'd0  : y = ip_set[0];
endcase
endmodule
