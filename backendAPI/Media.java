import java.io.FileWriter;
                            import java.io.IOException;
                            import java.io.PrintWriter;
                            public class Media {
                            public static void main(String[] args) throws IOException {
                                String texto = "import java.io.IOException;"+

                                "import java.io.FileWriter;"+

                                "import java.io.PrintWriter;"+

                                "public class Soma{ "+

                                "	static int soma(int a, int b){"+

                                "int c;"+

                                "		return c;"+

                                "	}"+

                                "	public static void main(String[] args) throws IOException {"+

                                "		System.out.println(soma(1,2));"+

                                "		FileWriter arq = new FileWriter(\"testo.txt\");"+

                                "		try (PrintWriter gravarArq = new PrintWriter(arq)) {"+

                                "			gravarArq.printf(Integer.toString(soma(1,2)));"+

                                
                                "		}"+

                                "	}"+

                                "}";
                                    FileWriter arq = new FileWriter("Soma.java");
                                    try (PrintWriter gravarArq = new PrintWriter(arq)) {
                                        gravarArq.printf(texto);

                                    }

                                    arq.close();
                            
                            }

                        }