import 'package:flutter/material.dart';
import 'package:menu/vistas/domicilio.dart';
import 'package:menu/vistas/menu.dart';
import 'package:menu/widgets/wcWidgets.dart';

class Signinpage extends StatelessWidget {
  Signinpage({Key? key}) : super(key: key);

  double screenHeight = 0.0;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          width: 280,
          height: screenHeight * 9,
          decoration: BoxDecoration(
            color: const Color(0xFFF2E8DF),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(children: [
            const Image(image: AssetImage("assets/imagen.png")),
            const Spacer(flex: 2),
            titleText("Registrate"),
            const SizedBox(height: 8),
            subTitleText("Disfruta de deliciosos menús, hay mucha variedad"),
            const Spacer(),
            const SizedBox(
              width: 180,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "User",
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              width: 180,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
            ),
            const Spacer(),
            largeButton(() {
              //Funcion que te manda al menu
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Domicilio();
                  },
                ),
              );
            }, Colors.cyan, "Registrarse"),
            const Spacer(),
            subTitleText(
                "El mejor restaurante, lo que te imagines eso lo hacemos"),
            const Spacer(flex: 2),
          ]),
        ),
      ),
    );
  }
}
