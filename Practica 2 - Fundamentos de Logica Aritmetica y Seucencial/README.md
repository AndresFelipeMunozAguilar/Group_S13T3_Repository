**En este apartado se responde a las preguntas planteadas en el enunciado de este ejercicio que se encuentra en la página "sc3.uis.edu.co". Para la explicación de como se realizó cada uno de los respectivos proyectos de "nand2tetris", ingrese a las carpetas de cada uno de los respectivos proyectos**

# INTRODUCCIÓN
En estos dos proyectos del curso, estamos inmersos en el emocionante mundo de la construcción de componentes fundamentales para el funcionamiento de una computadora Hack desde cero. En el segundo proyecto de nand2tetris, nos sumergimos en la arquitectura de la CPU, donde el corazón de todo el sistema es la Unidad Aritmético-Lógica (ALU). Aquí, construimos una serie de chips esenciales, desde sumadores básicos hasta la propia ALU del computador Hack. Cada chip es una pieza clave en la creación de una CPU funcional. Por otro lado, en el tercer proyecto de nand2tetris, exploramos la memoria principal de la computadora, la RAM. Aprendemos cómo usar la lógica de compuertas para almacenar información persistentemente y cómo direccionar registros de memoria para acceder a datos. A medida que avanzamos, construimos una unidad de Memoria de Acceso Aleatorio (RAM) que es esencial para el funcionamiento de la computadora. Ambos proyectos son un viaje emocionante hacia el entendimiento de los componentes vitales que forman la base de la computación moderna.

# ¿Cuál es el objetivo de cada uno de esos proyectos con sus palabras y describa que debe hacer para desarrollarlo?
En este caso, hay varios proyectos. El objetivo del **Proyecto 2** es usar las compuertas creadas en el proyecto anterior para crear, de manera que la complejidad sea progresiva, una conjunto de chips que permitan llegar a la construcción de una unidad aritmético lógica completa. Estos son: HalfAdder, FullAdder, Add16, Inc16, ALU (Sin manejo de "Status outputs") y ALU (Completa). Para esto se debe estudiar la lógica secuencial que usa el ALU para funcionar, entender a completitud su funcionamiento y traducirlo a compuertas básicas y, finalmente, estudiar la teoría presentada en el libro. Esto último para potenciar los procesos descritos anteriormente.

En el caso del tercer proyecto, el objetivo es usar los chips creados en el capítulo 3 del libro guía del curso, además de el chip DFF que se entrega como chip base, para crear una serie de chips que culminan con la creación de 2 chips fundamentales: Una ram de 16384 registros y un PC (Program Counter). Estos chips son: DFF, Bit, Register, RAM8, RAM64, RAM512, RAM4K, RAM16K y PC. Para ello se debe conocer el funcionamiento del DFF, analizar el funcionamiento del registro y del registro de 16 bits para, posteriormente, extender esta lógica al funcionamiento de la memoria RAM de 8 registros y, así, sucesivamente, hasta llegar a la memoria de 16384 registros y, finalmente, estudiar la teoría presentada en el libro. Esto último para potenciar los procesos descritos anteriormente.

# Explique las principales diferencias entre la lógica aritmética y la lógica secuencial
Las principales diferencias entre la lógica aritmética y la lógica secuencial son:

| Apartado          | Lógica Aritmética     | Lógica Secuencial     |
|-------------------------|-----------------------|-----------------------|
| Tipo de Operaciones     | Realiza operaciones aritméticas y lógicas  | Almacena y controla secuencias de datos |
| Ejemplos de compuertas  | Compuertas AND, OR, XOR, NOT | Flip-flops, registros, contadores|
| Propósito               | Realiza cálculos y procesamientos de datos numéricos | Almacena información y controla el dlujo de datos a lo largo del tiempo  |
| Estado Interno          | No mantiene un estado interno persistente | Mantiene un estado interno persistente    |
| Salida                  | Depende sólo de las entradas actuales  | Depende de las entradas actuales y las salidas pasadas     |
| Ejemplos de Aplicación   | Sumadores, comparadores, operaciones lógicas, multiplicadores  | Registros de desplazamiento, contadores, máquinas de estados, memorias RAM |
