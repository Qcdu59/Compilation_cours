

public class Number extends Yytoken {

	public int value;
	
	public Number(String token) {
		super(token);
		value = Integer.parseInt(token);
	}

	@Override
	public boolean isOpe() {
		return false;
	}

}
