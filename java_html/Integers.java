
public class Integers extends Yytoken {

	public Integers(String tok) {
		super(tok);
	}

	@Override
	public String html() {
		return new String("<FONT color=7f0000>"+this.getToken()+"</FONT>");
	}

}
