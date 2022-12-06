import 'package:flutter/material.dart';
import 'package:game4code_front/App/colors/colors.dart';
import 'package:game4code_front/App/view/home.dart';
import 'package:game4code_front/App/view/profile.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

/*
class Dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
*/
class Dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    const double _iconSize = 41;
    const double _iconSizeSelected = 53;

    return Scaffold(
      backgroundColor: corBranco,
      floatingActionButton: SpeedDial(
        child: Image.asset("assets/imagens/logo.png", width: 38),
        speedDialChildren: <SpeedDialChild>[
          SpeedDialChild(
            child: const Icon(Icons.book),
            foregroundColor: Colors.white,
            backgroundColor: Colors.red,
            label: 'Tarefas!',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(), //mudar mais pra frente
                ),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.dashboard),
            foregroundColor: Colors.black,
            backgroundColor: Colors.yellow,
            label: 'Dashboard',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Dashboard(), //mudar mais pra frente
                ),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.person),
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
            label: 'Perfil',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile(), //mudar mais pra frente
                ),
              );
            },
          ),
        ],
        closedForegroundColor: Color.fromARGB(255, 255, 255, 255),
        openForegroundColor: Colors.green,
        closedBackgroundColor: Colors.green,
        openBackgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: MinhaDashboard(),
    );
  }
}

class MinhaDashboard extends StatefulWidget {
  @override
  _MinhaDashboardState createState() => _MinhaDashboardState();
}

class _MinhaDashboardState extends State<MinhaDashboard>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  int getColorHexFromStr(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                      height: 250.0,
                      width: double.infinity,
                      color: Colors.white),
                  Positioned(
                    bottom: 50.0,
                    right: 100.0,
                    child: Container(
                      height: 400.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200.0),
                          color: Colors.white),
                    ),
                  ),
                  Positioned(
                    bottom: 100.0,
                    left: 150.0,
                    child: Container(
                        height: 300.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150.0),
                            color: Colors.white)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 15.0),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 15.0),
                          Container(
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.white,
                              child: Container(
                                decoration: new BoxDecoration(
                                    color: corUSABlue,
                                    shape: BoxShape.circle,
                                    border: new Border.all(
                                      color: Colors.white,
                                      width: 0,
                                    )),
                                child: new CircleAvatar(
                                  radius: 50,
                                  backgroundColor: Colors.white,
                                  child: ClipOval(
                                    child: Image.asset(
                                      'assets/imagens/tab_profile_selected.png',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width - 120.0),
                          SizedBox(height: 15.0),
                        ],
                      ),
                      SizedBox(height: 50.0),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Olá, jogador Thomas Hugo',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Pontuação Total: 6.0',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 25.0),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      SizedBox(height: 10.0)
                    ],
                  )
                ],
              ),
              GridView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  mainAxisExtent: 120,
                ),
                children: [
                  Card(
                    color: Color(0xFFf5c900),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(
                              Icons.menu_book,
                              size: 85,
                            ),
                            title: Text(
                              'Teste 1',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'Pontos Conquistados: 6.0',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ]),
                  ),
                  Card(
                    color: Color(0xFFf64c18),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(
                              Icons.code_outlined,
                              size: 85,
                            ),
                            title: Text(
                              'Teste 2',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'Pontos Conquistados: 5.0',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ]),
                  ),
                  Card(
                    color: Color(0xFF8752a3),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(
                              Icons.add,
                              size: 85,
                            ),
                            title: Text(
                              'Teste 3',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'Pontos Conquistados: 7.0',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
