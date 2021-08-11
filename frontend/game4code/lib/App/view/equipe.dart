import 'package:flutter/material.dart';
import 'package:game4code/App/colors/colors.dart';
import 'package:game4code/App/drawer/drawer.dart';

//aluno
class Equipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: AppBar(
          backgroundColor: corSkyBlue,
          title: Text('GAME4CODE', style: TextStyle(color: corUSABlue)),
        ),
        drawer: DrawerAlunoEquipeWidget(),
        body: getEquipeBody(context));
  }
}

Widget getEquipeBody(BuildContext context) {
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
                  child: Icon(Icons.group, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('EQUIPE 1 \n1/5',
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
                  child: Icon(Icons.group, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('EQUIPE 2 \n1/5',
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
                  child: Icon(Icons.group, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('EQUIPE 3 \n2/5',
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
                  child: Icon(Icons.group, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('EQUIPE 4 \n3/5',
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
            Navigator.pushNamed(context, '/cadEquipe');
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
                  child: Text('ADICIONAR EQUIPE',
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
