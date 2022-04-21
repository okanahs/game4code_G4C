import 'package:flutter/material.dart';
import 'package:g4c/App/bars/AppBar.dart';
import 'package:g4c/App/colors/colors.dart';

class Registrar extends StatefulWidget {
  @override
  _RegistrarState createState() => _RegistrarState();
}

class _RegistrarState extends State<Registrar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: SizedBox.fromSize(
            size: Size.fromRadius(100),
            child: IconButton(
              padding: const EdgeInsets.only(left: 70),
              icon: Image.asset(
                "assets/profile_logo/logo.png",
                height: 90,
              ),
              onPressed: () {},
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF57ebde),
                Color(0xFFaefb2a),
              ],
            )),
          ),
        ),
        body: getBody(context));
  }
}

Widget getBody(BuildContext context) {
  return Scaffold(
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
        TextField(
          controller: null,
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
        SizedBox(
          height: 12.0,
        ),
        TextField(
          controller: null,
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
        SizedBox(
          height: 12.0,
        ),
        TextField(
          controller: null,
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
        SizedBox(
          height: 12.0,
        ),
        TextField(
          controller: null,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            labelText: 'Repita sua senha',
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
        SizedBox(
          height: 12.0,
        ),
        ButtonBar(children: <Widget>[
          FlatButton(
            child: Text('CANCELAR',
                style: TextStyle(color: Colors.black, fontSize: 15)),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            color: Colors.black,
            child: Text(
              'CADASTRAR',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/Login');
            },
          ),
        ]),
      ]));
}
