import 'package:flutter/material.dart';
import 'package:g4c/App/view/home.dart';
import 'package:g4c/App/view/registrar.dart';

import 'package:flutter/material.dart';
import 'package:g4c/App/view/userguide.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _hasBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(50.0),
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF57ebde),
              Color(0xFFaefb2a),
            ],
          )),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: <Widget>[
              Flexible(
                  child: Center(
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset("assets/imagens/logo.png"),
                ),
              )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: TextFormField(
                      // autofocus: true,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Nome de usuário",
                        prefixIcon: IconTheme(
                          data: IconThemeData(
                            color: Colors.green,
                          ),
                          child: Icon(Icons.person),
                        ),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      onChanged: null,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: TextFormField(
                      // autofocus: true,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Senha",
                        prefixIcon: IconTheme(
                          data: IconThemeData(
                            color: Colors.green,
                          ),
                          child: Icon(Icons.lock),
                        ),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      onChanged: null,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  //RoundedButton(buttonName: 'Login'),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: Container(
                    height: 60,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12.0)),
                    child: SizedBox.expand(
                      child: ElevatedButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "LOGIN",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        onPressed: () {
                          showAlertDialog(context);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black, // Background color
                        ),
                      ),
                    ),
                  )),
              SizedBox(height: 10),
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    child: new InkWell(
                      child: Text(
                        'Cadastre-se',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Registrar(), //mudar mais pra frente
                          ),
                        );
                      },
                    ),
                  )),
              SizedBox(height: 20),
            ],
          ),
        )
      ],
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = ElevatedButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => UserGuide(), //mudar mais pra frente
        ),
      );
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Bem Vindo (a)"),
    content: Text(
        "Como é a sua primeira vez utilizando o GAME4CODE iremos realizar um pequeno teste para sabermos melhor seu nivel de conhecimento!",
        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

// class Login extends StatefulWidget {
//   @override
//   _LoginState createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   bool _hasBeenPressed = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.only(top: 60, left: 40, right: 40),
//         decoration: BoxDecoration(
//             gradient: LinearGradient(
//           begin: Alignment.topRight,
//           end: Alignment.bottomLeft,
//           colors: [
//             Color(0xFF57ebde),
//             Color(0xFFaefb2a),
//           ],
//         )),
//         child: ListView(
//           children: <Widget>[
//             SizedBox(
//               width: 200,
//               height: 200,
//               child: Image.asset("assets/imagens/logo.png"),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 15),
//                 child: TextFormField(
//                     // autofocus: true,
//                     keyboardType: TextInputType.emailAddress,
//                     decoration: InputDecoration(
//                       labelText: "E-mail",
//                       labelStyle: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.w400,
//                         fontSize: 20,
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20.0),
//                         borderSide: BorderSide(color: Colors.white),
//                       ),
//                     ),
//                     onChanged: null,
//                     style: TextStyle(fontSize: 15))),
//             SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 15.0, right: 15.0, top: 15, bottom: 0),
//               child: TextFormField(
//                 // autofocus: true,
//                 keyboardType: TextInputType.text,
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   labelText: "Senha",
//                   labelStyle: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w400,
//                     fontSize: 20,
//                   ),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.0),
//                     borderSide: BorderSide(color: Colors.white),
//                   ),
//                 ),
//                 onChanged: null,
//                 style: TextStyle(fontSize: 15),
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Padding(
//                 padding: const EdgeInsets.only(
//                     left: 15.0, right: 15.0, top: 15, bottom: 0),
//                 child: Container(
//                   height: 60,
//                   alignment: Alignment.centerLeft,
//                   decoration: BoxDecoration(
//                       color: Colors.black,
//                       borderRadius: BorderRadius.circular(12.0)),
//                   child: SizedBox.expand(
//                     child: ElevatedButton(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           Text(
//                             "LOGIN",
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                               fontSize: 20,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ],
//                       ),
//                       onPressed: () {
//                         showAlertDialog(context);
//                       },
//                     ),
//                   ),
//                 )),
//             SizedBox(
//               height: 5,
//             ),
//             Padding(
//                 padding: const EdgeInsets.all(15),
//                 child: Center(
//                   child: new InkWell(
//                     child: Text(
//                       'Cadastre-se',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 12,
//                       ),
//                     ),
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) =>
//                               Registrar(), //mudar mais pra frente
//                         ),
//                       );
//                     },
//                   ),
//                 )),

//           ],
//         ),
//       ),
//     );
//   }

//   showAlertDialog(BuildContext context) {
//     // Create button
//     Widget okButton = ElevatedButton(
//       child: Text("OK"),
//       onPressed: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => NivelamentoQ1(), //mudar mais pra frente
//           ),
//         );
//       },
//     );

//     // Create AlertDialog
//     AlertDialog alert = AlertDialog(
//       title: Text("Bem Vindo (a)"),
//       content: Text(
//           "Como é a sua primeira vez utilizando o GAME4CODE iremos realizar um pequeno teste para sabermos melhor seu nivel de conhecimento!",
//           style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
//       actions: [
//         okButton,
//       ],
//     );

//     // show the dialog
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return alert;
//       },
//     );
//   }
// }
