import 'package:flutter/material.dart';
import 'package:game4code/App/view/SeletorLinguagem.dart';
import 'package:game4code/App/view/home.dart';
import 'package:game4code/App/view/login.dart';
import 'package:game4code/App/view/profile.dart';
import 'package:game4code/App/view/register.dart';
import 'package:game4code/App/view/dashboard.dart';

class game4code extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GAME4CODE',
      initialRoute: '/Login',
      routes: {
        '/home': (context) => Home(),
        '/profile': (context) => Profile(),
        '/registerAluno': (context) => RegisterPage(),
        '/dashboard': (context) => Dashboard(),
        '/Login': (context) => Login(),
        '/SeletorLinguagem': (context) => SeletorLinguagem(),
        // '/nivel1': (context) => Nivel1(),
      },
      debugShowCheckedModeBanner: false,
      onGenerateRoute: _getRoute,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
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
