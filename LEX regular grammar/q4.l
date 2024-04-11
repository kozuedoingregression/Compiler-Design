%{
#include<stdio.h>
%}

%%
auto|double|int|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|float|short {printf("KEYWORDS \n");}

[{};,()] {printf("SEPERATOR \n");}
[+-/=*%] {printf("OPERATOR \n");}
([a-zA-Z][0-9])+|[a-zA-Z]* {printf("IDENTIFIER \n");}
[0-9]+ {printf("Digits \n");}
.|\n;
%%

void main()
{
	printf("Enter any program");
	yylex();
}

int yywrap()
{
return 1;
}
