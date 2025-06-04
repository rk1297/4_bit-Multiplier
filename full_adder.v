`timescale 1ns / 1ps

module full_adder(Sum,Carry,A,B,cin);
input A,B,cin;
output Sum,Carry;
assign Sum=A^B^cin;
assign Carry=(A & B) | (B & cin) | (A & cin);
endmodule
