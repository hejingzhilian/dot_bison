%{
#include"DotScanner.h"
#include <iostream>
#include "DotBisonParser.hpp"
using namespace sslib;

typedef DotBisonParser::semantic_type semantic_type;
typedef DotBisonParser::token_type token_type;
typedef DotBisonParser::token token;
	
#undef YY_DECL
#define YY_DECL token_type DotScanner::yylex(semantic_type* yylval)

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
    std::cout << "|" << YYText() << "|IDENTIFIER|" <<std::endl;
    yylval->stringVal = new std::string(YYText(), YYLeng());
    //  return token::IDENTIFIER;
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

