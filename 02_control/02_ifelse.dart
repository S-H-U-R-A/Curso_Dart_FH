import 'dart:io';

void main(List<String> args) {
  stdout.writeln("¿Cuál es tu edad?"); //EN KOTLIN SE USARIA PRINTLN()

  int edad = int.parse(stdin.readLineSync() ?? '0'); //EN KOTLIN SE USARÍA READLINE(), ACA EN DART ?? ES EL ELVIS OPERATOR; EN KOTLIN USAMOS INTEGER.PARSEINT()

  stdout.writeln(edad);

/*   if (edad >= 18) {
    stdout.writeln("Eres mayor de edad (Estas viejo) )");
  } else {
    stdout.writeln("Eres menor de edad");
  } */

  //En Kotlin podemos asignar un if a una variable, en Dart no
  //Por otra parte para evitar el anidamiento de if else, podemos usar When en Kotlin

  if (edad >= 21) {
    stdout.writeln("Ciudadano");
  } else if (edad >= 18) {
    stdout.writeln("Mayor de edad");
  } else {
    stdout.writeln("Menor de edad");
  }
}
