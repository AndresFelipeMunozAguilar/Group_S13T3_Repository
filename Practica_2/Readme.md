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

