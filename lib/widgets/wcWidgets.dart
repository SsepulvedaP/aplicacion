import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

GestureDetector largeButton(VoidCallback function, Color bgColor, String text,
    {required TextStyle style}) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 200,
      height: 40,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Center(
          child: Column(
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 30,
              color: Color.fromARGB(139, 217, 217, 217),
              fontWeight: FontWeight.bold,
              fontFamily: "Gagaline",
            ),
          ),
        ],
      )),
    ),
  );
}

Text titleText(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30,
    ),
  );
}

Text subTitleText(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w300,
    ),
    textAlign: TextAlign.center,
  );
}

GestureDetector largeButtonlomejor(
  VoidCallback function,
  Color bgColor,
  String text,
) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 180,
      height: 50,
      decoration: BoxDecoration(
        color: const Color.fromARGB(200, 244, 187, 112),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 6,
        ),
      ),
      child: Center(
          child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: "Gagaline",
        ),
      )),
    ),
  );
}

GestureDetector Button(
  VoidCallback function,
  Color bgColor,
  String text,
) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Color.fromARGB(109, 101, 101, 101),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 2,
        ),
      ),
      child: Center(
          child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: "Gagaline",
        ),
      )),
    ),
  );
}

GestureDetector carrito(
    VoidCallback function, Color bgColor, String text, double ancho) {
  return GestureDetector(
    onTap: function,
    child: Container(
      margin: EdgeInsets.only(left: 0, top: 5, right: 0, bottom: 5),
      width: ancho,
      height: 40,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Center(child: Text(text)),
    ),
  );
}
