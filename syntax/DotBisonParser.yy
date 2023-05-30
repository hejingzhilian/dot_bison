%{


%}

%skeleton "lalr1.cc"
%define "parser_class_name" "DotBisonParser"

%token IDENTIFIER

%%
 stat : IDENTIFIER {}
%%



