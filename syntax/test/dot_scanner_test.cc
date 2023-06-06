#include"gtest/gtest.h"
#include "syntax/DotScanner.h"


class DotScannerTest:public ::testing::Test {
public:
    DotScannerTest() {
        std::cout << " init Dot DotScannerTest" << std::endl;
    }
protected:
    int i;
};


TEST_F(DotScannerTest, yylexTest) {
    std::string test_str="aaaaaaaaa aaaaaa";
    std::istringstream iss(test_str);
    sslib::DotScanner dot(&iss, &std::cout);
    sslib::DotBisonParser::semantic_type  stype;
    dot.yylex(&stype) ;
    // dot.yylex(&stype) ;
}


int main(int argc , char * argv[]) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}



