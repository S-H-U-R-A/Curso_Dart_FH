import 'dart:async';

/**
 * 
 * Los StreamsController son Asincronicos, es decir, son como los flujos de Kotlin,
 * 
 * 
 * Un stream puede tener varios listeners, es decir, varios listeners pueden estar escuchando un mismo stream si se usa el método Broadcast()
 * 
 */

void main(List<String> args) {

  //final StreamController<String> streamController = new StreamController<String>(); //Se crea el StremController, sería parecdido a la forma de construir un Flujo de Kotlin

  final StreamController<String> streamController = new StreamController<String>.broadcast();//Para que podamos tener varios consumidores del stream debemos usar el método broadcast() del StreamController

  //Creamos el listener para los datos emitidos en el stream, es concepto es similar al de usar operaciones terminales en un flujo de Kotlin, sería como el método collect de Kotlin
  streamController.stream.listen( 
    (data) => print("Despegando consumidor 1 $data"),
    onError: (error) => print("Error! $error"),
    onDone: () => print("Misión completa"), //Se dispara cuando se cierra el flujo mediante el método close()
    cancelOnError: false, //Si es true, cancela el flujo cuando se produce un error, en los Flows de Kotlin cuando se produce un error se cancela el flujo, en los Streams de Dart no, por defecto es false
  );

  streamController.stream.listen( //Segundo listener para el mismo stream
    (data) => print("Despegando consumidor 2 $data"),
    onError: (error) => print("Error! $error"),
    onDone: () => print("Misión completa"),
    cancelOnError: false, 
  );

  streamController.sink.add("Apolo 11"); //Agregamos datos al stream mediante sink, es parecido a emit en un flujo de Kotlin

  streamController.sink.add("Apolo 12");

  streamController.sink.add("Apolo 13");
  
  streamController.sink.addError("Houston, Tenemos un problema"); //Agregamos un error al stream, este será capturado por onError del listener del stream

  streamController.sink.add("Apolo 14");

  streamController.sink.add("Apolo 15");


  streamController.sink.close(); //Cerramos el flujo, es parecido a cancelar un flujo de Kotlin mediante un Job.cancel(), esto se usa por ejemplo cuando se termina de leer un archivo, cerramos sesión, etc

  print("Fin del main");

}
