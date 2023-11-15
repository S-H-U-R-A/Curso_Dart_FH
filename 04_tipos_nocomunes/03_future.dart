import 'dart:async';

/**
 * Future es una tarea asincrona que se resolverá maás adelante, http.
 * 
 * La diferencia con Async y await de Kotlin, es que en Kotlin cuando usamos await se pausa la ejecución del código hasta que se resuelva la corrutina
 */

void main(List<String> args) {

  //Este tipo Future es muy parecido a como funciona El tipo Deferred devuelto por el constructor de corrutina Async(){...} de Kotlin
  Future<String> timeout = Future.delayed(//Delayed es como si fuera el constructor Async de Kotlin 
    Duration(seconds: 3),
    () {
      print('3 segundos despues!');
      return 'Retorno del future';
    }
  );

  //timeout.then((texto) => print(texto));

/*   timeout.then( //El then es como el await de Kotlin
    (texto) => print(texto)
  ); */

  timeout.then( print ); //Se puede resumir de esta mánera por que print ya de por si recibe un String y lo utiliza como parámetro

  print("Fin del main");

}
