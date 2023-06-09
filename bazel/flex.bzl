def genflex(name, src, out, prefix="./", includes = [], visibility = None):
    """Generate a C++ lexer from a lex file using Flex.
    Expects to find flex binary on the PATH.
    Args:
      name: The name of the rule.
      src: The .lex source file.
      out: The generated source file.
      includes: A list of headers included by the .lex file.
      prefix: Passed to flex as the -P option.
      visibility: visibility of this rule to other packages.
    """
    cmd = "flex -o %s -P %s %s" % (out, prefix, src)

    print(cmd)
    native.genrule(
        name = name,
        outs = [out],
        srcs = [src] + includes,
        cmd = cmd,
        visibility = visibility,
    )
