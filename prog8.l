%{
%}
digit [0-9]
alpha [a-zA-Z0-9]
%%
"<"{alpha}*{digit}*">" fprintf(yyout,"%s",yytext);
"<"[/]{alpha}*{digit}*">" fprintf(yyout,"%s",yytext);
. ;
%%

int yywrap(){
    return 1;
};

int main()
{
    extern FILE *yyin,*yyout;
    yyin=fopen("Input.html","r");
    yyout=fopen("Output.html","w");
    yylex();
    return 0;
}