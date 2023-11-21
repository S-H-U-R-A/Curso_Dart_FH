class Persona {

  String nombre;
  int edad;

  Persona(this.nombre, this.edad);//Argumentos obligatorios, que se asignan a las propiedades de la clase

  void imprimirNombre() => print('Nombre: $nombre, Edad: $edad');

}

class Cliente extends Persona {

  String? direccion;
  List ordenes = [];

  @override int edad = 52; //Se puede sobreescribir una propiedad

  //Esta es la forma de inicializar el constructor de la clase padre, en Kotlin 
  Cliente(int edadActual, String nombreActual) :
    super(nombreActual, edadActual);

  @override
  void imprimirNombre() {
    super.imprimirNombre(); //Llamada al método de la clase padre
    print("Cliente: $nombre ($edad)");// Llamada al método de la clase hija
  }

}


void main(List<String> args) {

  final Persona pedro = Cliente(33, "Pedro");

  pedro.imprimirNombre();

}