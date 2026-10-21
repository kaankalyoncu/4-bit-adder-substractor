`timescale 1ns/1ps

module degerler;

    logic [3:0] A, B;
    logic M;
    logic [3:0] Result;
    logic Cout;

    adder_subtractor dut (
        .A(A),
        .B(B),
        .M(M),
        .Result(Result),
        .Cout(Cout)
    );

    initial begin

        $monitor("A=%d B=%d M=%b Result=%b Cout=%b",
                  A, B, M, Result, Cout);

        
// Toplamalar
A=0;  B=0;  M=0; #10;
A=15; B=0;  M=0; #10;
A=0;  B=15; M=0; #10;
A=15; B=15; M=0; #10;
A=15; B=1;  M=0; #10;

// Cikarmalar
A=0;  B=0;  M=1; #10;
A=15; B=0;  M=1; #10;
A=0;  B=15; M=1; #10;
A=15; B=15; M=1; #10;
A=3;  B=8;  M=1; #10;


        $finish;

    end

endmodule

