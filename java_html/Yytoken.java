public abstract class Yytoken {
	private String token;

	public Yytoken(String tok) {
		this.setToken(tok);
	}
	
	public abstract String html();

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}
}
