
public class Ids extends Yytoken {

	public Ids(String tok) {
		super(tok);
	}

	@Override
	public String html() {
		return new String("<FONT color=007f7f>"+this.getToken()+"</FONT>");
	}

}
