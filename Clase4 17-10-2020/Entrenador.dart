import 'SeleccionFutbol.dart';

class Entrenador extends SeleccionFutbol {
  int idFederacion;

  Entrenador(
      int id, String nombre, String apellidos, int edad, this.idFederacion)
      : super(id, nombre, apellidos, edad) {}

  @override
  void entrenamiento() {
    print("Dirige un entrenamiento (Clase Entrenador)");
  }

  void partidoFutbol() {
    print("Dirige un Partido de Futbol (Clase Entrenador)");
  }

  planificarEntrenamiento() {
    print("Planifica un Entrenamiento (Clase Entrenador)");
  }
}
