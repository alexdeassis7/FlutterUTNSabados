import 'Entrenador.dart';
import 'Futbolista.dart';
import 'Masajista.dart';
import 'SeleccionFutbol.dart';

main(List<String> args) {
  List<SeleccionFutbol> integrantes = new List<SeleccionFutbol>();
  SeleccionFutbol delBosque =
      new Entrenador(1, "vicente", "Del Bosque", 60, 28489);

  SeleccionFutbol iniesta =
      new Futbolista(2, "Andres", "Iniesta", 29, 6, "Delantero Derecho");

  SeleccionFutbol raulMartinez = new Masajista(
      3, "Raul", "Martinez", 41, "Licenciado en Fisioterapia", 15);

  integrantes.add(delBosque);
  integrantes.add(iniesta);
  integrantes.add(raulMartinez);

  // Concentracion
  print(
      "\n\n Todos los integrantes comienza una concentracion .(Todos ejecutan el mismo metodo)");
  for (SeleccionFutbol integrante in integrantes) {
    print(integrante.GetNombre() + " " + integrante.GetApellido() + " ->");
    integrante.concentrarse();
    print("-------------------------");
  }
  // VIAJE
  print(
      "\n\n Todos los integrantes viajan a jugar un partido.(Todos ejecutan el mismo metodo)");
  for (SeleccionFutbol integrante in integrantes) {
    print(integrante.GetNombre() + " " + integrante.GetApellido() + " ->");
    integrante.viajar();
    print("-------------------------");
  }

// ENTRENAMIENTO
  print(
      "\n\n Entrenamiento: Todos los integrantes tienen su funcion en un entrenamiento.(Especializacion)");
  for (SeleccionFutbol integrante in integrantes) {
    print(integrante.GetNombre() + " " + integrante.GetApellido() + " ->");
    integrante.entrenamiento();
    print("-------------------------");
  }

  // PARTIDO DE FUTBOL
  print(
      "\n\n PARTIDO DE FUTBOL : Todos los integrantes tienen su funcion en un Partido.(Especializacion)");
  for (SeleccionFutbol integrante in integrantes) {
    print(integrante.GetNombre() + " " + integrante.GetApellido() + " ->");
    integrante.partidoFutbol();
    print("-------------------------");
  }

  // PLANIFICAR ENTRENAMIENTO
  print(
      "\n\n PLANIFICAR ENTRENAMIENTO :Solo el entrenador tiene el metodo planificar Entrenamiento");
  print(delBosque.GetNombre() + " " + delBosque.GetApellido() + " ->");
  (delBosque as Entrenador).planificarEntrenamiento();
  print("-------------------------");

  // ENTREVISTA
  print(
      "\n\n ENTREVISTA: Solo el Futbolista tiene el metodo para dar una entrevista ");
  print(iniesta.GetNombre() + " " + iniesta.GetApellido() + " ->");
  (iniesta as Futbolista).entrevista();
  print("-------------------------");

  //  MASAJE
  print("\n\n MASAJE :Solo el Masajista tiene el metodo para dar un masaje");
  print(raulMartinez.GetNombre() + " " + raulMartinez.GetApellido() + " ->");
  (raulMartinez as Masajista).darMasaje();
  print("-------------------------");

  double numero = 1.5;
  int numero2 = 9;
  numero = (double)numero2;
}
