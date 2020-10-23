// una clase clase abstracta NO SE PUEDE INSTANCIAR!
abstract class SeleccionFutbol {
  //atributos de la clase abstracta Seleccion de Futbol!
  String nombre;
  String apellido;
  int edad;
  int id;

  SeleccionFutbol(this.id, this.nombre, this.apellido, this.edad);
  // metodo abtracto => no se implementa en la clase abtracta PERO SI en las clases hijas
  void entrenamiento();

  void concentrarse() {
    print("Concentrarse (Clase Padre)");
  }

  void viajar() {
    print("Viajar (Clase Padre)");
  }

  void partidoFutbol() {
    print("Asiste al Partido de Futbol (Clase Padre)");
  }

  String GetNombre() => nombre;
  String GetApellido() => apellido;
}
