![image](https://github.com/AndresFelipeMunozAguilar/Group_S13T3_Repository/assets/104959341/fc8794e5-980a-4d2d-b07d-0fbd5f382bb0)
>CPU<br>
La imagen fue extraída de la lectura del capitulo 5 del pdf de NAND2TETRIS. Esta imagen sirvio tanto para un mejor entendimiento del funcionamiento interno y como guía para la construcción de la CPU. 
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
> MEMORY<br>

![memory](https://github.com/AndresFelipeMunozAguilar/Group_S13T3_Repository/assets/98712631/b4c3585a-fc8e-435a-846d-6c5538575427)

Se inicia la implementacion de la memoria con la siguiente linea de codigo

```
    Memory(in=outM, load=writeM, address=addressM, out=mData);

```
