import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:g4c/App/bars/AppBarAlt.dart';
import 'package:http/http.dart' as http;

final AppBarAltScreen aBAlt = AppBarAltScreen();
String greetings = '';

class Registrar extends StatefulWidget {
  @override
  _RegistrarState createState() => _RegistrarState();
}

class _RegistrarState extends State<Registrar> {
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
              ),
              SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
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
              ),
              SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
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
              ),
              SizedBox(
                height: 12.0,
              ),
              ButtonBar(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: FlatButton(
                      child: Text('CANCELAR',
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: RaisedButton(
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
                ),
              ]),
            ])));
  }
}
