import 'package:flutter/material.dart';
import 'package:game4code/App/Splash/splashscreen.dart';
import 'package:game4code/App/view/AlterarSenha.dart';
import 'package:game4code/App/view/SeletorLinguagem.dart';
import 'package:game4code/App/view/home.dart';
import 'package:game4code/App/view/login.dart';
import 'package:game4code/App/view/nivel1.dart';
import 'package:game4code/App/view/nivelamento.dart';
import 'package:game4code/App/view/profile.dart';
import 'package:game4code/App/view/register.dart';
import 'package:game4code/App/view/dashboard.dart';

class game4code extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GAME4CODE',
      initialRoute: '/Splash',
      routes: {
        '/Nivelamento': (context) => Nivelamento(),
        '/Nivelamento2': (context) => NivelamentoQ2(),
        '/Splash': (context) => SplashPage(),
        '/home': (context) => Home(),
        '/profile': (context) => Profile(),
        '/registerAluno': (context) => RegisterPage(),
        '/dashboard': (context) => Dashboard(),
        '/Login': (context) => Login(),
        '/SeletorLinguagem': (context) => SeletorLinguagem(),
        '/nivel1Q1': (context) => Nivel1Q1(),
        '/nivel1Q2': (context) => Nivel1Q2(),
        '/Alterar': (context) => AlterarPage(),
        '/Aviso': (context) => Aviso(),
      },
      debugShowCheckedModeBanner: false,
      onGenerateRoute: _getRoute,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/Splash') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => Login(),
      fullscreenDialog: true,
    );
  }
}
