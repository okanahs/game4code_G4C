import 'package:flutter/material.dart';
import 'package:g4c/App/bars/AppBarAlt.dart';
import 'package:g4c/App/view/login.dart';
import 'package:g4c/App/widgets/customBotaoCancelar.dart';
import 'package:g4c/App/widgets/customBotaoRegistrado.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final AppBarAltScreen aBAlt = AppBarAltScreen();

class Registrar extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45),
          child: aBAlt,
        ),
        body: Scaffold(
            body: ListView(
                padding: EdgeInsets.symmetric(horizontal: 25),
                children: <Widget>[
              SizedBox(height: 50),
              Center(
                child: Text(
                  'Faça seu cadastro',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
                  controller: null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: 'Nome completo',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                    prefixIcon: IconTheme(
                      data: IconThemeData(
                        color: Colors.green[600],
                      ),
                      child: Icon(Icons.person),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
                  controller: null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                    prefixIcon: IconTheme(
                      data: IconThemeData(
                        color: Colors.green[600],
                      ),
                      child: Icon(Icons.mail),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
                  controller: null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: 'Senha',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                    prefixIcon: IconTheme(
                      data: IconThemeData(
                        color: Colors.green[600],
                      ),
                      child: Icon(Icons.lock),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
                  controller: null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: 'Repita sua senha',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                    prefixIcon: IconTheme(
                      data: IconThemeData(
                        color: Colors.green[600],
                      ),
                      child: Icon(Icons.lock),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              ButtonBar(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: CustomBotaoCancelar(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: CustomBotaoRegsInput(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(), //mudar mais pra frente
                        ),
                      );
                    },
                  ),
                ),
              ]),
            ])));
  }
}
