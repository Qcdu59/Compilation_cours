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
<YYINITIAL>{d}{o}{g}	{
			yybegin(DOG);
			System.out.println("DOG");
			}
<DOG>[^cC]*{c}	{
		yybegin(LETTREC);
		System.out.println(yytext());
		//TODO enlever c
		}
				
<LETTREC>{a}	{
		yybegin(CAT);
		System.out.println(yytext());
		}
				
<LETTREC>[^aA]	{
		yybegin(DOG);
		System.out.println(yytext());
		}

<CAT>[^tT]	{
		yybegin(DOG);
		System.out.println(yytext());
		}
			
<CAT>{t}	{
		yybegin(YYINITIAL);
		System.out.println("CAT");
		}
.	{ ; }