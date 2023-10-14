%{
    #include<stdlib.h>
    extern int yylval;
    #include "y.tab.h"
%}
%%
[a-z] {yylval=*yytext-'a'; return id;}
[0-9]+ {yylval = atoi(yytext); return digit;}
[-+()=/*\n] {return *yytext;}
[ \t] ;
%%
int yywrap(void){
    return 1;
}