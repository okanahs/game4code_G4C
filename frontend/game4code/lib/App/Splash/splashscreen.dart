import 'package:game4code/App/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:game4code/App/view/login.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((_) => Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login())));
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFF57ebde),
            Color(0xFFaefb2a),
          ],
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Center(
        child: Image.asset('assets/profile_logo/logo.png'),
      ),
    )
    );
  }
}
