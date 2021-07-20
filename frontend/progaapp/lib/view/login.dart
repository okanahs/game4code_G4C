import 'package:flutter/material.dart';
import 'package:progapp/colors/colors.dart';

//aluno
class LoginAluno extends StatefulWidget {
  @override
  _LoginAlunoPageState createState() => _LoginAlunoPageState();
}

//
class _LoginAlunoPageState extends State<LoginAluno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: corBranco,
      body: SafeArea(
/*         decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/PhysicsLogo.png"),
            fit: BoxFit.cover,
          ),
        ), */
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 20.0),
            Column(
              children: <Widget>[
                SizedBox(height: 20.0),
                Image.asset(
                  "assets/PhysicsLogo.png",
                  height: 250.0,
                  width: 300,
                ),
                SizedBox(
                  height: 5,
                )
              ],
            ),
            //Botões Aluno/Professor

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonTheme(
                  height: 45.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: RaisedButton(
                    color: corUSABlue,
                    child: Text(
                      'Aluno       ',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: corPowderBlues, fontSize: 20),
                    ),
                    onPressed: null,
                    disabledColor: corUSABlue,
                    disabledTextColor: corUSABlue,
                  ),
                ),
                SizedBox(width: 5),
                /* ButtonTheme(
                  height: 45.0,
                  child: FlatButton(
                      color: corPowderBlues,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Text(
                        'Professor   ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: corCommandBlue,
                          height: 2,
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/LoginProfessor');
                      }),
                ), */
                ButtonTheme(
                  height: 45.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: RaisedButton(
                    color: corPowderBlues,
                    child: Text(
                      'Professor',
                      style: TextStyle(color: corUSABlue, fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/LoginProfessor');
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                'Logar como Aluno',
                style: TextStyle(color: corNavyBlue),
              ),
            ),
            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                filled: true,
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: corNavyBlue,
                  fontSize: 15.0,
                ),
                prefixIcon: IconTheme(
                  data: IconThemeData(
                    color: corUSABlue,
                  ),
                  child: Icon(Icons.email),
                ),
              ),
            ),
            SizedBox(height: 12.0),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                filled: true,
                labelText: 'Senha',
                labelStyle: TextStyle(
                  color: corNavyBlue,
                  fontSize: 15.0,
                ),
                prefixIcon: IconTheme(
                  data: IconThemeData(
                    color: corUSABlue,
                  ),
                  child: Icon(Icons.lock),
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 30.0),
            // Botão Criar conta/ Entrar
            Column(
              children: <Widget>[
                ButtonTheme(
                  height: 50.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: RaisedButton(
                    color: corUSABlue,
                    child: Text(
                      '               ENTRAR               ',
                      style: TextStyle(color: corPowderBlues, fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/seletorequipe');
                    },
                  ),
                ),
                SizedBox(height: 10.0),
                FlatButton(
                  color: corBranco,
                  child: Text(
                    'Criar uma conta',
                    style: TextStyle(
                        color: corCommandBlue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/registerAluno');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//prof
class LoginProfessor extends StatefulWidget {
  @override
  _LoginProfPageState createState() => _LoginProfPageState();
}

class _LoginProfPageState extends State<LoginProfessor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: corBranco,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 20.0),
            Column(
              children: <Widget>[
                SizedBox(height: 20.0),
                Image.asset(
                  "assets/PhysicsLogo.png",
                  height: 250.0,
                  width: 300,
                ),
                SizedBox(
                  height: 5,
                )
              ],
            ),
            //Botões Aluno/Professor
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonTheme(
                  height: 45.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: RaisedButton(
                    color: corPowderBlues,
                    child: Text(
                      'Aluno       ',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: corUSABlue, fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/LoginAluno');
                    },
                  ),
                ),
                SizedBox(width: 5),
                ButtonTheme(
                  height: 45.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: RaisedButton(
                    color: corUSABlue,
                    child: Text(
                      'Professor',
                      style: TextStyle(color: corPowderBlues, fontSize: 20),
                    ),
                    onPressed: null,
                    disabledColor: corUSABlue,
                    disabledTextColor: corUSABlue,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                'Logar como Professor',
                style: TextStyle(color: corNavyBlue),
              ),
            ),

            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                filled: true,
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: corNavyBlue,
                  fontSize: 15.0,
                ),
                prefixIcon: IconTheme(
                  data: IconThemeData(
                    color: corUSABlue,
                  ),
                  child: Icon(Icons.email),
                ),
              ),
            ),
            SizedBox(height: 12.0),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                filled: true,
                labelText: 'Senha',
                labelStyle: TextStyle(
                  color: corNavyBlue,
                  fontSize: 15.0,
                ),
                prefixIcon: IconTheme(
                  data: IconThemeData(
                    color: corUSABlue,
                  ),
                  child: Icon(Icons.lock),
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 30.0),
            // Botão Criar conta/ Entrar
            Column(
              children: <Widget>[
                ButtonTheme(
                  height: 50.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: RaisedButton(
                    color: corUSABlue,
                    child: Text(
                      '               ENTRAR               ',
                      style: TextStyle(color: corPowderBlues, fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/seletorturma');
                    },
                  ),
                ),
                SizedBox(height: 10.0),
                FlatButton(
                  color: corBranco,
                  child: Text(
                    'Criar uma conta',
                    style: TextStyle(
                        color: corCommandBlue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/registerProfessor');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
