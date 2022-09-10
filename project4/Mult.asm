// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.
// tmp=R0
// for i in range(1, R1+1):
//   tmp+=R0
// R[2]=tmp

	@i
	M=0
	@sum
	M=0
	@R2
	M=0

(LOOP)
    // loop check, iterate R1 times
	@i
	D=M
	@R1
	D=M-D
	@END
	D;JEQ

	// actualy computation, sum+=R0
	@R0
	D=M
	@sum
	M=D+M
	D=M
	@R2
	M=D
	@i
	M=M+1

	// jump to the beginning
	@LOOP
	0;JMP


(END)
	@END
	0;JMP