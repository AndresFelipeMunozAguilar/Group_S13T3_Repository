# Tabla de símbolos

El proceso de construcción de un ensamblador para el lenguaje de máquina "HACK" es un desafío fundamental en la programación de bajo nivel. Una parte esencial de esta tarea es la creación de una tabla de símbolos que mapea etiquetas y variables a direcciones de memoria de 16 bits. Este artículo describe los pasos clave involucrados en la creación de una tabla de símbolos en C++ para respaldar la construcción de un ensamblador "HACK". Se detalla la inclusión de librerías esenciales, la creación de la clase "SymbolTable" y la implementación de sus variables y funciones fundamentales. Este proceso es crítico para el éxito del ensamblador, ya que proporciona una forma eficiente de traducir lenguaje de máquina a instrucciones y datos compuestos por conjuntos de 16 bits cada uno. A continuación, se detallan los pasos necesarios para crear esta tabla de símbolos.

- **Paso 1: Inclusión de Librerías Relevantes:** En el lenguaje de programación C++, la creación de una tabla de símbolos requiere el uso de librerías específicas. Esto incluye la inclusión de librerías para procesar strings, manejar excepciones, utilizar mapas como diccionarios indexables y emplear la variable de tipo "uint16_t", que permite manejar valores de 16 bits sin signo. La inclusión de estas librerías proporciona las herramientas necesarias para implementar una tabla de símbolos funcional.

- **Paso 2: Creación de la Clase "SymbolTable":** La tabla de símbolos se materializa en forma de una clase llamada "SymbolTable." Esta clase alberga tres variables esenciales:

    1. Mapa de Símbolos: Se utiliza un mapa donde se relaciona cada nombre de variable o etiqueta con su espacio de memoria en formato "uint16_t".
    2. Espacio de Memoria para Variables Nuevas: Una variable se utiliza para gestionar el espacio de memoria que ocupará cada nueva variable declarada en el programa.
    3. Espacio de Memoria para Etiquetas Nuevas: Una variable separada administra el espacio de memoria que ocupará cada nueva etiqueta declarada en el programa.

- **Paso 3: Implementación de Funciones Primordiales**