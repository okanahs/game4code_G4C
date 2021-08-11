import 'package:flutter/material.dart';
import 'package:game4code/App/colors/colors.dart';

//aluno - home pra frente
class DrawerAlunoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20.0,
      child: new ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'Bem Vindo (a) aluno (a) Thomas Hugo',
              style: TextStyle(color: corUSABlue),
            ),
            accountEmail: Text(
              'thomhugo@gmail.com',
              style: TextStyle(color: corUSABlue),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black87,
              child: Text(
                'TH',
                style: TextStyle(fontSize: 40.0, color: corUSABlue),
              ),
            ),
            decoration: BoxDecoration(color: corPowderBlues),
          ),
          Divider(
            height: 2.0,
          ),
          ListTile(
            leading: IconTheme(
              data: IconThemeData(
                color: corUSABlue,
              ),
              child: Icon(Icons.person),
            ),
            title: Text(
              'Perfil',
              style: TextStyle(fontSize: 20, color: corUSABlue),
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
                color: corUSABlue,
              ),
              child: Icon(Icons.home),
            ),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 20, color: corUSABlue),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/homeAluno');
            },
          ),
          new ListTile(
            leading: IconTheme(
              data: IconThemeData(
                color: corUSABlue,
              ),
              child: Icon(Icons.keyboard_backspace),
            ),
            title: Text(
              'Sair',
              style: TextStyle(fontSize: 20, color: corUSABlue),
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

//prof - home pra frente
class DrawerProfWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20.0,
      child: new ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              '\n\nBem Vindo (a) Prof. Severus Snape',
              style: TextStyle(color: corUSABlue),
            ),
            accountEmail: Text(
              'severussnape@gmail.com',
              style: TextStyle(color: corUSABlue),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black87,
              child: Text(
                'SS',
                style: TextStyle(fontSize: 40.0, color: corUSABlue),
              ),
            ),
            decoration: BoxDecoration(color: corPowderBlues),
          ),
          Divider(
            height: 2.0,
          ),
          ListTile(
            leading: IconTheme(
              data: IconThemeData(
                color: corUSABlue,
              ),
              child: Icon(Icons.person),
            ),
            title: Text(
              'Perfil',
              style: TextStyle(fontSize: 20, color: corUSABlue),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/profileProf');
            },
          ),
          Divider(
            height: 2.0,
          ),
          ListTile(
            leading: IconTheme(
              data: IconThemeData(
                color: corUSABlue,
              ),
              child: Icon(Icons.home_filled),
            ),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 20, color: corUSABlue),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/homeProfessor');
            },
          ),
          new ListTile(
            leading: IconTheme(
              data: IconThemeData(
                color: corUSABlue,
              ),
              child: Icon(Icons.dashboard),
            ),
            title: Text(
              'Resultados',
              style: TextStyle(fontSize: 20, color: corUSABlue),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/resultados');
            },
          ),
          new ListTile(
            leading: IconTheme(
              data: IconThemeData(
                color: corUSABlue,
              ),
              child: Icon(Icons.keyboard_backspace),
            ),
            title: Text(
              'Sair',
              style: TextStyle(fontSize: 20, color: corUSABlue),
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

//aluno - antes da home
class DrawerAlunoEquipeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20.0,
      child: new ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'Bem Vindo (a) aluno (a) Thomas Hugo',
              style: TextStyle(color: corUSABlue),
            ),
            accountEmail: Text(
              'thomhugo@gmail.com',
              style: TextStyle(color: corUSABlue),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black87,
              child: Text(
                'TH',
                style: TextStyle(fontSize: 40.0, color: corUSABlue),
              ),
            ),
            decoration: BoxDecoration(color: corPowderBlues),
          ),
          Divider(
            height: 2.0,
          ),
          ListTile(
            leading: IconTheme(
              data: IconThemeData(
                color: corUSABlue,
              ),
              child: Icon(Icons.person),
            ),
            title: Text(
              'Perfil',
              style: TextStyle(fontSize: 20, color: corUSABlue),
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
                color: corUSABlue,
              ),
              child: Icon(Icons.keyboard_backspace),
            ),
            title: Text(
              'Sair',
              style: TextStyle(fontSize: 20, color: corUSABlue),
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

//prof - home para tras
class DrawerProfTurmaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20.0,
      child: new ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              '\n\nBem Vindo (a) Prof. Severus Snape',
              style: TextStyle(color: corUSABlue),
            ),
            accountEmail: Text(
              'severussnape@gmail.com',
              style: TextStyle(color: corUSABlue),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black87,
              child: Text(
                'SS',
                style: TextStyle(fontSize: 40.0, color: corUSABlue),
              ),
            ),
            decoration: BoxDecoration(color: corPowderBlues),
          ),
          Divider(
            height: 2.0,
          ),
          ListTile(
            leading: IconTheme(
              data: IconThemeData(
                color: corUSABlue,
              ),
              child: Icon(Icons.person),
            ),
            title: Text(
              'Perfil',
              style: TextStyle(fontSize: 20, color: corUSABlue),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/profileProfTurma');
            },
          ),
          Divider(
            height: 2.0,
          ),
          new ListTile(
            leading: IconTheme(
              data: IconThemeData(
                color: corUSABlue,
              ),
              child: Icon(Icons.keyboard_backspace),
            ),
            title: Text(
              'Sair',
              style: TextStyle(fontSize: 20, color: corUSABlue),
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
