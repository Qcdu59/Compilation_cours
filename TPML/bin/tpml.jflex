import java_cup.runtime.*;
%%


%unicode
%standalone
%cup
%line

BLANK=[ \t]
IDENT=("_"|[a-z]|[A-Z])("_"|[a-z]|[A-Z]|[0-9])*
PTVIRG=";"
IF="if"
ELSE="else"
OR=">"|"<"|"=="
VIRG=","
EGAL="="
ENTIER=[:digit:]+
READ="read"
PARG="("
PARD=")"
WRITE="write"
FOIS="*"
PLUS="+"
NEG="-"[:digit:]+
MOINS="-"
TYPE="int"

%%
{TYPE}		{System.out.println("TYPE");return new Symbol(sym.TYPE);}
{VIRG}		{System.out.println("VIRG");return new Symbol(sym.VIRG);}
{PTVIRG} 	{System.out.println("PTVIRG");return new Symbol(sym.PV);}
{EGAL}		{System.out.println("EGAL");return new Symbol(sym.EGAL);}
{IF}		{System.out.println("IF");return new Symbol(sym.IF);}
{ELSE}		{System.out.println("ELSE");return new Symbol(sym.ELSE);}
{OR}		{System.out.println("OR");return new Symbol(sym.OR);}
{ENTIER}	{System.out.println("ENTIER");return new Symbol(sym.ENTIER);}
{NEG}		{System.out.println("NEG");return new Symbol(sym.NEG);}
{READ}		{System.out.println("READ");return new Symbol(sym.READ);}
{PARG}		{System.out.println("PARG");return new Symbol(sym.PG);}
{PARD} 		{System.out.println("PARD");return new Symbol(sym.PD);}
{WRITE}		{System.out.println("WRITE");return new Symbol(sym.WRITE);}
{FOIS}		{System.out.println("FOIS");return new Symbol(sym.FOIS);}
{PLUS}		{System.out.println("PLUS");return new Symbol(sym.PLUS);}
{MOINS} 	{System.out.println("MOINS");return new Symbol(sym.MOINS);}
{IDENT}		{System.out.println("IDENT");return new Symbol(sym.IDENT);}
{BLANK} 	{;}
"\n" 		{;}
.			{System.out.println(yytext());}