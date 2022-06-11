import 'package:flutter/material.dart';
import 'package:g4c/App/DataModel/NivelamentoQ1.dart';
import 'package:g4c/App/bars/AppBar.dart';
import 'package:g4c/App/colors/colors.dart';
import 'package:g4c/App/view/home.dart';

import '../DataModel/NivelamentoQ1.dart';
import '../DataModel/NivelamentoQ2.dart';
import '../DataModel/NivelamentoQ3.dart';
//import '../DataModel/NivelamentoQ4.dart';
import '../DataModel/Questao13.dart';

final AppBarScreen appBar = AppBarScreen();

class NivelamentoQ1 extends StatefulWidget {
  @override
  _NivelamentoQ1State createState() => _NivelamentoQ1State();
}

class _NivelamentoQ1State extends State<NivelamentoQ1> {
  late Future<NivelQ1> futureNQ1;

  @override
  void initState() {
    super.initState();
    futureNQ1 = fetchNivelQ1();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45),
          child: appBar,
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
                    alignment: Alignment.center,
                    child: FutureBuilder<NivelQ1>(
                      future: futureNQ1,
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
                                    NivelamentoQ2(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "main",
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
                                    NivelamentoQ2(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "package",
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
                                    NivelamentoQ2(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "scanner",
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
                                    NivelamentoQ2(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "println",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 25,
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

//Questão 2

class NivelamentoQ2 extends StatefulWidget {
  @override
  _Nivelamento2State createState() => _Nivelamento2State();
}

class _Nivelamento2State extends State<NivelamentoQ2> {
  late Future<NivelQ2> futureNQ2;

  @override
  void initState() {
    super.initState();
    futureNQ2 = fetchNivelQ2();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45),
          child: appBar,
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
                    child: FutureBuilder<NivelQ2>(
                      future: futureNQ2,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text(
                            snapshot.data!.codigo,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
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
                  mainAxisExtent: 150,
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
                                    NivelamentoQ3(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "Vetor é um array de apenas 1 dimensão e a matriz é um array de 2 (ou mais) dimensões.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20,
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
                                    NivelamentoQ3(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "Vetor é um array de apenas 2 dimensão e a matriz é um array de 1.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20,
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
                                    NivelamentoQ3(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "Não há diferença.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20,
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
                                    NivelamentoQ3(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "Vetor é um tipo de matriz.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20,
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

class NivelamentoQ3 extends StatefulWidget {
  @override
  _Nivelamento3State createState() => _Nivelamento3State();
}

class _Nivelamento3State extends State<NivelamentoQ3> {
  late Future<NivelQ3> futureNQ3;

  @override
  void initState() {
    super.initState();
    futureNQ3 = fetchNivelQ3();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45),
          child: appBar,
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
                    child: FutureBuilder<NivelQ3>(
                      future: futureNQ3,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text(
                            snapshot.data!.codigo,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
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
                                    Home(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "varchar",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20,
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
                              "int",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20,
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
                              "float.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20,
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
                              "char",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20,
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
