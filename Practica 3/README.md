Este readme corresponde a la tercer proyecto del curso de nand2tetris, que nos permite construir gradualmente una unidad RAM atraves de compuertas logicas adecuadas para ello para construccion de chips descritos en esta practica. A continuacion se describe una explicacion de cada uno de los chips y como se llego a su correspondiente solucion. Esta sección de la práctica fue realizada por los estudiantes: Andrés Mejía y Andrés Muñoz Aguilar, respectivamente.

# Bit

Este chip llamado Bit representa un registro de 1 bit. La operación del registro se controla mediante una señal de carga (load). Si load es igual a 1, el registro almacena la entrada (in) en la posición de tiempo t+1, de lo contrario, mantiene su valor actual en la posición t+1.

El funcionamiento se describe de la siguiente manera:

La señal de entrada (in) se pasa a través de un multiplexor (Mux) junto con una señal de retroalimentación (feedBack) como entrada A, y la señal in como entrada B. El selector del multiplexor (sel) se configura con la señal de carga (load). Cuando load es 1, el multiplexor pasa la señal in a través de la salida (inDFF), de lo contrario, mantiene el valor actual de feedBack en inDFF.

Luego, la salida inDFF se conecta a un flip-flop D (DFF) que almacena su valor y lo presenta como la salida out. La señal out representa el valor almacenado en el registro en el tiempo t.

# Register

El chip Register es un registro de 16 bits utilizado en circuitos digitales. Su funcionamiento se controla mediante una señal de carga (load). Si load es igual a 1, el registro almacena la entrada (in) en la posición de tiempo t+1; en caso contrario, el valor de salida (out) no cambia.

El chip Register se implementa mediante la instancia de 16 chips Bit, uno para cada bit del registro, conectando la entrada y la señal de carga de cada Bit a las correspondientes señales de entrada y carga del Register.

El uso de este chip Register es común en circuitos digitales donde se necesita un registro de 16 bits para almacenar información y controlar cuándo se actualiza el valor del registro.

# RAM8

El chip RAM8 representa una memoria con 8 registros, cada uno de 16 bits de ancho. La operación de esta memoria se controla mediante tres señales: in, load, y address. La señal out almacena el valor almacenado en la ubicación de memoria especificada por address.

- Si load es igual a 1, el valor presente en in se carga en la ubicación de memoria especificada por address. El valor cargado se emitirá en out a partir del siguiente ciclo de reloj.

- Si load es igual a 0, la memoria mantiene su contenido actual y out continúa emitiendo el valor almacenado en la ubicación de memoria especificada por address.

Para implementar esta funcionalidad, se utilizan los siguientes componentes:

- Se instancian 8 chips Register, uno para cada uno de los 8 registros de la memoria. Cada registro tiene una entrada in, una señal de carga loadX, y una salida outX, donde X es un número del 0 al 7.

- Se utiliza un chip DMux8Way para descomponer la señal de carga load en 8 señales individuales (load0, load1, ..., load7) según la dirección especificada por address.

- Se emplea un chip Mux8Way16 para seleccionar el valor de salida correcto (out0, out1, ..., out7) basado en la dirección especificada por address. El valor seleccionado se emite como la salida out de la memoria.

# RAM64 

El chip RAM64 representa una memoria con 64 registros, cada uno de 16 bits de ancho. La operación de esta memoria se controla mediante tres señales: in, load, y address. La señal out almacena el valor almacenado en la ubicación de memoria especificada por address.

- Si load es igual a 1, el valor presente en in se carga en la ubicación de memoria especificada por address. El valor cargado se emitirá en out a partir del siguiente ciclo de reloj.

- Si load es igual a 0, la memoria mantiene su contenido actual y out continúa emitiendo el valor almacenado en la ubicación de memoria especificada por address.

Para implementar esta funcionalidad, se utilizan los siguientes componentes:

- Se utiliza un chip DMux8Way para descomponer la señal de carga load en 8 señales individuales (load0, load1, ..., load7) según la dirección especificada por address[3..5].

