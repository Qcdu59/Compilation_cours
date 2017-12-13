%%

%class DogCat

%public
%unicode
%standalone

%states DOG,LETTREC,CAT

d=[dD]
o=[oO]
g=[gG]
c=[cC]
a=[aA]
t=[tT]

%%
<YYINITIAL>{d}{o}{g}
{
yybegin(DOG);
System.out.println("DOG");
}
<DOG>[^cC]*{c}
{
}
<LETTREC>{a}
{
}
<LETTREC>[^aA]	{
				}

<CAT>[^tT]	{
			}
<CAT>{t}	{
				yybegin(YYINITIAL);
				System.out.println("CAT");
			}
.
{ ; }