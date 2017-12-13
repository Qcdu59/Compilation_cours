%%

%unicode
%class JavaSyntax

WORDS=[:letter:]+
KEY_WORDS="if"|"then"|"else"|"while"|"do"|"switch"
	|"case"|"break"|"for"|"return"|"void"|"int"|"float"
	|"double"|"char"|"long"|"unisigned"|"signed"|"public"
	|"private"|"protected"|"class"|"System"|"out"|"println"
	|"print"|"static"|"abstract"
INTEGERS=[:digit:]+
IMPORTS="import "{WORDS}\.{WORDS}\.{WORDS}
STRINGS=\"({WORDS}" "*)*\"
IDS=("_"|[a-z]|[A-Z])("_"|[a-z]|[A-Z]|[0-9])+
OPE="+"|"*"|"-"|"/"|"="|"=="|"!="|">"|">="|"<="|"<"|"!"|"||"|"&&"|"%"
OTHERS="{"|"}"|"("|")"|";"

%%

{IMPORTS} {return new Import(yytext());}
{KEY_WORDS} {return new KeyWord(yytext());}
{IDS} {return new Ids(yytext());}
{INTEGERS} {return new Integers(yytext());}
{OPE} {return new Ope(yytext());}
{STRINGS} {return new Strings(yytext());}
{OTHERS} {return new Others(yytext());}

"\n"	{return new BR(yytext());}
.    {;}