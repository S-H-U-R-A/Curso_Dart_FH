class Cuadrado {
  final int lado; //Propiedad final, es como una constante, pero se puede inicializar en el constructor
  final int area; //En kotlin su equivalencia sería usar val

  //Constructor

  //Esta forma de hacer una inicialización de una propiedad final mediante el constructor, no existe en kotlin, en kotlin usamos Init{}
  Cuadrado(this.lado) : area = lado * lado; //Acá se inicializa la propiedad area a partir de la propiedad lado, esto es posible porque las propiedades finales se pueden inicializar en el constructor
}

void main(List<String> args) {}
