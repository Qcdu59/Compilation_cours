import java.io.FileReader;

public class Main {

	public static void main(String[] args) {
		try
		{
			Yylex yy = new Yylex(new FileReader (args [0]));
			parser p = new parser(yy);
			Object result = p.parse();
			System.out.println("\nfile ok");
		}
		catch(Exception e)
		{
			System.out.println("Bigre");
			e.printStackTrace();
		}
	}

}
