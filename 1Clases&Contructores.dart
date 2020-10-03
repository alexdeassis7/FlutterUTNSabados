class Hora {
  int h, m, s;
//tambien podemos inicializarlo asi
// int h = 0 , m = 0 , s = 0 ;
}

class Reloj {
  int hora, minuto, segundo;
  //constructor 1 clasico

  /*Reloj(int hora , int minuto , int segundo ){
    this.hora = hora ;
    this.minuto = minuto;
    this.segundo = segundo;
  }*/
  //constructor 2 abreviados , esto se usa mucho en flutter
  //Reloj(this.hora ,this.minuto ,this.segundo);

  //constructor 3 con parametro nombrados esto se usa mucho en flutter
  //el 90% de los widgets utilizan estos constructores  ya que
  //los widget suelen tener entre 5 y 15 parametros nombrados
  Reloj({this.hora, this.minuto, this.segundo});
  // no puedo tener mas de un constructor con el mismo nombre no admite sobrecarga ,.
  //es por una cuestion de claridad
  //entonces utilizo u punto por ej:
  Reloj.nombrado({this.minuto, this.hora, this.segundo});
  Reloj.a_cero() {
    this.hora = 0;
    this.minuto = 0;
    this.segundo = 0;
  }
}

void main() {
  //creamos un objeto de la manera vieja
  var a = new Hora();
  print(a);
//despues veremos que en flutter crearemos muchos objetos
//entonces la gente de dart se dio cuenta y modificaron
// la manera de instanciar objetos , y sacaron el new
//ej:
  var b = Hora();
  print(b);
  //si no inicializamos h,m,s seran null
  print('[${b.h}:${b.m}:${b.s}]');
  //como se accede a los campos ??
  a.h = 12;
  a.m = 59;
  a.s = 59;
  print('[${a.h}:${a.m}:${a.s}]');
//construimos un objeto con constructor 1 y 2
  //var b1 = Reloj(16 , 59 , 59);
  //construimos con constructor 3 con parametro nombrados
  var b1 = Reloj(minuto: 16, segundo: 59, hora: 12);
  print('Reloj b1 :[${b1.hora}:${b1.minuto}:${b1.segundo}]');

  var b2 = Reloj.a_cero();
  print('Reloj b2 :[${b2.hora}:${b2.minuto}:${b2.segundo}]');

  var b3 = Reloj(minuto: 166, segundo: 599, hora: 12);
  print('Reloj b3 :[${b3.hora}:${b3.minuto}:${b3.segundo}]');
}
