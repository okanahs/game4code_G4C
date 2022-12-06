#import das bibliotecas necessarias para funcionamento da api
// no windows essa linha do import do crypt pode ser comentada.
from crypt import methods
from urllib import response
from flask import Response, render_template, request, redirect, url_for, session, jsonify
from sqlalchemy import JSON
from app import app, db
from app.models import User, Pergunta, Cod, P1, Compile
from flask_login import current_user, login_user, logout_user
import json
import os
import time
from Strings import teste

#rota de registro
@app.route('/registrar', methods=['POST'])
def register():
    if request.method == 'POST':
        nome = request.json['nome']
        email = request.json['email']
        senha = request.json['senha']
        json_data = User.to_json(nome, email, senha)
        if nome and email and senha:
            user = User(nome, email, senha)
            print(user)
            db.session.add(user)
            db.session.commit()
            print(json_data)
    return json.dumps(json_data)


@app.route('/login', methods=['GET','POST'])
def login():
    if request.method == 'POST':
        #nome = request.json['nome']
        email = request.json['email']
        senha = request.json['senha']
        json_data_login = User.to_json_login(email, senha)
        user =  User.query.filter_by(email=email).first()
        if not user and not user.verify_password(senha):
            print('Não  Logado')
        login_user(user)
        #return redirect(url_for('home'))
        print(current_user.nome)
    print(current_user.nome)
    #return render_template('login.html')
    with open('us.txt','w') as p:
        p.write(current_user.nome)
    return json.dumps(json_data_login)

@app.route('/gravapergunta', methods=['GET','POST'])
def gravapergunta():
    if request.method == 'POST':
        p = request.json['pergunta']
        json_data = Pergunta.to_json_p(p)
        if p:
            db.session.add(Pergunta(p))
            db.session.commit()
            print(json_data)
    return json.dumps(json_data)

@app.route('/selcusers', methods=['GET','POST'])
def selusers():
    with open('us.txt','r') as p:
        a = p.read()
    usuarios_classe = User.query.filter_by(nome=a).first()
    usuarios_json = usuarios_classe.to_jsonu()
    print(usuarios_json)
    return json.dumps(usuarios_json)

@app.route('/pergunta1',methods=['GET'])
def perg():
    p = P1.query.all()
    print(p)
    a = [pergunta.to_json_p1() for pergunta in p ]
    print(a)
    print('o tamanho de a é: '+str(len(a)))
    print(a[0])
    print(a[1])
    return json.dumps(a[0])

@app.route('/pergunta/<id>',methods=['GET'])
def pergunta_(id):
    p = Pergunta.query.filter_by(_id=id).first()
    print(p)
    a = p.to_json_p()
    print(a)
    return json.dumps(a)

@app.route('/gravacod', methods=['GET','POST'])
def gravacod():
    if request.method == 'POST':
        p = request.json['codigo']
        json_data = Cod.to_json_c(p)
        if p:
            db.session.add(Cod(p))
            db.session.commit()
            print(json_data)
    return json.dumps(json_data)

@app.route('/createcode', methods=['GET','POST'])
def createCode():
    if request.method == 'POST':
        p1_codigo = request.json['p1_codigo']
        p2_codigo = request.json['p2_codigo']
        p3_codigo = request.json['p3_codigo']
        json_data = Compile.to_json_codigo_compilar(p1_codigo, p2_codigo, p3_codigo)
        if p1_codigo and p2_codigo and p3_codigo:
            codigo = Compile(p1_codigo, p2_codigo, p3_codigo)
            print(codigo)
            db.session.add(codigo)
            db.session.commit()
            print(json_data)
            print(json_data['p1_codigo'])
            with open("Media.java","w") as j:
                j.write("""import java.io.FileWriter;
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

                        }"""%(json_data['p1_codigo'], json_data['p2_codigo'], json_data['p3_codigo']))
    os.system("java Media.java")
    time.sleep(1)
    t = os.system("java Soma.java")
    with open("testo.txt","r") as x:
        y = x.read()
        print(y)
        if y == '3' and t == 0:
            print('seu codigo está ok')
        else:
            print('seu codigo está errado')
            return json.dumps(json_data)
          
@app.route('/teste/<id>', methods=["GET","POST"])
def xxxx(id):
    p = Compile.query.filter_by(id=id).first()
    print(p)
    a = p.to_json_comp()
    print(a)
    print(a['p1_codigo'])
    
    with open("Media.java","w") as j:
        j.write("""import java.io.FileWriter;
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

}"""%(a['p1_codigo'], a['p2_codigo'], a['p3_codigo']))
    os.system("java Media.java")
    time.sleep(1)
    t = os.system("java Soma.java")
    with open("testo.txt","r") as x:
        y = x.read()
        print(y)
        if y == '3' and t == 0:
            print('seu codigo está ok')
        else:
            print('seu codigo está errado')

    return json.dumps(a)


    

app.run(host='0.0.0.0',debug=True)



