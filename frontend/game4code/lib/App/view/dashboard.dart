import 'package:flutter/material.dart';
import 'package:game4code/App/bars/AppBar.dart';
import 'package:game4code/App/bars/bottomNavigatorBar.dart';
import 'package:game4code/App/colors/colors.dart';
import 'package:game4code/App/drawer/drawer.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const double _iconSize = 41;
    const double _iconSizeSelected = 53;
    final AppBarScreen appBar = AppBarScreen();
    final bottomNavigatorBarScreen bnb = bottomNavigatorBarScreen();

    return Scaffold(
      backgroundColor: corBranco,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(45),
        child: appBar,
      ),
      bottomNavigationBar:
          PreferredSize(preferredSize: const Size.fromHeight(45), child: bnb),
      body: MinhaDashboard(),
    );
  }
}

class MinhaDashboard extends StatefulWidget {
  @override
  _MinhaDashboardState createState() => _MinhaDashboardState();
}

class _MinhaDashboardState extends State<MinhaDashboard>
    with SingleTickerProviderStateMixin {
  TabController controller;

  int getColorHexFromStr(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                      height: 250.0,
                      width: double.infinity,
                      color: Colors.cyan[100]),
                  Positioned(
                    bottom: 50.0,
                    right: 100.0,
                    child: Container(
                      height: 400.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200.0),
                          color: Colors.cyan[100]),
                    ),
                  ),
                  Positioned(
                    bottom: 100.0,
                    left: 150.0,
                    child: Container(
                        height: 300.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150.0),
                            color: Colors.cyan[100])),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 15.0),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 15.0),
                          Container(
                            alignment: Alignment.topLeft,
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                border: Border.all(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 2.0),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/profile_logo/semfoto.png'))),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width - 120.0),
                          SizedBox(height: 15.0),
                        ],
                      ),
                      SizedBox(height: 50.0),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Olá, jogador Thomas Hugo',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Pontuação Total: 6.0',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 25.0),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      SizedBox(height: 10.0)
                    ],
                  )
                ],
              ),
              itemCard1('Teste 01'),
              itemCard2('Teste 02'),
              itemCard3('Teste 03'),
            ],
          )
        ],
      ),
    );
  }

  Widget itemCard1(String title) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
      child: Container(
        height: 150.0,
        width: double.infinity,
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
        child: Row(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 13 / 11,
              child: IconTheme(
                data: IconThemeData(
                  color: Colors.black,
                ),
                child: Icon(Icons.code_outlined, size: 70.0),
              ),
            ),
            SizedBox(width: 4.0),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 45.0),
                  ],
                ),
                SizedBox(height: 5.0),
                Column(
                  children: [
                    Container(
                      width: 175.0,
                      child: Text(
                        'Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          color: Colors.black,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  children: <Widget>[
                    SizedBox(width: 35.0),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget itemCard2(String title) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
      child: Container(
        height: 150.0,
        width: double.infinity,
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
        child: Row(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 13 / 11,
              child: IconTheme(
                data: IconThemeData(
                  color: Colors.black,
                ),
                child: Icon(Icons.add, size: 70.0),
              ),
            ),
            SizedBox(width: 4.0),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 45.0),
                  ],
                ),
                SizedBox(height: 5.0),
                Column(
                  children: [
                    Container(
                      width: 175.0,
                      child: Text(
                        'Syyy7in6vi1n tesll 444ed 444ble sofa imported full leather / Dale Italia oil wax leather black',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            color: Colors.black,
                            fontSize: 12.0),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  children: <Widget>[
                    SizedBox(width: 35.0),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget itemCard3(String title) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
      child: Container(
        height: 150.0,
        width: double.infinity,
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
        child: Row(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 13 / 11,
              child: IconTheme(
                data: IconThemeData(
                  color: Colors.black,
                ),
                child: Icon(Icons.menu_book, size: 80.0),
              ),
            ),
            SizedBox(width: 4.0),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 45.0),
                  ],
                ),
                SizedBox(height: 5.0),
                Column(
                  children: [
                    Container(
                      width: 175.0,
                      child: Text(
                        'Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            color: Colors.grey,
                            fontSize: 12.0),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  children: <Widget>[
                    SizedBox(width: 35.0),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
