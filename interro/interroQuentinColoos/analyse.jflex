%%

%standalone
%unicode

OBJECTIVE="<objective>"
FINOBJECTIVE="</objective>"
CONTRAINTE="<constraint>"
FINCONTRAINTE="</constraint>"
ENTIER=["-"]*[:digit:]
REEL={ENTIER}*"."{ENTIER}+
ID="x"[ENTIER]*
OPE="*"|"+"|"-"|"<="|">="

%%
{OBJECTIVE}	{System.out.println("<Objectif>");}
{FINOBJECTIVE}	{System.out.println("<Fin d'objectif>");}
{CONTRAINTE}	{System.out.println("<Contraintes>");}
{FINCONTRAINTE}	{System.out.println("<Fin de contraintes>");}
{ENTIER}	{System.out.println("entier " + yytext());}
{ID}		{System.out.println("identificateur " + yytext());}
{REEL}		{System.out.println("reel " + yytext());}
{OPE}		{System.out.println(yytext());}
"\n" {;}
.	{;}