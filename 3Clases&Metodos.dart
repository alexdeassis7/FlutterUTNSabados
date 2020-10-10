class Persona {
  String nombre, apellido;
  Persona(this.nombre, this.apellido);
  String nombreCompleto() {
    return '$nombre $apellido';
  }

  String nombreCompletoAbreviatura() => '$nombre $apellido';

  String toString() => 'Persona("$nombre $apellido")';
}

main(List<String> args) {
  var p = Persona('Ignacio', 'Martinez');
  print(p.nombreCompleto());
  print(p.nombreCompletoAbreviatura());
  print(p);
}
