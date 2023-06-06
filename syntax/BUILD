cc_library(
	name="syntax_lib",
	srcs= glob(["*.cpp"]),
  copts=["-fpermissive","-DYYDEBUG"],
	hdrs = glob(["*.h"]) + glob(["*.hpp"]) + glob(["*.hh"])
)

cc_test(
  name = "syntax_test",
  size = "small",
  srcs = ["test/dot_scanner_test.cc"],
  deps =["@gtest//:gtest_main",":syntax_lib"]
)
