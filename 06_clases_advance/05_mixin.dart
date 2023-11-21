/**
 *En Dart los mixin se utilizan para compartir comportamientos y atributos los cuales pueden ser usados   por otras clases que usen el Mixin,
 *
 * 
 * No son comparables con las interfaces en otros lenguajes como Kotlin, porque los mixin pueden tener implementación y aunque en Kotlin se pueden tener métodos con implementación, no se recomienda
 *
 * 
 * Los mixin no se pueden instanciar, no se pueden usar como clases normales.
 * Los mixin no pueden tener constructores para ejecutar un código inical a diferencia de una clase Abstracta.
 * 
 * 
 */

mixin Logger {
  void imprimir(String texto) { //Se puede definir un método con implementación por defecto
    final hoy = DateTime.now(); //Se obtiene la fecha actual
    print('$hoy :::: $texto');
  }
}

mixin Logger2 {
  void imprimir2(String texto) {
    final hoy = DateTime.now(); //Se obtiene la fecha actual
    print('$hoy :::: $texto');
  }
}

//Esto Si sería una interfaz y sería lo más acercado a las interfaces en otro lenguaje, usando implements para implementarla
interface class Logger3 {
  void imprimir3(String texto) {
    final hoy = DateTime.now(); //Se obtiene la fecha actual
    print('$hoy :::: $texto');
  }
}

abstract class Astro with Logger{ //Se usa la palabra reservada with para indicar que se va a usar un mixin
  String? nombre;

  Astro() {
    imprimir('-- Init del Astro --');
  }

  void existo() {
    imprimir('-- Soy un ser celestial y existo --');
  }
}

//Ejemplo de clase que extiende de una clase abstracta, que usa un mixin y que implementa una interfaz
class Asteroide extends Astro with Logger2 implements Logger3{ 

  @override String? nombre;//Se sobreescribe la variable nombre de la clase abstracto Astro

  Asteroide(this.nombre) {
    //imprimir("Soy $nombre");
    imprimir2("Soy $nombre");
  }
  
  @override
  void imprimir3(String texto) {
    print("Se imprime desde la sobreescritura del método de la interfaz: $texto");
  }

}

void main(List<String> args) {

  final Asteroide ceres = Asteroide('Ceres');

  ceres.existo(); //Se usa el método existo de la clase abstracta Astro

  ceres.imprimir3("INTERFAZ"); //Se usa el método imprimir3 de la interfaz Logger3

}
