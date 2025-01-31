import 'package:flutter/material.dart';
import 'dart:math'; // Importa la librería para usar Random

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Aqui va la logica el Scaffold y metodos simples

  int numero = 0;
  double raiz = 0.0;
  int cubo = 0;

  num calcularNumero(min, max) {
    final random = Random();
    return min + random.nextInt(max - min + 1);
  }

  void actualizarNumeroAleatorio() {
    setState(() {
      numero = calcularNumero(1, 100).toInt();
    });
  }

  void recalcularDatos() {
    setState(() {
      raiz = calculaRaiz(numero).toDouble();
      cubo = calculaCubo(numero).toInt();
    });
  }

  num calculaRaiz(numero) {
    return sqrt(numero);
  }

  num calculaCubo(x) {
    return pow(x, 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: barra(),
      body: calculos(),
      floatingActionButton: botones(),
    );
  }

  //PreferredSizeWidget para la barra
  PreferredSizeWidget barra() {
    return AppBar(
      title: Text(
        "Calculos Matematicos",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.black,
      centerTitle: true,
    );
  }

  //Widget para las salidas
  Widget calculos() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Numero:",
            style: TextStyle(fontSize: 24),
          ),
          Text(
            '$numero',
            style: TextStyle(fontSize: 24, color: Colors.blue),
          ),
          const SizedBox(height: 20), // Espacio entre los textos
          Text(
            "Raiz:",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Text(
            '$raiz',
            style: TextStyle(fontSize: 24, color: Colors.blue),
          ),
          const SizedBox(height: 20), // Espacio entre los textos
          Text(
            "Cubo:",
            style: TextStyle(fontSize: 24),
          ),
          Text(
            '$cubo',
            style: TextStyle(fontSize: 24, color: Colors.blue),
          )
        ],
      ),
    );
  }

  Widget botones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //Boton para generar solo el numero aleatorio
        FloatingActionButton(
          onPressed: actualizarNumeroAleatorio,
          mini: true,
          child: const Icon(Icons.refresh),
        ),
        //Boton para realizar los calculos
        FloatingActionButton(
          onPressed: recalcularDatos,
          mini: true,
          child: const Icon(Icons.calculate),
        )
      ],
    );
  }
}
