void main(List<String> args) {
  // Operadores de asignación
  int? a; // = 10;
  int? b; // = 1;

  //b ??= 20; // Asignar el valor únicamente si la variable es null y esta delcarada de forma nula mediante el interrogante

  //print(b);

  // Operadores condicionales
  int c = 23;
  String resp = c > 25
      ? 'C es mayor a 25'
      : 'C es menor a 25'; //En KOtlin no existe el operador ternario se asigna el resultado de un if -  else directamente a la variable

  //print(resp);

  int d = b ?? a ?? 100; // Si b es null entonces asigna el valor de a, Si a tambien  es null entonces asigna el valor de 100; Este es el equivalente en kotlin al elvis operator, solo que este elvis se usa comunmente en repuestas de algún método y requiere que se asigne un valor a la variable inicialmente

  //print(d);

  //Operadores relacionales
  //Todos retornan un valor booleano
  /*
    > Mayor que
    < Menor que
    >= Mayor o igual que
    <= Menor o igual que

    == Revisa si dos objetos son iguales
    != Revisa si dos objetos son diferentes
  */

  String persona1 = 'Fernando';
  String persona2 = 'Alberto';

  //print(persona1 == persona2); //Compara el valor y el tipo de dato
  //print(persona1 != persona2);

  int x = 20;
  int y = 30;

  //print(x > y); // false
  //print(x < y); // true
  //print(x >= y); // false
  //print(x <= y); // true

  // Operador de tipo
  int i = 10;
  String j = '10';

  //El operador is se puede negar asi: is!, en kotlin se usa el operador !is con la admiración al inicio


  //print(i is int); //Usando is puedo saber si una variable es de un tipo de dato en especifico, funciona igual en Kotlin cuando el tipo de dato es desconocido o Any

  //print(j is int);// En kotlin se detecta automaticamente la incompatibilidad de tipos de datos en tiempo de compilación, en Dart no, por lo que el operador "is" es muy util para saber si una variable es de un tipo de dato en especifico

}
