
public class Ope extends Yytoken {

	public Ope(String tok) {
		super(tok);
	}

	@Override
	public String html() {
		return new String("<FONT color=White>"+this.getToken()+"</FONT>");
	}

}
