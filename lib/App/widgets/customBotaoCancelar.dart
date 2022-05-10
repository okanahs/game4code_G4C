import 'package:flutter/material.dart';
import 'package:g4c/App/view/nivelamento.dart';

class CustomBotaoCancelar extends StatelessWidget {
  const CustomBotaoCancelar({
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
    return FlatButton(
      child:
          Text('CANCELAR', style: TextStyle(color: Colors.black, fontSize: 15)),
      onPressed: onPressed,
    );
  }
}
