//    MIXIN (mezclar): pocos lenguajes los tienen por ejemplo Ruby lo
//tiene y en Js lo podes fabricar pero no es nativo de standart, en js estan trabajando en ello
//seria como emular una herencia multiple
//los mixin se usan es flutter para cositas como el singleTickectProviderMixin que algo
//que nos permite a un widgets marcar el tiempo para  animaciones
//y ahi sitio donde esto aparece
abstract class Animal {
  //clase abstracta
  String nombre;
  Animal(this.nombre);
}

// el mixin  es una lista de campos (datos ) o metodos
//un mixin basicamente es un extra que se le puede insertar a una clases
mixin PosicionMixin {
  //este mixin agrupa los datos de posicionado x , y  junto
//a metodos que me permiten variar la posicion

  num _x = 0, _y = 0;
  //Getters
  num get x => _x;
  num get y => _x;
  //Setters
  set x(num x) => _x = x;
  set y(num x) => _y = y;
  //otro getters que retorna una lista de x e y
  List<num> get pos =>
      [_x, _y]; //primere elemento de la lista es x y el segundo es y

  //metodo que varia la posicion

  void mueve(int dx, dy) {
    _x += dx;
    _y += dy;
  }
}

//esta clase hereda todo lo de animal , que pasa si quiero que el leon tenga otros campos o metodos
//que tienen otras clases que a lo mejor ni siquierqa son un animal ? osea que no lo podemos poner en animal
//por que no todos los animales los tienen y las gerarquias serian incompatibles
//aca se hereda todo de ambas clases , pero predomina Animal osea que Leon seria UN ANIMAL !
//digamos que POsicionMixin es como una herencia de segunda clase , y se puede meter cuanto mixines queramos

class Leon extends Animal with PosicionMixin {
  Leon() : super("Leon");
}

main(List<String> args) {
  var leon = Leon();
  leon.mueve(5, 3);
  leon.mueve(2, 2);
  print(leon.pos);
}
