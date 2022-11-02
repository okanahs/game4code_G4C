#import das bibliotecas necessarias para funcionamento da api
from crypt import methods
from urllib import response
from flask import render_template, request, redirect, url_for, session
from app import app, db
from app.models import User, Pergunta, Cod
from flask_login import current_user, login_user, logout_user
import json
import os

#rota de registro
@app.route('/register', methods=['GET','POST'])
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
            #return redirect(url_for('register'))
    #return render_template('register.html')
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

@app.route('/logout')
def logout():
    logout_user()
    return redirect(url_for('login'))

@app.route('/pergunta/<id>', methods=['GET','POST'])
def pergunta(id):
    if request.method == 'GET':
        usuarios_classe = Pergunta.query.filter_by(_id=id).first()
        usuarios_json = usuarios_classe.to_json_p()
        #pergunta = Pergunta.query.filter_by(_id=id).first()
        #json_data_pergunta = Pergunta.to_json_p(pergunta)
        print(usuarios_json)
        #return json.dumps(json_data_pergunta)
    return json.dumps(usuarios_json)

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




@app.route('/cod', methods=['GET','POST'])
def codi():
    if request.method == 'POST':
        codig = request.json['cod']
        json_data = Cod.to_json_c(codig)
        if codig:
            codigo = Cod(codig)
            print(codigo)
            db.session.add(codigo)
            db.session.commit()
            print(json_data)
    return json.dumps(json_data)

@app.route('/selcusers', methods=['GET','POST'])
def selusers():
    with open('us.txt','r') as p:
        a = p.read()
    usuarios_classe = User.query.filter_by(nome=a).first()
    usuarios_json = usuarios_classe.to_jsonu()
    return json.dumps(usuarios_json)


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

@app.route('/rodacod')
def rodacod_():
    print('teste2')
    return 'teste'

app.run(host='0.0.0.0',debug=True)

