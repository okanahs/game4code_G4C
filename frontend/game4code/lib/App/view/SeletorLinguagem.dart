import 'package:flutter/material.dart';
import 'package:game4code/App/colors/colors.dart';
import 'package:game4code/App/drawer/drawer.dart';
import 'package:game4code/App/custom/app_icons.dart';

class SeletorLinguagem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corBranco,
        appBar: AppBar(
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
          leading: IconButton(
            padding: const EdgeInsets.only(left: 16),
            icon: Icon(
              Icons.account_circle,
              size: 30,
              color: Colors.redAccent,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          actions: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                  padding: const EdgeInsets.only(left: 16),
                  icon: Image.asset(
                    "assets/appBar/java.png",
                    height: 29,
                  ),
                  iconSize: 40,
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
                Text(
                  "Java",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 17),
                ),
                const SizedBox(
                  width: 40,
                ),
                Text('GAME4CODE', style: TextStyle(color: corBranco)),
                const SizedBox(
                  width: 40,
                ),
                Icon(
                  Icons.dashboard_outlined,
                  color: Colors.red,
                ),
                const SizedBox(
                  width: 0,
                ),
                IconButton(
                  padding: const EdgeInsets.only(left: 16),
                  icon: Image.asset(
                    "assets/appBar/navbar_diamont.png",
                    height: 29,
                  ),
                  onPressed: () {},
                ),
                Text(
                  "0",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 17),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text("Minha conta")),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket), title: Text("Meus pedidos")),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), title: Text("Favoritos")),
          ],
        ),
        body: getLingBody(context));
  }
}

Widget getLingBody(BuildContext context) {
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
            Navigator.pushNamed(context, '/home');
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
                  child: Icon(CustomIcon.java, size: 100),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text('Java',
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
            Navigator.pushNamed(context, '/home');
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
                  child: Text('...',
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
            Navigator.pushNamed(context, '/home');
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
                  child: Text('...',
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
