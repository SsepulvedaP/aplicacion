import 'package:flutter/material.dart';
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
        width: 280,
        height: screenHeight * 9,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 0, 0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            const Spacer(flex: 2),
            titleText("Bienvenido"),
            const Spacer(flex: 1),
            subTitleText(
                "TRISTE ES AMAR Y NO SER AMADO PERO MÁS TRISTE ES ESTAR A DIETA EN MEDIO DE UN ASADO"),
            const Spacer(flex: 2),
            const Image(image: AssetImage("assets/imagen.png")),
            const Spacer(),
            largeButton(() {
              //Aqui va la función
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Signinpage();
                  },
                ),
              );
            }, Colors.transparent, "Registrarse"),
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
            }, Colors.cyan, "Menu parrilla"),
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
            }, Colors.cyan, "Menu pastas"),
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
            }, Colors.transparent, "Sedes"),
          ],
        ),
      ),
    );
  }
}
