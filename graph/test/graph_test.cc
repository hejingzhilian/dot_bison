#include<iostream>

#include"gtest/gtest.h"
#include "graph/graph.h"

class GraphTest: public testing::Test {

public:
    GraphTest() {}
    ~GraphTest() {}
public:
    ss_graph::Graph graph;
};

TEST_F(GraphTest, DebugTest) {
   std::cout << graph.DebugString() << std::endl;
}

int main(int argc, char* argv[]) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
