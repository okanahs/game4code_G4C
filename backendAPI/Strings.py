teste = """import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;


public class Media {

  public static void main(String[] args) throws IOException {
    String texto = "import java.io.IOException;"+\n
    "import java.io.FileWriter;"+\n
    "import java.io.PrintWriter;"+\n
    "public class Soma{ "+\n
    "\tstatic int soma(%s){"+\n
    "%s"+\n
    "\t\treturn %s"+\n
    "\t}"+\n
    "\tpublic static void main(String[] args) throws IOException {"+\n
    "\t\tSystem.out.println(soma(1,2));"+\n
    "\t\tFileWriter arq = new FileWriter(\\"testo.txt\\");"+\n
    "\t\ttry (PrintWriter gravarArq = new PrintWriter(arq)) {"+\n
    "\t\t\tgravarArq.printf(Integer.toString(soma(1,2)));"+\n
    
    "\t\t}"+\n
    "\t}"+\n
    "}";
        FileWriter arq = new FileWriter("Soma.java");
        try (PrintWriter gravarArq = new PrintWriter(arq)) {
            gravarArq.printf(texto);

        }

        arq.close();
   
  }

}"""