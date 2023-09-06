Este readme pertenece a la práctica No. 1 del curso de "nand2tetris", la cual nos pide hacer un conjunto amplio de compuertas lógicas a partir de la compuerta lógica "NAND" o "AND NOT". El siguiente texto describe de que
manera cada uno de los participantes del grupo S13T3 realizó la lógica de su compuerta correspondiente:

Andrés Felipe Muñoz Aguilar

    - NOT: Primero tomé la propiedad del algebra booleana que dice: A = A + A; entonces, vamos a ver si con "~A" (A negado) se cumple esta condición: 

      |  A  |  ~A  |   ~A + ~A   |
      |  0  |   1  |  1 + 1 = 1  |
      |  1  |   0  |  0 + 0 = 0  |

    Vemos que, efectivamente, ~A = (~A) + (~A), entonces, a partir de ahí, desarrollé, a través de la Ley de Demorgan una expresión para convertir la compuerta "OR" en una compuerta "Nand". Esta es: (~A) + (~A) 
    -- aplico DeMorgan  -->  ~[ (A) * (A) ] Entonces, vemos que: ~A = ~[ (A) * (A) ] o, lo que es igual, una compuerta and cuyas entradas son la variable A. Y eso fue lo que programé en el hdl de la compuerta "Not"
    - eorij
    - wpeojw
    - spompk
