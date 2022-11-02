import 'package:flutter/material.dart';
import 'package:game4code_front/App/view/profile.dart';

/*
class AlterarPage extends StatefulWidget {
  @override
  _AlterarPageState createState() => _AlterarPageState();
}

class _AlterarPageState extends State<AlterarPage> {
  @override
  Widget build(BuildContext context) {
*/
class AlterarPage extends StatefulWidget {
  @override
  _AlterarPageState createState() => _AlterarPageState();
}

class _AlterarPageState extends State<AlterarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: SizedBox.fromSize(
            size: Size.fromRadius(100),
            child: IconButton(
              padding: const EdgeInsets.only(left: 70),
              icon: Image.asset(
                "assets/imagens/logo.png",
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
        body: Scaffold(
            body: ListView(
                padding: EdgeInsets.symmetric(horizontal: 25),
                children: <Widget>[
              SizedBox(height: 50),
              Center(
                child: Text(
                  'Alterar Senha',
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
                    labelText: 'Digite a sua senha',
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
                    labelText: 'Digite a nova senha',
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
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 40,
                width: 230,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12.0)),
                child: SizedBox.expand(
                  child: ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Confirmar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Profile(), //mudar mais pra frente
                        ),
                      );
                    },
                  ),
                ),
              ),
            ])));
  }
}
