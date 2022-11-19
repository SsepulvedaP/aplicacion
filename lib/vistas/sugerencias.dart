import 'package:flutter/material.dart';
import 'package:menu/vistas/lomejor.dart';
import 'package:menu/widgets/wcWidgets.dart';

class sugerencias extends StatelessWidget {
  sugerencias({Key? key}) : super(key: key);

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
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              const Spacer(),
              const Image(image: AssetImage("assets/sugerencia.png")),
              Spacer(),
              Column(
                children: const [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Estaremos atentos a tus peticiones",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(200, 244, 187, 112),
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gagaline",
                    ),
                  ),
                  SizedBox(
                    width: 92,
                  ),
                  SizedBox(
                    width: 180,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Escribe tus sugerencias",
                      ),
                    ),
                  )
                ],
              ),
              Spacer(),
              largeButtonlomejor(() {
                //Aqui va la función
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return sugerencias();
                    },
                  ),
                );
              }, Color.fromARGB(200, 244, 187, 112), "ENVIAR"),
            ],
          ),
        ),
      ),
    );
  }
}
