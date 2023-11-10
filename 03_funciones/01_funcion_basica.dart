void main(List<String> args) {

  //saludar(); //Las funciones sirven para reutilizar el código, en este caso print es una función, y la podemos reutilizar las veces que queramos

  String mensaje = saludarConRetorno();

  print(mensaje);
}

void saludar() {
  //Void indica que no retornará ningun valor, En Kotlin el valor que representa nada es Unit, además de que Kotlin usa la palabra reservada fun para definir una función

  print(
      "Hola Fernando"); //Las funciones sirven para reutilizar el código, en este caso print es una función, y la podemos reutilizar las veces que queramos

  print("Hola Maria");
}

String saludarConRetorno() {
  return "Hola Fernando";
}
