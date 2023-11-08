void main(List<String> args) {
  var a = 10;

  final double b =
      10.0; //Valor que no va a cambiar, es más ligero que const en memoria, es parecido a val en kotlin en donde se conoce el valor en ejecución.

  const double c =
      10.0; //Valor que no va a cambiar, es parecido a const en kotlin en donde se conoce el valor en compilación.

  late double precio; //Se puede inicializar una variable después

  precio = 20.0;

  print(precio);

  final List<String> personasFinal = [
    'Juan',
    'Pedro',
    'Fernando'
  ]; //Final es parecido a val en kotlin

  //const List<String> personasConst = ['Juan', 'Pedro', 'Fernando'];

  List<String> personasConst = const [
    'Juan',
    'Pedro',
    'Fernando'
  ]; //Esta forma es igual a la anterior.

  personasFinal.add("Nuevo valor"); //Se puede agregar un nuevo valor a una lista final

  //personasConst.add("Nuevo valor"); //No se puede agregar un nuevo valor a una lista constante, porque se tiene que conocer en tiempo de compilación

  //print(personasFinal);
}
