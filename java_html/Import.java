
public class Import extends Yytoken {

	public Import(String tok) {
		super(tok);
	}

	@Override
	public String html() {
		return new String("<FONT color=007f00>"+this.getToken()+"</FONT>");
	}

}
