JFLEX  = java -jar jflex.jar
JAVAC  = javac

# targets:

all: AsdrJson.class

clean:
	rm -f *~ *.class Yylex.java

AsdrJson.class: AsdrJson.java Yylex.java
	$(JAVAC) AsdrJson.java

Yylex.java: json_lex.flex
	$(JFLEX) json_lex.flex

