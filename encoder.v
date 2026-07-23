# encoder.v 
module encoder(
    input  [3:0] data,
    output [6:0] code
);

wire p1,p2,p4;

// Hamming (7,4)
// Position:
// 1=P1 2=P2 3=D3 4=P4 5=D2 6=D1 7=D0

assign p1 = data[3] ^ data[2] ^ data[0];
assign p2 = data[3] ^ data[1] ^ data[0];
assign p4 = data[2] ^ data[1] ^ data[0];

assign code = {p1,p2,data[3],p4,data[2],data[1],data[0]};

endmodule
