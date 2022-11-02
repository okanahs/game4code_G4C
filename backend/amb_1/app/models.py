from app import db, login_manager
from werkzeug.security import generate_password_hash, check_password_hash
from flask_login import UserMixin

@login_manager.user_loader
def get_user(user_id):
    return User.query.filter_by(id=user_id).first()

#ao herdar o usermixin todos os metodos do flask login ja sao implementados em mixin.py
class User(db.Model, UserMixin):
    __tablename__ = 'users'
    id = db.Column(db.Integer, autoincrement=True,primary_key=True)
    nome = db.Column(db.String(50), nullable=False, unique=True)
    email = db.Column(db.String(100), nullable=False, unique=True)
    senha = db.Column(db.String(255), nullable=False)

    def __init__(self, nome, email, senha):
        self.nome = nome
        self.email = email
        self.senha = generate_password_hash(senha)
    def verify_password(self, pwd):
        return check_password_hash(self.senha, pwd)

    def to_json(nome, email, senha):
        return {'nome':nome,'email':email,'senha':generate_password_hash(senha)}
    def to_json_login(email, senha):
        #,'senha':generate_password_hash(senha)
        return {'email':email, 'senha':generate_password_hash(senha)}
    def to_jsonu(self):
        return {'nome': self.nome, 'email': self.email}

class Pergunta(db.Model):
    __tablename__ = 'pergunta'
    _id = db.Column(db.Integer, autoincrement=True,primary_key=True)
    pergunta = db.Column(db.String(255))
   

    def __init__(self, pergunta):
        self.pergunta = pergunta

    def to_json_p(pergunta):
        return {'pergunta':pergunta}

class Cod(db.Model):
    __tablename__ = 'codigo'
    id = db.Column(db.Integer, autoincrement=True,primary_key=True)
    codigo = db.Column(db.String(255))
   

    def __init__(self, codigo):
        self.codigo = codigo

    def to_json_c(codigo):
        return {'codigo':codigo}

