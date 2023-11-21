/**
 * El uso de una clase abstracta es solo ser el cascaron para que otras clases hereden de ella, por defecto las propiedades y métodos de una clase abstracta son abstractos
 * 
 * Normalmente las clases abstractas se usan para crear propiedades muy generales que serán heredadas por otras clases, para el uso de métodos se recomienda usar interfaces
 * 
 */
abstract class Vehiculo {
  bool encendido = false;

  void encender() {
    //Método con implementación por defecto
    encendido = true;
    print('Vehículo encendido');
  }

  void apagar() {
    //Método con implementación por defecto
    encendido = false;
    print('Vehículo apagado');
  }

  bool revisarMotor(); //método abstracto, que debe ser implementado por las clases que hereden de esta clase
}

class Carro extends Vehiculo {
  int kilometraje = 0;

  @override bool revisarMotor() {
    print("motor ok!");
    return true;
  }

}

void main(List<String> args) {

  final Carro ford = Carro();

  ford.encender();

  ford.apagar();

  ford.revisarMotor();

}
