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


%%

namespace sslib {
DotScanner::Scanner(std::istream *input, std::ostream *output)
    : yyFlexLexer(input, output)
{
}

Scanner::~Scanner() {
}

}

