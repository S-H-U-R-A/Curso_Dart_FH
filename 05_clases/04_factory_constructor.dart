class Figura {
  int? base;
  int? altura;
  int? area;
  String? tipo; //Cuadrado base = altura, Rectangulo base != altura

  factory Figura(
    {    
      required int base,
      required int altura
    }
  ){ //Añadir factory a un constructor no le permite al constructor que cree instancias de la clase, pero esta obligado a retornar una instancia de la clase haciendo uso de algun otro constructor o un método que cree una instancia de la clase o bien retornar de alfuna forma otra instancia previamente creada.
    
    final bool operacion = base == altura ? true : false;

    switch(operacion){ //Hacemos esta validación para saber cual constructor usar para retornar una instancia de la clase Rectangulo
      case true: 
        return Figura.cuadrado(base);
      case false:
        return Figura.rectangulo(base, altura);
      default:
        return Figura.cuadrado(base);
    }

  }

  Figura.cuadrado(int base) {
    this.base = base;
    this.altura = base;
    this.area = base * base;
    this.tipo = "Cuadrado";
  }

  Figura.rectangulo(int base, int altura) {
    this.base = base;
    this.altura = altura;
    this.area = base * altura;
    this.tipo = "Rectangulo";
  }

  @override
  String toString() {
    return { //Acá estamos creando un mapa 
      'base': this.base,
      'altura': this.altura,
      'area': this.area,
      'tipo': this.tipo
    }.toString(); //Acá convertimos ese mapa a un String
  }

}

void main(List<String> args) {

  final Figura figura = new Figura(base: 10, altura: 15);

  print(figura);

}
