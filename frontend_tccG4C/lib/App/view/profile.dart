import 'package:flutter/material.dart';
import 'package:g4c/App/colors/colors.dart';
import 'package:g4c/App/view/AlterarSenha.dart';
import 'package:g4c/App/view/dashboard.dart';
import 'package:g4c/App/view/home.dart';
import 'package:g4c/App/view/login.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: corBranco,
        floatingActionButton: SpeedDial(
          child: const Icon(Icons.add),
          speedDialChildren: <SpeedDialChild>[
            SpeedDialChild(
              child: const Icon(Icons.book),
              foregroundColor: Colors.white,
              backgroundColor: Colors.red,
              label: 'Tarefas!',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(), //mudar mais pra frente
                  ),
                );
              },
            ),
            SpeedDialChild(
              child: const Icon(Icons.dashboard),
              foregroundColor: Colors.black,
              backgroundColor: Colors.yellow,
              label: 'Dashboard',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Dashboard(), //mudar mais pra frente
                  ),
                );
              },
            ),
            SpeedDialChild(
              child: const Icon(Icons.person),
              foregroundColor: Colors.white,
              backgroundColor: Colors.green,
              label: 'Perfil',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(), //mudar mais pra frente
                  ),
                );
              },
            ),
          ],
          closedForegroundColor: Colors.black,
          openForegroundColor: Colors.green,
          closedBackgroundColor: Colors.green,
          openBackgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              new SizedBox(
                height: 20,
              ),
              new CircleAvatar(
                radius: 85,
                backgroundColor: Colors.white,
                child: Container(
                  decoration: new BoxDecoration(
                      color: corUSABlue,
                      shape: BoxShape.circle,
                      border: new Border.all(
                        color: Colors.white,
                        width: 0,
                      )),
                  child: new CircleAvatar(
                    radius: 85,
                    backgroundColor: Colors.white,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/imagens/tab_profile_selected.png',
                      ),
                    ),
                  ),
                ),
              ),
              new SizedBox(
                height: _height / 25.0,
              ),
              new ListTile(
                title: Text(
                  "Thomas Hugo",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                subtitle: Text(
                  "thomhugo@gmail.com",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              new SizedBox(
                height: _height / 25,
              ),
              Container(
                height: 40,
                width: 230,
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
                          "Alterar Senha",
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              AlterarPage(), //mudar mais pra frente
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
                height: 40,
                child: ElevatedButton(
                  child: Text(
                    "Sair",
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}

Widget rowCell(int count, String type) => new Expanded(
        child: new Column(
      children: <Widget>[
        new Text(
          '$count',
          style: new TextStyle(color: corPowderBlues),
        ),
        new Text(type,
            style:
                new TextStyle(color: corUSABlue, fontWeight: FontWeight.normal))
      ],
    ));
