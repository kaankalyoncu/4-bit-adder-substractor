module toplayicicikarici(
    input logic [3:0] A, B,
    input logic M,
    output logic [3:0] Result,
    output logic Cout
);

    assign {Cout, Result} =
        {1'b0, A} +
        {1'b0, (B ^ {4{M}})} + M;

endmodule
