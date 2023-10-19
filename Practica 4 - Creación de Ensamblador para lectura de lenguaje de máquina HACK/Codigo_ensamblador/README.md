# Tabla de símbolos

El proceso de construcción de un ensamblador para el lenguaje de máquina "HACK" es un desafío fundamental en la programación de bajo nivel. Una parte esencial de esta tarea es la creación de una tabla de símbolos que mapea etiquetas y variables a direcciones de memoria de 16 bits. Este artículo describe los pasos clave involucrados en la creación de una tabla de símbolos en C++ para respaldar la construcción de un ensamblador "HACK". Se detalla la inclusión de librerías esenciales, la creación de la clase "SymbolTable" y la implementación de sus variables y funciones fundamentales. Este proceso es crítico para el éxito del ensamblador, ya que proporciona una forma eficiente de traducir lenguaje de máquina a instrucciones y datos compuestos por conjuntos de 16 bits cada uno. A continuación, se detallan los pasos necesarios para crear esta tabla de símbolos.

- **Paso 1: Inclusión de Librerías Relevantes:** En el lenguaje de programación C++, la creación de una tabla de símbolos requiere el uso de librerías específicas. Esto incluye la inclusión de librerías para procesar strings, manejar excepciones, utilizar mapas como diccionarios indexables y hacer uso de la variable de tipo "uint16_t", que permite manejar valores de 16 bits sin signo. La inclusión de las siguientes librerías proporciona las herramientas necesarias para implementar esta tabla de símbolos y le permite cumplir las funciones descritas anteriormente. Las librerías son: cstdint, map, stdexcept y string.

- **Paso 2: Creación de la Clase "SymbolTable":** La tabla de símbolos se implementa en forma de una clase llamada "SymbolTable." Esta clase alberga tres variables esenciales:

    1. **Mapa de Símbolos:** Se utiliza un mapa donde se relaciona cada nombre de variable o etiqueta con su espacio de memoria en formato "uint16_t".
    2. **Espacio de Memoria para Variables Nuevas:** Una variable que se utiliza para gestionar el espacio de memoria que ocupará cada nueva variable declarada en el programa de lenguaje ensamblador.
    3. **Espacio de Memoria para Etiquetas Nuevas:** Una variable separada que administra el espacio de memoria que ocupará cada nueva etiqueta declarada en el programa de lenguaje ensamblador.

- **Paso 3: Implementación de Funciones Primordiales:** La clase "SymbolTable" se complementa con funciones primordiales para su funcionamiento óptimo. Estas funciones incluyen:

    1. **Constructor:** Un constructor de la clase, que inicializa el mapa de símbolos y se reservan espacios de memoria para los símbolos predefinidos del sistema. Además de estos, se incluyen los registros del número 0 al número 15, así como los símbolos predefinidos en la sección "MMIO" (Memory-Mapped I/O). Además, se inicializa la variable que administra la dirección de memoria donde se almacenan nuevas variables.
    2. **Destructor:** El destructor, que se encarga de liberar la memoria utilizada por una instancia de la clase "SymbolTable" una vez que ya no es necesaria.
    3. **Cambio Dinámico de la Dirección de Memoria:** Se implementan dos funciones que permite cambiar dinámicamente la dirección de memoria en la que se guardarán las nuevas etiquetas.
    3. **Adición de Nueva Etiqueta:** La tabla de símbolos permite la adición de nuevas etiquetas. Sin embargo, estas se añaden solo si aún no existen en la tabla, con anterioridad.
    4. **Adición de Nueva Variable:** Similar a la función anterior, esta permite añadir nuevas variables a la tabla.
    5. **Búsqueda de Dirección de Memoria:** Finalmente, se implementa una función que facilita la búsqueda de la dirección de memoria asociada a una etiqueta o variable específica en el mapa de la tabla de símbolos.
# Analizador
Parser
# Ensamblador

Para el esamblador se tuvieron en cuenta los siguientes pasos

-**Inclusión de librerias:** El código comienza por incluir diversas bibliotecas estándar de C++ necesarias para diferentes funcionalidades. 

-**Declaración de objetos y variables:** En esta sección, se declaran objetos y variables que serán utilizados en el programa. Estos objetos incluyen SymbolTable y Parser, creadas anteriormente

-**Función main:** Aquí se declaran variables como fnameIn y fnameOut para almacenar los nombres de archivo de entrada y salida, así como objetos ifstream y ofstream para abrir los archivos de entrada y salida.

-**Manejo de argumentos de línea de comandos:** El programa obtiene el nombre del archivo de entrada (fnameIn) a partir del primer argumento (argv[1]), y verifica que tenga la extensión ".asm".

-**Determinación del nombre del archivo de salida:** Si solo se proporciona un archivo de entrada, se genera un nombre de archivo de salida (fnameOut) al reemplazar la extensión ".asm" por ".hack". Si se proporcionan dos argumentos, el segundo argumento se toma como el nombre del archivo de salida.

-**Apertura de archivos de entrada y salida:** Se abren los archivos de entrada y salida. Se imprime en la consola el nombre del archivo de salida.

-**Primera pasada (First Pass):** Las etiquetas se utilizan para construir una tabla de símbolos (SymbolTable) que mapea nombres de etiquetas a direcciones de memoria. También se calcula el contador de líneas de código ensamblador.

-**Segunda pasada (Second Pass):** Utiliza un objeto Parser y llama a la función parseInst para convertir cada instrucción en su equivalente en código máquina. Luego, se imprime la instrucción original junto con su representación en código máquina en la consola y se escribe en el archivo de salida.

