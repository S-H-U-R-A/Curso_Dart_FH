class Location {
  final double lat;
  final double lng;

  //Enviar los parámetros así es mas corto que en java, pero en kotlin es aun más corto, porque en el constructor primario recibe y crea las propiedades.
  const Location(
    { //Las llaves indica que los parámetros son opcinales y a su vez deben pasarse por su nombre, me gusta más de esta forma, en kotlin literalmente se puede hacer lo mismo pero sin la necesidad de las llaves
      required this.lat,
      required this.lng
    }
  );

}

void main(List<String> args) {
  final Location sanFrancisco1 = new Location(lat: 18.2323, lng: 39.9000);
  final Location sanFrancisco2 = new Location(lat: 18.2323, lng: 39.9001);
  final Location sanFrancisco3 = new Location(lat: 18.2323, lng: 39.9001);

  //Esta sería la forma de crear un objeto constante, es útil supongo cuando necesitamos usar siempre una misma instancia de una clase, como por ejemplo en un singleton
  const Location sanFrancisco4 = const Location(lat: 18.2323, lng: 39.9001);

  const Location sanFrancisco5 = const Location(lat: 18.2323, lng: 39.9001); //Como ya existe una instancia con los mismos valores, literalmente apunta a la misma dirección de memoria, por lo que si los comparamos con el operador == nos dará => true


}
