// NO SE PUEDE HACER HERENCIA MULTIPLE EN DART !!!
abstract class Fruta {
  String nombre;
  Fruta(this.nombre);

  //metodos abstractos
  double get gramos;
  bool get femenina;

  void come() {
    var determinante = (femenina ? "una" : "un");
    print("Te acabas de comer $determinante $nombre ($gramos gr.)");
  }
}

//Clase Hijas!
class Manzana extends Fruta {
//invocamos al contructor de la clase padre
  Manzana() : super("manzana");
//implemento los metodos abstractos
  @override
  // TODO: implement femenina
  bool get femenina => true;

  @override
  // TODO: implement gramos
  double get gramos => 250;
}

class Melon extends Fruta {
  Melon() : super("melon");

  @override
  bool get femenina => false;

  @override
  double get gramos => 1500;

  void come() {
    print("(vamos a abrir el melon primero )");
    super.come();
  }
}

class Arandano extends Fruta {
  Arandano() : super("Arandano");
  bool get femenina => false;
  double get gramos => 10;
}

main(List<String> args) {
  var m = Manzana();
  m.come();

  var melon = Melon();
  melon.come();

  var frutas = [
    for (var i = 0; i < 3; i++) Manzana(),
    Melon(),
    for (var i = 0; i < 10; i++) Arandano(),
  ];
  for (var f in frutas) {
    f.come();
  }
  print("############ mezclamos con shuffle###########");
  frutas.shuffle();

  for (var f in frutas) {
    f.come();
  }
}
