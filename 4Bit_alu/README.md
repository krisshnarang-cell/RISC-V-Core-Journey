# 4-Bit Behavioral Arithmetic Logic Unit (ALU)

## Overview
This project implements a 4-bit ALU using **Behavioral Modeling**. It serves as the functional "core" for mathematical operations in a processor.

## Architecture
The ALU uses a 2-bit `opcode` to select between four primary operations:

| Opcode | Operation | Verilog Logic |
| :--- | :--- | :--- |
| `00` | **ADD** | `A + B` |
| `01` | **SUB** | `A - B` |
| `10` | **AND** | `A & B` |
| `11` | **OR** | `A | B` |



[Image of 4-bit ALU block diagram]


## Implementation Details
- Uses a `always @(*)` combinational block with a `case` statement.
- Designed to be easily scalable to 32-bits for future RISC-V implementation.

## Simulation Verification
The testbench (`sim/tb_alu.v`) covers:
- Arithmetic overflow (Addition).
- Zero-result detection (Subtraction).
- Bitwise logic verification.
