%{
#include<stdio.h>
%}
%%
[\t" "]+ fprintf(yyout," ");
.|\n fprintf(yyout,"%s",yytext);
%%
int yywrap()
{
return 1;
}
int main(void)
{
yyin=fopen("input6.txt","r");
yyout=fopen("output6.txt","w");
yylex();
return 0;
}
