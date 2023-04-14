#pragma once

#include<iostream>
#include<string>
#include<vector>
namespace ss_graph{
struct Node {
  std::string id;
  std::string class_name;
};

struct Edge {
  std::string src_id;
  std::string dst_id;
};

class Graph {

public:
    Graph() {}
    ~Graph() {}
    std::string DebugString();

private:
    std::vector<Node> nodes;
    std::vector<Edge> edges;
};

}
