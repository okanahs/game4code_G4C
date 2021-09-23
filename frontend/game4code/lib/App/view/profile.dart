import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:game4code/App/drawer/drawer.dart';
import 'package:game4code/App/colors/colors.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => new _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return new Stack(
      children: <Widget>[
        new Container(
          color: corPowderBlues,
        ),
        new BackdropFilter(
            filter: new ui.ImageFilter.blur(
              sigmaX: 6.0,
              sigmaY: 6.0,
            ),
            child: new Container(
              decoration: BoxDecoration(
                color: corPowderBlues,
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
            )),
        new Scaffold(
            backgroundColor: corBranco,
            appBar: new AppBar(
              centerTitle: true,
              title: Text('GAME4CODE', style: TextStyle(color: corBranco)),
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
            drawer: DrawerHomeWidget(),
            body: new Center(
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
                            'assets/semfoto.png',
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
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
            ))
      ],
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
              style: new TextStyle(
                  color: corUSABlue, fontWeight: FontWeight.normal))
        ],
      ));
}
