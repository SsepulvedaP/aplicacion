import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:menu/vistas/lomejor.dart';
import 'package:menu/widgets/wcWidgets.dart';

class Registrarse extends StatelessWidget {
  Registrarse({super.key});
  TextEditingController nombre = TextEditingController();
  TextEditingController documento = TextEditingController();
  TextEditingController direccion = TextEditingController();
  TextEditingController celular = TextEditingController();
  TextEditingController pass = TextEditingController();
  final firebase = FirebaseFirestore.instance;
  final firebase_ = FirebaseAuth.instance;
  registroUsuario() async {
    try {
      await firebase_.createUserWithEmailAndPassword(
          email: documento.text, password: pass.text);
      await firebase.collection('Users').doc().set({
        "nombre": nombre.text,
        "Documento": documento.text,
        "Dirección": direccion.text,
        "Celular": celular.text,
        "Contraseña": pass.text,
      });
    } catch (e) {
      print('Error....' + e.toString());
    }
  }

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
          child: Column(children: [
            const Spacer(),
            const Text(
              "REGISTRARSE",
              style: TextStyle(
                fontSize: 50,
                color: Color.fromARGB(200, 244, 187, 112),
                fontWeight: FontWeight.bold,
                fontFamily: "Gagaline",
              ),
            ),
            const Spacer(),
            const Image(image: AssetImage("assets/registro.png")),
            const Spacer(),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Nombre",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
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
                    controller: nombre,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Nombre",
                    ),
                  ),
                )
              ],
            ),
            const Spacer(flex: 1),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Email",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(200, 244, 187, 112),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Gagaline",
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                SizedBox(
                  width: 180,
                  child: TextField(
                    controller: documento,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Email",
                    ),
                  ),
                )
              ],
            ),
            const Spacer(flex: 1),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Dirección",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(200, 244, 187, 112),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Gagaline",
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                SizedBox(
                  width: 180,
                  child: TextField(
                    controller: direccion,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Direccion",
                    ),
                  ),
                )
              ],
            ),
            const Spacer(flex: 1),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Celular",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(200, 244, 187, 112),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Gagaline",
                  ),
                ),
                SizedBox(
                  width: 87,
                ),
                SizedBox(
                  width: 180,
                  child: TextField(
                    controller: celular,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Celular",
                    ),
                  ),
                )
              ],
            ),
            const Spacer(flex: 1),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "Contraseña",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(200, 244, 187, 112),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Gagaline",
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 180,
                  child: TextField(
                    controller: pass,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Contraseña",
                    ),
                  ),
                )
              ],
            ),
            const Spacer(flex: 1),
            largeButtonlomejor(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    registroUsuario();
                    return lomejor();
                  },
                ),
              );
            }, Colors.black, "ACEPTAR"),
          ]),
        ),
      ),
    );
  }
}
