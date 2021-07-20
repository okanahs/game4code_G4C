import 'package:flutter/material.dart';
import 'package:progapp/colors/colors.dart';

class RegisterAlunoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: getAlunoBody(context));
  }
}

Widget getAlunoBody(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
          backgroundColor: corSkyBlue,
          title: Text('PHYSICS REPORTS', style: TextStyle(color: corUSABlue))),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25),
          children: <Widget>[
            SizedBox(height: 50),
            Center(
              child: Text(
                'Faça seu cadastro aluno',
                style: TextStyle(fontSize: 30, color: corUSABlue),
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
                  color: corNavyBlue,
                  fontSize: 15.0,
                ),
                prefixIcon: IconTheme(
                  data: IconThemeData(
                    color: corUSABlue,
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
                  color: corNavyBlue,
                  fontSize: 15.0,
                ),
                prefixIcon: IconTheme(
                  data: IconThemeData(
                    color: corUSABlue,
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
                labelText: 'Telefone',
                labelStyle: TextStyle(
                  color: corNavyBlue,
                  fontSize: 15.0,
                ),
                prefixIcon: IconTheme(
                  data: IconThemeData(
                    color: corUSABlue,
                  ),
                  child: Icon(Icons.phone_android),
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
                  color: corNavyBlue,
                  fontSize: 15.0,
                ),
                prefixIcon: IconTheme(
                  data: IconThemeData(
                    color: corUSABlue,
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
                  color: corNavyBlue,
                  fontSize: 15.0,
                ),
                prefixIcon: IconTheme(
                  data: IconThemeData(
                    color: corUSABlue,
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
                    style: TextStyle(color: corCommandBlue, fontSize: 15)),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                color: corUSABlue,
                child: Text(
                  'CADASTRAR',
                  style: TextStyle(color: corPowderBlues, fontSize: 15),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/LoginAluno');
                },
              ),
            ]),
          ]));
}

//PROFESSOR

class RegisterProfessorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: getProfBody(context));
  }
}

Widget getProfBody(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
          backgroundColor: corSkyBlue,
          title: Text('PHYSICS REPORTS', style: TextStyle(color: corUSABlue))),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25),
          children: <Widget>[
            SizedBox(height: 50),
            Center(
              child: Text(
                'Faça seu cadastro professor',
                style: TextStyle(fontSize: 30, color: corUSABlue),
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
                  color: corNavyBlue,
                  fontSize: 15.0,
                ),
                prefixIcon: IconTheme(
                  data: IconThemeData(
                    color: corUSABlue,
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
                  color: corNavyBlue,
                  fontSize: 15.0,
                ),
                prefixIcon: IconTheme(
                  data: IconThemeData(
                    color: corUSABlue,
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
                labelText: 'Telefone',
                labelStyle: TextStyle(
                  color: corNavyBlue,
                  fontSize: 15.0,
                ),
                prefixIcon: IconTheme(
                  data: IconThemeData(
                    color: corUSABlue,
                  ),
                  child: Icon(Icons.phone_android),
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
                  color: corNavyBlue,
                  fontSize: 15.0,
                ),
                prefixIcon: IconTheme(
                  data: IconThemeData(
                    color: corUSABlue,
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
                  color: corNavyBlue,
                  fontSize: 15.0,
                ),
                prefixIcon: IconTheme(
                  data: IconThemeData(
                    color: corUSABlue,
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
                    style: TextStyle(color: corCommandBlue, fontSize: 15)),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                color: corUSABlue,
                child: Text(
                  'CADASTRAR',
                  style: TextStyle(color: corPowderBlues, fontSize: 15),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/LoginProfessor');
                },
              ),
            ]),
          ]));
}
