(SimpleFunction.test)

@2

D=A

(LOOP.ADD_LOCALS.1)

@SP

A=M

M=0

@SP

M=M+1

D=D-1

@LOOP.ADD_LOCALS.1

D;JNE

@1

D=M

@0

D=D+A

A=D

D=M

@SP

A=M

M=D

@SP

M=M+1

@1

D=M

@1

D=D+A

A=D

D=M

@SP

A=M

M=D

@SP

M=M+1

@SP

AM=M-1

D=M

@SP

AM=M-1

M=M+D

@SP

M=M+1

@SP

AM=M-1

M=!M

@SP

M=M+1

@2

D=M

@0

D=D+A

A=D

D=M

@SP

A=M

M=D

@SP

M=M+1

@SP

AM=M-1

D=M

@SP

AM=M-1

M=M+D

@SP

M=M+1

@2

D=M

@1

D=D+A

A=D

D=M

@SP

A=M

M=D

@SP

M=M+1

@SP

AM=M-1

D=M

@SP

AM=M-1

M=M-D

@SP

M=M+1

@LCL

D=M

@R5

M=D

@5

D=A

@R5

A=M-D

D=M

@R6

M=D

@SP

AM=M-1

D=M

@ARG

A=M

M=D

@ARG

D=M+1

@SP

M=D

@1

D=A

@R5

A=M-D

D=M

@THAT

M=D

@2

D=A

@R5

A=M-D

D=M

@THIS

M=D

@3

D=A

@R5

A=M-D

D=M

@ARG

M=D

@4

D=A

@R5

A=M-D

D=M

@LCL

M=D

@R6

A=M

0;JMP