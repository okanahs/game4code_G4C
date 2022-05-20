import 'package:flutter/material.dart';


class CustomNovaSenha extends StatelessWidget {
  const CustomNovaSenha ({
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
    return TextField(
      controller: null,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        labelText: 'Digite a nova senha',
        labelStyle: TextStyle(
          color: Colors.black,
          fontSize: 15.0,
        ),
        prefixIcon: IconTheme(
          data: IconThemeData(
            color: Colors.green[600],
          ),
          child: Icon(Icons.lock),
        ),
      ),
    );
  }
}
