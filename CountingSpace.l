%{
    #include<stdio.h>
%}

/*Rule Section*/
%%

([a-zA-Z][0-9])+|[a-zA-Z]* { printf("Identifier\n"); }   

^[0-9]+ { printf("Not a Identifier\n"); }

.|\n;

%%

int yywrap()					
{
    return 1;
}

int main()
{
    yylex();						
    return 0;
}
