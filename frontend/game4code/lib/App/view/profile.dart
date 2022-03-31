import 'package:flutter/material.dart';
import 'package:game4code/App/Utils/imagens.dart';
import 'package:game4code/App/bars/AppBar.dart';
import 'package:game4code/App/bars/bottomNavigatorBar.dart';
import 'dart:ui' as ui;
import 'package:game4code/App/drawer/drawer.dart';
import 'package:game4code/App/colors/colors.dart';
import 'package:game4code/App/view/AlterarSenha.dart';
import 'package:game4code/App/view/dashboard.dart';
import 'package:game4code/App/view/home.dart';
import 'package:game4code/App/view/login.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => new _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _currentIndex = 0;
  final List<Widget> telas = [
    Home(),
    Profile(),
    Dashboard(),
  ];

  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    const double _iconSize = 41;
    const double _iconSizeSelected = 53;
    final AppBarScreen appBar = AppBarScreen();
    final bottomNavigatorBarScreen bnb = bottomNavigatorBarScreen();

    return Scaffold(
        backgroundColor: corBranco,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45),
          child: appBar,
        ),
        bottomNavigationBar:
            PreferredSize(preferredSize: const Size.fromHeight(45), child: bnb),
        body: getBody(context));
  }
}

Widget getBody(BuildContext context) {
  final _width = MediaQuery.of(context).size.width;
  final _height = MediaQuery.of(context).size.height;
  return SingleChildScrollView(
    child: new Column(
      children: <Widget>[
        new SizedBox(
          height: 20,
        ),
        new CircleAvatar(
          radius: 150,
          backgroundColor: Colors.white,
          child: Container(
            decoration: new BoxDecoration(
                color: corUSABlue,
                shape: BoxShape.circle,
                border: new Border.all(
                  color: Colors.white,
                  width: 0,
                )),
            child: new CircleAvatar(
              radius: 150,
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image.asset(
                  'assets/bottom_navigation_bar/tab_profile_selected.png',
                ),
              ),
            ),
          ),
        ),
        new SizedBox(
          height: _height / 25.0,
        ),
        new ListTile(
          title: Text(
            "Thomas Hugo",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          subtitle: Text(
            "thomhugo@gmail.com",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
        new SizedBox(
          height: _height / 25,
        ),
        Container(
              height: 40,
              width: 230,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12.0)),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Alterar Senha",
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
                        builder: (context) => AlterarPage(), //mudar mais pra frente
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              child: FlatButton(
                child: Text(
                  "Sair",
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

            

  );
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
