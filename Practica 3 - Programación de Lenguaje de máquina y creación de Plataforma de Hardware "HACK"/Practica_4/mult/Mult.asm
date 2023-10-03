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
    @i
    M=1 // i = 1
    @R2
    M=0 // R2 = 0
    //En R2 se almacenará, progresivamente, el resultado de las sumas consecutivas
(LOOP)
    //Si (i>r1), sale del bucle, es decir, se ejecuta desde i = 1 hasta r1 veces
    //esto es r1 - 1 + 1 veces, es decir, r1 veces. así, hace lo siguiente:
    // cuando haya sumado "r0", "r1" veces: R2 = r0 + r0 + r0 + r0... así r1 veces
    @i
    D=M 
    // D = i
    @R1
    A=M 
    // A = R1
    D=D-A  
    // D = i - R1
    @END  
    // Si( i - r1 ) > 0 ; then, go to exit, así hay dos casos:
    // 1 - 0 y sale inmediatamente
    // 1 - 4 (1)  --> 2 - 4 (2) --> 3 - 4 (3)  --> 4 - 4 (4)  -->  5 - 4 SALE
    D;JGT
    @R0
    D=M 
    // D = R0
    @R2
    M=M+D
    // R2 = R2 + R0 COMO R2 AL INICIO ES 0; ENTONCES, R2 = 0 + R0 = R0 ... R0 + R0 ...  R0 + R0 + R0
    @i
    M=M+1 
    // i++
    @LOOP
    0;JMP
(END)
    @END
    0;JMP //CICLO INFINITO DE CIERRE
