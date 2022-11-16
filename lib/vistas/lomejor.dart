import 'package:flutter/material.dart';
import 'package:menu/vistas/menu.dart';
import 'package:menu/vistas/menu_p.dart';
import 'package:menu/vistas/sedes.dart';
import 'package:menu/vistas/signinpage.dart';
import 'package:menu/widgets/wcWidgets.dart';

class lomejor extends StatelessWidget {
  lomejor({Key? key}) : super(key: key);

  double screenHeight = 0.0;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Container(
          width: 415,
          height: screenHeight * 9,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 0, 0),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              const Spacer(),
              const Image(image: AssetImage("assets/lomejor.png")),
              const Spacer(),
              Row(
                children: [
                  SizedBox(
                    width: 60,
                  ),
                  const Image(image: AssetImage("assets/tradicionales.png")),
                  SizedBox(
                    width: 20,
                  ),
                  largeButtonlomejor(() {
                    //Aqui va la función
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return signinpage();
                        },
                      ),
                    );
                  }, Color.fromARGB(200, 244, 187, 112), "TRADICIONALES"),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  SizedBox(
                    width: 60,
                  ),
                  const Image(image: AssetImage("assets/arma.png")),
                  SizedBox(
                    width: 20,
                  ),
                  largeButtonlomejor(() {
                    //Aqui va la función
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return signinpage();
                        },
                      ),
                    );
                  }, Color.fromARGB(200, 244, 187, 112), "ARMA TU PICADA"),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  SizedBox(
                    width: 60,
                  ),
                  const Image(image: AssetImage("assets/sedesi.png")),
                  SizedBox(
                    width: 27,
                  ),
                  largeButtonlomejor(() {
                    //Aqui va la función
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return signinpage();
                        },
                      ),
                    );
                  }, Color.fromARGB(200, 244, 187, 112), "SEDES"),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  SizedBox(
                    width: 60,
                  ),
                  const Image(image: AssetImage("assets/sugerencias.png")),
                  SizedBox(
                    width: 13,
                  ),
                  largeButtonlomejor(() {
                    //Aqui va la función
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return signinpage();
                        },
                      ),
                    );
                  }, Color.fromARGB(200, 244, 187, 112), "SUGERENCIAS"),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
