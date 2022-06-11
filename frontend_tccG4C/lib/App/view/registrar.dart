import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:g4c/App/bars/AppBarAlt.dart';
import 'package:http/http.dart' as http;

//aqui começa o codigo de post e cadastrar o usuario, organizar depois
Future<Album> createAlbum(String user, String email, String password) async {
  final response = await http.post(
    Uri.parse('http://127.0.0.1:5000/users'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(
        <String, String>{'user': user, 'email': email, 'password': password}),
  );

  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}

class Album {
  //final int id;
  final String user;
  final String email;
  final String password;

  //const Album({required this.id, required this.title});

  const Album(
      {required this.user, required this.email, required this.password});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
        //id: json['id'],
        user: json['user'],
        email: json['email'],
        password: json['password']);
  }
}
//aqui termina o codigo de post e cadastrar o usuario, organizar depois

final AppBarAltScreen aBAlt = AppBarAltScreen();
String greetings = '';

class Registrar extends StatefulWidget {
  @override
  _RegistrarState createState() => _RegistrarState();
}

class _RegistrarState extends State<Registrar> {
  final TextEditingController _user = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45),
          child: aBAlt,
        ),
        body: Scaffold(
            body: ListView(
                padding: EdgeInsets.symmetric(horizontal: 25),
                children: <Widget>[
              SizedBox(height: 50),
              Center(
                child: Text(
                  'Faça seu cadastro',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
                  controller: _user,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: 'Nome completo',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                    prefixIcon: IconTheme(
                      data: IconThemeData(
                        color: Colors.green[600],
                      ),
                      child: Icon(Icons.person),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
                  controller: _email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                    prefixIcon: IconTheme(
                      data: IconThemeData(
                        color: Colors.green[600],
                      ),
                      child: Icon(Icons.mail),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
                  controller: _password,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: 'Senha',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                    prefixIcon: IconTheme(
                      data: IconThemeData(
                        color: Colors.green[600],
                      ),
                      child: Icon(Icons.lock),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              ButtonBar(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: ElevatedButton(
                      child: Text('CANCELAR',
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: ElevatedButton(
                    child: Text(
                      'CADASTRAR',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    onPressed: () {
                      createAlbum(_user.text, _email.text, _password.text);
                      Navigator.pushNamed(context, '/Login');
                    },
                  ),
                ),
              ]),
            ])));
  }
}
