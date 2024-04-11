%{
#include<stdio.h>
%}

%%
[0-9]+ {printf("this is an integer number");}
[0-9]*.[0-9]+ {printf("this is a floating number");}
.* {printf("you have entered a wron number");}
%%

void main()
{
	printf("enter any number you want to check: \n");
	yylex();
}

int yywrap()
{
return 1;
}
