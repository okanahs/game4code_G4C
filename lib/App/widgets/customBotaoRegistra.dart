import 'package:flutter/material.dart';

class CustomBotaoRegistro extends StatelessWidget {
  const CustomBotaoRegistro({
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
      height: 40,
      child: FlatButton(
        child: Text(
          "Cadastre-se",
          textAlign: TextAlign.center,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
