// -----------------------------------------------------------------------------
// Module: ripplecarryadder
// Design Type: Hierarchical / Structural
// Description: A 4-bit Ripple Carry Adder created by instantiating four 
//              1-bit full adders in series.
// -----------------------------------------------------------------------------
module ripplecarryadder(
    input [3:0] A,    // 4-bit Input A
    input [3:0] B,    // 4-bit Input B
    input Cin,        // Initial Carry-in (usually 0)
    output [3:0] Sum, // 4-bit Sum Result
    output Cout       // Final Overflow Carry-out
);

    // Internal wires to propagate the carry between stages
    wire c1, c2, c3;
    
    // Stage 0: Least Significant Bit (LSB)
    full_adder FA0 (.A(A[0]), .B(B[0]), .Cin(Cin), .Sum(Sum[0]), .Cout(c1));
    
    // Stage 1
    full_adder FA1 (.A(A[1]), .B(B[1]), .Cin(c1),  .Sum(Sum[1]), .Cout(c2));
    
    // Stage 2
    full_adder FA2 (.A(A[2]), .B(B[2]), .Cin(c2),  .Sum(Sum[2]), .Cout(c3));
    
    // Stage 3: Most Significant Bit (MSB)
    full_adder FA3 (.A(A[3]), .B(B[3]), .Cin(c3),  .Sum(Sum[3]), .Cout(Cout));

endmodule
