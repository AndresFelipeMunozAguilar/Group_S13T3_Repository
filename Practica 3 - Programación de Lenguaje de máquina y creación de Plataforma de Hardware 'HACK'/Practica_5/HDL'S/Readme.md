
> MEMORY<br>

![memory](https://github.com/AndresFelipeMunozAguilar/Group_S13T3_Repository/assets/98712631/501a4a9c-bc0c-4d04-a1eb-99279b95749e)

Se inicia la implementacion de la memoria con la siguiente linea de codigo

```
DMux(in=load, sel=address[14], a=loadR, b=loadS);
```

Se toma un demultiplexor (DMux). El cual Toma una señal de entrada load y una señal de selección address[14] y dirige la señal de entrada a uno de los dos caminos, loadR esta para cargar los datos en la RAM16K o loadS para cargar datos en la Screen.

```
RAM16K(in=in, load=loadR, address=address[0..13], out=ROut)
```

Aquí se configura el acceso a una memoria RAM de 16K palabras. La señal de entrada se proporciona como in, la señal de carga se controla mediante loadR recibida del Demux anterios, y la dirección de memoria se determina a través de address[0..13]. Los datos leídos se envian a la salida como ROut.

```
Screen(in=in, load=loadS, address=address[0..12], out=SOut)
Keyboard(out=KOut);
```

El acceso a una pantalla de visualización lo indica esta linea de codigo. 
La señal de entrada se proporciona como in, la señal de carga se controla mediante loadS de la misma forma esta es intervenida por el Dmux inicial
y la dirección de la pantalla se determina a través de address[0..12]. Los datos de la pantalla se extraen como SOut. La linea de Keyboard toma las señales que este y las guarda en Kout.

```
Mux4Way16(a=ROut, b=ROut, c=SOut, d=KOut, sel=address[13..14], out=out);
```

Para finalizar el proceso se realiza una operación de multiplexación de 4 vías. Se selecciona una de las cuatro señales de entrada guardadas anteriormente
(ROut, ROut, SOut o KOut) dependiendo de la combinacion de bits de address[13..14]. El resultado de esta multiplexación se proporciona como out.



![image](https://github.com/AndresFelipeMunozAguilar/Group_S13T3_Repository/assets/104959341/fc8794e5-980a-4d2d-b07d-0fbd5f382bb0)
>CPU
<br>

La imagen fue extraída de la lectura del capitulo 5 del pdf de NAND2TETRIS. Esta imagen sirvio tanto para un mejor entendimiento del funcionamiento interno y como guía para la construcción de la CPU.

De entrada, la instrucción va junto al ALUOutput a un Mux16 donde el selector tambien sera la instruction. A la salida se le nombro InputForA.

```
 Mux16(a=instruction, b=ALUOutput, sel=instruction[15], out=InputForA);
```

Según la imagen lo siguiente sería el ARegister, pero el ARegister  necesita un load, este load es el resultado de hacer Mux entre 1 (true) y la instruction tomando también instruction como selector. A la salida le llamamos loadA.

```
 Mux(a=true, b=instruction[5], sel=instruction[15], out=loadA);
```
Ahora simplemente sigue el RegisterA que me devuelve el AddressM. 

```
 ARegister(in=InputForA, load=loadA, out=RegisterA, out[0..14]=addressM);
```

Continuando ahora sería realizar un Mux16 entre el inM[16] y RegisterA tomando instruction de nuevo como el selector.

```
 Mux16(a=RegisterA, b=inM, sel=instruction[12], out=SelectAorM);
```

Según el diagrama sigue ALU sin embargo antes del ALU toca revisar el DRegister, así que el proceso es el mismo que con ARegister, lo que cambia es que ahora la entrada sera la ALUOutput. Antes de este va un Mux que se encarga de determinar si DRegister debe cargarse, solo que a diferencia del ARegister aquí usamos false.

```
 Mux(a=false, b=instruction[4], sel=instruction[15], out=loadD);
 DRegister(in=ALUOutput, load=loadD, out=RegisterD);
```

Ahora

![image](https://github.com/AndresFelipeMunozAguilar/Group_S13T3_Repository/assets/104959341/26e944b7-0b6e-44fb-bdab-e737d9ea6aec)

>COMPUTER<br>

El computer como se ve en el diagrama es la pieza que encapsula la ROM32K, la CPU y la memoria, juntandolas para que trabajen en conjunto como una unidad.
El ROM32K(Read-Only-Memory), que como su nombre indica cumple la función de leer la memoria para definir que instrucción es la siguiente. Ya viene hecho en NAND2TETRIS.
 
El ROM32K necesita saber con quien comunicarse(address) y como ya se dijo anteriormente, la instrucción que debe seguir, de ahí se genero está linea:

```
    ROM32K(address=pc, out=instruction);
```
Ahora tenemos una instrucción que debemos seguir de la cual se encargara nuestra CPU.
La instrucción debe ser la instrucción del out del ROM32K, necesita la señal del reset, una entrada y salida de memoria, la dirección de memoria donde se leen y escriben los datos, una señal que le indique si se deben escribir datos en memoria.

```
    CPU(inM=mData, instruction=instruction, reset=reset, outM=outM, writeM=writeM, addressM=addressM, pc=pc);
```

Finalmente ahora tenemos que trabajar con la parte de la memoria, para esto llamamos a Memory y se le pasa como entrada el outM que son los datos leídos de la memoria, el load  para indicar si debe cargar datos en la memoria, la address definida en CPU y el out que es la dirección de memoria del dato.

```
    Memory(in=outM, load=writeM, address=addressM, out=mData);

```
