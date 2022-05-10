import 'package:flutter/material.dart';
import 'package:g4c/App/view/nivelamento.dart';
import 'package:g4c/App/view/registrar.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:g4c/App/widgets/customBotaoLogin.dart';
import 'package:g4c/App/widgets/customBotaoRegistra.dart';
import 'package:g4c/App/widgets/customEmailInput.dart';
import 'package:g4c/App/widgets/customSenhaInput.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Login extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = useState('');
    final senha = useState('');

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFF57ebde),
            Color(0xFFaefb2a),
          ],
        )),
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset("assets/profile_logo/logo.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: CustomEmailInput(
                  onChanged: (value) => {email.value = value},
                )),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: CustomSenhaInput(
                  onChanged: (value) => {senha.value = value},
                )),
            SizedBox(
              height: 30,
            ),
            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: CustomBotaoLogin(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Aviso(), //mudar mais pra frente
                      ),
                    );
                  },
                )),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: CustomBotaoRegistro(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Registrar(), //mudar mais pra frente
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
