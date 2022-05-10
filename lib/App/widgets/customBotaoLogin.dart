import 'package:flutter/material.dart';
import 'package:g4c/App/view/nivelamento.dart';

class CustomBotaoLogin extends StatelessWidget {
  const CustomBotaoLogin({
    Key? key,
    required this.onPressed,
    this.height,
    this.width,
    this.fontSize,
    this.lable,
  }) : super(key: key);

  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final double? fontSize;
  final String? lable;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(12.0)),
      child: SizedBox.expand(
        child: FlatButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "LOGIN",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
