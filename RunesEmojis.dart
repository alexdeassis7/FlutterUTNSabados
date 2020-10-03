void main() {
  var coche = '\u{1F697}';

  print(coche);

  Runes iconos = new Runes('\u{270B} \u{2712} \u{1F6A4} ');

  print(new String.fromCharCodes(iconos));
}
