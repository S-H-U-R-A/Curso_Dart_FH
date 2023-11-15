import 'dart:collection';

void main(List<String> args) {

  Queue<int> cola = new Queue(); //Especificamente esto no esta disponible en Kotlin, sin embargo se puede simular con una lista

  cola.addAll( 
    [10,20,30,40,50]
  );

  Iterator i = cola.iterator; //En Kotlin si existe el tipo Iterator y se usa de la misma forma

  while(i.moveNext()){ //En Kotlin se usa hasNext()
    print(i.current); //En Kotlin se usa next()
  }
  
}