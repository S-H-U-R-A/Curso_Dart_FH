import 'dart:io';

/**
 * Ya entendiendo el funcionamiento de Async y Await, puedo decir que NO se puedeusar para 
 * Sincronizar dos solicitudes como sucede con Async y await en las corrutinas de Kotlin, debido a que Dart es single thread
 */

void main(List<String> args) async {

  String path = Directory.current.path + "\\04_tipos_nocomunes\\assets\\personas.txt";

  //leerArchivo(path).then(print); //El then es como un listener que se ejecuta cuando se resuelve o retorna el valor para el envoltorio Future

  final stopwatch = Stopwatch()..start();

  String archivo = await leerArchivo(path);//Detiene la ejecución del código hasta que se resuelva la tarea asincrona, asi como en kotlin await necesita estar dentro de una corrutina o función de suspención, await de Dart necesita estar dentro de una función marcada con async, es decir una función asincrona o función de suspención como en kotlin

  int respuesta = await retornarEntero();

  print(archivo.length + respuesta);

  stopwatch.stop();

  print('Tiempo transcurrido: ${stopwatch.elapsedMilliseconds} ms');
  
  print("Fin del main");

}

Future<String> leerArchivo(String path) async { //Transforma cualquier función en una función asincrona que retorna un Future, es algo parecido a cuando ponemos la palabra suspend en las funciones de Kotlin
  File file = new File(path);
  return file.readAsString();
}

Future<int> retornarEntero() async {
  sleep(
    Duration(seconds: 3)
  );
  return 10;
}
