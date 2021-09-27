import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:game4code/App/drawer/drawer.dart';
import 'package:game4code/App/colors/colors.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => new _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return new Stack(
      children: <Widget>[
        new Container(
          color: corPowderBlues,
        ),
        new BackdropFilter(
            filter: new ui.ImageFilter.blur(
              sigmaX: 6.0,
              sigmaY: 6.0,
            ),
            child: new Container(
              decoration: BoxDecoration(
                color: corPowderBlues,
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
            )),
        new Scaffold(
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
              leading: IconButton(
                padding: const EdgeInsets.only(left: 16),
                icon: Icon(
                  Icons.account_circle,
                  size: 30,
                  color: Colors.redAccent,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
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
                      iconSize: 40,
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                    ),
                    Text(
                      "Java",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 17),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Text('GAME4CODE', style: TextStyle(color: corBranco)),
                    const SizedBox(
                      width: 40,
                    ),
                    Icon(
                      Icons.dashboard_outlined,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      width: 0,
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
                      width: 20,
                    ),
                  ],
                ),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: 0,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), title: Text("Tarefas")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_basket),
                    title: Text("Meus pedidos")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite), title: Text("Favoritos")),
              ],
            ),
            body: new Center(
              child: new Column(
                children: <Widget>[
                  new SizedBox(
                    height: _height / 12,
                  ),
                  new CircleAvatar(
                    radius: _width < _height ? _width / 4 : _height / 4,
                    backgroundColor: corPowderBlues,
                    child: Container(
                      decoration: new BoxDecoration(
                          color: corUSABlue,
                          shape: BoxShape.circle,
                          border: new Border.all(
                            color: Color(0xFF57ebde),
                            width: 3,
                          )),
                      child: new CircleAvatar(
                        radius: 200.0,
                        backgroundColor: corPowderBlues,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/semfoto.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                  new SizedBox(
                    height: _height / 25.0,
                  ),
                  new ListTile(
                    title: Text(
                      "Thomas Hugo",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    subtitle: Text(
                      "thomhugo@gmail.com",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  new SizedBox(
                    height: _height / 25.0,
                  ),
                ],
              ),
            ))
      ],
    );
  }

  Widget rowCell(int count, String type) => new Expanded(
          child: new Column(
        children: <Widget>[
          new Text(
            '$count',
            style: new TextStyle(color: corPowderBlues),
          ),
          new Text(type,
              style: new TextStyle(
                  color: corUSABlue, fontWeight: FontWeight.normal))
        ],
      ));
}
