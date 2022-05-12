import 'package:flutter/material.dart';
import 'package:g4c/App/Utils/imagens.dart';
import 'package:g4c/App/bars/AppBar.dart';
import 'package:g4c/App/bars/AppBarAlt.dart';
import 'package:g4c/App/bars/bottomNavigatorBar.dart';
import 'package:g4c/App/colors/colors.dart';
import 'package:g4c/App/view/dashboard.dart';
import 'package:g4c/App/view/home.dart';
import 'package:g4c/App/view/profile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final AppBarScreen appBar = AppBarScreen();
final bottomNavigatorBarScreen bnb = bottomNavigatorBarScreen();
final AppBarAltScreen appBarAlt = AppBarAltScreen();

class Nivel1Q1 extends HookConsumerWidget {
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45),
          child: appBarAlt,
        ),
        bottomNavigationBar:
            PreferredSize(preferredSize: const Size.fromHeight(45), child: bnb),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      " 1) Analise o exemplo abaixo:\n\n" +
                          "  package br.com.treinaweb;\n" +
                          "  public class Exemplo {\n" +
                          "    public static void main(String[] args) {\n" +
                          "       int resposta = 10;\n" +
                          "       if (resposta == 10) {\n" +
                          "           System.out.println(“Você acertou!”);\n" +
                          "       } else {\n" +
                          "           System.out.println(“Você errou!”);\n" +
                          "       }\n" +
                          "    }\n" +
                          " }\n\n" +
                          "  considerando o valor da variável resposta,\n" +
                          "  qual das opções serão escritas?",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 20),
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
            ],
          ),
        ));
  }
}

//Questão 2
class Nivel1Q2 extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45),
          child: appBarAlt,
        ),
        bottomNavigationBar:
            PreferredSize(preferredSize: const Size.fromHeight(45), child: bnb),
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
                    child: Text(
                      "2) O que é uma classe?",
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
                        child: Text(
                          "É um elemento que possui características próprias, denotadas por atributos",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
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
                        child: Text(
                          "\nÉ uma elemento de entrada de dados.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
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
                        child: Text(
                          "\n\nÉ uma estrutura condicional",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
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
                        child: Text(
                          "É um elemento do código Java que utilizamos para representar objetos do mundo real.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ));
  }
}

//Questão 3
class Nivel1Q3 extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45),
          child: appBarAlt,
        ),
        bottomNavigationBar:
            PreferredSize(preferredSize: const Size.fromHeight(45), child: bnb),
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
                    child: Text(
                      "3) Quais das opções a seguir são Operadores Lógicos?",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25),
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
                        child: Text(
                          "\n&& - || - !",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
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
                        child: Text(
                          "\n “ ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
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
                        child: Text(
                          "\n >= ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
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
                        child: Text(
                          "\n Do-while ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ));
  }
}

//Questão 04

class Nivel1Q4 extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45),
          child: appBarAlt,
        ),
        bottomNavigationBar:
            PreferredSize(preferredSize: const Size.fromHeight(45), child: bnb),
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
                    child: Text(
                      "4) As estruturas de repetição, na linguagem Java," +
                          " permitem executar mais de uma vez um mesmo trecho de código." +
                          " Trata-se de uma forma de executar blocos de comandos somente" +
                          " sob determinadas condições. É correto afirmar que, quando se sabe de antemão" +
                          " quantas vezes o loop deverá ser \n executado, o comando utilizado é:",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25),
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
                        child: Text(
                          "\n if-else ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
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
                        child: Text(
                          "\n for ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
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
                        child: Text(
                          "\n while ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
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
                        child: Text(
                          "\n Do-while ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ));
  }
}
