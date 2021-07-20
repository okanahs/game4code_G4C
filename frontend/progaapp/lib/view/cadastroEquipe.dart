import 'package:flutter/material.dart';
import 'package:progapp/colors/colors.dart';

class CadastrarEquipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: getEqCadBody(context));
  }
}

Widget getEqCadBody(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        backgroundColor: corSkyBlue,
        title: Title(color: corUSABlue, child: Text('PHYSICS REPORTS')),
      ),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25),
          children: <Widget>[
            SizedBox(height: 50),
            Center(
              child: Text(
                'Cadastre sua equipe aqui',
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
                labelText: 'Nome da equipe',
                labelStyle: TextStyle(
                  color: corNavyBlue,
                  fontSize: 15.0,
                ),
                prefixIcon: IconTheme(
                  data: IconThemeData(
                    color: corUSABlue,
                  ),
                  child: Icon(Icons.group),
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            SizedBox(
              height: 12.0,
            ),
            SizedBox(
              height: 12.0,
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
                  Navigator.pushNamed(context, '/seletorequipe');
                },
              ),
            ]),
          ]));
}
