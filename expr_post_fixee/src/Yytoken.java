

public abstract class Yytoken {
	public String token;
	public Yytoken(String token){
		this.token=token;
	}
	
	public abstract boolean isOpe();
}
