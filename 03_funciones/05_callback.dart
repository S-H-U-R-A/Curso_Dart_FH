/**
 * Un callback es una función lambda que se llama dentro de otra función. No es muy común en Dart pero si en Kotlin
 * 
 * En kotlin esto es lo que se conoce como una función de orden superior, es decir, una función que recibe una función como parámetro
 * 
 */

void main(List<String> args) {

  obtenerUsuario("100", (Map<String, String> persona) { //Forma larga de enviar una función lambda, que permite ejecutar varias instrucciones
    print("Hola");
    print(persona);
  });

  obtenerUsuario("100", (Map<String, String> persona) => print(persona) ); //Forma corta de enviar una función lambda que tiene una sola instrucción, en kotlin si podemos tener mas instrucciones y la última es la que se retorna
  
}

void obtenerUsuario(String id, Function callback) {
  Map<String, String> usuario = {"id": id, "nombre": "Sergio Andrés"};
  callback(usuario);
}
