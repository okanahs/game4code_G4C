import 'package:flutter/material.dart';
import 'package:game4code/App/Utils/imagens.dart';
import 'package:game4code/App/bars/AppBar.dart';
import 'package:game4code/App/bars/bottomNavigatorBar.dart';
import 'package:game4code/App/colors/colors.dart';
import 'package:game4code/App/drawer/drawer.dart';
import 'package:game4code/App/view/SeletorLinguagem.dart';
import 'package:game4code/App/view/dashboard.dart';
import 'package:game4code/App/view/home.dart';
import 'package:game4code/App/view/profile.dart';

class Nivelamento extends StatefulWidget {
  @override
  _NivelamentoState createState() => _NivelamentoState();
}

class _NivelamentoState extends State<Nivelamento> {
  int _currentIndex = 0;
  final List<Widget> telas = [
    Home(),
    Profile(),
    Dashboard(),
  ];

  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
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
  return Center(
    child: Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(children: [
          Text(
            "    1) Qual tipo de dado é \n "
            "   aceito em uma variável INT?",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
        ]),
        SizedBox(
          height: 30,
        ),
        GridView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            mainAxisExtent: 120,
          ),
          children: [
            Card(
                color: Colors.green,
                child: InkWell(
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NivelamentoQ2(), //mudar mais pra frente
                      ),
                    );
                  },
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                )),
            Card(
                color: Colors.green,
                child: InkWell(
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NivelamentoQ2(), //mudar mais pra frente
                      ),
                    );
                  },
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                )),
            Card(
                color: Colors.green,
                child: InkWell(
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NivelamentoQ2(), //mudar mais pra frente
                      ),
                    );
                  },
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                )),
            Card(
                color: Colors.green,
                child: InkWell(
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NivelamentoQ2(), //mudar mais pra frente
                      ),
                    );
                  },
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                )),
          ],
        ),
      ],
    ),
  );
}

//Questão 2

class NivelamentoQ2 extends StatefulWidget {
  @override
  _NivelamentoQ2State createState() => _NivelamentoQ2State();
}

class _NivelamentoQ2State extends State<NivelamentoQ2> {
  int _currentIndex = 0;
  final List<Widget> telas = [
    Home(),
    Profile(),
    Dashboard(),
  ];

  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
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
        body: get2Body(context));
  }
}

Widget get2Body(BuildContext context) {
  return Center(
    child: Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(children: [
          Text(
            "    2) Qual tipo de dado é \n "
            "   aceito em uma variável FLOAT?",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
        ]),
        SizedBox(
          height: 30,
        ),
        GridView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            mainAxisExtent: 120,
          ),
          children: [
            Card(
                color: Colors.green,
                child: InkWell(
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            SeletorLinguagem(), //mudar mais pra frente
                      ),
                    );
                  },
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                )),
            Card(
                color: Colors.green,
                child: InkWell(
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            SeletorLinguagem(), //mudar mais pra frente
                      ),
                    );
                  },
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                )),
            Card(
                color: Colors.green,
                child: InkWell(
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            SeletorLinguagem(), //mudar mais pra frente
                      ),
                    );
                  },
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                )),
            Card(
                color: Colors.green,
                child: InkWell(
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            SeletorLinguagem(), //mudar mais pra frente
                      ),
                    );
                  },
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                )),
          ],
        ),
      ],
    ),
  );
}
