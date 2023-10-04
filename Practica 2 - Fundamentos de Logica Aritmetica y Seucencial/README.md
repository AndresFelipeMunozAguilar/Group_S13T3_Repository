**En este apartado se responde a las preguntas planteadas en el enunciado de este ejercicio que se encuentra en la página "sc3.uis.edu.co". Para la explicación de como se realizó cada uno de los respectivos proyectos de "nand2tetris", ingrese a las carpetas de cada uno de los respectivos proyectos**

# ¿Cuál es el objetivo de cada uno de esos proyectos con sus palabras y describa que debe hacer para desarrollarlo?
En este caso, hay varios proyectos. El objetivo del **Proyecto 2** es usar las compuertas creadas en el proyecto anterior para crear, de manera que la complejidad sea progresiva, una conjunto de chips que permitan llegar a la construcción de una unidad aritmético lógica completa. Estos son: HalfAdder, FullAdder, Add16, Inc16, ALU (Sin manejo de "Status outputs") y ALU (Completa). Para esto se debe estudiar la lógica secuencial que usa el ALU para funcionar, entender a completitud su funcionamiento y traducirlo a compuertas básicas y, finalmente, estudiar la teoría presentada en el libro. Esto último para potenciar los procesos descritos anteriormente.

En el caso del tercer proyecto, el objetivo es usar los chips creados en el capítulo 3 del libro guía del curso, además de el chip DFF que se entrega como chip base, para crear una serie de chips que culminan con la creación de 2 chips fundamentales: Una ram de 16384 registros y un PC (Program Counter). Estos chips son: DFF, Bit, Register, RAM8, RAM64, RAM512, RAM4K, RAM16K y PC. Para ello se debe conocer el funcionamiento del DFF, analizar el funcionamiento del registro y del registro de 16 bits para, posteriormente, extender esta lógica al funcionamiento de la memoria RAM de 8 registros y, así, sucesivamente, hasta llegar a la memoria de 16384 registros y, finalmente, estudiar la teoría presentada en el libro. Esto último para potenciar los procesos descritos anteriormente.

# Explique las principales diferencias entre la lógica aritmética y la lógica secuencial

| Característica          | Lógica Aritmética     | Lógica Secuencial     |
|-------------------------|-----------------------|-----------------------|
| Tipo de Operaciones     | Realiza operaciones   | Almacena y controla   |
|                         | aritméticas y lógicas | secuencias de datos   |
| Ejemplos de compuertas  | Compuertas AND, OR,   | Flip-flops, registros,|
|                         | XOR, NOT              | contadores            |
| Propósito               | Realiza cálculos      | Almacena información  |
|                         | y procesamiento de   | y controla el flujo  |
|                         | datos numéricos       | de datos en el tiempo|
| Estado Interno          | No mantiene un estado | Mantiene un estado    |
|                         | interno persistente   | interno persistente   |
| Salida                  | Dependiente solo de   | Dependiente de la     |
|                         | las entradas actuales| historia de entradas  |
| Ejemplo de Aplicación   | Sumadores,            | Registros de desplaz. |
|                         | comparadores,         | Contadores,           |
|                         | operaciones lógicas,  | Máquinas de estados,  |
|                         | multiplicadores       | Memorias RAM          |