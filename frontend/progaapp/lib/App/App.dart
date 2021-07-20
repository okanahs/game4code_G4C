import 'package:flutter/material.dart';
import 'package:progapp/view/cadastroEquipe.dart';
import 'package:progapp/view/cadastroGauss.dart';
import 'package:progapp/view/cadastroRampa.dart';
import 'package:progapp/view/cadastroRampaInclinada.dart';
import 'package:progapp/view/cadastroTurma.dart';
import 'package:progapp/view/equipe.dart';
import 'package:progapp/view/equipeAdd.dart';
import 'package:progapp/view/home.dart';
import 'package:progapp/view/login.dart';
import 'package:progapp/view/profile.dart';
import 'package:progapp/view/register.dart';
import 'package:progapp/view/resultados.dart';
import 'package:progapp/view/turma.dart';

class progapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PHYSICS REPORTS',
      initialRoute: '/LoginAluno',
      routes: {
        '/homeAluno': (context) => HomeAluno(),
        '/homeProfessor': (context) => HomeProfessor(),
        '/gaussCad': (context) => CadastroGauss(),
        '/CadastroRampaInclinada': (context) => CadastroRampaInclinada(),
        '/rampaCad': (context) => CadastroRampa(),
        '/profile': (context) => ProfileAlunoPage(),
        '/profileProf': (context) => ProfileProfPage(),
        '/profileProfTurma': (context) => xProfileTurma(),
        '/registerAluno': (context) => RegisterAlunoPage(),
        '/registerProfessor': (context) => RegisterProfessorPage(),
        '/resultados': (context) => ResultadosPage(),
        '/LoginAluno': (context) => LoginAluno(),
        '/LoginProfessor': (context) => LoginProfessor(),
        '/seletorequipe': (context) => Equipe(),
        '/addequipe1': (context) => EquipeAdd(),
        '/addequipe2': (context) => EquipeAdd2(),
        '/addequipe3': (context) => EquipeAdd3(),
        '/addequipe4': (context) => EquipeAdd4(),
        '/cadEquipe': (context) => CadastrarEquipePage(),
        '/seletorturma': (context) => Turma(),
        '/cadTurma': (context) => CadastrarTurma(),
        //'/addAlunoTurma': (context) => AddAlunoTurma(),
        '/RampaInclinadaProfessor': (context) => CadastroRampaInclinadaProf(),
        '/RampaLoopingProfessor': (context) => CadastroRampaProf(),
        '/gaussCadProfessor': (context) => CadastroGaussProf(),
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
