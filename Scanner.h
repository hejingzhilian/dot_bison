#ifndef SS_SCANNER_H
#define SS_SCANNER_H

#ifndef __FLEX_LEXER_H
#include<FlexLexer.h>
#endif

namespace sslib {
class Scanner:public yyFlexLexer {
public:
	Scanner(std::istream *input, std::ostream *output);
	virtual ~Scanner();
	virtual int yylex();
};
}

#endif
