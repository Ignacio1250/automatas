package jid;
import static jid.Token.*;
%%
%class lex
%type Token
L=[a-z]
D=[0-9]
white=[ ,\n]
%{
public String lexeme;
%}
%%
{white} {/* ignore */}
"//".* {/* ignore */}
"=" {return igual;}
"+" {return suma;}
{L} {lexeme=yytext(); return Variable;}
{D} {lexeme=yytext(); return Numero;}
"*" {return multiplicacion;}
"-" {return resta;}
"/" {return division;}
":{v" {return llaveApertura;}
"v}:" {return llaveCerradura;}
"public" {return ModificadorDeAcceso;}
";" {return puntoYcoma;}
"funcion" {return InicioDeFuncion;}
"Int" {return Entero;}
"void" {return MetPrincipal;}
"cadena" {return Cadena;}
"Car"  { return Caracter;}
.   {return ERROR;}
