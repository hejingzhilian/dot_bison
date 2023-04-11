#load("//:bazel/flex.bzl",  "genflex")
# NOTE(shishuai) gen rule not success use shell for tem
#genflex(
#    name = "scanner",
#    src = "Scanner.ll",
#    out = "Scanner.cpp"
#)

#load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
#
#http_archive(
#  name = "com_google_googletest",
#  urls = ["https://github.com/google/googletest/archive/5ab508a01f9eb089207ee87fd547d290da39d015.zip"],
#  strip_prefix = "googletest-5ab508a01f9eb089207ee87fd547d290da39d015",
#)

cc_binary(
    name = "main",
    srcs = ["main.cpp","Scanner.h", "Scanner.cpp"],
)

cc_test(
  name = "hello_test",
  size = "small",
  srcs = ["hello_test.cc"],
  deps =["@gtest//:gtest_main"]
)
