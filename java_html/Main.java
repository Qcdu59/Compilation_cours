import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

public class Main {
	public static void main( String [] argv) throws FileNotFoundException, UnsupportedEncodingException {
		if (argv.length == 0) {
			System.err.println("Utilisation : java JavaSyntax <inputfile>");
		}
		else
		{
			PrintWriter writer = new PrintWriter("java.html", "UTF-8");
			writer.println("<HTML>");
			writer.println("<BODY bgcolor = #DDDDDD>");
			try{
				// écrire la page de titre et CODE
				writer.println("<H2>"+argv[0]+"</H2>");
				writer.println("<CODE>");
				JavaSyntax scanner = new JavaSyntax(new BufferedReader(new FileReader(argv[0])));
				Yytoken token;
				while ((token=scanner.yylex()) != null ) {
					writer.println(token.html());
				}
				writer.println("</CODE>");
			}
			catch(java.io.FileNotFoundException e) {
				writer.println("Fichier non trouvé : \""+ argv[0] +"\"");
			}
			catch(Exception e) {
				writer.println("Unexpected exception:");
				e.printStackTrace();
			}

			writer.println("</BODY>");
			writer.println("</HTML>");
			writer.close();
		}
	}
}
