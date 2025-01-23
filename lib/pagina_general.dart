import 'package:flutter/material.dart';
import 'package:temporizador_app/contador_de_tiempo.dart';
import 'package:temporizador_app/selector_de_tiempo.dart';

class PaginaGeneral extends StatefulWidget {
  const PaginaGeneral({super.key});

  @override
  State<PaginaGeneral> createState() => _PaginaGeneralState();
}

class _PaginaGeneralState extends State<PaginaGeneral> {
  int? segundosSelecionadoUsuario;

  @override
  Widget build(BuildContext context) {
    if (segundosSelecionadoUsuario == null) {
      return SelectorDeTiempo(
        iniciarTiempo: (tiempoSeleccionado) {
          setState(() {
            segundosSelecionadoUsuario = tiempoSeleccionado * 60;
          });
        },
      );
    } else {
      return ContadorDeTiempo(
        segundosActuales: 0,
        segundosSelecionados: segundosSelecionadoUsuario!,
      );
    }
  }
}
