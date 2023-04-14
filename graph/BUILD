cc_library(
	name="graph_lib",
	srcs= ["graph.cpp"],
	hdrs = ["graph.h"]
)

cc_test(
  name = "graph_test",
  size = "small",
  srcs = ["test/graph_test.cc"],
  deps =["@gtest//:gtest_main",":graph_lib"]
)
