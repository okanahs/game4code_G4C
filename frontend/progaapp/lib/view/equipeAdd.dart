import 'package:flutter/material.dart';
import 'package:progapp/colors/colors.dart';
import 'package:progapp/drawer/drawer.dart';

//equipe 1
class EquipeAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: AppBar(
          backgroundColor: corSkyBlue,
          title: Text('PHYSICS REPORTS', style: TextStyle(color: corUSABlue)),
        ),
        drawer: DrawerAlunoEquipeWidget(),
        body: getEqAddBody(context));
  }
}

Widget getEqAddBody(BuildContext context) {
  return Center(
      child: GridView.count(
    crossAxisCount: 2,
    mainAxisSpacing: 12,
    crossAxisSpacing: 12,
    padding: EdgeInsets.all(20),
    childAspectRatio: 8 / 9,
    children: <Widget>[
      Card(
        color: corCommandBlue,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/homeAluno');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: IconTheme(
                  data: IconThemeData(
                    color: corPowderBlues,
                  ),
                  child: Icon(Icons.person, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Thomas Hugo',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: corPowderBlues)),
                ),
              )
            ],
          ),
        ),
      ),
      Card(
        color: corCommandBlue,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/addequipe1');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: IconTheme(
                  data: IconThemeData(
                    color: corPowderBlues,
                  ),
                  child: Icon(Icons.group_add, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Vazio',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: corPowderBlues)),
                ),
              )
            ],
          ),
        ),
      ),
      Card(
        color: corCommandBlue,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/addequipe2');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: IconTheme(
                  data: IconThemeData(
                    color: corPowderBlues,
                  ),
                  child: Icon(Icons.group_add, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Vazio',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: corPowderBlues)),
                ),
              )
            ],
          ),
        ),
      ),
      Card(
        color: corCommandBlue,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/addequipe3');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: IconTheme(
                  data: IconThemeData(
                    color: corPowderBlues,
                  ),
                  child: Icon(Icons.group_add, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Vazio',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: corPowderBlues)),
                ),
              )
            ],
          ),
        ),
      ),
      Card(
        color: corCommandBlue,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/addequipe4');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: IconTheme(
                  data: IconThemeData(
                    color: corPowderBlues,
                  ),
                  child: Icon(Icons.group_add, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Vazio',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: corPowderBlues)),
                ),
              )
            ],
          ),
        ),
      ),
    ],
  ));
}

//equipe 2
class EquipeAdd2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: AppBar(
          backgroundColor: corSkyBlue,
          title: Text('PHYSICS REPORTS', style: TextStyle(color: corUSABlue)),
        ),
        drawer: DrawerAlunoEquipeWidget(),
        body: getEqAdd2Body(context));
  }
}

Widget getEqAdd2Body(BuildContext context) {
  return Center(
      child: GridView.count(
    crossAxisCount: 2,
    mainAxisSpacing: 12,
    crossAxisSpacing: 12,
    padding: EdgeInsets.all(20),
    childAspectRatio: 8 / 9,
    children: <Widget>[
      Card(
        color: corCommandBlue,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/homeAluno');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: IconTheme(
                  data: IconThemeData(
                    color: corPowderBlues,
                  ),
                  child: Icon(Icons.person, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Jonas Mota',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: corPowderBlues)),
                ),
              )
            ],
          ),
        ),
      ),
      Card(
        color: corCommandBlue,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/addequipe1');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: IconTheme(
                  data: IconThemeData(
                    color: corPowderBlues,
                  ),
                  child: Icon(Icons.group_add, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Vazio',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: corPowderBlues)),
                ),
              )
            ],
          ),
        ),
      ),
      Card(
        color: corCommandBlue,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/addequipe2');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: IconTheme(
                  data: IconThemeData(
                    color: corPowderBlues,
                  ),
                  child: Icon(Icons.group_add, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Vazio',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: corPowderBlues)),
                ),
              )
            ],
          ),
        ),
      ),
      Card(
        color: corCommandBlue,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/addequipe3');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: IconTheme(
                  data: IconThemeData(
                    color: corPowderBlues,
                  ),
                  child: Icon(Icons.group_add, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Vazio',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: corPowderBlues)),
                ),
              )
            ],
          ),
        ),
      ),
      Card(
        color: corCommandBlue,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/addequipe4');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: IconTheme(
                  data: IconThemeData(
                    color: corPowderBlues,
                  ),
                  child: Icon(Icons.group_add, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Vazio',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: corPowderBlues)),
                ),
              )
            ],
          ),
        ),
      ),
    ],
  ));
}

