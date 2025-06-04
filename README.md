# 4_bit-Multiplier
4-Bit Binary Multiplier (Verilog)
This project implements a 4-bit binary multiplier using Verilog. It multiplies two 4-bit binary numbers and outputs an 8-bit result, using a combination of partial product generation, half adders, and full adders.

# 📁 Project Structure
* multiplier.v – Top module for the 4-bit multiplier
* half_adder.v – Half adder module
* full_adder.v – Full adder module
* testbench.v – Testbench to simulate the multiplier

# 🧮 Inputs & Output
* A[3:0]: 4-bit input (multiplicand)
* B[3:0]: 4-bit input (multiplier)
* P[7:0]: 8-bit product output

# ⚙️ Design Overview
Partial Product Generation

Uses bitwise AND operations:
w1 = A & {4{B[0]}}
w2 = A & {4{B[1]}}
w3 = A & {4{B[2]}}
w4 = A & {4{B[3]}}

# Bit Shifting
* Each partial product is shifted left to align with its significance.

# Addition
* Half adders (HA) and full adders (FA) are used to sum partial products.
* Carry outputs are propagated to the next addition stage.

