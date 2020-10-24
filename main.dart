// importo material (dependecia)
import 'package:flutter/material.dart';

void main() {
//agregarmo un widget "Text" de texto a la funcion runApp
// si lo ejecutamos no da un error por que no tiene la direccionalidad

// si te posicionas entre los parentesis del widget y presionas CTRL + Space te mostrara la lista de
// parametros nombrados que podrias enviar al widget para configurarlo

  runApp(Directionality(
    textDirection: TextDirection.ltr, // left to rigth,
    child: Center(
      // agregar la comoa despues del ultimo parametro para que quede bien identado
      child: Text(
        "Hola Flutter UTN",
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    ),
  ));
}
// lo comentarios en gris son agregados por el plugin  y nos indican que widgetws estan  contenidos den tgro de que otro widget

// debemos hacer un hto restart cuano no veamos los cambios reflejados en el emulador

//en este ejemplo lo unico que se ha creado es una jeraquia de objetos mediante constructores con parametros nombrados

//dentro de l objeto Direccionality tenemos un objetos Center y dentro de center un text y dentro del text un TextStyle ,
// mediante objetos configuramos el mensaje que aprece en pantalla

// tambien pordemos ver como estan creados los windgets presionando ctrl + click para ir al codigo dart del widget

// Open dev tool : ctrl + shift + p  y escrivo "open devTool", seleciono que lo abra en un browser , dentro tenemos
//varias opciones podemos usar el boton de show debug pain , show paint baselines ,.... nos va a ayudar mucbho a la
// hora de desarrollar nuestra app !
