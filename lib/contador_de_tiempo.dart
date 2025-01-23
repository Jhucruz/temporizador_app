import 'package:flutter/material.dart';

class ContadorDeTiempo extends StatelessWidget {
  final int segundosActuales;
  final int segundosSelecionados;

  const ContadorDeTiempo({
    required this.segundosActuales,
    required this.segundosSelecionados,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tiempo de Exposisicion"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/trabajador4.png"),
            Text(
              "Limite maximo Permisible",
              style: TextStyle(fontSize: 16),
            ),
            Text(
              "$segundosActuales",
              style: TextStyle(fontSize: 34),
            )
          ],
        ),
      ),
    );
  }
}
