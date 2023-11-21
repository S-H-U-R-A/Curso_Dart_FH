class Persona {
  String nombre;
  int edad;

  Persona(this.nombre,this.edad); //Argumentos obligatorios, que se asignan a las propiedades de la clase

  void imprimirNombre() => print('Nombre: $nombre, Edad: $edad');
}

class Cliente extends Persona {
  String? direccion;
  List ordenes = [];

  //Esta es la forma de inicializar el constructor de la clase padre, en Kotlin es más sencillo desde el constructor primario
  //Cliente(int edadActual, String nombreActual) : super(nombreActual, edadActual);

  //Otra forma de inicializar el constructor de la clase padre
  Cliente(super.nombre, super.edad);

}

void main(List<String> args) {

  final Persona pedro = Cliente("Pedro", 33);

  pedro.imprimirNombre();
}
