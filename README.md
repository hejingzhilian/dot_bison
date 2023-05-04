this code is test for bison parse dot language


### docker 

依赖的docker hejingzhilian/bison_practise

```
~~docker run -dt hejingzhilian/bison_practise:latest /bin/bash --name bison_test~~

~~docker exec -it bison_test /bin/bash~~
```



### 第一步 生成语法解析代码
生成Scanner.cpp 

``` 
sh gen_syntax.sh 
```

### 第三步 生成bin

```
bazel build //:main
```


## 单测

单测可以参考如下代码

```
bazel test --test_output=all //:hello_test
```
