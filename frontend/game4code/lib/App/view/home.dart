import 'package:flutter/material.dart';
import 'package:game4code/App/colors/colors.dart';
import 'package:game4code/App/drawer/drawer.dart';
import 'package:game4code/App/custom/app_icons2.dart';

//aluno
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: AppBar(
          centerTitle: true,
          title: Text('GAME4CODE', style: TextStyle(color: corBranco)),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF0061ff),
                Color(0xFF60efff),
              ],
            )),
          ),
        ),
        drawer: DrawerAlunoWidget(),
        body: getAlunoBody(context));
  }
}

Widget getAlunoBody(BuildContext context) {
  return Center(
      child: GridView.count(
    crossAxisCount: 2,
    mainAxisSpacing: 12,
    crossAxisSpacing: 12,
    padding: EdgeInsets.all(20),
    childAspectRatio: 8 / 9,
    children: <Widget>[
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF0061ff),
              Color(0xFF60efff),
            ],
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/gaussCad');
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
                  child: Icon(CustomIcon.java, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Java',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: corPowderBlues)),
                ),
              )
            ],
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF0061ff),
              Color(0xFF60efff),
            ],
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/gaussCad');
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
                  child: Icon(CustomIcon.java, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Java',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: corPowderBlues)),
                ),
              )
            ],
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF0061ff),
              Color(0xFF60efff),
            ],
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/gaussCad');
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
                  child: Icon(CustomIcon.java, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Java',
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

//prof

class HomeProfessor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: AppBar(
          backgroundColor: corSkyBlue,
          title: Text('GAME4CODE', style: TextStyle(color: corUSABlue)),
        ),
        drawer: DrawerProfWidget(),
        body: getProfBody(context));
  }
}

Widget getProfBody(BuildContext context) {
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
            Navigator.pushNamed(context, '/gaussCadProfessor');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: Image.asset('assets/Gauss.jpg', fit: BoxFit.fitWidth),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Canhão de Gauss',
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
            Navigator.pushNamed(context, '/RampaLoopingProfessor');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: Image.asset('assets/RampaLooping.jpg',
                    fit: BoxFit.fitWidth),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Rampa com looping',
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
            Navigator.pushNamed(context, '/RampaInclinadaProfessor');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 22 / 13,
                child: Image.asset('assets/RampaInclinada.jpg',
                    fit: BoxFit.fitWidth),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Rampa inclinada',
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
