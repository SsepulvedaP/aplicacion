import 'package:flutter/material.dart';
import 'package:menu/vistas/lomejor.dart';
import 'package:menu/vistas/menu.dart';
import 'package:menu/vistas/menu_p.dart';
import 'package:menu/vistas/sedes.dart';
import 'package:menu/vistas/signinpage.dart';
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
            const Spacer(flex: 2),
            const Text(
              "Bienvenido",
              style: TextStyle(
                fontSize: 50,
                color: Color.fromARGB(200, 244, 187, 112),
                fontWeight: FontWeight.bold,
                fontFamily: "Gagaline",
              ),
            ),

            const Spacer(flex: 1),
            subTitleText(
                "TRISTE ES AMAR Y NO SER AMADO PERO MÁS TRISTE ES ESTAR A DIETA EN MEDIO DE UN ASADO"),
            const Spacer(flex: 2),
            const Image(
                image:
                    AssetImage("assets/logoPicadas.png")), //Imagen innecesaria
            const Spacer(),
            largeButton(() {
              //Aqui va la función
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return lomejor();
                  },
                ),
              );
            },
                Colors.black,
                const Text(
                  "Registrarse",
                  style: TextStyle(
                    fontSize: 50,
                    color: Color.fromARGB(200, 244, 187, 112),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Gagaline",
                  ),
                )),
            const Spacer(flex: 1),
            largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const menu();
                  },
                ),
              );
            },
                Colors.black,
                const Text(
                  "Verito",
                  style: TextStyle(
                    fontSize: 50,
                    color: Color.fromARGB(200, 244, 187, 112),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Gagaline",
                  ),
                )),
            const Spacer(),
            largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const menu_p();
                  },
                ),
              );
            },
                Colors.black,
                const Text(
                  "Verito",
                  style: TextStyle(
                    fontSize: 50,
                    color: Color.fromARGB(200, 244, 187, 112),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Gagaline",
                  ),
                )),
            const Spacer(),
            largeButton(() {
              //Aqui va la función para ver las sedes
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const sedes();
                  },
                ),
              );
            },
                const Color.fromARGB(200, 244, 187, 112),
                const Text(
                  "Verito",
                  style: TextStyle(
                    fontSize: 50,
                    color: Color.fromARGB(200, 244, 187, 112),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Gagaline",
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
