%%

%unicode

ENTIER=[:digit:]+
OPE="*"|"+"|"/"|"-"

%%
{ENTIER}	{return new Number(yytext());}
{OPE}	{return new Operation(yytext());}
"\n" {;}
.	{;}