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

- Como funciona: Al tener una capacidad de 512 registros, se puede realizar juntando 8 rams de capaacidad de 64 registros cada una, pues, al usar 8 de estas, se multiplican sus capacidades individuales por 8, resultando en 512 registros.

- Como lo implementé: Debido a la estructura que posee, el análisis que se seguirá es similar al de las anteriores partes. Primero, sedebe considerar de que longitud es la palabra de "address". En este caso, "address" tiene una longitud de 9 bits. Lo que quiere decir que permite agrupar las 512 posibilidades distintas en 8 grupos de 64 posibilidades de combinación cada uno. Así, podemos coger los primeros 3 bits más significativos del "address" para seleccionar hacia que ram de 8 registros se dirigirá cierta input. Después, como el "address" de cada una de las ram de 64 registros tiene una longitud de 6 bits y este número encaja de manera exacta con el número de bits que restan del "load" para una ram de 512 registros tras quitarles los 3 primeros bits más significativos, usaremos los últimos 6 bits menos significativos para seleccionar el "address" al cual se dirigirá la información tras haber seleccionado a que ram de 64 registros se dirigirá cierta input.
Para esto, primero se debareiurqowhroqiwuerhoqiwuerhoiqwu hweqoiru hqwoeiuh


# FALTAN HACER EL RAM 512 RAM 4K RAM 16K Y PC



