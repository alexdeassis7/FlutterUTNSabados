import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test/models/Album.dart';

//En pupspec.yaml agregar lo siguiente
// dependencies:
//   flutter:
//     sdk: flutter
//   http: 0.13.3


Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}



void main() => runApp( MyApp());

class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
   // super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          // En pocas palabras, es una forma elegante de que su aplicación “espere” para que se complete una operación asíncrona antes de continuar. 
          child: FutureBuilder<Album>(
            future: futureAlbum,
            // Una función builder que dice a Flutter que reproducir, dependiendo del estado del Future: loading, success, o error.
            builder: (context, snapshot) {
              if (snapshot.hasData) { //si viene la data renderizo el text con el dato 
                return Text(snapshot.data!.title);
              } else if (snapshot.hasError) {//si viene error renderizo el text con el error 
                return Text('${snapshot.error}');
              }
                //si no viene ni el error ni el dato pinto la barrar circular de "cargando "
              // By default, show a loading spinner., si desactivo el internet de mi pc deberia quedar cargando el circulqa progres bar
              return const CircularProgressIndicator(backgroundColor: Colors.red,color: Colors.blue,);
            },
          ),
        ),
      ),
    );
  }
}