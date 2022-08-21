import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sedes extends StatelessWidget {
  const sedes({super.key});

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/sedes.png'),
        ),
        // ...
      ),
    );
  }
}
