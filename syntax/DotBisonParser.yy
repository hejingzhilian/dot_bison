%{


%}
%parse-param {sslib::DotScanner &scanner}
%skeleton "lalr1.cc"

%code requires {
namespace sslib {
class DotScanner;
}
}


%define api.namespace sslib
%define "parser_class_name" "DotBisonParser"

%union {
    std::string *stringVal;
}

%{
#include "DotScanner.h"
#undef yylex
#define yylex scanner.yylex
%}
%token IDENTIFIER

%%
 stat : IDENTIFIER {}
%%


void sslib::DotBisonParser::error(const std::string& msg) {

}
