String capitalizar(String texto) {
  texto = texto.toUpperCase();
  return texto;
}

Map<String, String> capitalizarMapa(Map<String, String> mapa) {

  //Usar spread {...Objeto} es lo mismo que usar * antes de una colección en Kotlin, básicamente permite hacer una copia de la colección sin modificar la original, permitiendo adicionar más elementos si es necesario

  //En kotlin no es tan sencillo como asignar un valor al mapa sino que se debe hacer una copia interna en la función ya que no permite modificar el objeto que se pasa por parametro

  mapa = {...mapa}; //Esto se hace para romper la referencia del objeto que se pasa por parametro, es decir, que se crea una copia del objeto y se le asigna a la variable mapa que se recibe como parámetro

  mapa['nombre'] = mapa['nombre']?.toUpperCase() ??
      'No hay nombre'; //Si el nombre no es nulo lo vuelve mayusculas y si es nulo le asigna el valor de 'No hay nombre'
  return mapa;

}

void main(List<String> args) {
  //En Dart los objetos que se usan en las funciones se pasan por referencia, es decir, que si se modifica el objeto dentro de la función, este se modifica en todas partes

  String nombre = "Fernando";
  String nombre2 = capitalizar(nombre);

  /* print(nombre);
  print(nombre2); */

  Map<String, String> persona = {'nombre': 'Tony Stark'};

  Map<String, String> persona2 = capitalizarMapa(persona);

  print(persona);
  print(persona2);
}