- Se instancian 8 chips RAM8, uno para cada uno de los 8 conjuntos de 8 registros de la memoria. Cada conjunto tiene una entrada in, una señal de carga loadX, y una dirección address[0..2]. La salida de cada conjunto de registros es outX, donde X varía de 0 a 7.

- Se utiliza un chip Mux8Way16 para seleccionar el valor de salida correcto (out0, out1, ..., out7) basado en la dirección especificada por address[3..5]. El valor seleccionado se emite como la salida out de la memoria.

# RAM 512

Para preparar este y los siguientes chips se necesitaron varias horas de estudio teórico con el soporte audiovisual que proporciona nand2tetris a través de youtube.

- Descripción del chip: Una RAM de 512 registros se refiere a una memoria de acceso aleatorio que tiene una capacidad de almacenamiento de 512 registros. La RAM se utiliza en las computadoras y otros dispositivos electrónicos para almacenar temporalmente datos y programas que se están utilizando activamente. Una RAM de 512 registros es relativamente pequeña en comparación con las capacidades actuales, pero puede ser suficiente para tareas informáticas básicas, como navegación web y procesamiento de documentos. Sin embargo, para aplicaciones más exigentes, como edición de video o juegos avanzados, se suelen requerir capacidades de RAM más grandes para un rendimiento óptimo.

- Como funciona: Al tener una capacidad de 512 registros, se puede realizar juntando 8 rams de capacidad de 64 registros cada una, pues, al usar 8 de estas, se multiplican sus capacidades individuales por 8, resultando en 512 registros.

- Como lo implementé: Debido a la estructura que posee, el análisis que se seguirá es similar al de las anteriores partes. Primero, se debe considerar de que longitud es la palabra de "address". En este caso, "address" tiene una longitud de 9 bits. Lo que quiere decir que permite agrupar las 512 posibilidades distintas en 8 grupos de 64 posibilidades de combinación cada uno. Así, podemos coger los primeros 3 bits más significativos del "address" para seleccionar hacia que RAM de 8 registros se dirigirá cierto input. Después, como el "address" de cada una de las RAM de 64 registros tiene una longitud de 6 bits y este número encaja de manera exacta con el número de bits que restan del "load" para una RAM de 512 registros tras quitarles los 3 primeros bits más significativos, usaremos los últimos 6 bits menos significativos para seleccionar el "address" al cual se dirigirá la información tras haber seleccionado a que RAM de 64 registros se dirigirá cierto input.   
Para esto, primero se debe pasar el bit de "load" a una RAM determinada; para esto usamos un DMux8Way, así, el input será el valor de "load" y el selector serán los primeros b3 bits significativos del address. Tras haber seleccionado la RAM 64 requerida, se debe seleccionar en cuál de las 8 Ram8 que la compone se almacenará el valor del input y, ahí es donde usamos los últimos 6 bits menos significativos del address, colocándolos en el valor del "address" para cada Ram64. Finalmente, tras ya haber pasado el dato a la Ram64 correcta y, respectivamente, a su Ram8 correcta, se procederá a tomar cada una de las salidas que generan las Ram64 y se seleccionará la Ram64 correspondiente para mostrar su salida en la salida final del circuito. Esto se hará a través de un chip Mux8way16 que captura entradas de longitud 16 bit de 8 entradas diferentes y "muestra" en la salida el input indicada con el selector. Pero, ¿Que selector usaremos para mostrar la salida adecuada? Fácil, el mismo criterio que usamos para escogerla: Los primeros 3 bits más significativos del "address" de 9 bits.


# RAM 4K

- Descripción del chip: Una RAM de 4,000 registros se refiere a una memoria de acceso aleatorio que contiene 4,000 ubicaciones de almacenamiento, llamadas registros, que pueden utilizarse para guardar y acceder a datos. Cada registro puede contener información temporalmente y es accesible rápidamente para el procesador de una computadora u otro dispositivo. Estas memorias se utilizan en tareas que requieren un acceso rápido a datos, como cálculos complejos, procesamiento de gráficos y muchas otras aplicaciones en la informática.

