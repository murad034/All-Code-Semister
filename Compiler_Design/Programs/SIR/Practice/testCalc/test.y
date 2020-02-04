
%{
#include <stdio.h>
#include <stdlib.h>
extern int yylex();
void yyerror(char *s);
%}

%union{int a_number;}

%start	line 
%token	<a_number> DIGIT
%type	<a_number> term factor  expr

%%

line:  expr'\n' {printf("%.2f",$1);}
;
expr : expr '+' term {$$=$1+$3;}
      |term
      ;
term: term '*' factor {$$=$1*$3;}
     |factor
     ;
factor:'('expr')'  {$$=$2;}
       |DIGIT
	;

%%
