import 'package:flutter/material.dart';
import 'package:temporizador_app/escoger_minutos.dart';

class SelectorDeTiempo extends StatelessWidget {
  const SelectorDeTiempo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi pomodoro"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/small_chicken.png"),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (_) {
                    return EscogerMinutos();
                  },
                );
              },
              child: Text("iniciar"),
            )
          ],
        ),
      ),
    );
  }
}
