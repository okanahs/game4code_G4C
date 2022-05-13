import 'package:flutter/material.dart';
import 'package:g4c/App/view/AlterarSenha.dart';
import 'package:g4c/App/view/home.dart';
import 'package:g4c/App/view/login.dart';
import 'package:g4c/App/view/nivel1.dart';
import 'package:g4c/App/view/nivelamento.dart';
import 'package:g4c/App/view/profile.dart';
import 'package:g4c/App/view/registrar.dart';
import 'package:g4c/App/view/dashboard.dart';

import 'view/nivel2.dart';

//
class g4c extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GAME4CODE',
      initialRoute: '/Login',
      routes: {
        '/Nivelamento': (context) => Nivelamento(),
        '/Nivelamento2': (context) => NivelamentoQ2(),
        '/Nivelamento3': (context) => NivelamentoQ3(),
        '/home': (context) => Home(),
        '/profile': (context) => Profile(),
        '/registrar': (context) => Registrar(),
        '/dashboard': (context) => Dashboard(),
        '/Login': (context) => Login(),
        '/nivel1Q1': (context) => Nivel1Q1(),
        '/nivel1Q2': (context) => Nivel1Q2(),
        '/nivel1Q3': (context) => Nivel1Q3(),
        '/nivel1Q4': (context) => Nivel1Q4(),
        '/nivel2Q1': (context) => Nivel2Q1(),
        '/nivel2Q2': (context) => Nivel2Q2(),
        '/nivel2Q3': (context) => Nivel2Q3(),
        '/nivel2Q4': (context) => Nivel2Q4(),
        '/Alterar': (context) => AlterarPage(),
        '/Aviso': (context) => Aviso(),
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
