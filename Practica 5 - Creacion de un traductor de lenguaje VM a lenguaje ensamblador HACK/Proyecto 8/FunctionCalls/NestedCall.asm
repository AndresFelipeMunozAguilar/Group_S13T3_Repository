@256

D=A

@SP

M=D

@RET_ADDRESS.1

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

@0

D=D-A

@5

D=D-A

@ARG

M=D

@SP

D=M

@LCL

M=D

@Sys.init

0;JMP

(RET_ADDRESS.1)

(Sys.init)

@0

D=A

(LOOP.ADD_LOCALS.1)

@NO_LOCALS.1

D;JEQ

@SP

A=M

M=0

@SP

M=M+1

D=D-1

@LOOP.ADD_LOCALS.1

D;JNE

(NO_LOCALS.1)

@4000

D=A

@SP

A=M

M=D

@SP

M=M+1

@SP

AM=M-1

D=M

@R13

M=D

@3

D=A

@0

D=D+A

@R14

M=D

@R13

D=M

@R14

A=M

M=D

@5000

D=A

@SP

A=M

M=D

@SP

M=M+1

@SP

AM=M-1

D=M

@R13

M=D

@3

D=A

@1

D=D+A

@R14

M=D

@R13

D=M

@R14

A=M

M=D

@RET_ADDRESS.2

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

@0

D=D-A

@5

D=D-A

@ARG

M=D

@SP

D=M

@LCL

M=D

@Sys.main

0;JMP

(RET_ADDRESS.2)

@SP

AM=M-1

D=M

@R13

M=D

@5

D=A

@1

D=D+A

@R14

M=D

@R13

D=M

@R14

A=M

M=D

(LOOP)

@LOOP

0;JMP

(Sys.main)

@5

D=A

(LOOP.ADD_LOCALS.2)

@NO_LOCALS.2

D;JEQ

@SP

A=M

M=0

@SP

M=M+1

D=D-1

@LOOP.ADD_LOCALS.2

D;JNE

(NO_LOCALS.2)

@4001

D=A

@SP

A=M

M=D

@SP

M=M+1

@SP

AM=M-1

D=M

@R13

M=D

@3

D=A

@0

D=D+A

@R14

M=D

@R13

D=M

@R14

A=M

M=D

@5001

D=A

@SP

A=M

M=D

@SP

M=M+1

@SP

AM=M-1

D=M

@R13

M=D

@3

D=A

@1

D=D+A

@R14

M=D

@R13

D=M

@R14

A=M

M=D

@200

D=A

@SP

A=M

M=D

@SP

M=M+1

@SP

AM=M-1

D=M

@R13

M=D

@1

D=M

@1

D=D+A

@R14

M=D

@R13

D=M

@R14

A=M

M=D

@40

D=A

@SP

A=M

M=D

@SP

M=M+1

@SP

AM=M-1

D=M

@R13

M=D

@1

D=M

@2

D=D+A

@R14

M=D

@R13

D=M

@R14

A=M

M=D

@6

D=A

@SP

A=M

M=D

@SP

M=M+1

@SP

AM=M-1

D=M

@R13

M=D

@1

D=M

@3

D=D+A

@R14

M=D

@R13

D=M

@R14

A=M

M=D

@123

D=A

@SP

A=M

M=D

@SP

M=M+1

@RET_ADDRESS.3

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

@1

D=D-A

@5

D=D-A

@ARG

M=D

@SP

D=M

@LCL

M=D

@Sys.add12

0;JMP

(RET_ADDRESS.3)

@SP

AM=M-1

D=M

@R13

M=D

@5

D=A

@0

D=D+A

@R14

M=D

@R13

D=M

@R14

A=M

M=D

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

@1

D=M

@2

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

@3

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

@4

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

D=M

@SP

AM=M-1

M=M+D

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

D=M

@SP

AM=M-1

M=M+D

@SP

M=M+1

@LCL

D=M

@R13

M=D

@5

D=A

@R13

A=M-D

D=M

@R14

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

@R13

A=M-D

D=M

@THAT

M=D

@2

D=A

@R13

A=M-D

D=M

@THIS

M=D

@3

D=A

@R13

A=M-D

D=M

@ARG

M=D

@4

D=A

@R13

A=M-D

D=M

@LCL

M=D

@R14

A=M

0;JMP

(Sys.add12)

@0

D=A

(LOOP.ADD_LOCALS.3)

@NO_LOCALS.3

D;JEQ

@SP

A=M

M=0

@SP

M=M+1

D=D-1

@LOOP.ADD_LOCALS.3

D;JNE

(NO_LOCALS.3)

@4002

D=A

@SP

A=M

M=D

@SP

M=M+1

@SP

AM=M-1

D=M

@R13

M=D

@3

D=A

@0

D=D+A

@R14

M=D

@R13

D=M

@R14

A=M

M=D

@5002

D=A

@SP

A=M

M=D

@SP

M=M+1

@SP

AM=M-1

D=M

@R13

M=D

@3

D=A

@1

D=D+A

@R14

M=D

@R13

D=M

@R14

A=M

M=D

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

@12

D=A

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

@LCL

D=M

@R13

M=D

@5

D=A

@R13

A=M-D

D=M

@R14

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

@R13

A=M-D

D=M

@THAT

M=D

@2

D=A

@R13

A=M-D

D=M

@THIS

M=D

@3

D=A

@R13

A=M-D

D=M

@ARG

M=D

@4

D=A

@R13

A=M-D

D=M

@LCL

M=D

@R14

A=M

0;JMP