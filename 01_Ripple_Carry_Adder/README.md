# 4-Bit Structural Ripple Carry Adder (RCA)

## Overview
This project implements a 4-bit Ripple Carry Adder using **Structural Modeling** in Verilog. Instead of using the `+` operator, the design is built hierarchically from gate-level logic to demonstrate hardware interconnection.

## Design Hierarchy
1. **Full Adder (`full_adder.v`)**: The leaf-level module implementing the logic:
   - $Sum = A \oplus B \oplus Cin$
   - $Cout = (A \cdot B) + (Cin \cdot (A \oplus B))$
2. **Ripple Carry Adder (`rca_4bit.v`)**: The top-level module that instantiates four 1-bit full adders, passing the carry signal from one bit to the next.



## Key Hardware Concepts
- **Propagation Delay**: Demonstrates that the most significant bit (MSB) must wait for the carry to "ripple" through all previous stages.
- **Structural Verilog**: Focuses on "how the wires are connected" rather than just "what the math is."

