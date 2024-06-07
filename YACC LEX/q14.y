%{
#include <stdio.h>
#include <stdlib.h>
void yyerror(const char *msg);
int yylex(void);
%}

%token NUM
%left '+' '-'
%left '*' '/'
%right NEGATIVE

%%
S: E { printf("\n"); }
;

E: E '+' E { printf("+"); }
 | E '*' E { printf("*"); }
 | E '-' E { printf("-"); }
 | E '/' E { printf("/"); }
 | '(' E ')'
 | '-' E %prec NEGATIVE { printf("-"); }
 | NUM { printf("%d", yylval); }
;

%%
int main() {
    return yyparse();
}

void yyerror(const char *msg) {
    printf("error YACC: %s\n", msg);
}

