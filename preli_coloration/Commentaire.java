import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class Commentaire {
    public static void main(String [] args) throws IOException {
	System.out.println(args[0]);

	EnleveCommentaires yy = null;
	yy = new EnleveCommentaires(new FileReader(args[0]));

	Yytoken token;

	while((token = yy.yylex()) != null) {
	    System.out.print(token.description.toUpperCase());
	}
    }
}
