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