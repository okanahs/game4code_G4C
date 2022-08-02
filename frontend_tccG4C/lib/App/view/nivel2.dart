import 'package:flutter/material.dart';
import 'package:g4c/App/colors/colors.dart';
import 'package:g4c/App/view/home.dart';
import 'package:g4c/App/DataModel/Code.dart';

import '../DataModel/Questao21.dart';
import '../DataModel/Questao22.dart';
import '../DataModel/Questao24.dart';
import '../DataModel/Questao23.dart';

//Questão 1

class Nivel2Q1 extends StatefulWidget {
  @override
  _Nivel2Q1State createState() => _Nivel2Q1State();
}

class _Nivel2Q1State extends State<Nivel2Q1> {
  late Future<Questao1> futureQ1;

  @override
  void initState() {
    super.initState();
    futureQ1 = fetchQuestao1();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
        backgroundColor: corBranco,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: FutureBuilder<Questao1>(
                      future: futureQ1,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text(
                            snapshot.data!.codigo,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
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
                                    Nivel2Q2(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "this",
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
                                    Nivel2Q2(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "object",
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
                                    Nivel2Q2(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "interface",
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
                                    Nivel2Q2(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "override",
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
class Nivel2Q2 extends StatefulWidget {
  @override
  _Nivel2Q2State createState() => _Nivel2Q2State();
}

class _Nivel2Q2State extends State<Nivel2Q2> {
  late Future<Questao2> futureQ2;

  @override
  void initState() {
    super.initState();
    futureQ2 = fetchQuestao2();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corBranco,
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
                    child: FutureBuilder<Questao2>(
                      future: futureQ2,
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
                  mainAxisExtent: 100,
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
                                    Nivel2Q3(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "Verdadeiro",
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
                                    Nivel2Q3(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "Falso",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
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

//Questão 3
class Nivel2Q3 extends StatefulWidget {
  @override
  _Nivel2Q3State createState() => _Nivel2Q3State();
}

class _Nivel2Q3State extends State<Nivel2Q3> {
  late Future<Questao3> futureQ3;

  @override
  void initState() {
    super.initState();
    futureQ3 = fetchQuestao3();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corBranco,
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
                    child: FutureBuilder<Questao3>(
                      future: futureQ3,
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
                                    Nivel2Q4(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "for (iteração; iteração; condição) inicialização;",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
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
                                    Nivel2Q4(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "for (inicialização; condição; iteração) instrução;",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
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
                                    Nivel2Q4(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "while (inicialização; instrução; iteração) condição;",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
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
                                    Nivel2Q4(), //mudar mais pra frente
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              "while (instrução; condição; inicialização) iteração;",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
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

class Nivel2Q4 extends StatefulWidget {
  @override
  _Nivel2Q4State createState() => _Nivel2Q4State();
}

class _Nivel2Q4State extends State<Nivel2Q4> {
  late Future<Questao4> futureQ4;
  final TextEditingController _codigo = TextEditingController();

  @override
  void initState() {
    super.initState();
    futureQ4 = fetchQuestao4();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corBranco,
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
                    child: FutureBuilder<Questao4>(
                      future: futureQ4,
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
              Column(
                children: <Widget>[
                  Card(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _codigo,
                      maxLines: 20,
                      decoration: InputDecoration.collapsed(
                        hintText: "Digite seu texto aqui",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1.0),
                        ),
                      ),
                    ),
                  ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                child: ButtonBar(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: ElevatedButton(
                      child: Text(
                        'Enviar',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        createCode(_codigo.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      },
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
