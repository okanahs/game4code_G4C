import 'package:flutter/material.dart';
import 'package:game4code/App/colors/colors.dart';
import 'package:game4code/App/drawer/drawer.dart';

//aluno
class HomeAluno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: AppBar(
          backgroundColor: corSkyBlue,
          title: Text('GAME4CODE', style: TextStyle(color: corUSABlue)),
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
      Card(
        color: corCommandBlue,
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
            Navigator.pushNamed(context, '/rampaCad');
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
            Navigator.pushNamed(context, '/CadastroRampaInclinada');
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
