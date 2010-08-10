%{
#include <stdio.h>
#include <stdlib.h>

void
yyerror(const char* msg)
{
  fprintf(stderr, "ERROR: %s\n", msg);
}

int yylex();

%}

%token USERNAME

%%

foo: USERNAME
 ;

%%
