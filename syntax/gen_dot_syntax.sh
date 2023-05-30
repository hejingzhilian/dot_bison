#!/bin/bash


#NOTE(shishuai) flex Scanner
#

flex -o DotScanner.cpp DotScanner.ll 

bison  -d DotBisonParser.yy -o DotBisonParser.cpp
