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

```multiplicación a * b 
Al inicio, sum = 0 
Tras esto, el bucle analiza el multiplicando "b", si es igual a 0, entonces, el bucle no se ejecuta, 
De lo contrario, hace una sumatoria con la variable sum donde se almacena el siguiente valor: 

sum = a + a + a + a + + a + a + ... + a 
     |<----------- b veces ---------->|```


Pero, este código debía adaptarse a como funciona el lenguaje de máquina, para ello se hicieron las siguientes adaptaciones:

- Primero, en lugar de crear nuevas variables, simplemente se necesitaría revisar el valor que se encuentra dentro de los registros R0 y R1
- Segundo, es OBLIGATORIO colocar dentro del registro R2 el valor igual a cero, pues, de otra forma, la sumatoria se vería alterada y daría un resultado incorrecto como, por ejemplo: R2 = 4 + R1 + R1 + R1 + ... + R1. Lo cual da un valor incorrecto
- Tercero, se deben inicializar estas variables:
