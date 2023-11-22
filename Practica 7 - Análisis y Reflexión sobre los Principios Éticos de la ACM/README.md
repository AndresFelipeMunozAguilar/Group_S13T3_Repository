**En este apartado se responde a las preguntas planteadas en el enunciado de este ejercicio que se encuentra en la página "sc3.uis.edu.co". 
Para la explicación de como se realizó cada uno de los respectivos proyectos de "nand2tetris", ingrese a las carpetas de cada uno de los respectivos proyectos**

# INTRODUCCIÓN
En este proyecto que introduce el lenguaje de programación Jack, se abordó la tarea de familiarizarse con la sintaxis similar a Java (Y orientada a objetos) que posee este lenguaje de programación de alto nivel llamado "Jack". El objetivo principal de este proyecto, antes de adentrarse en la construcción de un compilador Jack en proyectos subsiguientes, es la adquisición de conocimiento y habilidad que permita una mejor manipulación del lenguaje. Además, se ofreció la oportunidad de experimentar la emoción de desarrollar un pequeño juego o aplicación interactiva en este lenguaje de programación.

En cumplimiento con dicho propósito, se emprendió la tarea de adoptar o concebir una idea de aplicación, orientada preferiblemente a un juego simple. Entre las opciones sugeridas se encontraban clásicos como Tetris, Snake, Hangman, Space Invaders, Sokoban, Pong, entre otros, por lo que, teniendo en cuenta estos ejemplos, se decidió programar una versión básica del minijuego "Snake" o "La serpiente".

Durante la ejecución del proyecto, se exploraron aspectos fundamentales del lenguaje Jack, desde la declaración de clases y métodos hasta la manipulación de estructuras de datos propias de un juego. Se abordaron los principios de la programación orientada a objetos de manera práctica, consolidando, prácticamente, el conocimiento teórico adquirido.

En el transcurso de esta experiencia, se logró no solo una mayor comprensión de l lenguaje de programación de alto nivel "Jack", sino también la creación exitosa del minijuego mencionado anteriormente. Este se encuentra en la carpeta adjunta de nombre "
Protecto 9 - Lenguaje de alto nivel" donde se encuentran todos los arrchivos ".jack" y ".vm" que se usan para ejecutar el juego. Cabe resaltar que, para una mejor experiencia de juego, se debe ejecutar el "VM Emulator" con las configuraciones de "No Animation" activa y la velocidad dle progama alta.



# Desarrolle más el concepto de lenguaje de alto nivel, teniendo en cuenta la diferencia entre lenguajes de programación propiamente dichos e interpretadores.

Un lenguaje de alto nivel es un lenguaje de programación que está diseñado para ser comprensible por humanos y expresar conceptos de manera más cercana al pensamiento humano que a la ejecución de máquina. Estos lenguajes se sitúan a un nivel de abstracción más alto, permitiendo a los programadores escribir código de manera más legible y estructurada. A diferencia de los lenguajes de bajo nivel, como el ensamblador, los lenguajes de alto nivel se encuentran más alejados de la arquitectura específica del hardware.

Existen dos conceptos clave relacionados con los lenguajes de alto nivel: los lenguajes de programación y los intérpretes. Los lenguajes de programación son sistemas de comunicación diseñados para expresar instrucciones a una computadora en un formato entendible por humanos, que poseen una sintaxis más legible, orientación a conceptos abstractos, mayor nivel de abstracción (Como Python, Java, C++, JavaScript, etc.); mientras que los intérpretes son programas que leen y ejecutan instrucciones escritas en un lenguaje de alto nivel directamente, sin requerir una fase de compilación previa y poseen características como ejecución línea por línea, lectura y ejecución inmediata del código fuente, facilita el desarrollo interactivo (Como Python, Ruby, JavaScript, etc.).
Mientras que en los lenguajes interpretados, el código fuente escrito en un lenguaje de alto nivel se ejecuta directamente por un intérprete sin necesidad de compilación previa. Esto facilita la escritura de código y la depuración.Por otro lado, los lenguajes de alto nivel y sus intérpretes suelen ser diseñados con la portabilidad en mente. El mismo código fuente puede ejecutarse en diferentes plataformas siempre que exista un intérprete compatible. Incluso, la naturaleza interpretada permite un desarrollo iterativo y la ejecución de código línea por línea, facilitando la identificación y corrección rápida de errores.


