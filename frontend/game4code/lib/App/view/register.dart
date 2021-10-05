import 'package:flutter/material.dart';
import 'package:game4code/App/bars/AppBar.dart';
import 'package:game4code/App/colors/colors.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: getBody(context));
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
                color: Colors.black,
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
                color: Colors.black,
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
                color: Colors.black,
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
                color: Colors.black,
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
