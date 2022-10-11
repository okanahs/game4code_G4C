import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game4code_front/App/DataModel/NivelamentoQ4.dart';
import 'package:game4code_front/App/Utils/Content.dart';
import 'package:game4code_front/App/colors/colors.dart';
import 'package:game4code_front/App/view/cartas/cartaselecao.dart';
import 'package:game4code_front/App/view/dashboard.dart';
import 'package:game4code_front/App/view/home.dart';
import 'package:game4code_front/App/view/profile.dart';
import 'package:swipe_cards/draggable_card.dart';
import 'package:tcard/tcard.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

import '../DataModel/Questao11.dart';
import '../DataModel/Questao12.dart';
import '../DataModel/Questao13.dart';
import '../DataModel/Questao14.dart';

//  ██████  ██    ██ ███████ ███████ ████████  █████   ██████       ██
// ██    ██ ██    ██ ██      ██         ██    ██   ██ ██    ██     ███
// ██    ██ ██    ██ █████   ███████    ██    ███████ ██    ██      ██
// ██ ▄▄ ██ ██    ██ ██           ██    ██    ██   ██ ██    ██      ██
//  ██████   ██████  ███████ ███████    ██    ██   ██  ██████       ██
//     ▀▀

class Nivel1Q1 extends StatefulWidget {
  @override
  _Nivel1Q1State createState() => _Nivel1Q1State();
}

// late Future<Questao1> futureQ11;

class _Nivel1Q1State extends State<Nivel1Q1> {
  // late Future<Questao11> futureQ11;

  @override
  void initState() {
    super.initState();
    // futureQ11 = fetchQuestao11();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corBranco,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
        floatingActionButton: SizedBox(
          height: 90.0,
          width: 800.0,
          child: Material(
            shape: StadiumBorder(),
            textStyle: Theme.of(context).textTheme.button,
            elevation: 0,
            child: Container(
              //color: Colors.white,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Color(0xFFDFDFDF)),
                  left: BorderSide(color: Color(0xFFDFDFDF)),
                  right: BorderSide(color: Color(0xFFDFDFDF)),
                  bottom: BorderSide(color: Color(0xFFDFDFDF)),
                ),
                color: Color(0xFFDFDFDF),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      elevation: 0.0,
                      color: Colors.white,
                      hoverColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.receipt,
                              color: Colors.yellow,
                              size: 30.0,
                            ),
                            Text("Cartas Adiquiridas",
                                style: TextStyle(
                                    color: Colors.yellow, fontSize: 12))
                          ],
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      elevation: 0.0,
                      color: Colors.white,
                      hoverColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.monetization_on_outlined,
                              color: Colors.yellow,
                              size: 30.0,
                            ),
                            Text("0",
                                style: TextStyle(
                                    color: Colors.yellow, fontSize: 12))
                          ],
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      elevation: 0.0,
                      color: Colors.white,
                      hoverColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.quiz,
                              color: Colors.yellow,
                              size: 30.0,
                            ),
                            Text("Pedir Ajuda",
                                style: TextStyle(
                                    color: Colors.yellow, fontSize: 12))
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                CartaSelecao(), //mudar mais pra frente
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 90),
              Row(children: [
                Expanded(
                    child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: " 1) Analise o exemplo abaixo:\n\n",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: '  package br.com.treinaweb;\n' +
                                '  public class Exemplo {\n' +
                                '    public static void main(String[] args) {\n' +
                                '         int resposta = 10;\n' +
                                '       if (resposta == 10) {\n' +
                                '           System.out.println(“Você acertou!”);\n' +
                                '         } else {\n' +
                                '           System.out.println(“Você errou!”);\n' +
                                '       }\n' +
                                '    }\n' +
                                ' }\n\n',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 17, 0),
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                          text:
                              '  considerando o valor da variável resposta,\n' +
                                  '  qual das opções serão escritas?',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ))
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

//  ██████  ██    ██ ███████ ███████ ████████  █████   ██████      ██████
// ██    ██ ██    ██ ██      ██         ██    ██   ██ ██    ██          ██
// ██    ██ ██    ██ █████   ███████    ██    ███████ ██    ██      █████
// ██ ▄▄ ██ ██    ██ ██           ██    ██    ██   ██ ██    ██     ██
//  ██████   ██████  ███████ ███████    ██    ██   ██  ██████      ███████
//     ▀▀

class Nivel1Q2 extends StatefulWidget {
  @override
  _Nivel1Q2State createState() => _Nivel1Q2State();
}

var SwipeImages = [
  "assets/imagens/flag.png",
];
// late Future<Questao2> futureQ12;

class _Nivel1Q2State extends State<Nivel1Q2> {
  // late Future<Questao12> futureQ12;
  var services = [
    "NÍVEL 1",
    "NÍVEL 2",
  ];

  @override
  void initState() {
    super.initState();
    // futureQ12 = fetchQuestao12();
  }

