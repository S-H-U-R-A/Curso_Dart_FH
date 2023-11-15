void main(List<String> args) {

  int a = 10, b = 20;
  int resultado = sumarFlecha(a, b);

  List<int> listado = [1, 2, 3, 4, 5, 6, 6, 7, 8, 9, 10, 10, 1];

  Iterable<int> nuevoListado = listado.where( (numero) { //Para mi esto es como en java cuando pasamos un predicado a un método de una colección
    return numero > 4;
  } );

/*val nuevoListado: List<Int> = listado.filter ( //Método filter de kotlin, que sería el equivalente al where de Dart, usando Lambdas
    { (numero) -> //Este sería el parámetro que recibe la función
        numero > 4//En kotlin la última linea de código es el retorno de la función
    }
  ) */

  Iterable<int> nuevoListado2 = listado.where( (numero) => numero > 4 ); //Esto es lo mismo que la función de arriba pero usando una función de flecha o lambda como se conoce en kotlin

  //val nuevoListado2: List<Int> = listado.filter { numero -> numero > 4 } //Esta sería la forma abreviada en kotlin, donde podemos sacar el cuerpo de la lambda entre llaves
  

  //print(resultado);

  print(nuevoListado2.toList());
   

}

int sumar(int x, int y) {
  //Esto sería una función comun y corriente, en Kotlin necesitamos usar la palabra reservada fun
  return x + y;
}

int sumarFlecha(int x, int y) => x + y; //Esto se conoce como función de flecha en Dart, sin embargo en kotlin esto simplemente es ahorrarme las llaves y el return, es decir, que en kotlin sería              fun sumarFlecha(x: Int, y: Int) = x + y


