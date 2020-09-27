%{
    #include <stdio.h>
    #include <string.h>
%}

NUMERO[0-9]
MATRIZCARACTERES[a-zA-Z0-9]
COMENTARIO[^*/]*
ESPACOVAZIO[ ]

%%
Begin {printf("Palavra Reservada: %s \n",yytext);}
End {printf("Palavra Reservada: %s \n",yytext);}
If {printf("Palavra Reservada: %s \n",yytext);}
Then {printf("Palavra Reservada: %s \n",yytext);}
Else {printf("Palavra Reservada: %s \n",yytext);}
Do {printf("Palavra Reservada: %s \n",yytext);}
Return {printf("Palavra Reservada: %s \n",yytext);}
Break {printf("Palavra Reservada: %s \n",yytext);}
Int   {printf("Palavra Reservada: %s \n",yytext);}
Float {printf("Palavra Reservada: %s \n",yytext);}
Double {printf("Palavra Reservada: %s \n",yytext);}
String {printf("Palavra Reservada: %s \n",yytext);}
";"     {printf("TOKEN_FECHA_LINHA: %s\n",yytext);}
"+"     {printf("TOKEN_SOMA: %s \n>\n",yytext);}
"-"     {printf("TOKEN_SUBTRACAO: %s\n",yytext);}
"*"     {printf("TOKEN_MULTIPLICACAO: %s\n",yytext);}
"/"     {printf("TOKEN_DIVISAO: %s\n", yytext);}
"{"     {printf("TOKEN_ABRE_CONDICAO: %s\n",yytext);}
"}"     {printf("TOKEN_FECHA_CONDICAO: %s\n",yytext);}
"["     {printf("TOKEN_ABRE_MATRIZ: %s\n",yytext);}
"]"     {printf("TOKEN_FECHA_MATRIZ: %s\n",yytext);}
"("     {printf("TOKEN_FECHA_PARENTESES: %s\n",yytext);}
")"     {printf("TOKEN_FECHA_PARENTESES: %s\n",yytext);}
"="     {printf("TOKEN_ATRIBUI_VALOR: %s\n",yytext);}
"!"     {printf("TOKEN_NEGACAO: %s\n",yytext);}
"!="    {printf("TOKEN_DIFERENTE: %s\n",yytext);}
">"     {printf("TOKEN_MAIOR: %s\n",yytext);}
"<"     {printf("TOKEN_MENOR: %s\n",yytext);}
"||"    {printf("TOKEN_OU: %s\n",yytext);}
"&&"    {printf("TOKEN_E: %s\n",yytext);}
">="    {printf("TOKEN_MAIOR_IGUAL: %s\n",yytext);}
"<="    {printf("TOKEN_MENOR_IGUAL: %s\n",yytext);}
"=="    {printf("TOKEN_IGUAL: %s\n",yytext);}

{NUMERO}+ { printf("Inteiro: %s \n",yytext); }
{NUMERO}+"."{NUMERO}+ { printf("REAL: %s \n",yytext);}
{MATRIZCARACTERES} { printf("Array de caracteres: %s \n",yytext);}
"//"{COMENTARIO} { printf("Comentarios: %s \n",yytext);}
%%

int yywrap();

int main(void){
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}

