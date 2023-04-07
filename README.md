this code is test for bison parse dot language


### 第一步 生成语法解析嗲吗
生成Scanner.cpp 

``` 
sh gen_syntax.sh 
```

### 第二步 生成bin

```
bazel build //:main
```
