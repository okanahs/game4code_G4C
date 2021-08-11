import 'package:flutter/material.dart';
import 'package:game4code/App/colors/colors.dart';
import 'package:game4code/App/drawer/drawer.dart';

class CadastrarTurma extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool checkbox1 = true;
  bool checkbox2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: corSkyBlue,
          title: Title(
            color: corUSABlue,
            child: Text('GAME4CODE', style: TextStyle(color: corUSABlue)),
          ),
        ),
        drawer: DrawerProfTurmaWidget(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(children: [
                SizedBox(height: 10.0),
                Center(
                  child: Text(
                    'Cadastre uma turma aqui',
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
                    labelText: 'Nome da turma',
                    labelStyle: TextStyle(
                      color: corNavyBlue,
                      fontSize: 15.0,
                    ),
                    prefixIcon: IconTheme(
                      data: IconThemeData(
                        color: corUSABlue,
                      ),
                      child: Icon(Icons.class_),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Text('Selecione abaixo os alunos que fazem parte dessa turma'),
                SizedBox(height: 10.0),
                Row(children: [
                  SizedBox(
                    width: 20,
                    child: Checkbox(
                      value: checkbox1,
                      activeColor: corUSABlue,
                      onChanged: (value) {
                        //value may be true or false
                        setState(() {
                          checkbox1 = !checkbox1;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text('Thomas Hugo')
                ]),
                Row(children: [
                  SizedBox(
                    width: 20,
                    child: Checkbox(
                      value: checkbox2,
                      activeColor: corUSABlue,
                      onChanged: (value) {
                        //value may be true or false
                        setState(() {
                          checkbox2 = !checkbox2;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text('Higor Moura')
                ]),
                SizedBox(height: 10.0),
                SizedBox(height: 10.0),
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
                      Navigator.pushNamed(context, '/seletorturma');
                    },
                  ),
                ])
              ])),
        ));
  }
}
