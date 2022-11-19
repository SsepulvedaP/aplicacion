import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:menu/vistas/Registrarse.dart';
import 'package:menu/vistas/iniciarsesion.dart';
import 'package:menu/widgets/wcWidgets.dart';

class wellcomepage extends StatelessWidget {
  wellcomepage({Key? key}) : super(key: key);

  double screenHeight = 0.0;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Container(
        width: 415,
        height: screenHeight * 9,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            const Spacer(flex: 1),
            const Text(
              "Bienvenido",
              style: TextStyle(
                fontSize: 50,
                color: Color.fromARGB(200, 244, 187, 112),
                fontWeight: FontWeight.bold,
                fontFamily: "Gagaline",
              ),
            ),

            //const Spacer(flex: 1),
            subTitleText(
                "TRISTE ES AMAR Y NO SER AMADO PERO MÁS TRISTE ES ESTAR A DIETA EN MEDIO DE UN ASADO"),
            //const Spacer(flex: 1),
            const Image(
                image:
                    AssetImage("assets/logoPicadas.png")), //Imagen innecesaria
            largeButtonlomejor(() {
              //Aqui va la función
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return iniciarsesion();
                  },
                ),
              );
            }, Colors.black, "Iniciar Sesión"),
            const Spacer(flex: 1),
            largeButtonlomejor(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Registrarse();
                  },
                ),
              );
            }, Colors.black, "Registrarse"),
            const Spacer(flex: 2),
            const Text(
              "TRISTE ES AMAR Y NO SER AMADO PERO MÁS TRISTE ES ESTAR A DIETA EN MEDIO DE UN ASADO",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(200, 244, 187, 112),
                fontWeight: FontWeight.bold,
                fontFamily: "Gagaline",
              ),
            ),
            const Spacer(flex: 1)
          ],
        ),
      ),
    );
  }
}
