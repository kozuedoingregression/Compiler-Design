%{
#include<stdio.h>
int word =0, tchar =0, space =0;
%}

%%
[" "] { space++, word++;}
[a-z A-Z] { tchar++; }
[\n\t] { word++; }
%%

void main()
{
yyin = fopen("van.txt","r");
yylex();
printf("Number of characters: %d\n", tchar);
printf("Number of space: %d\n",space);
printf("Number of words: %d\n", word);

}

int yywrap()
{
return 1;
}
