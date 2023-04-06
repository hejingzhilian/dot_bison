#include "Scanner.h"
#include <string>
#include <iostream>
#include <sstream>

int main(int argc, char ** argv) {
 	const std::string str("AND 1111");
	std::istringstream iss(str);
       		
	sslib::Scanner scanner(&iss,&std::cout);

	int i = scanner.yylex();
	std::cout <<  "yylex " << i<< std::endl; 
	i = scanner.yylex();
	std::cout <<  "yylex " << i<< std::endl; 
	return 0;
}