# ¿Qué se debe considerar para proponer un nuevo y buen lenguaje de programación, teniendo en cuenta la arquitectura de computador completa?

Proponer un nuevo y efectivo lenguaje de programación, considerando la arquitectura de computadoras completa, implica evaluar varios aspectos cruciales que afectan la eficiencia, la productividad del programador y la compatibilidad con la arquitectura subyacente. Aquí se destacan algunos puntos clave a considerar:

1. Modelo de Programación y Abstracción: Definir un modelo de programación que se alinee de manera efectiva con la arquitectura subyacente (Programación Orientada a Objetos, programación funcional, etc.). Esto implica elegir un nivel y manera de abstracción que permita a los programadores expresar conceptos de manera clara y concisa, mientras se adapta eficientemente a la forma en que la arquitectura subyacente ejecuta las instrucciones.

2. Eficiencia y Rendimiento: Un buen lenguaje de programación debe permitir la escritura de código eficiente. Esto implica considerar la generación de código máquina optimizado y la capacidad de aprovechar las características específicas de la arquitectura, como el paralelismo, las instrucciones SIMD, y la administración eficiente de la memoria. Algunos ejemplos de esto último son: La recolección de basura, que gestiona automáticamente la liberación de memoria; la asignación dinámica de memoria, que permite crear objetos con un espacio en el disco exacto y justo con las necesidades precisas del momento en el que es requerido, durante la ejecución del código; estructuras de datos eficientes, como manejo de datos a través de linkedlist, arboles, arboles binarios, entre otros; administración de memoria caché, teniendo n cuenta las características de la jerarquía de caché del hardware subyacente para mejorar la eficiencia del acceso a la memoria, entre otros.

4. Portabilidad: La portabilidad es clave. Un buen lenguaje debe ser capaz de ejecutarse en una variedad de arquitecturas de computadoras sin midificarlas significativamente. La abstracción de hardware debe ser lo suficientemente sólida como para adaptarse a diferentes plataformas sin sacrificar la eficiencia o, incluso, usar máquinas virtuales (Al igual que Java) para mejorar la portabilidad sin tener que adaptar el código al S.O., sino, el "traductor dinámico" (Máquina virtual) al S.O.

5. Herramientas y Ecosistema: La existencia de un conjunto robusto de herramientas de desarrollo y un ecosistema activo (bibliotecas, marcos de trabajo, etc.) es esencial. Facilita el desarrollo de software y la adopción del lenguaje por parte de la comunidad de programadores.

6. Seguridad y Fiabilidad: Considerar características integradas que fomenten la seguridad y la confiabilidad del código. Esto implica abordar problemas como la gestión de la memoria de forma segura y la prevención de vulnerabilidades comunes.

7. Facilidad de Aprendizaje: La curva de aprendizaje de un nuevo lenguaje debe ser manejable. Un diseño sintáctico claro y una estructura lógica contribuyen significativamente a la adopción rápida por parte de los programadores. Nótesen casos que hacen caso omiso de esta sugerencia, como Brainfuck, son complicados y engorrosos de usar y entender.

8. Adaptación a Paradigmas Emergentes: La capacidad del lenguaje para adaptarse a paradigmas de programación emergentes, como la programación funcional o la programación basada en eventos, es crucial para su relevancia a largo plazo, pues, sin esta, caerá en desuso y será reemplazado por mejores opciones en el mercado


# RESULTADOS OBTENIDOS

**Clase Fruit**

La clase `Fruit` gestiona la vida y la representación visual de una fruta en un entorno de juego, con métodos para colocarla aleatoriamente, obtener sus coordenadas y liberar memoria cuando sea necesario.

**Campos:**

- `x`, `y`: Coordenadas de la fruta.
- `size`: Tamaño de la fruta.

**Constructor:**
- Inicializa la fruta con posiciones y tamaño dados.
- Llama al método `draw()` para mostrar la fruta.

**Métodos:**

- `getX()` y `getY()`: Devuelven las coordenadas de la fruta.
- `place()`: Coloca la fruta en una nueva ubicación aleatoria, evitando superposiciones.
- `draw()`: Dibuja visualmente la fruta en la pantalla.
- `dispose()`: Libera la memoria asignada para la instancia de la fruta.

**Clase List**

La clase `List` representa una lista enlazada con métodos para manipular datos y liberar memoria.

**Campos:**
- `x`, `y`: Datos de la lista.
- `next`: Referencia al siguiente elemento.

