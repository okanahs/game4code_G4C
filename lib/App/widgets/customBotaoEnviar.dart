import 'package:flutter/material.dart';

class CustomBotaoEnviar extends StatelessWidget {
  const CustomBotaoEnviar({
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
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      color: Colors.black,
      child: Text(
        'Enviar',
        style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
      ),
      onPressed: onPressed,
    );
  }
}
