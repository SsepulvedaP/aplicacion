import 'package:flutter/material.dart';

class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/menu.png'))));
  }
}
