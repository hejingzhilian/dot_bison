#include "graph.h"

namespace  ss_graph {

std::string Graph::DebugString() {
     std::string ret;
     ret = "nodes : [";
     for (auto iter = nodes.begin();iter != nodes.end(); iter++) {
	 ret += "("+iter->id +","+iter->class_name+")";
     }
     ret += "] edges:[";
     
     for (auto iter = edges.begin();iter != edges.end(); iter++) {
	 ret += "("+iter->src_id +","+iter->dst_id+")";
     }

     ret += "]";
     return ret;
}
bool Graph::loadFromDotLanguage(std::string str) {




}


}
