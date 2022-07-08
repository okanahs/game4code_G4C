import pymysql
from app import app
from config import mysql
from flask import jsonify
from flask import flash, request

@app.route('/create', methods=['POST'])
def create_usr():
    try:        
        _json = request.json
        _username = _json['username']
        _email = _json['email']
        _password = _json['password']
        _cpassword = _json['cpassword']
        if _username and _email and _password and request.method == 'POST':
            conn = mysql.connect()
            cursor = conn.cursor(pymysql.cursors.DictCursor)		
            sqlQuery = "INSERT INTO user(username, email, password, cpassword) VALUES(%s, %s, %s, %s)"
            bindData = (_username, _email, _password, _cpassword)            
            cursor.execute(sqlQuery, bindData)
            conn.commit()
            respone = jsonify('User added successfully!')
            respone.status_code = 200
            return respone
        else:
            return showMessage()
    except Exception as e:
        print(e)
    finally:
        cursor.close() 
        conn.close()       
     
@app.route('/user')
def user():
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute("SELECT id, username, email, password, cpassword FROM user")
        usrRows = cursor.fetchall()
        respone = jsonify(usrRows)
        respone.status_code = 200
        return respone
    except Exception as e:
        print(e)
    finally:
        cursor.close() 
        conn.close()  

@app.route('/user/<int:user_id>')
def usr_details(user_id):
    try:
        conn = mysql.connect()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        cursor.execute("SELECT id, username, email, password, cpassword FROM user WHERE id =%s", user_id)
        userRow = cursor.fetchone()
        respone = jsonify(userRow)
        respone.status_code = 200
        return respone
    except Exception as e:
        print(e)
    finally:
        cursor.close() 
        conn.close() 

@app.route('/update', methods=['PUT'])
def update_usr():
    try:
        _json = request.json
        _id = _json['id']
        _username = _json['username']
        _email = _json['email']
        _password = _json['password']
        _cpassword = _json['cpassword']
        if _username and _email and _password and _id and request.method == 'PUT':			
            sqlQuery = "UPDATE user SET username=%s, email=%s, password=%s, cpassword=%s WHERE id=%s"
            bindData = (_username, _email, _password, _cpassword, _id,)
            conn = mysql.connect()
            cursor = conn.cursor()
            cursor.execute(sqlQuery, bindData)
            conn.commit()
            respone = jsonify('User updated successfully!')
            respone.status_code = 200
            return respone
        else:
            return showMessage()
    except Exception as e:
        print(e)
    finally:
        cursor.close() 
        conn.close() 

@app.route('/delete/<int:id>', methods=['DELETE'])
def delete_usr(id):
	try:
		conn = mysql.connect()
		cursor = conn.cursor()
		cursor.execute("DELETE FROM user WHERE id =%s", (id,))
		conn.commit()
		respone = jsonify('User deleted successfully!')
		respone.status_code = 200
		return respone
	except Exception as e:
		print(e)
	finally:
		cursor.close() 
		conn.close()
        
       
@app.errorhandler(404)
def showMessage(error=None):
    message = {
        'status': 404,
        'message': 'Record not found: ' + request.url,
    }
    respone = jsonify(message)
    respone.status_code = 404
    return respone
        
if __name__ == "__main__":
    app.run()

# from crypt import methods
# from email.mime import application
# import json
# from flask import Flask, request, jsonify, Response
# from flask_pymongo import PyMongo
# from werkzeug.security import generate_password_hash, check_password_hash
# from bson import json_util
# from bson.objectid import ObjectId
# import os
# import re



# app = Flask(__name__)
# #posteriormente mudar o nome do banco para organização
# app.config['MONGO_URI'] = 'mongodb://localhost/pythonmongodb'
# mongo = PyMongo(app)

# #criar usuário
# @app.route('/users', methods=['POST'])
# def create_user():
#     username = request.json['user']
#     password = request.json['password']
#     email = request.json['email']
#     hashed_password = generate_password_hash(password)

#     if username and email and password:
#         id = mongo.db.users.insert_one(
#             {'user':username,'email':email,'password':hashed_password}
#         )
#         response = {
#                 'id':str(id),
#                 'user':username,
#                 'password':hashed_password,
#                 'email':email
#         }
#         return response
#     else:
#         return not_found()

#     return {'message': 'received'}
# '''
# #buscando todos os usuários que estão cadastrados
# @app.route('/users',methods=['GET'])
# def get_users():
#     users = mongo.db.users.find()
#     response = json_util.dumps(users)
#     return Response(response, mimetype='application/json')
# '''

