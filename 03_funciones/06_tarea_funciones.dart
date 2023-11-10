/** 
 *  Dado el siguiente código 
 *    Optimizarlo lo más posible usando funciones
 *    y todo lo visto en el curso
 * 
 *  Ver el primer ejemplo:
*/
import 'dart:io';

main() {
  // Ejemplo:
  // Crear una función para imprimir STDOUTS en lugar de
  // la siguiente línea. Luego todos los stdouts deberían ser
  // llamados usando nuestra función personalizada
  //stdout.writeln('=========== Usuario 1 =============');

  procesarUsuario(1500);

  procesarUsuario(1800);

}

/**
 * @param mensaje que se va a imprimir en la consola
 */
void imprimirMensajes(String mensaje) => stdout.writeln(mensaje);

/**
 * @return String que se lee de la consola
 *
 */
String leerLinea() => stdin.readLineSync() ?? '';

/**
 * @Param salario que se va a procesar para el usuario
 *
 */
void procesarUsuario(double salario) {
  imprimirMensajes("=========== Usuario =============");

  /* stdout.writeln('¿Cúal es su nombre?'); */
  imprimirMensajes("¿Cúal es su nombre?");
  String nombre = leerLinea();

  /*stdout.writeln('¿Qué edad tienes?'); */
  imprimirMensajes("¿Qué edad tienes?");
  String edad = leerLinea();

  imprimirMensajes('¿En qué país naciste?');
  String pais = stdin.readLineSync() ?? '';

  final Map<String, String> usuario = {
    'nombre': nombre,
    'edad': edad,
    'pais': pais
  };

  stdout.writeln('Usuario sin deducciones');
  stdout.writeln(usuario);

  double deducciones = salario * 0.15;
  double salarioNeto = salario - deducciones;

  usuario['salario'] = salario.toString();
  usuario['deducciones'] = deducciones.toString();
  usuario['salarioNeto'] = salarioNeto.toString();

  imprimirMensajes(usuario.toString());

}
