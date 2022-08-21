import 'package:flutter/material.dart';

class menu_p extends StatelessWidget {
  const menu_p({super.key});

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/pastas.png'))));
  }
}
