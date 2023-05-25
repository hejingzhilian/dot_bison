#ifndef SS_SCANNER_H
#define SS_SCANNER_H

#ifndef __FLEX_LEXER_H
#include<FlexLexer.h>
#endif

namespace sslib {
class DotScanner:public yyFlexLexer {
public:
	DotScanner(std::istream *input, std::ostream *output);
	virtual ~DotScanner();
	virtual int yylex();
};
}

#endif
