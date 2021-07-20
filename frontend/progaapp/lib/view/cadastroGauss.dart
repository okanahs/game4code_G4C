import 'package:flutter/material.dart';
import 'package:progapp/colors/colors.dart';
import 'package:progapp/custom/aceleracao_icon_icons.dart';
import 'package:progapp/custom/app_icons.dart';
import 'package:progapp/drawer/drawer.dart';

class CadastroGauss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: corSkyBlue,
          title: Title(
            color: corUSABlue,
            child: Text('PHYSICS REPORTS', style: TextStyle(color: corUSABlue)),
          ),
        ),
        drawer: DrawerAlunoWidget(),
        body: getBody(context));
  }
}

Widget getBody(BuildContext context) {
  return Center(
      child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25),
          children: <Widget>[
        SizedBox(height: 50),
        Center(
          child: Text(
            'Canhão de Gauss',
            style: TextStyle(fontSize: 30, color: corCommandBlue),
          ),
        ),
        SizedBox(height: 50),
        TextField(
          controller: null,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            labelText: 'Aceleração',
            labelStyle: TextStyle(
              color: corNavyBlue,
              fontSize: 15.0,
            ),
            prefixIcon: Icon(
              AceleracaoIcon.alpha,
              color: corUSABlue,
              size: 15,
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
            labelText: 'Velocidade',
            labelStyle: TextStyle(
              color: corNavyBlue,
              fontSize: 15.0,
            ),
            prefixIcon: IconTheme(
              data: IconThemeData(
                color: corUSABlue,
              ),
              child: Icon(
                Icons.speed,
                size: 27,
              ),
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
            labelText: 'Distancia',
            labelStyle: TextStyle(
              color: corNavyBlue,
              fontSize: 15.0,
            ),
            prefixIcon: Icon(
              DistanceIcon.distance,
              color: corUSABlue,
              size: 10,
            ),
          ),
        ),
        ButtonBar(children: <Widget>[
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            color: corBranco,
            child: Text('VOLTAR',
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
              'ENVIAR',
              style: TextStyle(color: corPowderBlues, fontSize: 15),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ]),
      ]));
}

//Professor:

class CadastroGaussProf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: corSkyBlue,
          title: Title(
              color: corUSABlue,
              child:
                  Text('PHYSICS REPORTS', style: TextStyle(color: corUSABlue))),
        ),
        drawer: DrawerProfWidget(),
        body: getProfessor(context));
  }
}

Widget getProfessor(BuildContext context) {
  return Center(
      child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25),
          children: <Widget>[
        SizedBox(height: 50),
        Center(
          child: Text(
            'Canhão de Gauss',
            style: TextStyle(fontSize: 30, color: corCommandBlue),
          ),
        ),
        SizedBox(height: 30),
        Center(
          child: Text(
            'Postar Gabarito',
            style: TextStyle(fontSize: 20, color: corCommandBlue),
          ),
        ),
        SizedBox(height: 50),
        TextField(
          controller: null,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            labelText: 'Aceleração',
            labelStyle: TextStyle(
              color: corNavyBlue,
              fontSize: 15.0,
            ),
            prefixIcon: Icon(
              AceleracaoIcon.alpha,
              color: corUSABlue,
              size: 15,
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
            labelText: 'Velocidade',
            labelStyle: TextStyle(
              color: corNavyBlue,
              fontSize: 15.0,
            ),
            prefixIcon: IconTheme(
              data: IconThemeData(
                color: corUSABlue,
              ),
              child: Icon(
                Icons.speed,
                size: 27,
              ),
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
            labelText: 'Distancia',
            labelStyle: TextStyle(
              color: corNavyBlue,
              fontSize: 15.0,
            ),
            prefixIcon: Icon(
              DistanceIcon.distance,
              color: corUSABlue,
              size: 10,
            ),
          ),
        ),
        ButtonBar(children: <Widget>[
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            color: corBranco,
            child: Text('VOLTAR',
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
              'ENVIAR',
              style: TextStyle(color: corPowderBlues, fontSize: 15),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ]),
      ]));
}
