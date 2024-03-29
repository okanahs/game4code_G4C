import 'package:flutter/material.dart';
import 'package:game4code_front/App/view/AlterarSenha.dart';
import 'package:game4code_front/App/view/dashboard.dart';
import 'package:game4code_front/App/view/home.dart';
import 'package:game4code_front/App/view/login.dart';
import 'package:game4code_front/App/view/nivel1.dart';
import 'package:game4code_front/App/view/nivel2.dart';
import 'package:game4code_front/App/view/profile.dart';
import 'package:game4code_front/App/view/registrar.dart';
import 'package:game4code_front/App/view/userguide.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GAME4CODE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
      //initialRoute: '/Login',
      routes: {
        '/home': (context) => Home(),
        '/profile': (context) => Profile(),
        '/registrar': (context) => Registrar(),
        '/dashboard': (context) => Dashboard(),
        '/Login': (context) => Login(),
        '/nivel1Q1': (context) => Nivel1Q1(),
        '/nivel1Q2': (context) => Nivel1Q2(),
        '/nivel1Q3': (context) => Nivel1Q3(),
        // '/nivel1Q4': (context) => Nivel1Q4(),
        '/nivel2Q1': (context) => Nivel2Q1(),
        '/nivel2Q2': (context) => Nivel2Q2(),
        '/nivel2Q3': (context) => Nivel2Q3(),
        //'/nivel2Q4': (context) => Nivel2Q4(),
        '/Alterar': (context) => AlterarPage(),
        '/Userguide': (context) => UserGuide(),
      },
      debugShowCheckedModeBanner: false,
      onGenerateRoute: _getRoute,
    );
  }

  Route<dynamic>? _getRoute(RouteSettings settings) {
    if (settings.name != '/Login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => Login(),
      fullscreenDialog: true,
    );
  }
}
