import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:menu/vistas/carrito.dart';
import 'package:menu/vistas/lomejor.dart';
import 'package:menu/vistas/menu.dart';
import 'package:flutter/material.dart';
import 'package:menu/vistas/menu.dart';
import 'package:menu/vistas/menu_p.dart';
import 'package:menu/vistas/sedes.dart';
import 'package:menu/vistas/signinpage.dart';
import 'package:menu/vistas/wellcomepage.dart';
import 'package:menu/widgets/wcWidgets.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:menu/vistas/menu.dart';
import 'package:menu/vistas/menu_p.dart';
import 'package:menu/vistas/sedes.dart';
import 'package:menu/vistas/signinpage.dart';
import 'package:menu/widgets/wcWidgets.dart';

class menu_p extends StatelessWidget {
  const menu_p({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 148, 152, 154),
      body: Center(
        child: Container(
          width: 280,
          height: 700,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 0, 0), //Color del row
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              const Spacer(),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Button(() {
                    icon:
                    Icons.home;
                    //Aqui va la función
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return wellcomepage();
                        },
                      ),
                    );
                  }, Color.fromARGB(40, 100, 70, 40), "🏠"),
                  const Spacer(),
                  Button(
                    () {
                      //Aqui va la función
                      Icon(Icons.call, color: Colors.black);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return lomejor();
                          },
                        ),
                      );
                    },
                    Color.fromARGB(255, 101, 99, 99),
                    "🔙",
                  ),
                  const Spacer(),
                  Button(() {
                    icon:
                    Icons.restaurant_sharp;
                    //Aqui va la función
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return menu();
                        },
                      ),
                    );
                  }, Color.fromARGB(40, 100, 70, 40), "🍴"),
                ],
              ),
              Spacer(flex: 1),
              Image(image: AssetImage("assets/tradicionv.png")),
              Spacer(flex: 1),
              const Spacer(),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.shopping_cart_outlined),
        elevation: 20.50,
        backgroundColor: Color.fromARGB(217, 255, 153, 0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return menu_p();
              },
            ),
          );
        },
      ),
    );
  }
}
