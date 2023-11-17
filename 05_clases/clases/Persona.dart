import 'dart:ffi';

class Persona {
  //Por defecto las clases son publicas, no se puede poner private, protected, etc. En Kotlin por defecto son privadas y para que se pueda heredar de ellas se debe poner la palabra open

  // Campos o propiedades, por defecto son publicas, no se puede poner private, protected, etc. En Kotlin por defecto son privadas y para que se pueda heredar de ellas se debe poner la palabra open
  String? nombre; //Esto en kotlin no se puede hacer, declarar una propiedad sin inicializar, asi sea nullable debe tener un valor inicial

  int? edad;

  String _bio = "Hola, soy una propiedad privada"; //Poniendo un guión de piso indicamos que una variable es privada, pienso yo que se hizo de esta forma en Dart porque es la convención usada por desarrolladores de otros lenguajes como Java, Kotlin, etc.

  // Get y sets

/*   String get bio {
    return _bio.toUpperCase();
  } */

  String get bio => _bio
      .toUpperCase(); //Esto es lo mismo que el get de arriba, pero en una sola linea, es como en Kotlin, cuando omitimos las llaves y la palabra return en una función, se puede hacer cuando la función solo tiene una linea de código

/*   void set bio(String texto) {
    _bio = texto;
  } */

  void set bio(String texto) => this._bio = texto; //Esto es lo mismo que el set de arriba, pero en una sola linea, es como en Kotlin, cuando omitimos las llaves y la palabra return en una función, se puede hacer cuando la función solo tiene una linea de código

  // Constructores ----------

  //Constructor básico -------------
/*   Persona( int edad, String nombre) {
    this.edad = edad;
    this.nombre = nombre;
  } */

  Persona(
      //Este constructor asigna de una vez los valores, lo mismo que pasa en el constructor primario de Kotlin
      {
        required this.edad,
        this.nombre = "María"
      }
  ) {
    // En kotlin el cuerpo del constructor básico o primario se usa atraves de la lambda reservada init
    //Aquí se pueden hacer validaciones, etc.
  }

  //Constructor con nombre ---------------------

  //En kotlin no existe la sobrecarga de constructores como en Java, sin embargo podemos crear n constructores secundarios que delegan la inicialización de las propiedades al constructor primario, esto se hace con la palabra reservada constructor, y se le pasa el nombre del constructor primario y los parámetros que recibe

  Persona.persona30(this.nombre) { //Acá en Dart no existe la sobrecarga de constructores, por lo que se usa el constructor con nombre(Se puede ver como una función de extensión que crea instancias de la clase) para crear otro constructor con los mismos parámetros, pero con otro nombre
    this.edad = 30;
  }

  Persona.persona40(String nombre) {
    this.edad = 40;
    this.nombre = nombre;
  }



  // Métodos
  @override
  String toString() => "${this.nombre} ${this.edad} ${this._bio}";
}
