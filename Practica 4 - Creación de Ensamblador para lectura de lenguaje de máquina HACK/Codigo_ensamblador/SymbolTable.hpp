#ifndef SYMBOLTABLE_HPP
#define SYMBOLTABLE_HPP

#include <cstdint> // este es el paquete para usar el uint16_t (un entero sin signo de 16 bits)
#include <map> // diccionario indexable
#include <stdexcept> // libreria para el manejo de excepciones
#include <string> //conjunto de metodos para procesar strings
using namespace std;

class SymbolTable {
    
    /* the symbol table storage space. */
    public:
        map<string, uint16_t> table; 
        int VariableCounter;
        int LabelCounter;

    public:
        SymbolTable(); //constructor donde se inicilizan y setean variables
        ~SymbolTable(); // destructor
        int incLabelCounter(); //mantiene un rastro de la dirección de la etiqueta ("label")
        void addLabel(string Label); //añadir nueva label a la tabla
        void addVariable(string Var); // añadir nueva variable a la tabla
        uint16_t lookupSymbol(string Var); //retorna la dirección de memoria de cierto símbolo
};

#endif //SYMBOLTABLE_HPP