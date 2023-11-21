interface class Volador {
  void volar(String mensaje) {} //Método abstracto
}

interface class Caminante {

  void caminar(String mensaje, int velocidad) {} //Método abstracto

  void correr() {}
  
}

//Esta sería la forma más pura de definir una inerfaz
//No puede tener métodos con implementación por defecto
abstract interface class Nadador {
  void nadar(); //Método abstracto
}

class Murcielago implements Volador, Caminante, Nadador {
  @override
  void volar(String mensaje) => print(mensaje);

  @override
  void caminar(String mensaje, int velocidad) =>
      print("$mensaje y camino a una velocidad de  $velocidad km/h");

  @override
  void nadar() {
    print("Los murcielagos no nadan");
  }

  @override
  void correr() { print("El murciegalo no puede correr"); }
  
}

void main(List<String> args) {
  final Murcielago murcielago = Murcielago();

  murcielago.volar("Soy un murcielago y puedo volar");

  murcielago.caminar("Soy un murcielago y puedo caminar", 10);

  murcielago.correr();

}
