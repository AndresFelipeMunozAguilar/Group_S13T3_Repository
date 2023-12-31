# MULT
En este caso, se partió de un código en el lenguaje C++:
```C++

int main()
{

    int a = 3; //multiplicando 1
    int b = 2; //multiplicando 2
    int sum = ; //sumatoria inicializada en 0

    for( int i = 0; i < b; i++ )
    {

        sum = sum + a;

    }

    cout << sum << endl;

}
```
Este código se basaba en sumar la variable "a" (Que, en el contexto del ejercicio sería el valor dentro del registro R0) tantas veces como "b" (O, en el contexto del ejercicio sería el valor dentro del registro R1) lo indicara. Así:

```
multiplicación a * b 
Al inicio, sum = 0 
Tras esto, el bucle analiza el multiplicando "b", si es igual a 0, entonces, el bucle no se ejecuta, 
De lo contrario, hace una sumatoria con la variable sum donde se almacena el siguiente valor: 

sum = a + a + a + a + + a + a + ... + a 
     |<----------- b veces ---------->|
```


Pero, este código debía adaptarse a como funciona el lenguaje de máquina, para ello se hicieron las siguientes adaptaciones:

- Primero, en lugar de crear nuevas variables, simplemente se necesitaría revisar el valor que se encuentra dentro de los registros R0 y R1
- Segundo, es OBLIGATORIO colocar dentro del registro R2 el valor igual a cero, pues, de otra forma, la sumatoria se vería alterada y daría un resultado incorrecto como, por ejemplo: R2 = 4 + R1 + R1 + R1 + ... + R1. Lo cual da un valor incorrecto. Csbe aclarar que, en este caso, R2 cumplirá la misma función de sum
- Tercero, se deben inicializar esta variable: i = 1, pues, i será la variable auxiliar que controlará la lógica del bucle. Esto se puede realizar con el siguiente código:

```codigo de maquina

    @i
    M=1 // i = 1
    @R2
    M=0 // R2 = 0

```

La lógica del bucle es la siguiente:
Cuando R1 tenga valor igual a 0, quiere decir que se multiplicará por 0 el multiplicando 1, entonces, como iniciamos R2 en un valor igual a 0, debemos saltarnos el bucle para que no performe ninguna operación en este caso. Para ello, necesitamos que cuadno R1 sea igual a 0, el condicional sea mayor que 0, para ello iniciamos "i" igual a 1. Despues, cuando R1 sea mayorq que 0, debemos ejecutar el bucle tantas veces como R1 indique, para lo cual usaremos la fórmula: 

```pseudocodigo

Lim_superior - Lim_inferior + 1 = R1
Lim_superior - 1 + 1 = R1
Lim_superior + 0 = R1
Lim_superior = R1

```

Por tanto, el condicional del bucle debe ser: `( i - R1 )`
Así, cuando R1 sea igual a 0, el condicional será `( 1 - 0 )` y no se ejecutará el bucle; pero, cuando sea R1 sea mayor que 0, el condicional hará la siugiente ejecución:

```pseudocodigo

( 1 - 4 ) (Se ejecuta 1 vez)
( 2 - 4 ) (Se ejecuta 2 veces)
( 3 - 4 ) (Se ejecuta 3 veces)
( 4 - 4 ) (Se ejecuta 4 veces)
( 5 - 4 ) (Sale del bucle)

Esto se consigue con el siguiente código de máquina: 

(LOOP)
    @i
    D=M 
    @R1
    A=M 
    D=D-A  
    // D = i - R1
    @END  
    // Si( i - r1 ) > 0 ; then, go to exit
    D;JGT

```

Finalmente, sólo se debe hacer que R2 sea igual a: R0 + R0 + R0 + ... + R0, R1 veces y, además, aumentar en 1 unidad el valor de "i" en cada ejecución. Esto se realiza fácilmente con el siguiente código puesto dentro del bucle:

```codigo de maquina

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
    // Aquí se dejuelve al inicio del loop si no se cumple la condición (i - R1)

```

Finalmente, hacemos el código del END, para cuando se salga del bucle:

```codigo de maquina

(END)
    @END
    0;JMP //CICLO INFINITO DE CIERRE

```

# FILL

La que hace este codigo es, en el emulador, mostrar un pantalla y si se mantiene presionada cualquier tecla de nuestro teclado, se vera una pantalla negra, de lo contrario se vera blanca.
```
(INIT)  	//inicializamos i - índice que se ejecutara en los píxeles de la pantalla
	@8192	 // 32 * 256 numero de lineas de los pixeles de 16 bits para cubrir toda la pantalla 
	@i       //inicializamos el variable indice a 8192, esta es la direccion restante que queda para colorear la pantalla 
	M=D
```
Primero creamos una variable y la inicializamos a 81292 que es igual  a 32*256, esto para que cubra toda la pantalla.

```
  (LOOP)               
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
```

De esta forma le asignamos un color a cuando la memoria de la direccion del teclado sea 0 la pantalla es blanca de lo contrario es negra

```
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
```

Con esto cargamos la primera direccion de la pantalla le damos el indice actual para colorear y pintar cada pixel de negro. Lo mismo haremos cuando la pantalla tenga que ser blanca

**Fuentes:**
- https://www.nand2tetris.org/project05
- https://www.nand2tetris.org/project04
