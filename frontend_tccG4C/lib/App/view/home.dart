import 'package:flutter/material.dart';
import 'package:g4c/App/bars/AppBar.dart';
import 'package:g4c/App/bars/SpeedDial.dart';
import 'package:g4c/App/bars/bottomNavigatorBar.dart';
import 'package:g4c/App/colors/colors.dart';
import 'package:g4c/App/view/dashboard.dart';
import 'package:g4c/App/view/profile.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

final AppBarScreen appBar = AppBarScreen();
final bottomNavigatorBarScreen bnb = bottomNavigatorBarScreen();
final SpeedDialPage sdial = SpeedDialPage();

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var services = [
    "NÍVEL 1",
    "NÍVEL 2",
  ];

  var iconCard = [
    "assets/imagens/flag.png",
    "assets/imagens/java.png",
  ];

  var routeCard = [
    '/nivel1Q1',
    '/nivel2Q1',
  ];

  var corGrad1 = [0xFFf5c900, 0xFFf64c18];
  var corGrad2 = [0xFFfaff89, 0xFFee9539];

  @override
  Widget build(BuildContext context) {
    String _text = '';
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
        body: Padding(
          padding: EdgeInsets.all(8),
          child: GridView.builder(
              itemCount: services.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 2)),
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  //color: cor[index],
                  elevation: 5.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(corGrad1[index]),
                            Color(corGrad2[index])
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp),
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 24,
                        ),
                        Image.asset(
                          iconCard[index],
                          height: 70,
                          width: 50,
                        ),
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, routeCard[index]);
                              },
                              child: Text(
                                services[index],
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Montserrat",
                                    height: 1.2,
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                              ),
                            ))
                      ],
                    ),
                  ),
                );
              }),
        ));
  }
}


// import 'package:flutter/material.dart';
// import 'package:g4c/App/bars/AppBar.dart';
// import 'package:g4c/App/bars/SpeedDial.dart';
// import 'package:g4c/App/bars/bottomNavigatorBar.dart';
// import 'package:g4c/App/colors/colors.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// final AppBarScreen appBar = AppBarScreen();
// final bottomNavigatorBarScreen bnb = bottomNavigatorBarScreen();

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: corBranco,
//         appBar: PreferredSize(
//             preferredSize: const Size.fromHeight(45), child: appBar),
//         bottomNavigationBar:
//             PreferredSize(preferredSize: const Size.fromHeight(30), child: bnb),
//         body: Center(
//             child: GridView.count(
//           crossAxisCount: 2,
//           mainAxisSpacing: 12,
//           crossAxisSpacing: 12,
//           padding: EdgeInsets.all(20),
//           childAspectRatio: 8 / 9,
//           children: <Widget>[
//             Container(
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.topRight,
//                   end: Alignment.bottomLeft,
//                   colors: [
//                     Color(0xFFf5c900),
//                     Color(0xFFfaff89),
//                   ],
//                 ),
//                 borderRadius: BorderRadius.circular(15.0),
//               ),
//               clipBehavior: Clip.antiAlias,
//               child: InkWell(
//                 onTap: () async {
//                   Navigator.pushNamed(context, '/nivel1Q1');
//                 },
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     AspectRatio(
//                       aspectRatio: 20 / 13,
//                       child: IconTheme(
//                         data: IconThemeData(
//                           color: Colors.black,
//                         ),
//                         child: Icon(Icons.menu_book, size: 80.0),
//                       ),
//                     ),
//                     Padding(
//                         padding: EdgeInsets.only(top: 10),
//                         child: Expanded(
//                           child: Align(
//                             alignment: Alignment.topCenter,
//                             child: Text('Nivel 1',
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                     fontSize: 20,
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.bold)),
//                           ),
//                         ))
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.topRight,
//                   end: Alignment.bottomLeft,
//                   colors: [
//                     Color(0xFFf64c18),
//                     Color(0xFFee9539),
//                   ],
//                 ),
//                 borderRadius: BorderRadius.circular(15.0),
//               ),
//               clipBehavior: Clip.antiAlias,
//               child: InkWell(
//                 onTap: () async {
//                   Navigator.pushNamed(context, '/nivel2Q1');
//                 },
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     AspectRatio(
//                       aspectRatio: 20 / 13,
//                       child: IconTheme(
//                         data: IconThemeData(
//                           color: Colors.black,
//                         ),
//                         child: Icon(Icons.code_outlined, size: 80.0),
//                       ),
//                     ),
//                     Padding(
//                         padding: EdgeInsets.only(top: 10),
//                         child: Expanded(
//                           child: Align(
//                             alignment: Alignment.topCenter,
//                             child: Text('Nivel 2',
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                     fontSize: 20,
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.bold)),
//                           ),
//                         ))
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         )));
//   }
// }
