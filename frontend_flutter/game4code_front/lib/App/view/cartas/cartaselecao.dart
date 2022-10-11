import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:game4code_front/App/view/nivel1.dart';

// main function calling
// to the MyFlipCard class.

// Class MyFlipCard is stateful class.
class CartaSelecao extends StatefulWidget {
  const CartaSelecao({Key? key}) : super(key: key);

  @override
  State<CartaSelecao> createState() => _CartaSelecaoState();
}

class _CartaSelecaoState extends State<CartaSelecao> {
  @override
  Widget build(BuildContext context) {
    // returning MaterialApp
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlipCard(
              direction: FlipDirection.HORIZONTAL,
              // front of the card
              front: Container(
                alignment: Alignment.center,
                width: 120,
                height: 200,
                color: Colors.red,
                child: Text("Carta 1"),
              ),
              // back of the card
              back: Container(
                alignment: Alignment.center,
                width: 120,
                height: 200,
                color: Colors.teal,
                child: Text(
                  "Você terá uma opção removida",
                  maxLines: 6,
                ),
              ),
            ),
            SizedBox(width: 5),
            // 2nd card showing Horizontal FlipDirection
            FlipCard(
              direction: FlipDirection.HORIZONTAL,
              // front of the card
              front: Container(
                alignment: Alignment.center,
                width: 120,
                height: 200,
                color: Colors.red,
                child: Text("Carta 2"),
              ),
              // back of the card
              back: Container(
                alignment: Alignment.center,
                width: 120,
                height: 200,
                color: Colors.teal,
                child: Text(
                  "Você terá duas opção removida",
                  maxLines: 6,
                ),
              ),
            ),
            SizedBox(width: 5),
            FlipCard(
              direction: FlipDirection.HORIZONTAL,
              // front of the card
              front: Container(
                alignment: Alignment.center,
                width: 120,
                height: 200,
                color: Colors.red,
                child: Text("Carta 3"),
              ),
              // back of the card
              back: Container(
                alignment: Alignment.center,
                width: 120,
                height: 200,
                color: Colors.teal,
                child: Text(
                  "Você terá nenhuma opção removida",
                  maxLines: 6,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
