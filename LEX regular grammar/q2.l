%{
#include<stdio.h>
%}

%%
^[a-z A-Z _][a-z A-Z 0-9 _] {printf("Valid Identifier");}
^[^a-z A-Z _] {printf("Invalid Identifier");}
.;
%%

void main()
{
printf("Enter any Identifier to check: \n");
yylex();
}

int yywrap()
{
return 1;
}
