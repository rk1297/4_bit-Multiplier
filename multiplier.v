timescale 1ns / 1ps

module multiplier(P,A,B);
input [3:0] A,B;
output [7:0] P;
wire [3:0] w1,w2,w3,w4;

// wires for carry and sum of Half_Adder and Full_Adder
wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12;
wire s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12;

// wires assignment
assign w1=A&{4{B[0]}};
assign w2=A&{4{B[1]}};
assign w3=A&{4{B[2]}};
assign w4=A&{4{B[3]}};

// for stage 1st
half_adder ha1(.Sum(s1),.Carry(c1),.A(w1[1]),.B(w2[0]));
full_adder fa1(.Sum(s2),.Carry(c2),.A(w1[2]),.B(w2[1]),.cin(c1));
full_adder fa2(.Sum(s3),.Carry(c3),.A(w1[3]),.B(w2[2]),.cin(c2));
half_adder ha2(.Sum(s4),.Carry(c4),.A(w2[3]),.B(c3));

// for Stage 2nd
half_adder ha3(.Sum(s5),.Carry(c5),.A(w3[0]),.B(s2));
full_adder fa3(.Sum(s6),.Carry(c6),.A(w3[1]),.B(s3),.cin(c5));
full_adder fa4(.Sum(s7),.Carry(c7),.A(w3[2]),.B(s4),.cin(c6));
full_adder fa5(.Sum(s8),.Carry(c8),.A(w3[3]),.B(c4),.cin(c7));

// for Stage 3rd
half_adder ha4(.Sum(s9),.Carry(c9),.A(w4[0]),.B(s6));
full_adder fa6(.Sum(s10),.Carry(c10),.A(w4[1]),.B(s7),.cin(c9));
full_adder fa7(.Sum(s11),.Carry(c11),.A(w4[2]),.B(s8),.cin(c10));
full_adder fa8(.Sum(s12),.Carry(c12),.A(w4[3]),.B(c8),.cin(c11));

// outputs of multipliers
assign P[0]=w1[0];
assign P[1]=s1;
assign P[2]=s5;
assign P[3]=s9;
assign P[4]=s10;
assign P[5]=s11;
assign P[6]=s12;
assign P[7]=c12;
endmodule
