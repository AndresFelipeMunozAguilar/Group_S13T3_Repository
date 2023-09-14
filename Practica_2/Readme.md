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