//equipe 3
class EquipeAdd3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: AppBar(
          backgroundColor: corSkyBlue,
          title: Text('PHYSICS REPORTS', style: TextStyle(color: corUSABlue)),
        ),
        drawer: DrawerAlunoEquipeWidget(),
        body: getEqAdd3Body(context));
  }
}

Widget getEqAdd3Body(BuildContext context) {
  return Center(
      child: GridView.count(
    crossAxisCount: 2,
    mainAxisSpacing: 12,
    crossAxisSpacing: 12,
    padding: EdgeInsets.all(20),
    childAspectRatio: 8 / 9,
    children: <Widget>[
      Card(
        color: corCommandBlue,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/homeAluno');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: IconTheme(
                  data: IconThemeData(
                    color: corPowderBlues,
                  ),
                  child: Icon(Icons.person, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Higor Moura',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: corPowderBlues)),
                ),
              )
            ],
          ),
        ),
      ),
      Card(
        color: corCommandBlue,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/homeAluno');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: IconTheme(
                  data: IconThemeData(
                    color: corPowderBlues,
                  ),
                  child: Icon(Icons.person, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Bernardo Ygor',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: corPowderBlues)),
                ),
              )
            ],
          ),
        ),
      ),
      Card(
        color: corCommandBlue,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/addequipe2');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: IconTheme(
                  data: IconThemeData(
                    color: corPowderBlues,
                  ),
                  child: Icon(Icons.group_add, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Vazio',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: corPowderBlues)),
                ),
              )
            ],
          ),
        ),
      ),
      Card(
        color: corCommandBlue,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/addequipe3');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: IconTheme(
                  data: IconThemeData(
                    color: corPowderBlues,
                  ),
                  child: Icon(Icons.group_add, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Vazio',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: corPowderBlues)),
                ),
              )
            ],
          ),
        ),
      ),
      Card(
        color: corCommandBlue,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/addequipe4');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: IconTheme(
                  data: IconThemeData(
                    color: corPowderBlues,
                  ),
                  child: Icon(Icons.group_add, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Vazio',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: corPowderBlues)),
                ),
              )
            ],
          ),
        ),
      ),
    ],
  ));
}

//equipe 4
class EquipeAdd4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: AppBar(
          backgroundColor: corSkyBlue,
          title: Text('PHYSICS REPORTS', style: TextStyle(color: corUSABlue)),
        ),
        drawer: DrawerAlunoEquipeWidget(),
        body: getEqAdd4Body(context));
  }
}

Widget getEqAdd4Body(BuildContext context) {
  return Center(
      child: GridView.count(
    crossAxisCount: 2,
    mainAxisSpacing: 12,
    crossAxisSpacing: 12,
    padding: EdgeInsets.all(20),
    childAspectRatio: 8 / 9,
    children: <Widget>[
      Card(
        color: corCommandBlue,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/homeAluno');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: IconTheme(
                  data: IconThemeData(
                    color: corPowderBlues,
                  ),
                  child: Icon(Icons.person, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Flavio James',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: corPowderBlues)),
                ),
              )
            ],
          ),
        ),
      ),
      Card(
        color: corCommandBlue,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/addequipe1');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: IconTheme(
                  data: IconThemeData(
                    color: corPowderBlues,
                  ),
                  child: Icon(Icons.person, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Pablo Pedro',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: corPowderBlues)),
                ),
              )
            ],
          ),
        ),
      ),
      Card(
        color: corCommandBlue,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/addequipe2');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: IconTheme(
                  data: IconThemeData(
                    color: corPowderBlues,
                  ),
                  child: Icon(Icons.person, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Gabriel Gomes',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: corPowderBlues)),
                ),
              )
            ],
          ),
        ),
      ),
      Card(
        color: corCommandBlue,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/addequipe3');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: IconTheme(
                  data: IconThemeData(
                    color: corPowderBlues,
                  ),
                  child: Icon(Icons.group_add, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Vazio',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: corPowderBlues)),
                ),
              )
            ],
          ),
        ),
      ),
      Card(
        color: corCommandBlue,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/addequipe4');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: IconTheme(
                  data: IconThemeData(
                    color: corPowderBlues,
                  ),
                  child: Icon(Icons.group_add, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Vazio',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: corPowderBlues)),
                ),
              )
            ],
          ),
        ),
      ),
    ],
  ));
}
