//Multiplier
module Mult #(parameter WL = 16) (
    input  wire         CLK,
    input  wire signed [WL-1:0] A,
    input  wire signed [WL-1:0] B,
    output reg  signed [2*WL-1:0] P
);
    always @(posedge CLK) begin
        P <= A * B;
    end
endmodule


// Adder
module Adder #(parameter WL = 16) (
    input  wire signed [WL-1:0] A,
    input  wire signed [WL-1:0] B,
    output wire signed [WL-1:0] S
);
    assign S = A + B;
endmodule


// Subtractor
module Sub #(parameter WL = 16) (
    input  wire signed [WL-1:0] A,
    input  wire signed [WL-1:0] B,
    output wire signed [WL-1:0] S
);
    assign S = A - B;
endmodule
