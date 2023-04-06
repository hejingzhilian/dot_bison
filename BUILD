load("//:bazel:defs.bzl", "genyacc", "genlex")
cc_binary(
    name = "main",
    srcs = ["main.cpp","Scanner.h", "Scanner.cpp"],
    deps = [":scanner"]
)

genlex(
    name = "scanner",
    src = "Scanner.ll",
)
