import 'package:flutter/material.dart';

GestureDetector largeButton(
  VoidCallback function,
  Color bgColor,
  Text text,
) {
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
            "Registrarse",
            style: TextStyle(
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
      width: 400,
      height: 100,
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
