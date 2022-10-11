'''
import json
from app import app, db
from flask import Response, request

class Usuario(db.Model):
    id = db.Column(db.Integer, primary_key = True)
    nome = db.Column(db.String(50))
    email = db.Column(db.String(100))

    def to_json(self):
        return {"id": self.id, "nome": self.nome, "email": self.email}

def gera_response(status, nome_do_conteudo, conteudo, mensagem = False):
    body = {}
    body[nome_do_conteudo] = conteudo

    if mensagem:
        body[mensagem] = mensagem
        return Response(json.dumps(body), status=status, mimetype="application/json")



@app.route('/usuarios',methods=['GET'])
def seleciona_usuario():
    usuarios_objeto = Usuario.query.all()
    print(usuarios_objeto)
    usuarios_json = [usuario.to_json() for usuario in usuarios_objeto]
    return gera_response(200, "usuarios", usuarios_json, "ok")

#seleciona individual
@app.route('/usuario/<id>', methods = ['GET'])
def seleciona_usuario(id):
    usuario_objeto = Usuario.query.filter_by(id=id).first()
    usuarios_json = usuario_objeto.to_json()

    return gera_response(200, "usuario", usuarios_json)

#cadastrar
@app.route('/usuario', methods = ['POST'])
def cria_usuario():
    body = request.get_json()
    #validar se veio os parametros ou utilizar um trycatch
    try:
        usuario = Usuario(nome=body['nome'], email = body['email'])
        db.session.add(usuario)
        db.session.commit()
        return gera_response(201, "usuario", usuario.json, "criado com sucesso")
    except Exception as e:
        print(e)
        return gera_response(400, "usuario", {}, "Erro ao cadastrar")

app.run()
'''
from app import app

if __name__ == "__main__" :
    app.run(debug = True)