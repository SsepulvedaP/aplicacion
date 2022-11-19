import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class sedes extends StatelessWidget {
  const sedes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      width: 225,
      decoration: BoxDecoration(
          color: Color.fromARGB(200, 244, 187, 112),
          border: Border.all(
            color: const Color(0xFFA1B0B5),
          ),
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15), bottomLeft: Radius.circular(15)),
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(4, 6),
              blurRadius: 4,
            )
          ]),
      child: Column(
        children: const [
          Spacer(flex: 1),
          Text(
            "Sedes",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 50,
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
              fontFamily: "Gagaline",
            ),
          ),
          Spacer(flex: 1),
          Text(
            "Ubicación Envigado",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
              fontFamily: "Gagaline",
            ),
          ),
          Image(image: AssetImage("assets/Ubicacion 1.png")),
          Spacer(flex: 1),
          Text(
            "Ubicación Poblado",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
              fontFamily: "Gagaline",
            ),
          ),
          Image(image: AssetImage("assets/Ubicacion 2.png")),
          Spacer(flex: 1),
          Image(image: AssetImage("assets/lomejor.png")),
        ],
      ),
    )));
  }
}
