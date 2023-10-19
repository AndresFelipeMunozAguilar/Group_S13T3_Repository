#include "Parser.hpp"
Parser::Parser() {
    compDict.clear();
    destDict.clear();
    jumpDict.clear();

    
    //Inicio el diccionario de comp
    /*            A_M,C1-C6 */
    compEntry("0", "0101010");
    compEntry("1", "0111111");
    compEntry("-1", "0111010");
    compEntry("D", "0001100");
    compEntry("A", "0110000");
    compEntry("!D", "0001101");
    compEntry("!A", "0110001");
    compEntry("-D", "0001111");
    compEntry("-A", "0110011");
    compEntry("D+1", "0011111");
    compEntry("1+D", "0011111");  // parte conmutada
    compEntry("A+1", "0110111");
    compEntry("1+A", "0110111");  // parte conmutada
    compEntry("D-1", "0001110");
    compEntry("A-1", "0110010");
    compEntry("D+A", "0000010");
    compEntry("A+D", "0000010");  // parte conmutada
    compEntry("D-A", "0010011");
    compEntry("A-D", "0000111");
    compEntry("D&A", "0000000");
    compEntry("A&D", "0000000");  // parte conmutada
    compEntry("D|A", "0010101");
    compEntry("A|D", "0010101");  // parte conmutada

    compEntry("M", "1110000");
    compEntry("!M", "1110001");
    compEntry("-M", "1110011");
    compEntry("M+1", "1110111");
    compEntry("1+M", "1110111");
    compEntry("M-1", "1110010");
    compEntry("D+M", "1000010");
    compEntry("M+D", "1000010");  // parte conmutada
    compEntry("D-M", "1010011");
    compEntry("M-D", "1000111");
    compEntry("D&M", "1000000");
    compEntry("M&D", "1000000");  // parte conmutada
    compEntry("D|M", "1010101");
    compEntry("M|D", "1010101");  // parte conmutada

    //Inicio el diccionario para los destinos
    destEntry("null", "000");
    destEntry("M", "001");
    destEntry("D", "010");
    destEntry("MD", "011");
    destEntry("DM", "011");  // 2P2=2
    destEntry("A", "100");
    destEntry("AM", "101");
    destEntry("MA", "101");  // 2P2=2
    destEntry("AD", "110");
    destEntry("DA", "110");   // 2P2=2
    destEntry("AMD", "111");  // 3P3=6
    destEntry("ADM", "111");
    destEntry("MAD", "111");
    destEntry("MDA", "111");
    destEntry("DAM", "111");
    destEntry("DMA", "111");

    //Inicii ek diccionario para los saltos
    jumpEntry("null", "000");
    jumpEntry("JGT", "001");
    jumpEntry("JEQ", "010");
    jumpEntry("JGE", "011");
    jumpEntry("JLT", "100");
    jumpEntry("JNE", "101");
    jumpEntry("JLE", "110");
    jumpEntry("JMP", "111");
}

Parser::~Parser() {
    compDict.clear();  // Borra toda la informacion de la tabla de symble
    destDict.clear();
    jumpDict.clear();
}

void Parser::compEntry(string key, string val) {
    compDict.insert(pair<string, string>(key, val));
}
void Parser::destEntry(string key, string val) {
    destDict.insert(pair<string, string>(key, val));
}
void Parser::jumpEntry(string key, string val) {
    jumpDict.insert(pair<string, string>(key, val));
}

string Parser::compLookup(string instComp) {
    if (compDict.find(instComp) == compDict.end()) {
        return compDict.find("0")->second;  // entrada predeterminada
    } else {
        return compDict.find(instComp)->second;  // resultado de la busqueda
    }
}
string Parser::destLookup(string instDest) {
    if (destDict.find(instDest) == destDict.end()) {
        return destDict.find("null")->second;  // entrada predeterminada
    } else {
        return destDict.find(instDest)->second;  // resultado de la busqueda
    }
}
string Parser::jumpLookup(string instJump) {
    if (jumpDict.find(instJump) == jumpDict.end()) {
        return jumpDict.find("null")->second;  // entrada predeterminada
    } else {
        return jumpDict.find(instJump)->second;  // resultado de la busqueda
    }
}

string Parser::parseInst(string inst) {
    string tempInst;
    // Aqui reviso si contiene algun @
    if (inst.find('@') != string::npos) {
        tempInst = inst.substr(1, inst.size() - 1);  // esto quita el @
        return parseAInst(tempInst);                 // instancia para A
    } else {
        return parseCInst(inst);  // instancia para C
    }
}

string Parser::parseAInst(string inst) {
    // numeros plurales
    if (inst.find_first_not_of("0123456789") == string::npos) {
        return prefixA + bitset<15>(stoi(inst)).to_string();
    } else {
        // hay un numero en frente de la letra entonces
        if (inst.find_first_of("0123456789") < inst.find_first_not_of("0123456789")) {  // invalia!
            throw runtime_error("Parser::parseAInst(): invalid A-inst: number first");
        }
        uint16_t addr = MyST.lookupSymbol(inst);
        return prefixA + bitset<15>(addr).to_string();
    }
}

string Parser::parseCInst(string inst) {
    // divido la cadena inst por '=' y ';'
    string::size_type idxe = inst.find('=');
    string::size_type idxsc = inst.find(';');

    string instDest = (idxe == string::npos) ? "null" : inst.substr(0, idxe);
    string instComp = inst.substr(idxe + 1, idxsc - idxe - 1);
    string instJump = (idxsc == string::npos) ? "null" : inst.substr(idxsc + 1, inst.size() - 1);
    //Consulto la tabla de la busqueda
    return prefixC + compLookup(instComp) + destLookup(instDest) + jumpLookup(instJump);
}