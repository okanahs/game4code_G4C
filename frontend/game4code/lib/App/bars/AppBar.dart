import 'package:flutter/material.dart';

class AppBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
      actions: <Widget>[
        Row(
          children: <Widget>[
            IconButton(
                padding: const EdgeInsets.only(left: 16),
                icon: Image.asset(
                  "assets/appBar/java.png",
                  height: 29,
                ),
                iconSize: 20,
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                }),
            const SizedBox(
              width: 5,
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
                  fontWeight: FontWeight.bold, color: Colors.red, fontSize: 17),
            ),
            const SizedBox(
              width: 30,
            ),
          ],
        ),
      ],
    );
  }
}
