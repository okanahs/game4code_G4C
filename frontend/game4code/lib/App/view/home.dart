import 'package:flutter/material.dart';
import 'package:game4code/App/colors/colors.dart';
import 'package:game4code/App/drawer/drawer.dart';
import 'package:game4code/App/custom/app_icons.dart';
import 'package:path/path.dart';

//aluno
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                fit: BoxFit.contain,
                height: 75,
              ),
            ],
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF57ebde),
                Color(0xFFaefb2a),
              ],
            )),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
            child: Icon(
              Icons.account_circle,
              size: 30, // add custom icons also
            ),
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Gems.rubygems,
                    size: 26.0,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
        body: getAlunoBody(context));
  }
}

Widget getAlunoBody(BuildContext context) {
  return Center(
      child: GridView.count(
    crossAxisCount: 2,
    mainAxisSpacing: 12,
    crossAxisSpacing: 12,
    padding: EdgeInsets.all(20),
    childAspectRatio: 8 / 9,
    children: <Widget>[
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFFf5c900),
              Color(0xFFfaff89),
            ],
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/nivel1');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: IconTheme(
                  data: IconThemeData(
                    color: Colors.black,
                  ),
                  child: Icon(Icons.menu_book, size: 80.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Nivel 1          Introdução a java',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                ),
              )
            ],
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFFf64c18),
              Color(0xFFee9539),
            ],
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/gaussCad');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: IconTheme(
                  data: IconThemeData(
                    color: Colors.black,
                  ),
                  child: Icon(Icons.code_outlined, size: 80.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Nivel 2               Fundamentos',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                ),
              )
            ],
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF9d80cb),
              Color(0xFF8752a3),
            ],
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () async {
            Navigator.pushNamed(context, '/gaussCad');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 13,
                child: IconTheme(
                  data: IconThemeData(
                    color: Colors.black,
                  ),
                  child: Icon(Icons.add, size: 100.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Nivel 3          Operadores Logicos',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                ),
              )
            ],
          ),
        ),
      ),
    ],
  ));
}
