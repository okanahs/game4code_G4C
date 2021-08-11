import 'package:flutter/material.dart';
import 'package:game4code/App/colors/colors.dart';
import 'package:game4code/App/drawer/drawer.dart';

//aluno
class Turma extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: AppBar(
          backgroundColor: corSkyBlue,
          title: Text('GAME4CODE', style: TextStyle(color: corUSABlue)),
        ),
        drawer: DrawerProfTurmaWidget(),
        body: getTurmaBody(context));
  }
}

Widget getTurmaBody(BuildContext context) {
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
            Navigator.pushNamed(context, '/homeProfessor');
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
                  child: Icon(Icons.group, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('TURMA A',
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
            Navigator.pushNamed(context, '/homeProfessor');
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
                  child: Icon(Icons.group, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('TURMA B',
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
            Navigator.pushNamed(context, '/homeProfessor');
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
                  child: Icon(Icons.group, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('TURMA C',
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
            Navigator.pushNamed(context, '/homeProfessor');
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
                  child: Icon(Icons.group, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('TURMA D',
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
            Navigator.pushNamed(context, '/cadTurma');
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
                  child: Text('ADICIONAR TURMA',
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
