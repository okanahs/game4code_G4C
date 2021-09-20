import 'package:flutter/material.dart';
import 'package:game4code/App/view/cadastroEquipe.dart';
import 'package:game4code/App/view/cadastroGauss.dart';
import 'package:game4code/App/view/cadastroRampa.dart';
import 'package:game4code/App/view/cadastroRampaInclinada.dart';
import 'package:game4code/App/view/cadastroTurma.dart';
import 'package:game4code/App/view/equipe.dart';
import 'package:game4code/App/view/equipeAdd.dart';
import 'package:game4code/App/view/home.dart';
import 'package:game4code/App/view/login.dart';
import 'package:game4code/App/view/profile.dart';
import 'package:game4code/App/view/register.dart';
import 'package:game4code/App/view/resultados.dart';
import 'package:game4code/App/view/turma.dart';

class game4code extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GAME4CODE',
      initialRoute: '/LoginAluno',
      routes: {
        '/homeAluno': (context) => Home(),
        '/profile': (context) => ProfileAlunoPage(),
        '/registerAluno': (context) => RegisterAlunoPage(),
        '/resultados': (context) => ResultadosPage(),
        '/LoginAluno': (context) => LoginAluno(),
      },
      debugShowCheckedModeBanner: false,
      onGenerateRoute: _getRoute,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/LoginAluno') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => LoginAluno(),
      fullscreenDialog: true,
    );
  }
}

/*final ThemeData _physicsTheme = _buildPhysicsTheme();

ThemeData _buildPhysicsTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: corAzulC,
    primaryColor: corAzulC,
    buttonColor: corAzulC,
    scaffoldBackgroundColor: corBranco,
    textSelectionColor: corPreto,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: corAzulC,
      textTheme: ButtonTextTheme.normal,
    ),
    textTheme: _buildPhysicsTextTheme(base.textTheme),
    primaryTextTheme: _buildPhysicsTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildPhysicsTextTheme(base.accentTextTheme),
  );
}

TextTheme _buildPhysicsTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline: base.headline.copyWith(
          fontWeight: FontWeight.w500,
        ),
        title: base.title.copyWith(fontSize: 18.0),
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
        body2: base.body2.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      )
      .apply(
        fontFamily: 'JosefinSans',
        displayColor: corBranco,
        bodyColor: corBranco,
      );
}*/
