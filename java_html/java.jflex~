%%

%unicode
%standalone

WORDS=[:letter:]+
KEY_WORDS="if"|"then"|"else"|"while"|"do"|"switch"
	|"case"|"break"|"for"|"return"|"void"|"int"|"float"
	|"double"|"char"|"long"|"unisigned"|"signed"|"public"
	|"private"|"protected"|"class"|"System"|"out"|"println"
	|"print"|"static"|"abstract"|

INTEGERS=[:digit:]+
IMPORTS="import ".WORD.WORD.WORD$
STRINGS=\".(WORD." "*)*.\"
IDS=("_"|[a-z]).("_"|[a-Z]|[0-9])+
OPE="+"|"*"|"-"|"/"|"="|"=="|"!="|">"|">="|"<="|"<"|"!"

%%

"\n"	{;}
.    {;}