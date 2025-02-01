import 'package:flutter/material.dart';

class Widgets {
  static PreferredSizeWidget barra() {
    return AppBar(
      title: Text(
        "Cadena",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.black,
      centerTitle: true,
    );
  }
}
