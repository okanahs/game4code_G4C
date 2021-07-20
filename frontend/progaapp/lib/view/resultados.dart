import 'package:flutter/material.dart';
import 'package:progapp/colors/colors.dart';
import 'package:progapp/drawer/drawer.dart';

class ResultadosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: corBranco,
      appBar: AppBar(
        backgroundColor: corSkyBlue,
        title: Text('PHYSICS REPORTS', style: TextStyle(color: corUSABlue)),
      ),
      drawer: DrawerAlunoWidget(),
      body: getBody(),
    );
  }
}

class getBody extends StatelessWidget {
  getBody({Key key}) : super(key: key);
  final titles = ["Rampa Inclinada", "Rampa com looping", "Canhão de Gauss"];
  final subtitles = [
    "Manual:                                                               Aceleração: 10                                                               Velocidade: 8                                                                Distancia: 7                                                               \n\nSistema:                                                               Aceleração: 9                                                                Velocidade: 8                                                                Distancia: 8           \n\nMargem de erro: 5%",
    "Manual:                                                               Aceleração: 5                                                                Velocidade: 10                                                               Distancia: 4                                                               \n\nSistema:                                                               Aceleração: 10                                                               Velocidade: 12                                                               Distancia: 4           \n\nMargem de erro: 8%",
    "Manual:                                                               Aceleração: 15                                                               Velocidade: 12                                                               Distancia: 8                                                               \n\nSistema:                                                               Aceleração: 11                                                               Velocidade: 11                                                               Distancia: 5           \n\nMargem de erro: 10%",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text(titles[index],
                style:
                    TextStyle(color: corUSABlue, fontWeight: FontWeight.bold)),
            subtitle: Text(subtitles[index],
                style:
                    TextStyle(color: corUSABlue, fontWeight: FontWeight.bold)),
          ));
        });
  }
}
