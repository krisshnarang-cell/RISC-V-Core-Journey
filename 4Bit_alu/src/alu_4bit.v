// -----------------------------------------------------------------------------
// Module: alu
// Design Type: Behavioral
// Description: A 4-bit Arithmetic Logic Unit (ALU) supporting 4 operations
//              controlled by a 2-bit opcode.
// -----------------------------------------------------------------------------
module alu(
    input [3:0] A,        // 4-bit Operand A
    input [3:0] B,        // 4-bit Operand B
    input [1:0] opcode,   // 00:ADD, 01:SUB, 10:AND, 11:OR
    output reg [3:0] result
);

    // Combinational logic block
    always @(*) begin
        case (opcode)
            2'b00: result = A + B; // Addition
            2'b01: result = A - B; // Subtraction
            2'b10: result = A & B; // Bitwise AND
            2'b11: result = A | B; // Bitwise OR
            default: result = 4'b0000;
        endcase 
    end
endmodule
