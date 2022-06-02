import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppBarScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      centerTitle: true,
      title: const Padding(
        padding: const EdgeInsets.only(left: 16),
        child: ClipOval(
          child: Image(
            image: AssetImage("assets/imagens/logo.png"),
            height: 90,
          ),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: ClipOval(
          child: Image(
            image: AssetImage("assets/imagens/java.png"),
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
      actions: <Widget>[
        Row(
          children: <Widget>[
            const SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "0 pts",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 17),
              ),
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
