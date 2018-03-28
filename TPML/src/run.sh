java -jar java-cup-11b.jar tpml.cup
javac -cp .:java-cup-11b.jar sym.java
jflex tpml.jflex
javac -cp java-cup-11b.jar:. parser.java 
javac -cp java-cup-11b.jar:. Yylex.java 
javac -cp .:java-cup-11b.jar Main.java
java -cp .:java-cup-11b.jar Main walou.ml

