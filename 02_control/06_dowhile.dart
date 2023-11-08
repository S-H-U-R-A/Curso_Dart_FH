import 'dart:io';

void main(List<String> args) {
  
  String continuar = 'y';

  int contador = 0;

  do { //Se usa cuando se quiere ejecutar el código al menos una vez

    contador++;
    stdout.writeln('Contador: $contador');
    stdout.writeln('¿Desea continuar? (y/n)');
    continuar = stdin.readLineSync() ?? 'n';

  }while ( continuar == 'y' );
  
}