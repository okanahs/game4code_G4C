import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppBarAltScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      centerTitle: true,
      title: const Padding(
        padding: EdgeInsets.all(110),
        child: ClipOval(
          child: Image(
            image: AssetImage("assets/imagens/logo.png"),
          ),
        ),
      ),
      automaticallyImplyLeading: false,
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
    );
  }
}
