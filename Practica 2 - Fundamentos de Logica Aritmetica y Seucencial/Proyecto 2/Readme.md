![half-adder](https://github.com/AndresFelipeMunozAguilar/Group_S13T3_Repository/assets/104959341/8489f60a-a26b-4717-a0de-3319fcd61a1f)
>Half-Adder:
<br>
Los bits son ceros y unos, y 1 bit solo puede representar el 0 o el 1. Para representar más numeros necesitamos más bits, de aquí es donde sale carry.<br>
Si sumamos 0+1=1, 1+0=0, 0+0=0 pero 1+1=2 y 2 en binario es 10, por lo que necesitamos otro bit en la salida, el carry, que indique ese 1.
Recordemos que es un Xor: Basicamente, si los bits son distintos retorna 1 y si son iguales 0.<br>
De esta manera cumplimos con tener el primer bit (El bit de la derecha) ya que 0+0=0 1+1=0 1+0=1 0+1=1
Por eso, se hizo esta linea:

```
Xor(a=a, b=b, out=sum);
```

Ahora nos falta el bit de la izquierda que sería el carry.<br>
Para esto necesitamos que en el caso único de que si a y b ambos valgan 1 devuelva un 1, lo cual se hace con un And:

```
And(a=a, b=b, out=carry);
```
>Full-Adder

![fulladder](https://github.com/AndresFelipeMunozAguilar/Group_S13T3_Repository/assets/98712631/d9505dda-87ab-4f73-8a8d-867547450dbc)

Siguiendo la idea anterior, el half-adder es un circuito lógico que puede sumar dos bits de entrada, pero presenta limitaciones cuando se intenta realizar sumas con más de dos bits. Cuando necesitas sumar números binarios de tres o más bits, surge la necesidad de utilizar un circuito más complejo conocido como un Full-Adder.

El Full-Adder es un componente fundamental en la aritmética binaria y se construye combinando varios Half-Adders. A diferencia del Half-Adder que solo puede sumar dos bits a la vez, el Full-Adder es capaz de sumar tres bits: dos bits de entrada (A y B) y un bit de acarreo de la suma anterior (Cin). El resultado de la suma se obtiene en dos partes: la suma (Sumab y sum) y el bit de acarreo de salida (carryab y temp), como se muestra en el codigo siguiente:

```
HalfAdder(a=a, b=b, sum=sumab, carry=carryab);
HalfAdder(a=sumab, b=c, sum=sum, carry=temp);
```

Al final mediante un or tomaremos los Acarreos que se llevan para la salida final

```
Or(a=temp, b=carryab, out=carry);
```

Este resuelve el problema de llevar a cabo sumas con múltiples entradas, permitiendo que se realicen sumas de números binarios de cualquier longitud al conectar varios Full-Adders en cascada. De esta manera, se pueden realizar sumas de números binarios de forma eficiente y precisa en circuitos digitales, lo que es esencial en la arquitectura de computadoras y en otros sistemas electrónicos que manejan operaciones aritméticas binarias complejas.

>Add16:
<br>
El Add16 requiere 2 entradas a y b, las cuales son de 16 bits.<br>
Lo que se va a realizar como su nombre sugiere son 16 sumas.<br>
Estas sumas son encadenadas, o sea que llevan el carry de la suma anterior y al final ignora el carry de la ultima suma.<br>
Por eso la primera linea sería:

```
HalfAdder(a=a[0], b=b[0], sum=out[0], carry=c1);
```
Esta suma nos da el primer valor de  OUT y el carry sería el que se usaría para la siguiente suma usando un FullAdder:

```
FullAdder(a=a[1], b=b[1], c=c1, sum=out[1], carry=c2);
```

Esta linea seguiría hasta a[15] y b[15] devolviendo el ultimo out, out[15]. Pero también nos quedaría el carry=c16 el cual es ignorado.

```
FullAdder(a=a[15], b=b[15], c=c15, sum=out[15], carry=c16);
```

>Inc16

El chip "Inc16" es un circuito integrado diseñado para incrementar en 1 el valor de un número de 16 bits. En otras palabras, toma una entrada de 16 bits (denominada in) y produce una salida de 16 bits (denominada out) que es igual a in + 1.

```
Add16(a=in, b[0]=true, out=out);
```

Esta línea es donde se define cómo se realiza la operación de incremento en el chip "Inc16". Utiliza un chip llamado "Add16" para realizar la adición.
a=in: Significa que la entrada a del chip "Add16" se conecta a la entrada in del chip "Inc16". En otras palabras, la entrada in del chip "Inc16" se pasa como uno de los operandos de la operación de suma en el chip "Add16".b[0]=true: Esto significa que la entrada b del chip "Add16" se establece en 1. En otras palabras, se está sumando 1 a la entrada in.

En resumen, el chip "Inc16" utiliza un chip llamado "Add16" para realizar una suma en la que se agrega 1 a la entrada de 16 bits (in) y luego emite el resultado como la salida de 16 bits (out). Esto logra el efecto de incrementar en 1 el valor de entrada de 16 bits.

>ALU:
<br>

![image](https://github.com/AndresFelipeMunozAguilar/Group_S13T3_Repository/assets/104959341/3361fdde-525e-4fdb-9aba-8bda2e09c9af)

La anterior es la tabla con la que se debe construir el ALU.<br>
Tenemos 6 bits de control:<br>
zx: Si zx=1 --> x=0<br>
nx: Si nx=1 --> x = !x (negar x) <br>
Con zy y ny es exactamente lo mismo. <br>
f: Si f=1 --> realice (x + y) // f=0--> (x and y)<br>
no: Si no=1 --> f = !f (negar f)<br>

Siguiendo el orden de la tabla, lo primero sería hacer que cumpla con la condicion de zx.<br>
Para esto se usa un mux:<br>
![image](https://github.com/AndresFelipeMunozAguilar/Group_S13T3_Repository/assets/104959341/808c82ce-97b4-4165-a40b-fa2844a3f921)
La anterior es la tabla de verdad del Mux.<br>
Si el selector es 0, la salida sera el valor de A. Si el selector es 1, la salida sera el valor de B.
Si el selector fuera zx=1 entonces necesitariamos que B siempre fuera 0 y si zx=0 no importa porque se guarda el valor original de x.
De ahí se llega a esta linea de codigo:

```
Mux16(a=x, b=false, sel=zx, out=zerox);
```
Como a es una entrada de 16 bits se mete en un Mux16, en el que siempre b=false.<br>
Entonces la siguiente columna sería nx que busca negar x, siempre que nx=1. Entonces es similar a la anterior.<br>
El Mux16 anterior retornaba x (despues de aplicar zx), si nx=1, se niega, si nx=0 que se mantenga el valor.<br>
Para solucionar esto tomo x y lo niego esto sera xnegado, y para saber con que valor de x finalmente quedarse usamos un Mux donde el selector sea nx.<br>


```
 Not16(in=zerox, out=notx);
```
De esta manera negando x.<br>
```
 Mux16(a=zerox, b=notx, sel=nx, out=inpx);
```
Donde se escoje que valor dejar finalmente como x.<br>
Esto proceso es exactamente el mismo que con zy y ny.<br>
<br>
Ahora sigue f, que me indica que operación realizar. Si f=1 entonces hacer x+y. Si f=0 entonces hacer xANDy.<br>
¿Esto a que suena? A que según el valor de f debo quedarme con un valor, en pocas palabras, otro Mux con f como selector.<br>
Así que se hace la operación de x+y(add) y la operación xAndy(and) y el selector me indica que valor tomar:

```
 Add16(a=inpx, b=inpy, out=addxy);
 And16(a=inpx, b=inpy, out=andxy);
 Mux16(a=andxy, b=addxy, sel=f, out=fxy);
```

Continuando toca el no, que resumiendo niega f:

```
  Not16(in=fxy, out=notfxy);
```
Pero toca ver el selector de no para ver si nos quedamos con f o nof:

```
  Mux16(a=fxy, b=notfxy, sel=no, out=out, out[0..7] = pzr1, out[8..15] = pzr2, out[15] = ng);
```
¿Porque partimos el vector out en 3 partes? La primera de 0 a 7, la segunda de 8 a 15 y la ultima es el 15vo bit, que representa el signo.<br>
<br>
// if (out == 0) set zr = 1<br>
// if (out < 0) set ng = 1<br><br>
Es debido a lo anterior, que out[15] = ng, directamente da el valor de ng, recordando que 1 indicaria que es negativo y 0 positivo.<br>
Ahora unicamente falta zr. Para que out==0 todos sus bits deben ser 0, esto es facil ya que un Or cumple esa función. Por eso se usa el Or8Way que evalua una entrada de 8 bits comparando el primer bit con el segundo y luego el resultado de esa operación con el tercer bit y así con los 8 bits. Esto devolvera si los 8 bits contienen algún 1 o no, dando 0 si  esos 8 bits son 0. Si tenemos 16 bits, hacemos este proceso 2 veces y luego un Or entre ellas 2, de tal manera que el ultimo Or compara los primeros 7 bits con los otros 8.<br>
```
   Or8Way(in=pzr1, out=zr1);
   Or8Way(in=pzr2, out=zr2);
   Or(a=zr1, b=zr2, out=notzr);
   Not(in=notzr, out=zr);
```




