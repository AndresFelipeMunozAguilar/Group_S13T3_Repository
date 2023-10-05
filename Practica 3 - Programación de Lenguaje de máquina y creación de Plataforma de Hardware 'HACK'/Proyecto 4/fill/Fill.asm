// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(INIT)  	//inicializamos i - índice que se ejecutara en los píxeles de la pantalla
	@8192	 // 32 * 256 numero de lineas de los pixeles de 16 bits para cubrir toda la pantalla 
	@i       //inicializamos el variable indice a 8192, esta es la direccion restante que queda para colorear la pantalla 
	M=D

(LOOP)               // avanza el índice hacia atrás.
	@i
	M=M-1
	D=M
	@INIT
	D;JLT               // si el índice es menor que 0, ir a INICIALIZADOR DE ÍNDICE para reiniciarlo
	@KBD	            // carga la dirección del teclado
	D=M
	@WHITE		        // si (Memoria en la dirección del teclado == 0), lo que significa que no se ha presionado ninguna tecla, ve a WHITE; de lo contrario, ve a BLACK
	D;JEQ
	@BLACK
	0;JMP

(BLACK)             
	@SCREEN            // carga la primera dirección de la pantalla - 16384 (0x4000)
	D=A
	@i
	A=D+M              // agrega el índice actual a la primera dirección de la pantalla para colorear el conjunto actual de 16 píxeles
	M=-1               // establece el valor en la dirección actual en -1, de modo que toda la palabra sea 1...1 (16 bits de longitud), lo que significa que los 16 píxeles estarán "pintados" de negro.
	@LOOP              // salta de nuevo al indexador para avanzar el índice hacia atrás.
	0;JMP

(WHITE)
	@SCREEN            // carga la primera dirección de la pantalla - 16384 (0x4000)
	D=A                
	@i        
	A=D+M              // agrega el índice actual a la primera dirección de la pantalla para colorear el conjunto actual de 16 píxeles
	M=0                // establece el valor en la dirección actual en 0, de modo que toda la palabra sea 0....0 (16 bits de longitud), lo que significa que los 16 píxeles estarán "pintados" de blanco.
	@LOOP           // salta de nuevo al indexador para avanzar el índice hacia atrás.
	0;JMP
