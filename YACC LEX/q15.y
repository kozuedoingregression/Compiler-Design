%{
#include <stdio.h>
#include "y.tab.h"

void yyerror(char *s);
int yylex(void);
int sym[26];
%}

%token id digit
%left '+' '-'
%left '*' '/'

%%
P: P S '\n'
 | ;
S: E { printf("Output: %d\n", $1); }
 | id '=' E { sym[$1] = $3; }
;
E: digit { $$ = $1; }
 | id { $$ = sym[$1]; }
 | E '+' E { $$ = $1 + $3; }
 | E '-' E { $$ = $1 - $3; }
 | E '*' E { $$ = $1 * $3; }
 | E '/' E { $$ = $1 / $3; }
 | '(' E ')' { $$ = $2; }
;
%%

void yyerror(char *s) {
    fprintf(stderr, "%s\n", s);
}

int main(void) {
    yyparse();
    return 0;  // Add the missing semicolon here
}