**Constructor:**
- Inicializa la lista con datos (`Ax` y `Ay`).
- Retorna la instancia de la lista.

**Métodos:**
- `getX()` y `getY()`: Devuelven los datos de la lista.
- `getNext()`: Devuelve la referencia al siguiente elemento.
- `setNext(List n)`: Establece la referencia al siguiente elemento.
- `dispose()`: Libera la memoria de la lista de manera recursiva, incluyendo los elementos siguientes. Utiliza la rutina del sistema operativo para reciclar el objeto.

**Clase Queue**

La clase `Queue` representa una estructura de cola con métodos para manipular sus elementos.

**Campos:**
- `size`: Número de elementos en la cola.
- `tail`: Mantiene un seguimiento del último elemento.
- `head`: Referencia al primer elemento.

**Constructor:**
- Inicializa la cola con un elemento dado (`x` e `y`).
- Retorna la instancia de la cola.

**Métodos:**
- `size()`: Devuelve el tamaño actual de la cola.
- `push(int x, int y)`: Añade un nuevo elemento al final de la cola.
- `pop()`: Elimina y devuelve el elemento al frente de la cola.
- `contains(int x, int y)`: Busca si un conjunto de datos está presente en la cola.
- `dispose()`: Libera la memoria de la cola, incluyendo sus elementos. Utiliza la rutina del sistema operativo para reciclar el objeto.

**Clase RandSeed**

La clase `RandSeed` proporciona una función para obtener una semilla de generador de números aleatorios a partir de la entrada del teclado.

**Método:**
- `getSeed()`: Solicita al usuario que presione una tecla para iniciar.
  - Inicializa las variables `seed` y `key` en cero.
  - Mientras se mantenga presionada una tecla, incrementa la semilla y verifica si alcanza su valor máximo.
  - Si se alcanza el valor máximo, reinicia la semilla.
  - Utiliza la entrada del teclado para actualizar la variable `key`.
  - Limpia la pantalla después de recibir la entrada.
  - Retorna la semilla generada.

**Clase Random**

La clase `Random` implementa un generador de números pseudoaleatorios (PRNG) con métodos para generar números aleatorios y establecer semillas.

**Campos:**
- `seed`: Semilla del generador.
- `x`: Variable de estado.

**Métodos:**
- `setSeed(int newSeed)`: Establece una nueva semilla para el generador.
- `rand()`: Genera un número aleatorio en el rango de 0 a 32767.
- `randRange(int range)`: Genera un número aleatorio en el rango de 0 a `range`.
- `seed(int seed)`: Establece una nueva semilla (`seed`) utilizando el módulo 16.
- `next()`: Retorna el próximo número aleatorio (puede ser negativo o positivo).
- `between(int x, int y)`: Retorna un valor aleatorio entre `x` (inclusive) y `y` (no inclusivo).

**Clase Snake**

La clase `Snake` representa una serpiente en un juego, con métodos para manipular su posición, dirección y crecimiento.

**Campos:**
- `game`: Referencia al juego en el que la serpiente está jugando.
- `posX`, `posY`: Posición de la cabeza de la serpiente.
- `length`: Longitud de la serpiente.
- `growby`: Cantidad de crecimiento cuando la serpiente come un pellet.
- `togrow`: Cantidad de crecimiento pendiente.
- `dir`, `lastdir`: Dirección actual y última dirección de la serpiente.
- `histX`, `histY`: Historial de movimientos de la serpiente.
- `histSize`: Tamaño del historial.

**Constructor:**
- Inicializa la serpiente en una posición dada con una longitud y crecimiento específicos.
- Dibuja la serpiente inicial en el juego.

**Métodos:**
- `dispose()`: Libera la memoria de la serpiente.
- `checkRewriteHistory()`: Verifica si es necesario reescribir el historial de la serpiente.
- `rewriteHistory()`: Reescribe el historial de movimientos de la serpiente.
- `posX()`, `posY()`: Devuelven la posición de la cabeza de la serpiente.
- `getLength()`: Devuelve la longitud de la serpiente.
- `getDir()`, `getLastDir()`: Devuelven la dirección actual y la última dirección de la serpiente.
- `setDir(int newdir)`: Establece la dirección de la serpiente.
- `rememberDir()`: Copia la dirección actual a la última dirección.
- `tryMove()`: Verifica si la serpiente puede moverse en la dirección actual.
- `grow(int cycle)`: Hace crecer la serpiente.
- `drawHead(int cycle)`: Dibuja la cabeza de la serpiente.
- `clearTail(int cycle)`: Borra la cola de la serpiente.
- `eatFood()`: Incrementa la cantidad de crecimiento pendiente cuando la serpiente come un pellet.

