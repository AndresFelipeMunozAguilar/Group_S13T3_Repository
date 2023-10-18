#include "SymbolTable.hpp"


SymbolTable::SymbolTable()
{

    table.clear();


    /* Inicalizar los símbolos predefinidos */
    table.insert(pair<string, uint16_t>("SP", 0));
    table.insert(pair<string, uint16_t>("LCL", 1));
    table.insert(pair<string, uint16_t>("ARG", 2));
    table.insert(pair<string, uint16_t>("THIS", 3));
    table.insert(pair<string, uint16_t>("THAT", 4));


    /*Incluyendo los registros del R0 ~ R15. */
    table.insert(pair<string, uint16_t>("RO", 0));
    table.insert(pair<string, uint16_t>("R1", 1));
    table.insert(pair<string, uint16_t>("R2", 2));
    table.insert(pair<string, uint16_t>("R3", 3));
    table.insert(pair<string, uint16_t>("R4", 4));
    table.insert(pair<string, uint16_t>("R5", 5));
    table.insert(pair<string, uint16_t>("R6", 6));
    table.insert(pair<string, uint16_t>("R7", 7));
    table.insert(pair<string, uint16_t>("R8", 8));
    table.insert(pair<string, uint16_t>("R9", 9));
    table.insert(pair<string, uint16_t>("R10", 10));
    table.insert(pair<string, uint16_t>("R11", 11));
    table.insert(pair<string, uint16_t>("R12", 12));
    table.insert(pair<string, uint16_t>("R13", 13));
    table.insert(pair<string, uint16_t>("R14", 14));
    table.insert(pair<string, uint16_t>("R15", 15));

    /*Ahora, los símbolos que están predefinidos 
    en la parte del MMIO */
    table.insert(pair<string, uint16_t>("SCREEN", 16384));
    table.insert(pair<string, uint16_t>("KBD", 24576));


    /* las variables son mapeadas en direcciones
     de memoria consecutivas, a medida que se 
     encuentra, empezando en la dirección de 
     memoria #16: */
    VariableCounter = 16;

}


/*Creamos el destructor de la tabla*/
SymbolTable::~SymbolTable()
{

    table.clear(); //simplemente borras todo lo que esté adentro de la tabla

}


int SymbolTable::incLabelCounter()
{

    return (LabelCounter++); //aumentamos en una unidad el contador de etiqeutas

}


void SymbolTable::addLabel(string Label)
{

    /* Si la variable ya existe, lanza un error,
    de otra forma, la inserta al mapa*/
    if (table.find(Label) != table.end()) 
    {
    
        throw runtime_error("Usted esta intentando redefinir una variable desde la funcion addLabel");

    } 
    else 
    {

        table.insert(pair<string, uint16_t> (Label, LabelCounter));

    }
    
}


void SymbolTable::addVariable(string Var) 
{

    if(table.find(Var) == table.end()) //en caso de que la variable 
    {                                  //no esté en el mapa, la inserta
    
        table.insert(pair<string, uint16_t>(Var, VariableCounter));
        VariableCounter++;
        
    }

    //De otra forma, sólo saltese el condicional

}


uint16_t SymbolTable::lookupSymbol(string Var)
{

    addVariable(Var); //Añade la variable nueva o, si ya existe, no hace nada
    
    return (table.find(Var)->second); //busca la variable cuyo nombre sea igual
                                      //al valor de "Var" y y retorna la segunda
                                      //columna del mapa correspondiente a la 
                                      //dirección de memoria de esta variable

}
