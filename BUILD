#load("//:bazel/flex.bzl",  "genflex")
# NOTE(shishuai) gen rule not success use shell for tem
#genflex(
#    name = "scanner",
#    src = "Scanner.ll",
#    out = "Scanner.cpp"
#)

cc_binary(
    name = "main",
    srcs = ["main.cpp","Scanner.h", "Scanner.cpp"],
)


