main:Scanner.cpp
	g++  ./*.cpp -o main
Scanner.cpp:Scanner.ll
	flex -o Scanner.cpp Scanner.ll
