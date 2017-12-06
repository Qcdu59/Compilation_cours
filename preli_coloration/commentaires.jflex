%%
%unicode
%line
%class EnleveCommentaires

LETTERS=[:letter:]+
NUMBERS=([:digit:])+

%%

"//".* { ; }
{NUMBERS}	 { ; }
{LETTERS} {return new Yytoken(yytext());}
\n   {return new Yytoken("\n"); }
.   {return new Yytoken(yytext()); }