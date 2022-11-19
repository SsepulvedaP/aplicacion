import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class carrito extends StatelessWidget {
  const carrito({super.key});

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/carrito.png'),
        ),
        // ...
      ),
    );
  }
}
