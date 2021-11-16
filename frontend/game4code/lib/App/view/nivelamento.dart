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
  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(children: [
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
          child: Text(
            "    1) Qual tipo de dado é aceito em uma variável INT?",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
           ),
          )
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
                color: Color(0xFFf5c900),
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
                color: Color(0xFFf64c18),
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
                color: Color(0xFF8752a3),
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
                color: Color(0xFFaefb2a),
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
  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(children: [
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
          child: Text(
            "    2) Qual tipo de dado é aceito em uma variável FLOAT?",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
           ),
          )
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
                color: Color(0xFFf5c900),
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
                color: Color(0xFFf64c18),
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
                color: Color(0xFF8752a3),
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
                color: Color(0xFFaefb2a),
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

// Aviso Nivelamento

class Aviso extends StatefulWidget {
  @override
  _AvisoState createState() => _AvisoState();
}

class _AvisoState extends State<Aviso> {
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

    return Scaffold(
        backgroundColor: corBranco,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45),
          child: appBar,
        ),
        body: getAvisoBody(context));
  }
}

Widget getAvisoBody(BuildContext context) {
  
  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(
          height: 200,
        ),
        Row(children: [
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                  "           Bem Vindo (a) \n"
                  "Como é a sua primeira vez \n"
                  "utilizando o GAME4CODE,\n"
                  "iremos realizar um pequeno \n"
                  "teste para sabermos melhor \n"
                  "seu nivel de conhecimento!",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
            ),
          )
        ]),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 40,
          width: 300,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(12.0)),
          child: SizedBox.expand(
            child: FlatButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "COMEÇAR",
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
                    builder: (context) => Nivelamento(), //mudar mais pra frente
                  ),
                );
              },
            ),
          ),
        ),
      ],
    ),
  );
}
