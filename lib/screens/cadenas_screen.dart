import 'package:app_tarea/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CadenaScreen extends StatefulWidget {
  const CadenaScreen({super.key});
  @override
  State<CadenaScreen> createState() => _CadenaScreenState();
}

class _CadenaScreenState extends State<CadenaScreen> {
  /*-----------Scaffold----------- */
  String cadena = 'vera';
  List<String> nombres = ['Ashley', 'Amairamy', 'Alejandra', 'Jaquelin'];
  String cadenaInversa = '';
  int vocales = 0;
  String invertirCadena(String cadena) {
    String cadenaInversa = '';
    int indice = cadena.length - 1;
    while (indice >= 0) {
      cadenaInversa += cadena[indice];
      indice--;
    }
    return cadenaInversa;
  }

  int calcularVocales(String cadena) {
    int vocales = 0;
    int i = 0;
    while (i < cadena.length) {
      String newCadena = cadena.toLowerCase();
      if (newCadena[i] == 'a' ||
          newCadena[i] == 'e' ||
          newCadena[i] == 'i' ||
          newCadena[i] == 'o' ||
          newCadena[i] == 'u') {
        vocales++;
      }
      i++;
    }
    return vocales;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Widgets.barra(),
      body: textBox(),
    );
  }

  Widget textBox() {
    return ListView.builder(
      itemCount: nombres.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 50),
          child: Card(
              child: ListTile(
            title: Text(
              'Nombre: ${nombres[index]}',
              style: TextStyle(fontSize: 24, color: Colors.blueAccent),
              textAlign: TextAlign.center,
            ),
            subtitle: Text(
                'Vocales: ${calcularVocales(nombres[index])} \n Invertir: ${invertirCadena(nombres[index])}'),
          )),
        );
      },
    );
  }
}