- Como funciona: Al tener una capacidad de 4k registros, se puede realizar juntando 8 RAMS de capacidad de 512 registros cada una, pues, al usar 8 de estas, se multiplican sus capacidades individuales por 8, resultando en 4 096 registros.

- Como lo implementé: La implementación de este chip fue sencilla, debido a que tiene la misma lógica que la del chip anterior. Es decir, usar un DMux8way para “redirigir” la variable “load” a una cierta RAM seleccionada a través de los primeros 3 bits del “Address”, pues, de esa forma nos aseguramos que solo haya 7 posibilidades de seleccionar alguna RAM. Tras esto, cada una de las RAM512 reciben el input respectivo y, dentro de ellas, se selecciona la RAM64 respectiva a través de los últimos 9 bits del “Address” y, tras hacer la operación respectiva de guardado o no guardado, dependiendo de la variable “Load”, la “Output” de cada RAM512 se “reunirán” en un mismo “conjunto” a través de un Mux8Way16, donde, de cada una de las entradas de 16 bit, se seleccionará una dependiendo de un selector para mostrarla como “Output”; ¿Qué selector se usará? El mismo criterio que para escoger una RAM512: Los primeros 3 bits del “Address”

# RAM 16K

- Descripción del chip: Una RAM con 16K registros, donde cada registro puede almacenar hasta 16 bits, se refiere a una memoria de acceso aleatorio con una capacidad de 16,000 ubicaciones de almacenamiento, y cada una de esas ubicaciones puede contener una palabra de datos de 16 bits. Esta RAM es utilizada para almacenar y acceder a datos de manera rápida y eficiente en aplicaciones que requieren capacidad y velocidad, como en sistemas integrados, procesamiento de señales y otros contextos computacionales avanzados.

- Como funciona: Al tener una capacidad de 16K registros, se puede realizar juntando 4 RAMS de capacidad de 4K registros cada una, pues, al usar 4 de estas, se multiplican sus capacidades individuales por 4, resultando en 16 384 registros.

- Como lo implementé: La implementación de este chip fue sencilla, debido a que tiene la misma lógica que la del chip anterior y la del anterior al anterior. Es decir, usar un DMux4way (En este caso, se usa este chip, pues se "arrejuntarán" 4 RAMS, en lugar de 8) para “redirigir” la variable “load” a una cierta RAM seleccionada a través de los primeros 2 bits del “Address”, pues, de esa forma nos aseguramos que solo haya 4 posibilidades de seleccionar alguna RAM. Tras esto, cada una de las RAM4K reciben el input respectivo y, dentro de ellas, se selecciona la RAM512 respectiva a través de los últimos 12 bits del “Address” y, tras hacer la operación respectiva de guardado o no guardado, dependiendo de la variable “Load”, la “Output” de cada RAM4K se “reunirán” en un mismo “conjunto” a través de un Mux4Way16, donde, de cada una de las entradas de 16 bit, se seleccionará una dependiendo de un selector para mostrarla como “Output”; ¿Qué selector se usará? El mismo criterio que para escoger una RAM4K: Los primeros 2 bits del “Address”

# PROGRAM COUNTER (PC)

- Descripción del chip: Un chip Program Counter (Contador de Programa) en el contexto de la arquitectura de computadores es un componente crucial que almacena la dirección de la instrucción actual que se está ejecutando en la unidad central de procesamiento (CPU). Funciona como un puntero que rastrea la posición de la próxima instrucción en la memoria de programa. A medida que se ejecutan las instrucciones, el Program Counter se incrementa automáticamente para apuntar a la siguiente instrucción en secuencia. Este chip es esencial para el flujo de control y la ejecución de programas, ya que asegura que las instrucciones se ejecuten en el orden correcto.

- Como funciona: 

- Como lo implementé: 

# FALTAN HACER EL PC



