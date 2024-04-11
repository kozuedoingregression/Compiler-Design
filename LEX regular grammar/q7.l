%{
#include<stdio.h>
%}
%%
\/\/(.*) ;
\/\(.\n).\*\/ ;
%%

int yywrap()
{
return 1;
}
int main()
{
yyin=fopen("input7.c","r");
yyout=fopen("out7.c","w");
yylex();
return 0;
}
