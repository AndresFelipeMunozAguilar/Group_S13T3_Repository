#include "SymbolTable.hpp"
#include "SymbolTable.cpp"
#include <iostream>
#include <stdlib.h>
#include <map>


using namespace std;


int main()
{

    SymbolTable primeraTabla;
    
    for( map<string, uint16_t>::iterator it = primeraTabla.table.begin(); it != primeraTabla.table.end(); it++ )
    {

        cout << it -> first << " | " << it -> second << endl;

    }

    return 0;
}