#ifndef SS_SCANNER_H
#define SS_SCANNER_H

#ifndef __FLEX_LEXER_H
#include<FlexLexer.h>
#endif
#include "DotBisonParser.hpp"

namespace sslib {


class DotScanner:public yyFlexLexer {
public:
	DotScanner(std::istream *input, std::ostream *output);
	virtual ~DotScanner();
  typedef DotBisonParser::semantic_type semantic_type;
  typedef DotBisonParser::token_type token_type;
  typedef DotBisonParser::token token;
	virtual token_type yylex(semantic_type* yylval);
};
}

#endif
