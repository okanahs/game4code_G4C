import 'package:flutter/material.dart';
import 'package:game4code/App/Utils/imagens.dart';
import 'package:game4code/App/bars/AppBar.dart';
import 'package:game4code/App/bars/bottomNavigatorBar.dart';
import 'dart:ui' as ui;
import 'package:game4code/App/drawer/drawer.dart';
import 'package:game4code/App/colors/colors.dart';
import 'package:game4code/App/view/dashboard.dart';
import 'package:game4code/App/view/home.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

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
  return Center(
    child: new Column(
      children: <Widget>[
        new SizedBox(
          height: _height / 12,
        ),
        new CircleAvatar(
          radius: _width < _height ? _width / 4 : _height / 4,
          backgroundColor: corPowderBlues,
          child: Container(
            decoration: new BoxDecoration(
                color: corUSABlue,
                shape: BoxShape.circle,
                border: new Border.all(
                  color: Color(0xFF57ebde),
                  width: 3,
                )),
            child: new CircleAvatar(
              radius: 200.0,
              backgroundColor: corPowderBlues,
              child: ClipOval(
                child: Image.asset(
                  'assets/profile_logo/semfoto.png',
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
          height: _height / 25.0,
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
