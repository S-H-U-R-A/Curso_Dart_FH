void main(List<String> args) {

  Future<String> timeout = Future.delayed(
    Duration(seconds: 3),
    () {
      if(1==1){
        throw 'Auxilio!, explotó esta cosa';
      }
      return 'Retorno del future';
    }
  );

  timeout.then( print )
  .catchError( //Es importante que todos los Futures manejen los posibles errores
    print
  ); //El catchError es como el try catch de Kotlin

  print("Fin del main");

}