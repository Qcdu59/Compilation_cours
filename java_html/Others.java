
public class Others extends Yytoken {

	public Others(String tok) {
		super(tok);
	}

	@Override
	public String html() {
		return new String("<FONT color=00ff00>"+this.getToken()+"</FONT>");
	}

}
