
import 'dart:io';

void main(List<String> args) {

  //imprimir en consola
  stdout.writeln("¿Cuál es tu nombre"); //EN KOTLIN SE USARIA PRINTLN()

  //leer de consola retornando un String
  String? nombre = stdin.readLineSync(); //EN KOTLIN SE USARÍA READLINE()

  stdout.writeln("Tu nombre es: $nombre");

  
}