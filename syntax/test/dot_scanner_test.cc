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
    
}


int main(int argc , char * argv[]) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}



