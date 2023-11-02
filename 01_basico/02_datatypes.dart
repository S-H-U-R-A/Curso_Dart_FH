import 'dart:ffi';

main() {
  // ===== Números
  int a = 10;
  double b = 5.5;

  int? c;

  //print(c);

  // ==== Strings
  String nombre = 'Tony'; // Comillas simples
  String nombre2 = "Tony"; // Comillas dobles
  String appelido = 'Stark';
  String nombreCompleto =
      '$nombre $appelido'; //Interpolación de Strings como en Kotlin

  String multilinea = ''' // String multilinea
  Hola Mundo
  ¿Cómo están?
  $nombre2
  O'Conor''';

  //print(nombreCompleto);

  // ==== Booleans
  bool isActive = true;
  bool isNotActive = !isActive;

  //print(isActive);

  // ==== Listas - Arreglos

  //List<String> villanosDeprecated = new List<String>(); // Deprecated

  List<String> villanos = ['Lex', 'Red Skull', 'Doom']; //Comienzan con base 0

  villanos[0] = 'Superman';

  villanos.add('Duende Verde'); //Añade al final, igual que en kotlin

  //print(villanos); //Cuando se imprime con llaves cuadradas indica que es una lista

  // ===== Sets
  Set<String> villanos2 = {
    'Lex',
    'Red Skull',
    'Doom'
  }; //Asi se declara un Set, no permite valores repetidos

  villanos2.add('Duende Verde'); //Añade al final, igual que en kotlin

  //print(villanos2); //Cuando se imprime con llaves indica que es un set

  // ===== Mapas - Diccionarios - Objetos literales
  Map<String, dynamic> ironman = {
    //Se usa para pares de valores
    'nombre': 'Tony Stark',
    'poder': 'Inteligencia y el dinero',
    'nivel': 9000,
    'edad': 60
  };

  print(ironman); //Para acceder a los elementos funciona igual que en kotlin
}
