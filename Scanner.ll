%{
#include"Scanner.h"
using namespace sslib;
#undef YY_DECL
#define YY_DECL  int Scanner::yylex()
%}

%option c++
%option noyywrap

%option yyClass="Scanner"

DIGIT            [0-9]
HEXDIGIT         [0-9a-fA-F]
ID_FIRST_CHAR    [_[:alpha:]]
ID_CHAR          [_[:alnum:]]
SPECIAL_SYMBOL   [\%()+*\-/|^&@~:#,;\[\]\{\}]



%%

AND {
    std::cout << "input AND"<< std::endl;
    return 1;
}

%%

namespace sslib {
Scanner::Scanner(std::istream *input, std::ostream *output)
    : yyFlexLexer(input, output)
{
}

Scanner::~Scanner() {
}

}

