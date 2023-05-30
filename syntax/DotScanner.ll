%{
#include"DotScanner.h"
using namespace sslib;
#undef YY_DECL
#define YY_DECL  int DotScanner::yylex()
%}

%option c++
%option noyywrap

%option yyClass="DotScanner"

DIGIT            [0-9]
HEXDIGIT         [0-9a-fA-F]
ID_FIRST_CHAR    [_[:alpha:]]
ID_CHAR          [_[:alnum:]]
SPECIAL_SYMBOL   [\%()+*\-/|^&@~:#,;\[\]\{\}]
%%

{ID_FIRST_CHAR}{ID_CHAR}* {
    std::cout << "|" << YYText() << "|IDENTIFIER|" std::endl;
    yylval->stringVal = new std::string(YYText(), YYLeng());
    return token::IDENTIFIER;
}

%%

namespace sslib {
DotScanner::DotScanner(std::istream *input, std::ostream *output)
    : yyFlexLexer(input, output)
{
}

DotScanner::~DotScanner() {
}

}

