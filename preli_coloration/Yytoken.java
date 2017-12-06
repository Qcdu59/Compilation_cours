public class Yytoken {
    public String description;
    private int value;

    public Yytoken(String d) {
	description = d;
	value = 0;
    }

    public Yytoken(String d, int v) {
	this(d);
	value = v;
    }

    @Override
    public String toString() {
	return description+"("+value+")";
    }
}
