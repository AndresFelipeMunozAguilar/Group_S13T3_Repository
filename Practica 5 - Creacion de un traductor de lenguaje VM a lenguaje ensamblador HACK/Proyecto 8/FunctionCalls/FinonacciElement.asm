@256

D=A

@SP

M=D

@RETURN_LABEL0

D=A

@SP

A=M

M=D

@SP

M=M+1

@LCL

D=M

@SP

A=M

M=D

@SP

M=M+1

@ARG

D=M

@SP

A=M

M=D

@SP

M=M+1

@THIS

D=M

@SP

A=M

M=D

@SP

M=M+1

@THAT

D=M

@SP

A=M

M=D

@SP

M=M+1

@SP

D=M

@5

D=D-A

@0

D=D-A

@ARG

M=D

@SP

D=M

@LCL

M=D

@Sys.init

0;JMP

(RETURN_LABEL0)

(Main.fibonacci)

@ARG

D=M

@0

A=D+A

D=M

@SP

A=M

M=D

@SP

M=M+1

@2

D=A

@SP

A=M

M=D

@SP

M=M+1

@SP

AM=M-1

D=M

A=A-1

D=M-D

@FALSE0

D;JGE

@SP

A=M-1

M=-1

@CONTINUE0

0;JMP

(FALSE0)

@SP

A=M-1

M=0

(CONTINUE0)

@SP

AM=M-1

D=M

A=A-1

@IF_TRUE

D;JNE

@IF_FALSE

0;JMP

(IF_TRUE)

@ARG

D=M

@0

A=D+A

D=M

@SP

A=M

M=D

@SP

M=M+1

@LCL

D=M

@FRAME

M=D

@5

A=D-A

D=M

@RET

M=D

@ARG

D=M

@0

D=D+A

@R13

M=D

@SP

AM=M-1

D=M

@R13

A=M

M=D

@ARG

D=M

@SP

M=D+1

@FRAME

D=M-1

AM=D

D=M

@THAT

M=D

@FRAME

D=M-1

AM=D

D=M

@THIS

M=D

@FRAME

D=M-1

AM=D

D=M

@ARG

M=D

@FRAME

D=M-1

AM=D

D=M

@LCL

M=D

@RET

A=M

0;JMP

(IF_FALSE)

@ARG

D=M

@0

A=D+A

D=M

@SP

A=M

M=D

@SP

M=M+1

@2

D=A

@SP

A=M

M=D

@SP

M=M+1

@SP

AM=M-1

D=M

A=A-1

M=M-D

@RETURN_LABEL1

D=A

@SP

A=M

M=D

@SP

M=M+1

@LCL

D=M

@SP

A=M

M=D

@SP

M=M+1

@ARG

D=M

@SP

A=M

M=D

@SP

M=M+1

@THIS

D=M

@SP

A=M

M=D

@SP

M=M+1

@THAT

D=M

@SP

A=M

M=D

@SP

M=M+1

@SP

D=M

@5

D=D-A

@1

D=D-A

@ARG

M=D

@SP

D=M

@LCL

M=D

@Main.fibonacci

0;JMP

(RETURN_LABEL1)

@ARG

D=M

@0

A=D+A

D=M

@SP

A=M

M=D

@SP

M=M+1

@1

D=A

@SP

A=M

M=D

@SP

M=M+1

@SP

AM=M-1

D=M

A=A-1

M=M-D

@RETURN_LABEL2

D=A

@SP

A=M

M=D

@SP

M=M+1

@LCL

D=M

@SP

A=M

M=D

@SP

M=M+1

@ARG

D=M

@SP

A=M

M=D

@SP

M=M+1

@THIS

D=M

@SP

A=M

M=D

@SP

M=M+1

@THAT

D=M

@SP

A=M

M=D

@SP

M=M+1

@SP

D=M

@5

D=D-A

@1

D=D-A

@ARG

M=D

@SP

D=M

@LCL

M=D

@Main.fibonacci

0;JMP

(RETURN_LABEL2)

@SP

AM=M-1

D=M

A=A-1

M=M+D

@LCL

D=M

@FRAME

M=D

@5

A=D-A

D=M

@RET

M=D

@ARG

D=M

@0

D=D+A

@R13

M=D

@SP

AM=M-1

D=M

@R13

A=M

M=D

@ARG

D=M

@SP

M=D+1

@FRAME

D=M-1

AM=D

D=M

@THAT

M=D

@FRAME

D=M-1

AM=D

D=M

@THIS

M=D

@FRAME

D=M-1

AM=D

D=M

@ARG

M=D

@FRAME

D=M-1

AM=D

D=M

@LCL

M=D

@RET

A=M

0;JMP

(Sys.init)

@4

D=A

@SP

A=M

M=D

@SP

M=M+1

@RETURN_LABEL3

D=A

@SP

A=M

M=D

@SP

M=M+1

@LCL

D=M

@SP

A=M

M=D

@SP

M=M+1

@ARG

D=M

@SP

A=M

M=D

@SP

M=M+1

@THIS

D=M

@SP

A=M

M=D

@SP

M=M+1

@THAT

D=M

@SP

A=M

M=D

@SP

M=M+1

@SP

D=M

@5

D=D-A

@1

D=D-A

@ARG

M=D

@SP

D=M

@LCL

M=D

@Main.fibonacci

0;JMP

(RETURN_LABEL3)

(WHILE)

@WHILE

0;JMP