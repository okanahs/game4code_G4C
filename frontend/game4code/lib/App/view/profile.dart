import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:game4code/App/drawer/drawer.dart';
import 'package:game4code/App/colors/colors.dart';

//aluno
class ProfileAlunoPage extends StatefulWidget {
  ProfileAlunoPage({Key key}) : super(key: key);

  @override
  _ProfileAlunoPageState createState() => new _ProfileAlunoPageState();
}

class _ProfileAlunoPageState extends State<ProfileAlunoPage> {
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
              title: new Text("GAME4CODE"),
              centerTitle: false,
              elevation: 0.0,
              backgroundColor: corUSABlue,
            ),
            drawer: DrawerAlunoWidget(),
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
                          color: corUSABlue,
                          width: 3,
                        ),
                      ),
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

//profile prof
class ProfileProfPage extends StatefulWidget {
  ProfileProfPage({Key key}) : super(key: key);

  @override
  _ProfileProfPageState createState() => new _ProfileProfPageState();
}

class _ProfileProfPageState extends State<ProfileProfPage> {
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
            appBar: AppBar(
              backgroundColor: corSkyBlue,
              title: Title(
                color: corUSABlue,
                child: Text('GAME4CODE', style: TextStyle(color: corUSABlue)),
              ),
            ),
            drawer: DrawerProfWidget(),
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
                          color: corUSABlue,
                          width: 3,
                        ),
                      ),
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
                      "Severus Snape",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    subtitle: Text(
                      "severussnape@gmail.com",
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

//perfil prof - antes da home
class xProfileTurma extends StatefulWidget {
  xProfileTurma({Key key}) : super(key: key);

  @override
  _yProfileTurmaState createState() => new _yProfileTurmaState();
}

class _yProfileTurmaState extends State<xProfileTurma> {
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
            appBar: AppBar(
              backgroundColor: corSkyBlue,
              title: Title(
                color: corUSABlue,
                child: Text('GAME4CODE', style: TextStyle(color: corUSABlue)),
              ),
            ),
            drawer: DrawerProfTurmaWidget(),
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
                          color: corUSABlue,
                          width: 3,
                        ),
                      ),
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
                      "Severus Snape",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    subtitle: Text(
                      "severussnape@gmail.com",
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
