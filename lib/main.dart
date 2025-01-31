import 'package:flutter/material.dart';
import 'package:app_tarea/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplicacion de tarea",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
