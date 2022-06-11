import 'package:flutter/material.dart';
import 'package:g4c/App/bars/AppBar.dart';
import 'package:g4c/App/bars/bottomNavigatorBar.dart';
import 'package:g4c/App/colors/colors.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final AppBarScreen appBar = AppBarScreen();
final bottomNavigatorBarScreen bnb = bottomNavigatorBarScreen();

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45),
          child: appBar,
        ),
        bottomNavigationBar:
            PreferredSize(preferredSize: const Size.fromHeight(30), child: bnb),
        body: Center(
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
                  Navigator.pushNamed(context, '/nivel1Q1');
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
                        child: Expanded(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Text('Nivel 1',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ))
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
                  Navigator.pushNamed(context, '/nivel2Q1');
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
                        child: Expanded(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Text('Nivel 2',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ],
        )));
  }
}