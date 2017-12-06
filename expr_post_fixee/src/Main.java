

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Stack;

public class Main {

	public static void main(String[] args) throws IOException {
		Stack<Number> numbers = new Stack<>();
		
		Yylex yy = new Yylex(new BufferedReader(new FileReader (args [0])));
		Yytoken token;
		
		while((token=yy.yylex())!=null){
			if(token.isOpe()){
				Number value = calcul(numbers, (Operation)token);
				numbers.push(value);
			}
			else{
				numbers.push((Number)token);
			}
		}
		
		System.out.println(numbers.pop().token);
	}

	private static Number calcul(Stack<Number> numbers, Operation ope) {
		Number value = null;
		
		switch (ope.token) {
		case "+":
			value = new Number(numbers.pop().value + numbers.pop().value+"");
			break;
		case "-":
			value = new Number(numbers.pop().value - numbers.pop().value+"");
			break;
		case "/":
			value = new Number(numbers.pop().value / numbers.pop().value+"");
			break;
		case "*":
			value = new Number(numbers.pop().value * numbers.pop().value+"");
			break;
		default:
			break;
		}
		
		return value;
	}

}
