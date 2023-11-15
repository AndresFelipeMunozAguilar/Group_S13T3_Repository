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


**Fuentes**