# #buscando um usuário pelo email
# @app.route('/users/<email>',methods=['GET'])
# #def get_user(id):
# def get_user(email):
#     #user = mongo.db.users.find_one({'_id':ObjectId(id)})
#     #response = json_util.dumps(user)
#     #return Response(response, mimetype='application/json')
#     user = mongo.db.users.find_one({'email':email})
#     response = json_util.dumps(user)
#     return response



# #atualizando um usuário
# @app.route('/users/<id>', methods=['PUT'])
# def update_user(id):
#     username = request.json['username']
#     email = request.json['email']
#     password = request.json['password']

#     if username and email and password:
#         hashed_password = generate_password_hash(password)
#         mongo.db.users.update_one({'_id':ObjectId(id)},{ '$set':{
#             'username':username,
#             'password':hashed_password,
#             'email':email
#         }})
#         response = jsonify({'message':'User '+id+'was updated successfully'})
#         return response



# #post da questão do compilador
# @app.route('/compile',methods=['POST'])
# def create_code():
#     code = request.json['code']
#     if code:
#         id = mongo.db.compile.insert_one(
#             {'code':code}
#         )
#         response = {
#                 'id':str(id),
#                 'code':code,
            
#         }
#         #a = str(response)
#         #print(a[7:32])

#         return response
#     else:
#         return not_found()

#     return {'message': 'received'}

# @app.route('/compile/<id>',methods=['GET'])
# def get_code(id):
#     compile = mongo.db.compile.find_one({'_id':ObjectId(id)})
#     response = json_util.dumps(compile)
#     #print(json.loads(response)['_id']['$oid'])
#     #print(json.loads(response)['code'])
    
#     return response

# #post da pergunta de 4 opcções
# @app.route('/question',methods=['POST'])
# def create_question():
#     question = request.json['question']
#     op1 = request.json['op1']
#     op2 = request.json['op2']
#     op3 = request.json['op3']
#     op4 = request.json['op4']
#     if question and op1 and op2 and op3 and op4:
#         id = mongo.db.question.insert_one(
#             {'question':question,'op1':op1,'op2':op2,'op3':op3,'op4':op4}
#         )
#         response = {
#                 'id':str(id),
#                 'question':question,
#                 'op1':op1,
#                 'op2':op2,
#                 'op3':op3,
#                 'op4':op4
#         }
#         return response
#     else:
#         return not_found()

#     return {'message': 'received'}

# #post da pergunta de 4 opcções
# @app.route('/codigo',methods=['POST'])
# def create_codigo():
#     codigo = request.json['codigo']
#     if codigo:
#         id = mongo.db.codigo.insert_one(
#             {'codigo':codigo}
#         )
#         response = {
#                 'id':str(id),
#                 'codigo':codigo
#         }
#         return response
#     else:
#         return not_found()

#     return {'message': 'received'}

# @app.route('/codigo/<id>',methods=['GET'])
# def get_codigo(id):
#     codigo = mongo.db.codigo.find_one({'_id':ObjectId(id)})
#     response = json_util.dumps(codigo)
#     #x = response
#     #print(json.loads(x)['codigo'])
#     return response

# #deletar usuário
# @app.route('/users/<id>',methods=['DELETE'])
# def delete_user(id):
#     mongo.db.users.delete_one({'_id':ObjectId(id)})
#     response = jsonify({'message': 'User '+id+' was deleted sucessfully'})
#     return response
# #deletar codigo
# @app.route('/compile/<id>',methods=['DELETE'])
# def delete_code(id):
#     mongo.db.compile.delete_one({'_id':ObjectId(id)})
#     response = jsonify({'message': 'Codigo '+id+' was deleted sucessfully'})
#     return response
# #deletar questao de codigo
# @app.route('/codigo/<id>',methods=['DELETE'])
# def delete_questao(id):
#     mongo.db.codigo.delete_one({'_id':ObjectId(id)})
#     response = jsonify({'message': 'Questao de código '+id+' was deleted sucessfully'})
#     return response


# @app.errorhandler(404)
# def not_found(error=None):
#     response = jsonify({
#         'message':'Resource not found: '+request.url,
#         'status': 404
#     })
#     response.status_code = 404
#     return response
# if __name__ == "__main__":
#     #app.run(host='0.0.0.0')
#     app.run(debug=True)