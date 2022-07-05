import 'package:flutter/material.dart';
import 'package:g4c/App/DataModel/NivelamentoQ4.dart';
import 'package:g4c/App/bars/AppBar.dart';
import 'package:g4c/App/colors/colors.dart';
import 'package:g4c/App/view/dashboard.dart';
import 'package:g4c/App/view/home.dart';
import 'package:g4c/App/view/profile.dart';

import '../DataModel/Questao11.dart';
import '../DataModel/Questao12.dart';
import '../DataModel/Questao13.dart';
import '../DataModel/Questao14.dart';

final AppBarScreen appBar = AppBarScreen();
final AppBarScreen appBarAlt = AppBarScreen();

//Questão 1
class Nivel1Q1 extends StatefulWidget {
  @override
  _Nivel1Q1State createState() => _Nivel1Q1State();
}

late Future<Questao1> futureQ11;

class _Nivel1Q1State extends State<Nivel1Q1> {
  late Future<Questao11> futureQ11;

  @override
  void initState() {
    super.initState();
    futureQ11 = fetchQuestao11();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45),
          child: appBarAlt,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: FutureBuilder<Questao11>(
                      future: futureQ11,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text(
                            snapshot.data!.codigo,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          );
                        } else if (snapshot.hasError) {
                          return Text('${snapshot.error}');
                        }
                        // By default, show a loading spinner.
                        return const CircularProgressIndicator();
                      },
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
                  mainAxisExtent: 90,
                ),
                children: [
                  Card(
                      color: corBlueNCS,
                      child: InkWell(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Nivel1Q2(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "Você não acertou!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))),
                  Card(
                      color: corBlueNCS,
                      child: InkWell(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Nivel1Q2(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "Você acertou!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))),
                  Card(
                      color: corBlueNCS,
                      child: InkWell(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Nivel1Q2(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "Nenhuma opção!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))),
                  Card(
                      color: corBlueNCS,
                      child: InkWell(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Nivel1Q2(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "Você errou!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}

//Questão 2
class Nivel1Q2 extends StatefulWidget {
  @override
  _Nivel1Q2State createState() => _Nivel1Q2State();
}

class _Nivel1Q2State extends State<Nivel1Q2> {
  late Future<Questao12> futureQ12;

  @override
  void initState() {
    super.initState();
    futureQ12 = fetchQuestao12();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45),
          child: appBarAlt,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: FutureBuilder<Questao12>(
                      future: futureQ12,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text(
                            snapshot.data!.codigo,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          );
                        } else if (snapshot.hasError) {
                          return Text('${snapshot.error}');
                        }
                        // By default, show a loading spinner.
                        return const CircularProgressIndicator();
                      },
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
                  mainAxisExtent: 220,
                ),
                children: [
                  Card(
                      color: corBlueNCS,
                      child: InkWell(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Nivel1Q3(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "É um elemento que possui características próprias, denotadas por atributos",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))),
                  Card(
                      color: corBlueNCS,
                      child: InkWell(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Nivel1Q3(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "É uma elemento de entrada de dados.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))),
                  Card(
                      color: corBlueNCS,
                      child: InkWell(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Nivel1Q3(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "É uma estrutura condicional",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))),
                  Card(
                      color: corBlueNCS,
                      child: InkWell(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Nivel1Q3(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "É um elemento do código Java que utilizamos para representar objetos do mundo real.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))),
                ],
              ),
            ],
          ),
        ));
  }
}

//Questão 3

class Nivel1Q3 extends StatefulWidget {
  @override
  _Nivel1Q3State createState() => _Nivel1Q3State();
}

class _Nivel1Q3State extends State<Nivel1Q3> {
  late Future<Questao13> futureQ13;

  @override
  void initState() {
    super.initState();
    futureQ13 = fetchQuestao13();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45),
          child: appBarAlt,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: FutureBuilder<Questao13>(
                      future: futureQ13,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text(
                            snapshot.data!.codigo,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          );
                        } else if (snapshot.hasError) {
                          return Text('${snapshot.error}');
                        }
                        // By default, show a loading spinner.
                        return const CircularProgressIndicator();
                      },
                    ),
                  ),
                )
              ]),
              SizedBox(
                height: 50,
              ),
              GridView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  mainAxisExtent: 110,
                ),
                children: [
                  Card(
                      color: corBlueNCS,
                      child: InkWell(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Nivel1Q4(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "&& - || - !",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))),
                  Card(
                      color: corBlueNCS,
                      child: InkWell(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Nivel1Q4(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "“",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))),
                  Card(
                      color: corBlueNCS,
                      child: InkWell(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Nivel1Q4(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              ">=",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))),
                  Card(
                      color: corBlueNCS,
                      child: InkWell(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Nivel1Q4(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "Do-while",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))),
                ],
              ),
            ],
          ),
        ));
  }
}

//Questão 4
class Nivel1Q4 extends StatefulWidget {
  @override
  _Nivel1Q4State createState() => _Nivel1Q4State();
}

class _Nivel1Q4State extends State<Nivel1Q4> {
  late Future<Questao14> futureQ14;

  @override
  void initState() {
    super.initState();
    futureQ14 = fetchQuestao14();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45),
          child: appBarAlt,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: FutureBuilder<Questao14>(
                      future: futureQ14,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text(
                            snapshot.data!.codigo,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          );
                        } else if (snapshot.hasError) {
                          return Text('${snapshot.error}');
                        }
                        // By default, show a loading spinner.
                        return const CircularProgressIndicator();
                      },
                    ),
                  ),
                )
              ]),
              SizedBox(
                height: 50,
              ),
              GridView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  mainAxisExtent: 110,
                ),
                children: [
                  Card(
                      color: corBlueNCS,
                      child: InkWell(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Home(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "if-else",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))),
                  Card(
                      color: corBlueNCS,
                      child: InkWell(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Home(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "for",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))),
                  Card(
                      color: corBlueNCS,
                      child: InkWell(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Home(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "while",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))),
                  Card(
                      color: corBlueNCS,
                      child: InkWell(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Home(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "Do-while",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
