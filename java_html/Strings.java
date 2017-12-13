
public class Strings extends Yytoken {

	public Strings(String tok) {
		super(tok);
	}

	@Override
	public String html() {
		return new String("<FONT color=0000ff>"+this.getToken()+"</FONT>");
	}

}
