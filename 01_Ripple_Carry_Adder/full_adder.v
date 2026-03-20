// -----------------------------------------------------------------------------
// Module: full_adder
// Design Type: Structural (Gate-level)
// Description: Implements a 1-bit full adder using primitive logic gates.
// -----------------------------------------------------------------------------
module full_adder(
    input A,      // 1-bit Input A
    input B,      // 1-bit Input B
    input Cin,    // Carry-in from previous stage
    output Sum,   // Result of A + B + Cin
    output Cout   // Carry-out to next stage
);

    // Sum = A XOR B XOR Cin
    assign Sum = A ^ B ^ Cin;
    
    // Cout = (A AND B) OR (Cin AND (A XOR B))
    // This logic is optimized for standard cell implementation
    assign Cout = (A & B) | (Cin & (A ^ B));

endmodule
