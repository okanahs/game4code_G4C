import 'package:flutter/material.dart';
import 'package:game4code/App/colors/colors.dart';
import 'package:game4code/App/drawer/drawer.dart';

class ResultadosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF57ebde),
                Color(0xFFaefb2a),
              ],
            )),
          ),
          actions: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                    padding: const EdgeInsets.only(left: 16),
                    icon: Image.asset(
                      "assets/appBar/java.png",
                      height: 29,
                    ),
                    iconSize: 20,
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    }),
                const SizedBox(
                  width: 5,
                ),
                IconButton(
                  padding: const EdgeInsets.only(left: 16),
                  icon: Image.asset(
                    "assets/appBar/navbar_diamont.png",
                    height: 29,
                  ),
                  onPressed: () {},
                ),
                Text(
                  "0",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 17),
                ),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
          ],
        ),
        drawer: DrawerHomeWidget(),
        body: getBody(context));
  }
}

Widget getBody(BuildContext context) {
  return Center(
    child: Container(
      child: new ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            child: new Column(children: <Widget>[
              //SizedBox(height: 50),
              Row(
                children: [
                  Container(
                    color: Colors.cyan,
                    height: 190,
                    width: 450,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 200)),
                        CircleAvatar(
                          maxRadius: 70,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/semfoto.png',
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Thomas Hugo",
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),

              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: IconTheme(
                  data: IconThemeData(color: Colors.red),
                  child: Icon(Icons.person),
                ),
                title: Text(
                  'Perfil',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
              ),
              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: IconTheme(
                  data: IconThemeData(
                    color: Colors.red,
                  ),
                  child: Icon(Icons.home),
                ),
                title: Text(
                  'Home',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
              Divider(
                height: 2.0,
              ),
              new ListTile(
                leading: IconTheme(
                  data: IconThemeData(
                    color: Colors.red,
                  ),
                  child: Icon(
                    Icons.dashboard,
                    color: Colors.red,
                  ),
                ),
                title: Text(
                  'Dashboard',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/dashboard');
                },
              ),
              Divider(
                height: 2.0,
              ),
              new ListTile(
                leading: IconTheme(
                  data: IconThemeData(
                    color: Colors.red,
                  ),
                  child: Icon(Icons.keyboard_backspace),
                ),
                title: Text(
                  'Sair',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/Login');
                },
              ),
              Divider(
                height: 2.0,
              ),
            ]),
          ),
        ],
      ),
    ),
  );
}