  Color color = Colors.black;
  Color color2 = Colors.grey;
  @override
  Widget build(BuildContext context) {
    final showDraggable = color == Colors.black;
    final showDraggable2 = color2 == Colors.grey;

    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
        floatingActionButton: SizedBox(
          height: 90.0,
          width: 800.0,
          child: Material(
            shape: StadiumBorder(),
            textStyle: Theme.of(context).textTheme.button,
            elevation: 0,
            child: Container(
              //color: Colors.white,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Color(0xFFDFDFDF)),
                  left: BorderSide(color: Color(0xFFDFDFDF)),
                  right: BorderSide(color: Color(0xFFDFDFDF)),
                  bottom: BorderSide(color: Color(0xFFDFDFDF)),
                ),
                color: Color(0xFFDFDFDF),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      elevation: 0.0,
                      color: Colors.white,
                      hoverColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.receipt,
                              color: Colors.yellow,
                              size: 30.0,
                            ),
                            Text("Cartas Adiquiridas",
                                style: TextStyle(
                                    color: Colors.yellow, fontSize: 12))
                          ],
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      elevation: 0.0,
                      color: Colors.white,
                      hoverColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.monetization_on_outlined,
                              color: Colors.yellow,
                              size: 30.0,
                            ),
                            Text("0",
                                style: TextStyle(
                                    color: Colors.yellow, fontSize: 12))
                          ],
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      elevation: 0.0,
                      color: Colors.white,
                      hoverColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.quiz,
                              color: Colors.yellow,
                              size: 30.0,
                            ),
                            Text("Pedir Ajuda",
                                style: TextStyle(
                                    color: Colors.yellow, fontSize: 12))
                          ],
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Row(
          children: [
            Flexible(
                child: Container(
              color: Colors.transparent,
              child: ListView(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          SizedBox(height: 80),
                          Container(
                              width: 300,
                              height: 150,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Pergunta 2: asjkdbailkesbcalkesbdcakesbdclkaebd claklesbhfd ckaesbdc',
                                  maxLines: 3,
                                  style: TextStyle(fontSize: 20),
                                ),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IgnorePointer(
                          ignoring: !showDraggable,
                          child: Opacity(
                              opacity: showDraggable ? 1 : 0,
                              child: Draggable<Color>(
                                data: Colors.green,
                                child: Container(
                                    child: Center(
                                      child: Column(children: [
                                        Container(
                                          width: 150,
                                          height: 150,
                                          color: Colors.blue,
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'IF',
                                              maxLines: 3,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                    width: 150,
                                    height: 150,
                                    color: Colors.green),
                                feedback: Container(
                                    child: Center(
                                      child: Column(children: [
                                        Container(
                                          width: 150,
                                          height: 150,
                                          color: Colors.blue,
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'IF',
                                              maxLines: 3,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                    width: 150,
                                    height: 150,
                                    color: Colors.blue),
                                childWhenDragging: Container(
                                    child: Center(
                                      child: Column(children: [
                                        Container(
                                          width: 150,
                                          height: 150,
                                          color: Colors.blue,
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'IF',
                                              maxLines: 3,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                    width: 150,
                                    height: 150,
                                    color: Colors.blue),
                              ))),
                      DragTarget<Color>(
                        onAccept: (data) => setState(() => color = data),
                        builder: (context, _, __) =>
                            Container(width: 150, height: 150, color: color),
                      ),
                    ]),
                SizedBox(
                  height: 30,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IgnorePointer(
                          ignoring: !showDraggable2,
                          child: Opacity(
                              opacity: showDraggable2 ? 1 : 0,
                              child: Draggable<Color>(
                                data: Colors.green,
                                child: Container(
                                    child: Center(
                                      child: Column(children: [
                                        Container(
                                          width: 150,
                                          height: 150,
                                          color: Colors.blue,
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'IF',
                                              maxLines: 3,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                    width: 150,
                                    height: 150,
                                    color: Colors.green),
                                feedback: Container(
                                    child: Center(
                                      child: Column(children: [
                                        Container(
                                          width: 150,
                                          height: 150,
                                          color: Colors.blue,
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'IF',
                                              maxLines: 3,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                    width: 150,
                                    height: 150,
                                    color: Colors.blue),
                                childWhenDragging: Container(
                                    child: Center(
                                      child: Column(children: [
                                        Container(
                                          width: 150,
                                          height: 150,
                                          color: Colors.blue,
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'IF',
                                              maxLines: 3,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                    width: 150,
                                    height: 150,
                                    color: Colors.blue),
                              ))),
                      DragTarget<Color>(
                        onAccept: (data2) => setState(() => color2 = data2),
                        builder: (context, _, __) =>
                            Container(width: 150, height: 150, color: color2),
                      ),
                    ]),
                SizedBox(height: 30),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Avançar",
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
                              builder: (context) => Home(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black, // Background color
                        ),
                      ),
                    ])
              ]),
            )),
          ],
        ));
  }
}

//  ██████  ██    ██ ███████ ███████ ████████  █████   ██████      ██████
// ██    ██ ██    ██ ██      ██         ██    ██   ██ ██    ██          ██
// ██    ██ ██    ██ █████   ███████    ██    ███████ ██    ██      █████
// ██ ▄▄ ██ ██    ██ ██           ██    ██    ██   ██ ██    ██          ██
//  ██████   ██████  ███████ ███████    ██    ██   ██  ██████      ██████
//     ▀▀

