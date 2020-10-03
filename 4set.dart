void main() {
  Set<String> sistemasOperativo = {'Windows', 'Mac', 'Ubuntu', 'Centos'};
  Set<String> sistemasOperativosMobiles = {'Android', 'IOS'};

  print(sistemasOperativo);

  sistemasOperativo.add('RedHat');
  print(sistemasOperativo);

  sistemasOperativo.addAll(sistemasOperativosMobiles);
  print(sistemasOperativo);

  //MAPAS
//declaro un map con 3 elementos
  var idiomas = {
    //Clave : valor
    'es': 'Espaniol',
    'en': 'Ingles',
    'fr': 'Frances'
  };
  print(idiomas);
  print(idiomas['es']);

  var nuevoIdioma = {'ch': 'Chino'};

  idiomas.addAll(nuevoIdioma);

  print(idiomas);

  var alumnos = Map();
  alumnos[1] = 'alex';
  alumnos[2] = 'Ale Obaid';
  alumnos[3] = 'Ignacio';
  alumnos[4] = 'Axel';
  print(alumnos);
}
