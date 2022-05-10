import 'package:flutter/material.dart';

class CustomSenhaInput extends StatelessWidget {
  const CustomSenhaInput({Key? key, required this.onChanged}) : super(key: key);
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // autofocus: true,
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Senha",
        labelStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
      style: TextStyle(fontSize: 15),
    );
  }
}
