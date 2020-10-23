import 'SeleccionFutbol.dart';

class Futbolista extends SeleccionFutbol {
  int dorsal;
  String demarcacion;

  Futbolista(int id, String nombre, String apellidos, int edad, this.dorsal,
      this.demarcacion)
      : super(id, nombre, apellidos, edad) {}

  void entrenamiento() {
    print("Realiza un entrenamiento (Clase Futbolista)");
  }

  void partidoFutbol() {
    print("Juega un Partido (Clase Futbolista)");
  }

  entrevista() {
    print("Da una Entrevista (Clase Futbolista)");
  }
}
