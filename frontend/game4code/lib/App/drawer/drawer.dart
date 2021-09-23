import 'package:flutter/material.dart';
import 'package:game4code/App/colors/colors.dart';

//home pra frente
class DrawerHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20.0,
      child: new ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'Bem Vindo (a) Thomas Hugo',
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text(
              'thomhugo@gmail.com',
              style: TextStyle(color: Colors.black),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black87,
              child: Text(
                'TH',
                style: TextStyle(fontSize: 40.0, color: corUSABlue),
              ),
            ),
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
          Divider(
            height: 2.0,
          ),
          ListTile(
            leading: IconTheme(
              data: IconThemeData(
                color: Colors.black,
              ),
              child: Icon(Icons.person),
            ),
            title: Text(
              'Perfil',
              style: TextStyle(fontSize: 20, color: Colors.black),
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
                color: Colors.black,
              ),
              child: Icon(Icons.home),
            ),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          new ListTile(
            leading: IconTheme(
              data: IconThemeData(
                color: Colors.black,
              ),
              child: Icon(Icons.keyboard_backspace),
            ),
            title: Text(
              'Sair',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/LoginAluno');
            },
          ),
        ],
      ),
    );
  }
}

//antes da home
class DrawerAntesHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20.0,
      child: new ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'Bem Vindo (a) Thomas Hugo',
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text(
              'thomhugo@gmail.com',
              style: TextStyle(color: Colors.black),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black87,
              child: Text(
                'TH',
                style: TextStyle(fontSize: 40.0, color: corUSABlue),
              ),
            ),
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
          Divider(
            height: 2.0,
          ),
          ListTile(
            leading: IconTheme(
              data: IconThemeData(
                color: Colors.black,
              ),
              child: Icon(Icons.person),
            ),
            title: Text(
              'Perfil',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          Divider(
            height: 2.0,
          ),
          new ListTile(
            leading: IconTheme(
              data: IconThemeData(
                color: Colors.black,
              ),
              child: Icon(Icons.keyboard_backspace),
            ),
            title: Text(
              'Sair',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/LoginAluno');
            },
          ),
        ],
      ),
    );
  }
}
