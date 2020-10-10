class Color {
  double r, g, b;
  //cuando un atributo es statico PERTENECE A LA CLASE y NO al objeto
  static String h = 'Soy un atributo Estatico  y pertenezco a la clase ';

//constructor
  Color(this.r, this.g, this.b);

  //CAMPO STATICO y FINAL , para que no se pueda modificar nunca mas !
  static final Color rojo = Color(255, 50, 30);
  static final Color negro = Color(10, 10, 10);
  //metodo estatico que mexcla colores
  static Color mezcla(Color a, Color b) =>
      Color((a.r + b.r) / 2, (a.g + b.g) / 2, (a.b + b.b) / 2);
}

main(List<String> args) {
  // var objetoA = Color(100, 150, 213);
  // var objetoB = Color(100, 150, 213);
  //print(objetoC.);

  print(Color.h);
  Color.h = 'modique el atributo estatico de la clase';
  print(Color.h);

  var c = Color.mezcla(Color.negro, Color.rojo);
  print(c.r);
  print(c.g);
  print(c.b);
}
