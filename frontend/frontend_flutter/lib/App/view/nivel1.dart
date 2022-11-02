import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game4code_front/App/colors/colors.dart';
import 'package:game4code_front/App/view/cartas/cartaselecao.dart';
import 'package:game4code_front/App/view/home.dart';
import 'package:game4code_front/App/view/login.dart';

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

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
                    child: ElevatedButton(
                      // elevation: 0.0,
                      // color: Colors.white,
                      // hoverColor: Colors.white,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.receipt,
                              color: corCeruleanBlue,
                              size: 30.0,
                            ),
                            Text("Cartas Adiquiridas",
                                style: TextStyle(
                                    color: corCeruleanBlue, fontSize: 12))
                          ],
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      // elevation: 0.0,
                      // color: Colors.white,
                      // hoverColor: Colors.white,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.monetization_on_outlined,
                              color: corCeruleanBlue,
                              size: 30.0,
                            ),
                            Text("0",
                                style: TextStyle(
                                    color: corCeruleanBlue, fontSize: 12))
                          ],
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      // elevation: 0.0,
                      // color: Colors.white,
                      // hoverColor: Colors.white,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.quiz,
                              color: corCeruleanBlue,
                              size: 30.0,
                            ),
                            Text("Pedir Ajuda",
                                style: TextStyle(
                                    color: corCeruleanBlue, fontSize: 12))
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
                    child: ElevatedButton(
                      // elevation: 0.0,
                      // color: Colors.white,
                      // hoverColor: Colors.white,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.receipt,
                              color: corCeruleanBlue,
                              size: 30.0,
                            ),
                            Text("Cartas Adiquiridas",
                                style: TextStyle(
                                    color: corCeruleanBlue, fontSize: 12))
                          ],
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      // elevation: 0.0,
                      // color: Colors.white,
                      // hoverColor: Colors.white,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.monetization_on_outlined,
                              color: corCeruleanBlue,
                              size: 30.0,
                            ),
                            Text("0",
                                style: TextStyle(
                                    color: corCeruleanBlue, fontSize: 12))
                          ],
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      // elevation: 0.0,
                      // color: Colors.white,
                      // hoverColor: Colors.white,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.quiz,
                              color: corCeruleanBlue,
                              size: 30.0,
                            ),
                            Text("Pedir Ajuda",
                                style: TextStyle(
                                    color: corCeruleanBlue, fontSize: 12))
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
                              builder: (context) => Nivel1Q3(),
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


Future<http.Response> pAlbum() {
  return http.get(Uri.parse('http://127.0.0.1:5000/rodacod'));
}

Future<Album> createAlbum(String codigo) async {
  final response = await http.post(
    Uri.parse('http://127.0.0.1:5000/gravacod'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{'codigo': codigo}),
  );

  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}

class Album {
  final String codigo;

  const Album({required this.codigo});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(codigo: json['codigo']);
  }
}

class Nivel1Q3 extends StatefulWidget {
  @override
  _Nivel1Q3State createState() => _Nivel1Q3State();
}

class _Nivel1Q3State extends State<Nivel1Q3> {
  final TextEditingController parte_1 = TextEditingController();
  final TextEditingController parte_2 = TextEditingController();
  final TextEditingController parte_3 = TextEditingController();
  final TextEditingController parte_4 = TextEditingController();
  @override
  void initState() {
    super.initState();
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
                  child: ElevatedButton(
                    // elevation: 0.0,
                    // color: Colors.white,
                    // hoverColor: Colors.white,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.receipt,
                            color: corCeruleanBlue,
                            size: 30.0,
                          ),
                          Text("Cartas Adiquiridas",
                              style: TextStyle(
                                  color: corCeruleanBlue, fontSize: 12))
                        ],
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    // elevation: 0.0,
                    // color: Colors.white,
                    // hoverColor: Colors.white,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.monetization_on_outlined,
                            color: corCeruleanBlue,
                            size: 30.0,
                          ),
                          Text("0",
                              style: TextStyle(
                                  color: corCeruleanBlue, fontSize: 12))
                        ],
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    // elevation: 0.0,
                    // color: Colors.white,
                    // hoverColor: Colors.white,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.quiz,
                            color: corCeruleanBlue,
                            size: 30.0,
                          ),
                          Text("Pedir Ajuda",
                              style: TextStyle(
                                  color: corCeruleanBlue, fontSize: 12))
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Pergunta 3: Neste exercicio, o usuario deve preencher os espaços da forma adequada',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 180,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '             class Main{\n' +
                            '                       //atributos =',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 58, 180, 24)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30,
                    padding: const EdgeInsets.only(
                      right: 50,
                    ),
                    //child: TextField(),
                  ),
                ),
                SizedBox(
                  width: 22,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '                  static int soma(',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 1,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 20,
                    padding: const EdgeInsets.only(
                      right: 10,
                    ),
                    child: TextField(controller: parte_1),
                  ),
                ),
                Text(
                  ')',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                ),
                Text(
                  '{',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 58, 180, 24)),
                ),
                SizedBox(
                  width: 110,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[],
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 20,
                    padding: const EdgeInsets.only(
                      right: 10,
                    ),
                    child: TextField(controller: parte_2),
                  ),
                ),
                SizedBox(
                  width: 172,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '               return ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 58, 180, 24)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 20,
                    padding: const EdgeInsets.only(
                      right: 10,
                    ),
                    child: TextField(controller: parte_3),
                  ),
                ),
                SizedBox(
                  width: 172,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '                }',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 58, 180, 24)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '               }',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 58, 180, 24)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                  createAlbum(
                      'class Main{\n static int soma(${parte_1.text}){\n ${parte_2.text}\n return ${parte_3.text}}\n public static void main(String[] args){\n System.out.println(soma(1,2)); \n}}');
                  pAlbum();
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
          ],
        ),
      ),
    );
  }
}
