%{
#include "y.tab.h"
extern int yyval;
int ID;
%}
\n return 0;
%%
[0-9]+ { yylval=atoi(yytext); return NUM;}

. return *yytext;
%%
int yywrap(){
return 1;
}