#include <iostream>
#include <string>
#include <unistd.h>
#include <fstream>
#include "VmTranslator.h"
#include "FileHandler.h"


using namespace std;


int main(int argc, char** argv)

{

    bool verbose = false;
    bool bootstrap = true;
    bool comments = true;
    bool optimise = true;

    string input("OS_0/");


    if ( (!FileHandler::isFile(input)) && (!FileHandler::isDir(input)) ) 
    {

        cerr << "error: entrada invalida \"" << input << "\"" << endl;

        return 1;

    }



    string outputFileName( FileHandler::getOutputFile(input) );

    ofstream outputFile( outputFileName );



    if ( !outputFile.good() ) 
    {

        cerr << "error: unable to open file \"" << outputFileName << "\"" << endl;

        return 1;

    }



    VmTranslator vmTranslator(input, outputFile, verbose, bootstrap, comments, optimise);

    vmTranslator.translate();

    outputFile.close();


    return 0;

}