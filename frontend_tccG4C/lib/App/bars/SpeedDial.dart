// import 'package:awesome_speed_dial/awesome_speed_dial.dart';
// import 'package:flutter/material.dart';

// class SpeedDialPage extends StatefulWidget {
//   SpeedDialPage({Key? key, this.title}) : super(key: key);

//   final String? title;

//   @override
//   _SpeedDialPageState createState() => _SpeedDialPageState();
// }

// class _SpeedDialPageState extends State<SpeedDialPage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       appBar: AppBar(
//         title: Text("a"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: AwesomeSpeedDial(
//           //Fab list
//           fabButtons: <Widget>[float1(), float2(), float3()],
//           colorStartAnimation: Colors.blue,
//           colorEndAnimation: Colors.red,
//           animatedIconData: AnimatedIcons.menu_close //To principal button
//           ),
//     );
//   }

//   Widget float1() {
//     return FloatingActionButton(
//       onPressed: null,
//       backgroundColor: Colors.green,
//       heroTag: 'btn3',
//       tooltip: 'Second button',
//       child: Icon(Icons.card_giftcard),
//     );
//   }

//   Widget float2() {
//     return FloatingActionButton(
//       onPressed: null,
//       heroTag: 'btn1',
//       tooltip: 'First button',
//       backgroundColor: Colors.red,
//       child: Icon(Icons.smartphone),
//     );
//   }

//   Widget float3() {
//     return FloatingActionButton(
//       onPressed: null,
//       backgroundColor: Colors.yellow,
//       heroTag: 'btn2',
//       child: Icon(Icons.account_circle),
//     );
//   }
// }
