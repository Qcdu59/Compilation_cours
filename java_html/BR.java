

public class BR extends Yytoken {

	public BR(String tok) {
		super(tok);
	}

	@Override
	public String html() {
		return new String("<br>");
	}
}
