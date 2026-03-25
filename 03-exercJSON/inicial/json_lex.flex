import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.List;
import java.util.ArrayList;
%%

%{
  private AsdrJson yyparser;

  public Yylex(java.io.Reader r, AsdrJson yyparser) {
    this(r);
    this.yyparser = yyparser;
  }


%} 
%public
%integer
%unicode
%line


%%

\"[^\"]*\"                         {return AsdrJson.STRING;}
[0-9]+(\.[0-9]+)?                  {return AsdrJson.NUM;}


"{" |
"}" |
"," |
":" |
"[" |
"]"      {return yytext().charAt(0);}

\r |
\n |
\r\n  {}

[ \t] {}

. { System.out.println("Linha: "+ yyline +", Caracter invalido: " + yytext());}

