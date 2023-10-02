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

'multiplicación a * b  -> entonces, en el inicio, sum = 0; tras esto, el bucle analiza el multiplicando "b", si es igual a 0, entonces, el bucle no se ejecuta, de lo contrario, hace una sumatoria con la variable sum donde se almacena
el siguiente valor: sum = a (1 vez) + a (2 veces) + a (3 veces) + ... + a (b veces)'
