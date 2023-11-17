import 'clases/Persona.dart';

void main(List<String> args) {
  /* 
    final Map<String, dynamic> persona = {'nombre': 'Fernando', 'edad': 33};

    print(persona); 
  */

  final Persona persona = new Persona(edad: 33, nombre: "Fernando");

  final Persona persona2 = new Persona.persona30("Melissa");

/*   persona.nombre = "Fernando";
  persona.edad = 33;
  persona.bio = "Nació por ahí"; */

  /**
   * Esta es una forma de optimizar las asignaciones de propiedades o llamar métodos mediante el operador de cascada "..", para cosas como estas en Kotlin se usa la función de ámbito apply
   */
  /* persona
    ..nombre = "Fernando"
    ..edad = 33; */
  //..bio = "Nació por ahí"; //No se puede acceder a esta propiedad porque es privada

  print(persona2);


}