**Clase SnakeGame**

La clase `SnakeGame` representa el juego de la serpiente, con métodos para ejecutar el juego y gestionar sus componentes.

**Campos:**
- `snake`: Referencia a la serpiente en el juego.
- `grid`: Referencia al grid del juego.
- `score`: Puntuación del juego.
- `level`: Nivel actual del juego.
- `paused`: Indica si el juego está pausado.
- `cycle`: Contador de ciclos del juego.
- `delay`: Tiempo de espera entre ciclos.

**Constructor:**
- Inicializa las variables del juego.
- Crea el grid y la serpiente.
- Coloca un pellet de comida en el grid.
- Dibuja el estado inicial del juego.

**Métodos:**
- `dispose()`: Libera la memoria del juego.
- `run()`: Ejecuta el bucle principal del juego.
- `nextLevel()`: Incrementa el juego al siguiente nivel.
- `nextCycle()`: Incrementa el contador de ciclos.
- Métodos de lectura para obtener información sobre el estado del juego.

**Clase SnakeGrid**

La clase `SnakeGrid` representa el grid del juego de la serpiente, gestionando la posición de la serpiente, la comida y otros elementos del juego.

**Campos:**
- `game`: Referencia al juego de la serpiente.
- `sizeX, sizeY`: Tamaño del grid.
- `foodX, foodY`: Posición de la comida.
- `grid`: Matriz bidimensional que indica la ocupación de cada bloque en el grid.

**Constructor:**
- Inicializa las variables del grid.
- Inicializa la matriz `grid`.
- Dibuja la línea horizontal que divide el área del juego de la línea de estado.

**Métodos:**
- `dispose()`: Libera la memoria del grid.
- `placeFood()`: Selecciona una posición para la comida y la dibuja.
- `drawFood()`: Dibuja el pellet de comida.
- `initGrid()`: Inicializa la matriz `grid`.
- Métodos de lectura para obtener información sobre el grid.
- Métodos de acceso al grid para gestionar la ocupación y verificación de posiciones.
- Métodos para dibujar bloques, la línea de estado y mensajes específicos en la pantalla.

**Clase Random**

La clase `Random` en Hack implementa un generador de números pseudoaleatorios (PRNG) y proporciona métodos para generar números aleatorios y establecer semillas.

**Campos:**
- `seed`: Un entero que representa la semilla del generador.
- `x`: Una variable de estado utilizada en la generación de números aleatorios.

**Métodos**

-`setSeed(int newSeed)`:Establece una nueva semilla para el generador.
-`rand()`: Genera un número aleatorio en el rango de 0 a 32767.
- `randRange(int range)`:Genera un número aleatorio en el rango de 0 a `range`.
`seed(int seed)`: Establece una nueva semilla (`seed`) utilizando el módulo 16.
-`next()`:Retorna el próximo número aleatorio (puede ser negativo o positivo).
-`between(int x, int y)`: Retorna un valor aleatorio entre `x` (inclusive) y `y` (no inclusivo)

# CONCLUSIONES

La implementación detallada de las clases para el juego de Snake revela una cuidadosa estructuración y gestión de los diversos componentes del juego. La lógica detrás de la generación aleatoria de frutas, el manejo de la serpiente, y la estructura de datos para la cola, lista y grid demuestran una planificación meticulosa. La utilización de clases y métodos específicos para funciones como la disposición de elementos, el dibujo en pantalla y la liberación de memoria contribuyen a la legibilidad y mantenibilidad del código. Además, la inclusión de clases como Random proporciona una flexibilidad significativa al permitir la manipulación controlada de números aleatorios. En conjunto, esta implementación constituye una base sólida para el desarrollo y la expansión de un juego de Snake funcional y estructurado.


**Fuentes**

- Project 09. (s/f). Nand2tetris. Recuperado el 16 de noviembre de 2023, de https://www.nand2tetris.org/project09
- chapter 9 lecture.pdf. (s/f). Google Docs. Recuperado el 16 de noviembre de 2023, de https://drive.google.com/file/d/1CAGF8d3pDIOgqX8NZGzU34PPEzvfTYrk/view?pli=1


