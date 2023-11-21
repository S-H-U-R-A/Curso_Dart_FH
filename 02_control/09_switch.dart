import 'dart:math';

void main(List<String> args) {

  int rnd = Random().nextInt(7); //El 7 indica hasta que número se puede generar el random, y empieza desde 0 por defecto, en kotlin podemos especificar el número de inicio

  /*  
    val dia: String = when(rnd){ //El when es como el switch de Dart, si el bloque requiere más de una linea usamos las llaves {}
        0 -> "Lunes"
        1 -> "Martes"
        2 -> "Miércoles"
        3 -> "Jueves"
        4 -> "Viernes"
        5 -> "Sábado"
        6 -> "Domingo"
        else -> "No es un día de la semana"
    }

    println("El día es: $dia")

  */

  switch (rnd) {
    case 0:
      print("Lunes");
      break;

    case 1:
      print("Martes");
      break;

    case 2:
      print("Miércoles");
      break;

    case 3:
      print("Jueves");
      break;

    case 4:
      print("Viernes");
      break;

    case 5:
      print("Sábado");
      break;

    case 6:
      print("Domingo");
      break;

    default:
      print("No es un día de la semana");
  }

String asciiCharType(int char) {
  const space = 32;
  const zero = 48;
  const nine = 57;

  return switch (char) {
    < space => 'control',
    == space => 'space',
    > space && < zero => 'punctuation',
    >= zero && <= nine => 'digit',
    _ => ''
  };
}

}
