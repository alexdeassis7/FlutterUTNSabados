import 'Persona.dart';

main(List<String> args) {
  var p = new Persona('alex', 'deassis');
  //ESTO NO SE PUEDE POR QUE LOS
  // ATRIBUTOS AHORA SON PRIVATE!
  //p._nombre = 'asdas';
  //p._apellido = 'uhqwdihukaw';

  p.muestraPersona(p);

  print('accedemos a los atributos encapsulados');
  print(p.getNombre());
  print(p.getApellido());

  var p2 = Persona('Saul', 'garay');
  p2.muestraPersona(p2);
  print('modifico los atributos encapsulados mediante los Setters');
  p2.setNombre('Juan');
  p2.setApellido('Ciancio');
  p2.muestraPersona(p2);

  var p5 = Persona('jose', 'supe');
  p5.muestraPersona(p5);
  //usamos los getter y setter con nombres ficticios
  print(p5.nombre);
  print(p5.apellido);
  print('usamos los setter con nombre ficticio ');
  p5.nombre = 'coco';
  p5.apellido = 'martinez';
  print(p5.nombreCompleto());
  print(p5.nameCompleto);
}
