cc_library(
	name="syntax_lib",
	srcs= ["DotScanner.cpp"],
	hdrs = ["DotScanner.h"]
)

cc_test(
  name = "syntax_test",
  size = "small",
  srcs = ["test/dot_scanner_test.cc"],
  deps =["@gtest//:gtest_main",":syntax_lib"]
)
