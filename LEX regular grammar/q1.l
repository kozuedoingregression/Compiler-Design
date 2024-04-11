%{
#include<stdio.h>
int line=0, space=0, tab=0, total_char=0;
%}
%%
[\n] {line++;}
[" "] {space++;}
[ \t] {tab++;}
[^\t \n " "] {total_char++;}
%%
void main()
{
printf("enter the sentence");
yylex();
printf("number of lines : %d\n",line);
printf("number of spaces : %d\n",space);
printf("number of words : %d\n",total_char);
printf("number of tabs : %d\n",tab);
}
int yywrap()
{
return 1;
}
