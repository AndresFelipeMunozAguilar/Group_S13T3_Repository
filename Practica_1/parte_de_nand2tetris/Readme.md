Este readme pertenece a la práctica No. 1 del curso de "nand2tetris", la cual nos pide hacer un conjunto amplio de compuertas lógicas a partir de la compuerta lógica "NAND" o "AND NOT". El siguiente texto describe de que
manera cada uno de los participantes del grupo S13T3 realizó la lógica de su compuerta correspondiente:

Andrés Felipe Muñoz Aguilar

- NOT: Primero tomé la propiedad del algebra booleana que dice: A = A + A; entonces, vamos a ver si con "~A" (A negado) se cumple esta condición: 

|  $A$  |  $\neg A$  |   $\neg A + \neg A$   |
| :-:| :-: | :-:|
|  0  |   1  |  1 + 1 = 1  |
|  1  |   0  |  0 + 0 = 0  |

Vemos que, efectivamente, $\neg A = (\neg A) + (\neg A)$, entonces, a partir de ahí, desarrollé, a través de la Ley de Demorgan una expresión para convertir la compuerta "OR" en una compuerta "Nand". Esta es: (~A) + (~A) 
-- aplico DeMorgan  -->  $\neg [ (A) * (A) ]$ Entonces, vemos que: $\neg A = \neg [ (A) * (A) ]$ o, lo que es igual, una compuerta and cuyas entradas son la variable A. Y eso fue lo que programé en el hdl de la compuerta "Not"

- Compuerta Or: Empecé con la expresión $"A + B"$, tras esto, le apliqué la Ley de DeMorgan, resultando: $\neg [ (\neg A) * (\neg B) ]$ y, como ya había hecho la función "Not" con cumpuertas "Nand" anteriormente, aproveché ese código
y lo usé en esta compuerta. Finalmente, lo que escribí en el hdl de la compuerta or fue una compuerta Nand cuyas entradas son, respectivamente: Not(a) y Not(b) 

- Compuerta And: Como ya tengo el progrmado el funcionamiento de la compuerta "Or" y la compuerta "Not" en función de compuertas "Nand", ahora, puedo usar esas compuertas para programar la lógica de la compuerta "And".
Para esto empecé con la expresión "A * B" y le apliqué DeMorgan, resultando: $" \neg [ (\neg A) + (\neg B) ]"$ y esta última expresión de acá fue la que programé en "And.hdl"

- Compuerta Xor: Esta compuerta fue fácil de programar, pues, todo lo que tuve que buscar fue la definición de la compuerta Xor a través de compuertas básicas. Esta se define así: $A ⊕ B$ = $[ (A) * (\neg B) ] + [ (\neg A) * (B) ]$
entonces, esto último fue lo que programé en el hdl de la compuerta Xor. Entonces, negué la entrada "A" y la entrada "B"; luego, uní $"A" y "\neg B"$ a través de una compuerta And (Que ya había hecho, a base de compuertas
Nand); hice lo mismo con las variables $"\neg A" , "B"$ y, finalmente, uní ambas compuertas anteriores a través de la compuerta Or.

![hola]("./../images/muximg.png")
