import 'dart:io';

void main(List<String> args) {
  
/*   for (int i = 0; i < 10; i++) {
    print("Hola Mundo $i");
  } */

  stdout.writeln("¿Cuál es la base de la tabla de multiplicar?");
  int base = int.parse( stdin.readLineSync() ?? '5' );

  for (int i = 1; i <= 10; i++) {
    print("$base * $i = ${ base * i}");
  }

  

}