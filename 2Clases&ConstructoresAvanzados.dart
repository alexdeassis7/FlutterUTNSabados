void main() {
  var p1 = Punto2D.cero();
  print('(${p1.x},${p1.y})');
  print('(${p1.xFinal},${p1.yFinal})');
  //ESTO NOS DA ERRORRRRR!!!!!
  //p1.yFinal = 150;
}

class Punto2D {
  double x, y;
  final xFinal, yFinal;
//constructor con listas de inicializacion
  /* Punto2D.cero()
      : x = 0,
        y = 0 {

        }*/
  //este constructor incializaria las variables y quedaria inmutables
  Punto2D.cero()
      : xFinal = 0,
        yFinal = 0;
}
