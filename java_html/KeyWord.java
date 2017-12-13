
public class KeyWord extends Yytoken {
	public KeyWord(String tok) {
		super(tok);
	}

	@Override
	public String html() {
		return new String("<FONT color=00007f>"+this.getToken()+"</FONT>");
	}
}
