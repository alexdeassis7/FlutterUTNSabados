void main() {
//defino

  var listaNumeros = [1, 2, 3, 4, 5];

  print(listaNumeros.length);

  var listaPares = [2, 4, 6, 8];
  print(listaPares.length);
  print('Elemento de la posicion 2:${listaPares[2]}');

  var listaimpares = [3, 5, 7];
  print(' lista impares  Elemento de la posicion 1:${listaimpares[1]}');

  listaimpares[1] = 9;
  print(' lista impares Elemento de la posicion 1:${listaimpares[1]}');

  List<List<int>> matrix = new List<List<int>>();

  for (var i = 0; i < 10; i++) {
    List<int> list = new List<int>();

    for (var j = 0; j < 10; j++) {
      list.add(j);
    }
    matrix.add(list);
  }
}
