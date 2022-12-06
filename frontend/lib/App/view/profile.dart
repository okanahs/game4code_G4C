import 'package:flutter/material.dart';
import 'package:game4code_front/App/colors/colors.dart';
import 'package:game4code_front/App/view/AlterarSenha.dart';
import 'package:game4code_front/App/view/dashboard.dart';
import 'package:game4code_front/App/view/home.dart';
import 'package:game4code_front/App/view/login.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Album> fetchAlbum() async {
  final response = await http.get(Uri.parse('http://127.0.0.1:5000/selcusers'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final String nome;
  final String email;

  const Album({required this.nome, required this.email});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(nome: json['nome'], email: json['email']);
  }
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: corBranco,
      floatingActionButton: SpeedDial(
        child: Image.asset("assets/imagens/logo.png", width: 38),
        speedDialChildren: <SpeedDialChild>[
          SpeedDialChild(
            child: const Icon(Icons.book),
            foregroundColor: Colors.white,
            backgroundColor: Colors.red,
            label: 'Tarefas!',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(), //mudar mais pra frente
                ),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.dashboard),
            foregroundColor: Colors.black,
            backgroundColor: Colors.yellow,
            label: 'Dashboard',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Dashboard(), //mudar mais pra frente
                ),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.person),
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
            label: 'Perfil',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile(), //mudar mais pra frente
                ),
              );
            },
          ),
        ],
        closedForegroundColor: Color.fromARGB(255, 255, 255, 255),
        openForegroundColor: Colors.green,
        closedBackgroundColor: Colors.green,
        openBackgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF57ebde),
                Color(0xFFaefb2a),
              ],
            )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.greenAccent,
                      minRadius: 80.0,
                      child: CircleAvatar(
                        radius: 70.0,
                        backgroundImage: AssetImage(
                            'assets/imagens/tab_profile_selected.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                new ListTile(
                  title: FutureBuilder<Album>(
                    future: futureAlbum,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(
                          snapshot.data!.nome,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 35),
                        );
                      } else if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      }

                      // By default, show a loading spinner.
                      return const CircularProgressIndicator();
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Color.fromARGB(255, 39, 192, 179),
                    child: ListTile(
                      title: Text(
                        'Pontuação Total',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28.5,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        '5000',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    'Email',
                    style: TextStyle(
                      color: Colors.blue.shade500,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: FutureBuilder<Album>(
                    future: futureAlbum,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(
                          snapshot.data!.email,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        );
                      } else if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      }

                      // By default, show a loading spinner.
                      return const CircularProgressIndicator();
                    },
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    'Nível',
                    style: TextStyle(
                      color: Colors.blue.shade500,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Básico',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    'Tarefas Concluídas',
                    style: TextStyle(
                      color: Colors.blue.shade500,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '15',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                Container(
                  height: 40,
                  width: 140,
                  color: Colors.blue.shade300,
                  child: ElevatedButton(
                    child: Text(
                      "Sair",
                      style: TextStyle(fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget rowCell(int count, String type) => new Expanded(
        child: new Column(
      children: <Widget>[
        new Text(
          '$count',
          style: new TextStyle(color: corPowderBlues),
        ),
        new Text(type,
            style:
                new TextStyle(color: corUSABlue, fontWeight: FontWeight.normal))
      ],
    ));