import 'dart:io';

void main(List<String> args) {
  
  File file = new File(
      Directory.current.path + "\\04_tipos_nocomunes\\assets\\personas.txt");

  Future<String> f = file
      .readAsString(); //Este método devuelve un Future, es decir, una tarea asincrona que se resolverá en el futuro

  f.then(print); //El then es como el await de Kotlin

  print("Fil del Main");


}
