import 'dart:developer';

import 'SeleccionFutbol.dart';

class Masajista extends SeleccionFutbol {
  String titulacion;
  int aniosExperiencia;

  Masajista(int id, String nombre, String apellidos, int edad, this.titulacion,
      this.aniosExperiencia)
      : super(id, nombre, apellidos, edad);

  void entrenamiento() {
    print("Da asistencia en el entrenamiento (Clase Masajista)");
  }

  void darMasaje() {
    print("Da un masaje (Clase Masajista)");
  }
}
