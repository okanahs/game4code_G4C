#import das bibliotecas necessarias para funcionamento da api
from crypt import methods
from flask import render_template, request, redirect, url_for
from app import app, db
from app.models import User
from flask_login import current_user, login_user, logout_user
import json

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
    return json.dumps(json_data_login)

@app.route('/', methods=['GET'])
def home():
    return render_template('home.html')

@app.route('/logout')
def logout():
    logout_user()
    return redirect(url_for('login'))

app.run(debug=True)