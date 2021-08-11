import 'package:flutter/material.dart';
import 'package:game4code/App/colors/colors.dart';
import 'package:game4code/App/view/home.dart';
import 'package:game4code/App/view/register.dart';

//aluno
class LoginAluno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/logo.png"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
                // autofocus: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "E-mail",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
/*             Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                  "Recuperar Senha",
                  textAlign: TextAlign.right,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPasswordPage(),
                    ),
                  );
                },
              ),
            ), */
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFFF58524),
                    Color(0XFFF92B7F),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.asset("assets/bone.png"),
                          height: 28,
                          width: 28,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeAluno(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xFF3C5A99),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Login com Facebook",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.asset("assets/fb-icon.png"),
                          height: 28,
                          width: 28,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              child: FlatButton(
                child: Text(
                  "Cadastre-se",
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterAlunoPage(),
                    ),
                  );
                },
              ),
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
