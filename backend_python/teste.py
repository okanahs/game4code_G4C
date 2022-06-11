
text_o = 'int soma(int a, int b){return a+b;} '
texto = str(text_o).split()

print(texto)
verificar = texto[1].find('(')
if verificar == -1:
    nome_metodo = texto[1]
else:
    nome_metodo = texto[1][:texto[1].find('(')]
print(nome_metodo)

with open('App.java','w') as arq:
    arq.write('public class App { static '+text_o+' public static void main(String[] args) throws Exception { int a = '+nome_metodo+'(1,2); System.out.println(a);'+'}'+'}')



