/* import 'package:flutter/material.dart';
import 'package:flutter_progapp/colors/colors.dart';
import 'package:flutter_progapp/drawer/drawer.dart';

class FormularioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: corAzulC,
          title: Title(color: corAzulC, child: Text('PHYSICS REPORTS')),
        ),
        drawer: DrawerProfWidget(),
        body: getBody(context));
  }
}

Widget getBody(BuildContext context) {
  final _nomeController = TextEditingController();
  final _especieController = TextEditingController();
  final _racaController = TextEditingController();
  final _corController = TextEditingController();
  final _caracteristicasController = TextEditingController();

  return Center(
      child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25),
          children: <Widget>[
        SizedBox(height: 50),
        Center(
          child: Text(
            'Perdi meu animal',
            style: TextStyle(fontSize: 30),
          ),
        ),
        SizedBox(height: 50),
        TextField(
          controller: _nomeController,
          decoration: InputDecoration(
            labelText: 'Nome ',
          ),
        ),
        TextField(
          controller: _especieController,
          decoration: InputDecoration(
            labelText: 'Espécie',
          ),
        ),
        TextField(
          controller: _racaController,
          decoration: InputDecoration(
            labelText: 'Raça',
          ),
        ),
        TextField(
          controller: _corController,
          decoration: InputDecoration(
            labelText: 'Cor',
          ),
          obscureText: true,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: '',
            labelText: 'Caracteristicas',
          ),
          autofocus: false,
          maxLines: 5,
          scrollPadding: EdgeInsets.all(10.0),
          keyboardType: TextInputType.text,
        ),
        ButtonBar(children: <Widget>[
          FlatButton(
            child: Text('CANCELAR',
                style: TextStyle(color: corAzulE, fontSize: 15)),
            onPressed: () {
              _nomeController.clear();
              _especieController.clear();
              _racaController.clear();
              _corController.clear();
              _caracteristicasController.clear();
              Navigator.pop(context);
            },
          ),
          RaisedButton(
            color: corAzulC,
            child: Text(
              'CADASTRAR',
              style: TextStyle(color: corBranco, fontSize: 15),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ]),
      ]));
}
 */
