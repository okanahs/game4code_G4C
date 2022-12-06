import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game4code_front/App/colors/colors.dart';
import 'package:game4code_front/App/view/cartas/cartaselecao.dart';
import 'package:game4code_front/App/view/home.dart';
import 'package:game4code_front/App/DataModel/Questao.dart';
import 'package:game4code_front/App/DataModel/Code.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../DataModel/CreateCode.dart';
import '../DataModel/Questao1.dart';

//  ██████  ██    ██ ███████ ███████ ████████  █████   ██████       ██
// ██    ██ ██    ██ ██      ██         ██    ██   ██ ██    ██     ███
// ██    ██ ██    ██ █████   ███████    ██    ███████ ██    ██      ██
// ██ ▄▄ ██ ██    ██ ██           ██    ██    ██   ██ ██    ██      ██
//  ██████   ██████  ███████ ███████    ██    ██   ██  ██████       ██
//     ▀▀

class Nivel2Q1 extends StatefulWidget {
  @override
  _Nivel2Q1State createState() => _Nivel2Q1State();
}

// late Future<Questao1> futureQ11;

class _Nivel2Q1State extends State<Nivel2Q1> {
  // late Future<Questao11> futureQ11;

  @override
  void initState() {
    super.initState();
    // futureQ11 = fetchQuestao11();
  }

  bool? check1 = false;
  bool? check2 = false;
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Container(
                            width: 400,
                            height: 150,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'O comando break pode ser usado apenas na estrutura condicinal switch case',
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              GridView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                  mainAxisExtent: 90,
                ),
                children: [
                  Card(
                    color: corBlueNCS,
                    child: CheckboxListTile(
                      activeColor: Colors.green,
                      value: check1,
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (bool? value) {
                        setState(() {
                          check1 = value;
                        });
                        if (check1!) {
                          check2 = false;
                        }
                      },
                      title: Text(
                        "Verdadeiro",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    margin: EdgeInsets.all(8),
                  ),
                  Card(
                    color: corBlueNCS,
                    child: CheckboxListTile(
                      activeColor: Colors.green,
                      value: check2,
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (bool? value) {
                        setState(() {
                          check2 = value;
                        });
                        if (check2!) {
                          check1 = false;
                        }
                      },
                      title: Text(
                        "Falso",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    margin: EdgeInsets.all(8),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
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
                        builder: (context) => Nivel2Q2(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black, // Background color
                  ),
                ),
              ]),
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

class Nivel2Q2 extends StatefulWidget {
  @override
  _Nivel2Q2State createState() => _Nivel2Q2State();
}

var SwipeImages = [
  "assets/imagens/flag.png",
];
// late Future<Questao2> futureQ12;

class _Nivel2Q2State extends State<Nivel2Q2> {
  late Future<Questao1> futureQ1;
  String url = 'http://127.0.0.1:5000/pergunta1';
  var services = [
    "NÍVEL 1",
    "NÍVEL 2",
  ];

  bool? check1 = false;
  bool? check2 = false;
  bool? check3 = false;
  bool? check4 = false;

  @override
  void initState() {
    super.initState();
    futureQ1 = fetchQuestao1(url);
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
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 90),
            Row(children: [
              Expanded(
                  child: Center(
                child: Text(
                  'No código \ndo{ \n' +
                      'int a = 0;\n' +
                      ' a +=1; \n' +
                      '}while(1);\n'
                          '',
                  style: TextStyle(fontSize: 30),
                ),
              ))
            ]),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black, spreadRadius: 3),
                ],
              ),
              child: GridView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                  mainAxisExtent: 90,
                ),
                children: [
                  CheckboxListTile(
                    activeColor: Colors.green,
                    value: check1,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? value) {
                      setState(() {
                        check1 = value;
                      });

                      if (check1!) {
                        check2 = false;
                        check3 = false;
                        check4 = false;
                      }
                    },
                    title: Text('O código contém erro de sintaxe'),
                  ),
                  CheckboxListTile(
                    activeColor: Colors.green,
                    value: check2,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? value) {
                      setState(() {
                        check2 = value;
                      });

                      if (check2!) {
                        check1 = false;
                        check3 = false;
                        check4 = false;
                      }
                    },
                    title: Text('O código irá executar um looping infinito'),
                  ),
                  CheckboxListTile(
                    activeColor: Colors.green,
                    value: check3,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? value) {
                      setState(() {
                        check3 = value;
                      });

                      if (check3!) {
                        check2 = false;
                        check1 = false;
                        check4 = false;
                      }
                    },
                    title: Text(
                        'O código irá parar quando a variável a atingir o valor 100'),
                  ),
                  CheckboxListTile(
                    activeColor: Colors.green,
                    value: check4,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (bool? value) {
                      setState(() {
                        check4 = value;
                      });

                      if (check4!) {
                        check2 = false;
                        check3 = false;
                        check1 = false;
                      }
                    },
                    title: Text('A string a é incrementada a cada looping'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Voltar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // Background color
                ),
              ),
              SizedBox(width: 100),
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
                      builder: (context) => Nivel2Q3(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // Background color
                ),
              ),
            ])
          ]),
        ));
  }
}

//  ██████  ██    ██ ███████ ███████ ████████  █████   ██████      ██████
// ██    ██ ██    ██ ██      ██         ██    ██   ██ ██    ██          ██
// ██    ██ ██    ██ █████   ███████    ██    ███████ ██    ██      █████
// ██ ▄▄ ██ ██    ██ ██           ██    ██    ██   ██ ██    ██          ██
//  ██████   ██████  ███████ ███████    ██    ██   ██  ██████      ██████
//     ▀▀

class Nivel2Q3 extends StatefulWidget {
  @override
  _Nivel2Q3State createState() => _Nivel2Q3State();
}

class _Nivel2Q3State extends State<Nivel2Q3> {
  final TextEditingController parte_1 = TextEditingController();
  final TextEditingController parte_2 = TextEditingController();
  final TextEditingController parte_3 = TextEditingController();

  Future<Code>? _futureAlbum;

  late Future<Questao> futureQ;
  String url = 'http://127.0.0.1:5000/pergunta/3';
  String urlp = 'http://127.0.0.1:5000/createcode';

  @override
  void initState() {
    super.initState();
    futureQ = fetchQuestao(url);
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
                      'Elabore um metodo que recebe um valor inteiro, e \n'
                      'retorna um booleano caso esse numero pertença a sequência de \n'
                      'Fibonacci: true para pertence, e false para não pertence',
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
                        '             class Fibonacci{\n' +
                            '                               ',
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
                        '                   static boolean fibonacci(',
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
                    child: TextField(),
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
                      "Continuar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // Background color
                ),
              ),
              SizedBox(width: 100),
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
                  Alert(
                    context: context,
                    type: AlertType.error,
                    title: "ERROU!",
                    desc: "Tente novamente.",
                    buttons: [
                      DialogButton(
                        child: Text(
                          "Voltar",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        ),
                        width: 120,
                      )
                    ],
                  ).show();
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
