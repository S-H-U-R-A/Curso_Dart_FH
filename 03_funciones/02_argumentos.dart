void saludar(
  //Esta función recibe argumentos posicionales, es decir, que se deben colocar en el orden en que se declaran
  String? mensaje, [
  //Las llaves cuadradas indican que los argumentos que se colocan dentro son opcionales, en Kotlin se hace igual pero sin las llaves cuadradas
  String nombre = "Fernando",
  int edad = 33,
]) {
  print("$mensaje $nombre - $edad");
}

void
    saludarConArgumentosNombrados( //tienen que tener un valor por defecto o almenos usar required para obligar al cliente a ingresar este valor, es mucho más enredado que en Kotlin
        {
  //Las llaves indican que los argumentos que se colocan dentro se pueden pasar en cualquier orden y a la vez son opcionales
  String mensaje = "Hola",
  required String nombre,
  int veces = 10,
}) {
  print("Saludar con argumentos con nombres $mensaje $nombre - $veces");
}

void saludarConArgumentosPosicionalesYArgumentosConNombre(
  String mensaje, //Argumento posicional, es obligatorio
  {
    String nombre = "Fernando", //Argumentos con nombres
    int veces = 10,
  }
) {
  print("Saludar con argumentos con nombres $mensaje $nombre - $veces");
}

void main(List<String> args) {
  //saludar("Hola", "Fernando");

  saludarConArgumentosNombrados(
      nombre: "Fernando",
      mensaje: "Hola",
      veces:
          10); //Para pasar los los argumentos usamos el simbolo de ":" y el nombre del argumento, en kotlin se usa el simbolo de "="

  saludarConArgumentosPosicionalesYArgumentosConNombre("Hola", veces: 10); //El mensaje es obligatorio, los demas campos son opcionales

}
